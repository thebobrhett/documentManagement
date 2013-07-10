<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Management</title>
<link href='./css/docstyle.css' rel='stylesheet' type='text/css'>
<!--#includes file='./inc/init.inc'-->
<!--#includes file='./inc/func.inc'-->
<!--#includes file='./inc/sub.inc'-->
</head>

<body>


<%
'****************
'Bob Rhett - Tuesday, January 26, 2010
'  Created
'
'Bob Rhett - Friday, May 28, 2010
'  Added selection for alternate vendor list
'****************
'on error resume next

dim rsRef
dim rsTxt
dim rsAction
dim doc_id
dim strText
dim pastdate
dim outdated
dim flag_complete
dim vendorx

doc_id = csng(left(request("filename"), instrrev(request("filename"), ".")))
pastdate = dateadd("d", 0-7, now)
outdated = Format_String(pastdate,"")
flag_complete = "incomplete"
prompt_complete = ""

set rsRef = CreateObject("adodb.recordset")
set rsTxt = CreateObject("adodb.recordset")
set rsAction = CreateObject("adodb.recordset")

set objFSO = Server.CreateObject("Scripting.FileSystemObject")

response.write "<form action='docedit.asp' method='post'>"
response.write "<input type='hidden' name='ref_url' value='" & request.form("ref_url") & "' />"
response.write "</form>"

'validate_data
session("err_prompt") = ""
for each Item In request.form
  response.write "'" & Item & "'<br>"
  response.write "'" & request.form(Item) & "'<br>"
  strSQL = "select * from datatype where doctype_id='" & request.form("type_id") & "' and datatype_text='" & Item & "'"
  rs.open strSQL, docs
  if not rs.eof then
'****************
'    if rs("is_reqd") <> 0 then
'      'This item is required...
'      if request.form(Item) <> "" then
'        '...is what they wrote acceptable?
'        select case rs("datatype")
'          case "varchar"
'            'I'll take anything here.
'            if flag_complete = "incomplete" then flag_complete = "complete"
'            session(Item) = request.form(Item)
'          case "numeric"
'            'Is it a number?
'            if isnumeric(request.form(Item)) then
'              'Yes.
'              if flag_complete = "incomplete" then flag_complete = "complete"
'              session(Item) = cstr(request.form(Item))
'            else
'              'No.
'              flag_complete = Item
'              session(Item) = request.form(Item)
'              session("err_prompt") = "must be numeric"
'            end if
'          case "date"
'            'Is it a date?
'            if isdate(request.form(Item)) then
'              'Yes.
'              if flag_complete = "incomplete" then flag_complete = "complete"
'              session(Item) = request.form(Item)
'            else
'              'No.
'              flag_complete = Item
'              session(Item) = request.form(Item)
'              session("err_prompt") = "must be a valid date"
'            end if
'        end select
'      else
'        '...but they sent an empty string
'        flag_complete = Item
'        session(Item) = request.form(Item)
'        session("err_prompt") = "cannot be blank"
'      end if
'    else
'      'It's not required but check it if it's not empty.
'      session(Item) = request.form(Item)
'      if flag_complete = "incomplete" then flag_complete = "complete"
'    end if
'  end if
'****************
    if request.form(Item) <> "" then
      '...is what they wrote acceptable?
      select case rs("datatype")
        case "varchar"
          'I'll take anything here.
          if flag_complete = "incomplete" then flag_complete = "complete"
          session(Item) = request.form(Item)
        case "numeric"
          'Is it a number?
          if isnumeric(request.form(Item)) then
            'Yes.
            if flag_complete = "incomplete" then flag_complete = "complete"
            session(Item) = cstr(request.form(Item))
          else
            'No.
            flag_complete = Item
            session(Item) = request.form(Item)
            if request.form(Item) = "vendorx" then
              'Show alternate vendor list
              session("vendorx") = True
            elseif request.form(Item) = "vendors" then
              session("vendorx") = False
            else
              Session.Contents.Remove("vendorx")
              session("err_prompt") = "must be numeric"
            end if
          end if
        case "date"
          'Is it a date?
          if isdate(request.form(Item)) then
            'Yes.
            if flag_complete = "incomplete" then flag_complete = "complete"
            session(Item) = request.form(Item)
          else
            'No.
            flag_complete = Item
            session(Item) = request.form(Item)
            session("err_prompt") = "must be a valid date"
          end if
      end select
    else
      '...they sent an empty string
      if rs("is_reqd") <> 0 then
        'This item is required...
        if flag_complete = "complete" then
          flag_complete = Item
          session(Item) = request.form(Item)
          session("err_prompt") = "cannot be blank"
        end if
      else
        'It's not required so move on.
        session(Item) = request.form(Item)
        if flag_complete = "incomplete" then flag_complete = "complete"
      end if
    end if
  end if
  rs.close
  response.write "<hr>"
  response.write "'" & flag_complete & "'<br>"
  response.write "'" & session("err_prompt") & "'<br>"
  response.write "<hr>"
