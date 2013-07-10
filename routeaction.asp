<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Management</title>
<link href='./css/docstyle.css' rel='stylesheet' type='text/css'>
<script src='http://mogsb6/myprintln.js'></script>
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
'dim strText
dim objEmail
dim ContactInfoName
dim ContactInfoPhone
dim ContactInfoEmail
dim CompanyName
dim MSG_DONOTREPLY
dim MSG_CONTACTINFO
dim MSG_AUTHORIZATION
dim MSG_text

doc_id = csng(left(request.form("filename"), instrrev(request.form("filename"), ".")))

set rsAction = CreateObject("adodb.recordset")

set objFSO = Server.CreateObject("Scripting.FileSystemObject")

'Application Owner
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

'validate_data
session("err_prompt") = ""
session("reqd") = ""
session("status_id") = ""
if request.form("route") <> "Delete last" and request.form("route") <> "Cancel" then
  if request.form("status_id") = "3" and request.form("request") = "" then
    session("reqd") = request.form("reqd")
    session("status_id") = request.form("status_id")
    response.redirect "docroute.asp?err=request&filename=" & request.form("filename")
  end if
end if

select case request.form("route")
  case "Then to..."
    response.write "Then to..."
    'Update database
    if request.form("request") <> "" then
      strSQL = "insert into route (doc_id, step, route_to, status_id, request) values ('" & doc_id & "', '" & cint(request.form("intStep")) & "', '" & request.form("reqd") & "', '" & cint(request.form("status_id")) & "', '" & Format_String(request.form("request"), "text") & "')"
    else
      strSQL = "insert into route (doc_id, step, route_to, status_id) values ('" & doc_id & "', '" & cint(request.form("intStep")) & "', '" & request.form("reqd") & "', '" & cint(request.form("status_id")) & "')"
    end if
    rsAction.open strSQL, docs
    if cint(request.form("intStep")) = 1 then
      response.cookies("lastroute") = request.form("reqd")
      response.cookies("lastroute").expires = date() + 30
      response.cookies("laststatus") = request.form("status_id")
      response.cookies("laststatus").expires = date() + 30
    end if
    response.redirect "docroute.asp?filename=" & request.form("filename")

  case "Done"
    if request.form("request") <> "" then
      strSQL = "insert into route (doc_id, step, route_to, status_id, request) values ('" & doc_id & "', '" & cint(request.form("intStep")) & "', '" & request.form("reqd") & "', '" & cint(request.form("status_id")) & "', '" & Format_String(request.form("request"), "text") & "')"
    else
      strSQL = "insert into route (doc_id, step, route_to, status_id) values ('" & doc_id & "', '" & cint(request.form("intStep")) & "', '" & request.form("reqd") & "', '" & cint(request.form("status_id")) & "')"
    end if
    rsAction.open strSQL, docs
    NEXT_STEP(doc_id)
    update_docs_recent()
    if cint(request.form("intStep")) = 1 then
      response.cookies("lastroute") = request.form("reqd")
      response.cookies("laststatus") = request.form("status_id")
    end if

  case "Delete last"
'****************
'Look for route.in_proc
'****************
    strSQL = "select * from route where doc_id='" & doc_id & "' order by step desc"
    rs.open strSQL, docs
    strSQL = "delete from route where doc_id='" & doc_id & "' and step='" & rs("step") & "'"
    rsAction.open strSQL, docs
    rs.close
    strSQL = "select * from route where doc_id='" & doc_id & "' order by step"
    rs.open strSQL, docs
    if rs.eof then
      strSQL = "update docs set status_id='1', reqd='' where doc_id='" & doc_id & "'"
      rsAction.open strSQL, docs
    end if
    rs.close
    update_docs_recent()
    response.redirect "docroute.asp?filename=" & request.form("filename")
end select
response.redirect "docroute.asp"
%>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>