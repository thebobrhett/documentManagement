<%
sub create_destination()
  'Check to see if destination exists
  if not objFSO.FolderExists(docpath & request.form("year")) then
    'If not then create it
    set objFolder = objFSO.CreateFolder(docpath & request.form("year"))
  end if
  if not objFSO.FolderExists(docpath & request.form("year") & "\" & Get_type(request.form("type_id"))) then
    'If not then create it
    set objFolder = objFSO.CreateFolder(docpath & request.form("year") & "\" & Get_type(request.form("type_id")))
  end if
end sub

sub update_docs_recent()
  'update the docs_recent table
  strSQL = "delete from docs_recent"
  rs.open strSQL, docs
  strSQL = "insert into docs_recent select * from docs order by insert_ts desc limit 500"
  rs.open strSQL, docs
end sub

sub Write_actionlog(type_id, datatype_id, update_id, action_text, additional_text)
  strSQL = "insert into actionlog values ("
  strSQL = strSQL & "'" & currentuser & "',"
  strSQL = strSQL & "'" & doc_id & "',"
  strSQL = strSQL & "'" & cint(type_id) & "',"
  strSQL = strSQL & "'" & cint(datatype_id) & "',"
  strSQL = strSQL & "'" & cint(update_id) & "',"
  strSQL = strSQL & "'" & Format_String(now(),"") & "',"
  strSQL = strSQL & "'" & action_text & "',"
  if additional_text <> "" then
    strSQL = strSQL & "'" & Format_String(additional_text, "text") & "'"
  else
    strSQL = strSQL & "NULL"
  end if
  strSQL = strSQL & ")"
  rsAction.open strSQL, docs
end sub

sub POP_STEP(doc_id)
  dim rs_pop
  set rs_pop = CreateObject("adodb.recordset")
  strSQL = "select step from route where doc_id='" & doc_id & "' order by step limit 1"
  rs_pop.open strSQL, docs
  strSQL = "delete from route where doc_id='" & doc_id & "' and step='" & rs_pop("step") & "'"
  rsAction.open strSQL, docs
  rs_pop.close
  set rs_pop=nothing
end sub

sub NEXT_STEP(doc_id)
  dim rs_next
  dim strText
  set rs_next = CreateObject("adodb.recordset")
  strSQL = "select * from route where doc_id='" & doc_id & "' order by step"
  rs_next.open strSQL, docs
  strText = rs_next("request")
  if rs_next("request") <> "" then
    Write_actionlog Get_typeid(doc_id), 1, 7, "Assigned to " & Get_name(rs_next("route_to")) & " " & Get_status(rs_next("status_id")), strText
  else
    Write_actionlog Get_typeid(doc_id), 1, 7, "Assigned to " & Get_name(rs_next("route_to")) & " " & Get_status(rs_next("status_id")), ""
  end if
  'Update database
  strSQL = "update docs set status_id='" & rs_next("status_id") & "', reqd='" & rs_next("route_to") & "' where doc_id='" & doc_id & "'"
  rsAction.open strSQL, docs

  'Send notification
  objEmail.From = Get_email(currentuser)
  objEmail.To = Get_email(rs_next("route_to"))
  objEmail.subject = Get_doctype(doc_id) & " - " & Get_status(rs_next("status_id"))
  MSG_text = "A document in the Document Management System requires action." & VbCrLf & VbCrLf
  select case cint(rs_next("status_id"))
    case 2
      'For Approval
      MSG_text = MSG_text & "Click on the following link to complete this action." & VbCrLf
      MSG_text = MSG_text & "http://mogsb6/docs/docapprove.asp?filename=" & request.form("filename") & VbCrLf & VbCrLf
      Write_actionlog Get_typeid(doc_id), 1, 4, Get_name(rs_next("route_to")) & " was notified of this assignment", ""
    case 3
      'For Information
      if strText <> "" then
        MSG_text = MSG_text & "More information requested:" & VbCrLf
        MSG_text = MSG_text & strText & VbCrLf & VbCrLf & VbCrLf
        MSG_text = MSG_text & "Please provide the sender with the requested information." & VbCrLf & VbCrLf
        Write_actionlog Get_typeid(doc_id), 1, 4, Get_name(rs_next("route_to")) & " was notified of a request for additional information", strText
      else
        MSG_text = MSG_text & "Please contact the sender concerning this document." & VbCrLf & VbCrLf
        Write_actionlog Get_typeid(doc_id), 1, 4, Get_name(rs_next("route_to")) & " was notified to contact " & Get_name(currentuser) & " concerning this document", ""
      end if
      MSG_text = MSG_text & "Click on the following link to view this document." & VbCrLf
      MSG_text = MSG_text & "http://mogsb6/docs/docapprove.asp?filename=" & request.form("filename") & VbCrLf & VbCrLf
    case 5
      'For Review
      MSG_text = MSG_text & "Click on the following link to review this document." & VbCrLf
      MSG_text = MSG_text & "http://mogsb6/docs/docapprove.asp?filename=" & request.form("filename") & VbCrLf & VbCrLf
      Write_actionlog Get_typeid(doc_id), 1, 4, Get_name(rs_next("route_to")) & " was notified of this assignment", ""
    case 7
      'Declined
      MSG_text = MSG_text & "Comment from " & Get_name(currentuser) & ":" & VbCrLf
      MSG_text = MSG_text & strText & VbCrLf & VbCrLf
      MSG_text = MSG_text & "http://mogsb6/docs/docview.asp?filename=" & request.form("filename") & VbCrLf & VbCrLf
      Write_actionlog Get_typeid(doc_id), 1, 4, Get_name(rs_next("route_to")) & " was notified that the document was declined", strText
  end select
  objEmail.textbody = MSG_text & MSG_DONOTREPLY & MSG_CONTACTINFO & MSG_AUTHORIZATION
  objEmail.send
  strSQL = "update route set in_proc='1' where doc_id='" & doc_id & "' and step='" & rs_next("step") & "'"
  rsAction.open strSQL, docs
  rs_next.close
  set rs_next=nothing
end sub
%>