next

'Insert a new document
if request.form("submit") = "Save" then
  if flag_complete = "complete" then
    for each Item In request.form
      response.cookies(Item) = request.form(Item)
      response.cookies(Item).expires = date() + 30
      strSQL = "select * from datatype where datatype_text='" & Item & "' and doctype_id='" & request.form("type_id") & "'"
      rs.open strSQL, docs
      if not rs.eof then
        Write_actionlog request.form("type_id"), rs("datatype_id"), 1, Item & " " & rs("datatype") & " value set to " & Format_String(request.form(Item),rs("datatype")), ""
        strSQL = "insert into docdata (datatype_id, doc_id, " & rs("datatype") & "_val) values ('" & rs("datatype_id") & "', '" & doc_id & "', '" & Format_String(request.form(Item),rs("datatype")) & "')"
        on error resume next
        rsAction.open strSQL, docs
        on error goto 0
      end if
      rs.close
    next
    'Be sure the document doesn't already exist
    strSQL = "select * from docs where doc_id='" & doc_id & "'"
    rs.open strSQL, docs
    if rs.eof then
      rs.close
      strSQL = "select * from sandbox where doc_id='" & doc_id & "'"
      rs.open strSQL, docs
      strSQL = "insert into docs (doc_id, filename, original_filename, type_id, year, status_id, originator, insert_ts) values ('" & doc_id & "', '" & request.form("filename") & "', '" & rs("original_filename") & "', '" & cint(request.form("type_id")) & "', '" & cint(request.form("year")) & "', '" & rs("status_id") & "', '" & rs("originator") & "', '" & Format_String(rs("insert_ts"),"") & "')"
      rsAction.open strSQL, docs
      rs.close
      strSQL = "delete from sandbox where doc_id='" & doc_id & "'"
      rsAction.open strSQL, docs
      strSQL = "select * from docs where doc_id='" & doc_id & "'"
      rs.open strSQL, docs
      Write_actionlog request.form("type_id"), 1, 1, "Document type is " & Get_type(rs("type_id")), ""
      Write_actionlog request.form("type_id"), 1, 1, "Fiscal year is " & rs("year"), ""
      Write_actionlog request.form("type_id"), 1, 1, "Filename is " & request.form("filename"), ""
      Write_actionlog request.form("type_id"), 1, 1, "Original filename was " & rs("original_filename"), ""
      rs.close
'****************
'Add record to archive
'Create archive tables if necessary
  'Check to see if destination exists
    'If not then create it
'****************
    else
      'If so, did the fiscal year change?
      rs.close
      if Get_year(doc_id) <> cint(request.form("year")) then
        Write_actionlog Get_typeid(doc_id), 1, 2, "Changed fiscal year from " & Get_year(doc_id) & " to " & request.form("year"), ""
        strSQL = "update docs set year='" & cint(request.form("year")) & "' where doc_id='" & doc_id & "'"
        rsAction.open strSQL, docs
      end if
    end if
    session.abandon

    'Cleanup
    create_destination()
    'Move file to final destination
    objFSO.MoveFile temppath & request.form("filename"), docpath & request.form("year") & "\" & Get_type(request.form("type_id")) & "\" & request.form("filename")
    'Delete original file
    'Get the original filename
    strSQL = "select original_filename from docs where doc_id='" & doc_id & "'"
    rs.open strSQL, docs
    objFSO.DeleteFile sourcepath & rs("original_filename")
    rs.close
    update_docs_recent()
  else
'    session.abandon
    response.redirect "docdata.asp?type_id=" & request.form("type_id") & "&err=" & flag_complete & "&filename=" & request.form("filename")
  end if
end if

