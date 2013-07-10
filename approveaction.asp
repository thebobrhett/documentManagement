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
'****************
'on error resume next

dim rsAction
dim doc_id
dim strText
dim objEmail
dim ContactInfoName
dim ContactInfoPhone
dim ContactInfoEmail
dim CompanyName
dim MSG_DONOTREPLY
dim MSG_CONTACTINFO
dim MSG_AUTHORIZATION
dim MSG_text
dim intStep

doc_id = csng(left(request.form("filename"), instrrev(request.form("filename"), ".")))

set rsAction = CreateObject("adodb.recordset")

Application Owner
ContactInfoName = "Sha Nommay"
ContactInfoPhone = "843-820-6532"
ContactInfoEmail = "sharon.nommay@dorlastan.com"
CompanyName = "Asahi Kasei Spandex America, Inc"

MSG_DONOTREPLY = VbCrLf & VbCrLf &"*********************************************" & VbCrLf
MSG_DONOTREPLY = MSG_DONOTREPLY & "* This message was generated automatically. *" & VbCrLf
MSG_DONOTREPLY = MSG_DONOTREPLY & "*********************************************"
MSG_CONTACTINFO = VbCrLf & VbCrLf & "For questions concerning this message please contact:"
MSG_CONTACTINFO = MSG_CONTACTINFO & VbCrLf & VbCrLf & ContactInfoName
MSG_CONTACTINFO = MSG_CONTACTINFO & VbCrLf & ContactInfoPhone
MSG_CONTACTINFO = MSG_CONTACTINFO & VbCrLf & ContactInfoEmail
MSG_AUTHORIZATION = VbCrLf & VbCrLf & "This is a confidential communication of " & CompanyName & " and is intended solely for the use of the named addressee. Access to, copying, fowarding, or any other use of this communication or any information or attachments contained herein by any other person is not authorized. If you have received this communication in error you should delete it immediately."

Set objEmail = CreateObject("CDO.Message")
objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "Baltimore"
objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
objEmail.Configuration.Fields.Update

if request.form("approve") = "Approve" then
  if request.form("status_id") = "2" then
    'Log the change
    Write_actionlog Get_typeid(doc_id), 1, 5, "Action " & Get_status(request.form("status_id")) & " completed by " & Get_name(currentuser), ""
    POP_STEP(doc_id)
    strSQL = "select * from route where doc_id='" & doc_id & "' order by step"
    rs.open strSQL, docs
    if rs.eof then
      'No more steps
      'Update database
      strSQL = "update docs set status_id='4' where doc_id='" & doc_id & "'"
      rsAction.open strSQL, docs
      'Send notification
      objEmail.From = Get_email(currentuser)
      objEmail.To = Get_email(request.form("originator"))
      objEmail.subject = Get_doctype(doc_id) & " - " & Get_docstatus(doc_id)
      MSG_text = "A document in the Document Management System has been completed." & VbCrLf & VbCrLf
      MSG_text = MSG_text & "Click on the following link to view this document." & VbCrLf & VbCrLf
      MSG_text = MSG_text & "http://mogsb6/docs/docview.asp?filename=" & request.form("filename") & VbCrLf & VbCrLf
      objEmail.textbody = MSG_text & MSG_DONOTREPLY & MSG_CONTACTINFO & MSG_AUTHORIZATION
      objEmail.send
      Write_actionlog Get_typeid(doc_id), 1, 4, Get_name(request.form("originator")) & " was notified of completion", ""
    else
      'Go to the next step
      NEXT_STEP(doc_id)
    end if
    update_docs_recent()
    response.redirect "docapprove.asp"
  end if
end if

if request.form("decline") = "Decline" then
  'Check for a comment
  if request.form("comment") = "" then
    'If no comment, set err and return to docapprove
    response.redirect "docapprove.asp?err=comment&filename=" & request.form("filename")
  else
    'Log the action
    Write_actionlog Get_typeid(doc_id), 1, 8, Get_name(currentuser) & " declined " & Get_status(request.form("status_id")), request.form("comment")
    'Replace the step with originator action
    strSQL = "select step from route where doc_id='" & doc_id & "' order by step limit 1"
    rs.open strSQL, docs
    '****************
    'How should the document be routed if approval is declined?
    'Currently route to originator and maintain subsequent routing.
    strSQL = "update route set route_to='" & Get_originator(doc_id) & "', status_id='7', request='" & Format_String(request.form("comment"), "text") & "' where doc_id='" & doc_id & "' and step='" & rs("step") & "'"
    '****************
    rsAction.open strSQL, docs
    rs.close
    NEXT_STEP(doc_id)
    update_docs_recent()
  end if
  response.redirect "docapprove.asp"
