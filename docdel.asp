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

<div id='logo'>
<img src='http://mogsb6/images/AKGroupLogoSmall.gif'>
<div style='position:absolute; left:10px; top:70px;'><h5><b>A Stretch Above the Rest</b></h5></div>
</div>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>
<h2>Delete this document?</h2>
</div>

<%
'****************
'Bob Rhett - Thursday, February 4, 2010
'  Created
'****************
'on error resume next

dim objFSO
dim file_ext

set objFSO = Server.CreateObject("Scripting.FileSystemObject")

if request.querystring("f") <> "" then
  if request.form("DeleteFile") = "OK" then
    objFSO.DeleteFile(sourcepath & request.querystring("f"))
    objFSO.DeleteFile(temppath & request.querystring("f"))
    response.redirect "doclist.asp"
  elseif request.form("Cancel") = "Cancel" then
    response.redirect "doclist.asp"
  else
%>

<div id='menu'>
<%
    response.write "<h2>This document will be permanently deleted.</h2>"
    response.write "<h3>Are you sure?</h3>"
    response.write "<form action='docdel.asp?f=" & request.querystring("f") & "' method='post'>"
    response.write "<input type='submit' name='DeleteFile' value='OK' /><br />"
    response.write "<input type='submit' name='Cancel' value='Cancel' />"
%>
</div>

<div id='body'>
<%
'response.write sourcepath & request.querystring("f") & "<br>"
    objFSO.CopyFile sourcepath & request.querystring("f"), temppath & request.querystring("f"), True
    file_ext = right(request.querystring("f"), len(request.querystring("f")) - instrrev(request.querystring("f"), "."))
'response.write file_ext & "<br>"
    strSQL = "select * from supported_MIME where file_ext='" & file_ext & "'"
    rs.open strSQL, docs
    if not rs.eof then
      if rs("use_mime") <> 0 then
'response.write rs("mime_str") & "<br>"
'response.write tempurl & request.querystring("f") & "<br>"
        response.write "<object data='" & tempurl & request.querystring("f") & "' type='" & rs("mime_str") & "' width='100%' height='923'></object>"
      else
'response.write rs("clsid") & "<br>"
'response.write request.querystring("f") & "<br>"
'        response.write "<object classid='clsid:" & rs("clsid") & "' data='" & tempurl & request.querystring("f") & "'></object>"
         response.write "<h2>This document type cannot be viewed here.</h2><a href='" & tempurl & request.querystring("f") & "' target='_blank'><h3>Click here to launch document</h3></a>"
      end if
    else
      response.write "Not a supported document type<br />"
    end if
  end if
end if
'response.redirect "doclist.asp"
%>
</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>