if request.form("edit") = "Update" then
  if flag_complete = "complete" then
    'Did the basic document type change?
    strSQL = "select * from docs where doc_id='" & doc_id & "'"
    rs.open strSQL, docs
    if rs("type_id") <> cint(request.form("type_id")) then
      objFSO.MoveFile docpath & Get_year(doc_id) & "\" & Get_doctype(doc_id) & "\" & rs("filename"), temppath & rs("filename")
      Write_actionlog request.form("type_id"), 1, 2,"Changed document type from " & Get_doctype(doc_id) & " to " & Get_type(request.form("type_id")), ""
      strSQL = "update docs set type_id='" & request.form("type_id") & "' where doc_id='" & doc_id & "'"
      rsAction.open strSQL, docs
      strSQL = "delete from docdata where doc_id='" & doc_id & "'"
      rsAction.open strSQL, docs
      response.redirect "docdata.asp?type_id=" & request.form("type_id") & "&filename=" & request.form("filename")
    else
      for each Item In request.form
        strSQL = "select * from datatype where datatype_text='" & Item & "' and doctype_id='" & request.form("type_id") & "'"
        rsRef.open strSQL, docs
        if not rsRef.eof then
          'Check for the current value and then don't change or log if it matches
          strSQL = "select * from docdata where doc_id='" & doc_id & "' and datatype_id='" & rsRef("datatype_id") & "'"
          rsTxt.open strSQL, docs
          if Format_String(rsTxt(rsRef("datatype") & "_val"),rsRef("datatype")) <> Format_String(request.form(Item),rsRef("datatype")) then
            Write_actionlog Get_typeid(doc_id), rsRef("datatype_id"), 2, "Changed " & Item & " " & rsRef("datatype") & " value from " & Format_String(rsTxt(rsRef("datatype") & "_val"),rsRef("datatype")) & " to " & Format_String(request.form(Item),rsRef("datatype")), ""
            strSQL = "update docdata set " & rsRef("datatype") & "_val='" & Format_String(request.form(Item),rsRef("datatype")) & "' where doc_id='" & doc_id & "' and datatype_id='" & rsRef("datatype_id") & "'"
            rsAction.open strSQL, docs
          end if
          rsTxt.close
        end if
        rsRef.close
      next
      'Did the fiscal year change?
      if Get_year(doc_id) <> cint(request.form("year")) then
        Write_actionlog Get_typeid(doc_id), 1, 2, "Changed fiscal year from " & Get_year(doc_id) & " to " & request.form("year"), ""
'****************
'Add record to correct archive
'Create archive tables if necessary
  'Check to see if destination exists
    'If not then create it
'Remove record from incorrect archive
'****************
        create_destination()
        'Move file to final destination
        objFSO.MoveFile docpath & Get_year(doc_id) & "\" & Get_doctype(doc_id) & "\" & rs("filename"), docpath & request.form("year") & "\" & Get_doctype(doc_id) & "\" & rs("filename")
        strSQL = "update docs set year='" & cint(request.form("year")) & "' where doc_id='" & doc_id & "'"
        rsAction.open strSQL, docs
      end if
'****************
'Figure out how to abandon the session variables but keep the search parameters
      session.abandon
'****************
      if request.form("ref_url") <> "" then
        response.redirect request.form("ref_url")
      else
        response.redirect "docview.asp?filename=" & request("filename")
      end if
    end if
    rs.close
    update_docs_recent()
  else
    response.redirect "docedit.asp?err=" & flag_complete & "&filename=" & request.form("filename")
  end if
end if

'Cleanup old temp files and incomplete data entries
strSQL = "select * from sandbox where type_id is null and insert_ts<'" & outdated & "'"
rs.open strSQL, docs
do until rs.eof
  if objFSO.FileExists(temppath & rs("filename")) then
    objFSO.DeleteFile temppath & rs("filename")
  end if
  rs.movenext
loop
rs.close
strSQL = "delete from sandbox where type_id is null and insert_ts<'" & outdated & "'"
rs.open strSQL, docs

'****************
'Delete all old files from temp folder
'****************

'****************
'Find all records in the active database created more than 2 years ago.
  'Verify that the document exists in the archive database.
  'If so, then delete the record from the active database.
'Log this action
'****************

response.redirect "doclist.asp?filename=" & request.form("filename")
%>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>