end if

if request.form("respond") = "Respond" then
  response.write "<div id='logo'>"
  response.write "<img src='http://mogsb6/images/AKGroupLogoSmall.gif'>"
  response.write "<div style='position:absolute; left:10px; top:70px;'><h5><b>A Stretch Above the Rest</b></h5></div>"
  response.write "</div>"

  response.write "<div id='title'>"
  response.write "<h1>Document Management System</h1>"
  response.write "<h2>Response to Request for Information</h2>"
  response.write "</div>"

  response.write "<div id='menu'>"
  response.write "<h1><a href='" & docurl & "/" & Get_year(doc_id) & "/" & Get_doctype(doc_id) & "/" & request.form("filename") & "' target='_blank'>View Document</a></h1>"
  response.write "</div>"

  response.write "<div id='body'>"
  response.write "<form action='approveaction.asp' method='post'>"
  response.write "<input type='hidden' name='filename' value='" & request.form("filename") & "' />"
  response.write "<input type='hidden' name='originator' value='" & request.form("originator") & "' />"
  response.write "<h2>Requested Information</h2>"
  response.write "<h3>" & request.form("request") & "</h3>"
  response.write "<input type='hidden' name='request' value='" & request.form("request") & "' />"
  response.write "<textarea name='response' cols='80' rows='20'></textarea><br/>"
  response.write "<input type='submit' value='Submit' name='respond' />"
  response.write "</div>"
end if

if request.form("respond") = "Submit" then
  'Log the change
  Write_actionlog Get_typeid(doc_id), 1, 6, "Response for requested information was sent from " & Get_name(currentuser) & " to " & Get_name(request.form("originator")), request.form("response")
  POP_STEP(doc_id)
  strSQL = "select * from route where doc_id='" & doc_id & "' order by step"
  rs.open strSQL, docs
  if rs.eof then
    'No more steps
    'Update database
    strSQL = "update docs set status_id='6' where doc_id='" & doc_id & "'"
    rsAction.open strSQL, docs
  else
    'Go to the next step
    NEXT_STEP(doc_id)
    update_docs_recent()
  end if
  'Send notification
  objEmail.From = Get_email(currentuser)
  objEmail.To = Get_email(request.form("originator"))
  objEmail.subject = Get_doctype(doc_id) & " - Response"
  MSG_text = "A document in the Document Management System has a response." & VbCrLf & VbCrLf
  MSG_text = MSG_text & "Click on the following link to complete view this document." & VbCrLf
  MSG_text = MSG_text & "http://mogsb6/docs/docroute.asp?filename=" & request.form("filename") & VbCrLf & VbCrLf
  MSG_text = MSG_text & "Requested Information:" & VbCrLf
  MSG_text = MSG_text & request.form("request") & VbCrLf & VbCrLf & VbCrLf
  MSG_text = MSG_text & "Response:" & VbCrLf
  MSG_text = MSG_text & request.form("response") & VbCrLf & VbCrLf & VbCrLf
  objEmail.textbody = MSG_text & MSG_DONOTREPLY & MSG_CONTACTINFO & MSG_AUTHORIZATION
  objEmail.send
  response.redirect "docapprove.asp"
end if

if request.form("review") = "Reviewed" then
  'Log the change
  Write_actionlog Get_typeid(doc_id), 1, 6, Get_name(currentuser) & " reviewed the document", ""
  POP_STEP(doc_id)
  strSQL = "select * from route where doc_id='" & doc_id & "' order by step"
  rs.open strSQL, docs
  if rs.eof then
    'No more steps
    'Update database
    strSQL = "update docs set status_id='4' where doc_id='" & doc_id & "'"
    rsAction.open strSQL, docs
    'Send notification
    objEmail.From = Get_email(currentuser)
    objEmail.To = Get_email(request.form("originator"))
    objEmail.subject = Get_doctype(doc_id) & " - " & Get_docstatus(doc_id)
    MSG_text = "A document in the Document Management System has been completed." & VbCrLf & VbCrLf
    MSG_text = MSG_text & "Click on the following link to view this document." & VbCrLf & VbCrLf
    MSG_text = MSG_text & "http://mogsb6/docs/docview.asp?filename=" & request.form("filename") & VbCrLf & VbCrLf
    objEmail.textbody = MSG_text & MSG_DONOTREPLY & MSG_CONTACTINFO & MSG_AUTHORIZATION
    objEmail.send
    Write_actionlog Get_typeid(doc_id), 1, 4, Get_name(request.form("originator")) & " was notified of completion", ""
  else
    'Go to the next step
    NEXT_STEP(doc_id)
    update_docs_recent()
  end if
  response.redirect "docapprove.asp"
end if
%>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>