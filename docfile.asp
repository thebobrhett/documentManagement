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

<%
'****************
'Bob Rhett - Tuesday, January 26, 2010
'  Created
'****************
'on error resume next

dim filename
dim file_ext

if request.querystring("f") <> "" then
  file_ext = right(request.querystring("f"), len(request.querystring("f")) - (instrrev(request.querystring("f"), ".") - 1))

  set objFSO = Server.CreateObject("Scripting.FileSystemObject")

  'Create a sandbox record and a temp file
  strSQL = "insert into sandbox (originator, insert_ts) values ('" & currentuser & "', '" & Format_String(now(),"") & "')"
  rs.open strSQL, docs
  strSQL = "select doc_id from sandbox where doc_id=LAST_INSERT_ID()"
  rs.open strSQL, docs
  filename = cstr(rs("doc_id")) & file_ext
  rs.close
  strSQL = "update sandbox set filename='" & filename & "', original_filename='" & request.querystring("f") & "' where doc_id=LAST_INSERT_ID()"
  rs.open strSQL, docs
  objFSO.CopyFile sourcepath & request.querystring("f"), temppath & filename
%>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>
<%
  response.write "<h2>Current user: " & Get_name(currentuser) & "</h2>"
%>
</div>

<div id='menu'>
<form action='docdata.asp' method='post'>
<input type='hidden' name='filename' value='<%=filename%>' />
<h3>Document Type<br />
<select name='type_id'>
<%
  strSQL = "select * from doctype order by type_text"
  rs.open strSQL, docs
  do until rs.eof
    if request.cookies("type_id") <> "" then
      if cint(request.cookies("type_id")) = rs("type_id") then
        response.write "<option value='" & rs("type_id") & "' selected='selected'>" & rs("type_text") & "</option>"
      else
        response.write "<option value='" & rs("type_id") & "'>" & rs("type_text") & "</option>"
      end if
    else
      response.write "<option value='" & rs("type_id") & "'>" & rs("type_text") & "</option>"
    end if
    rs.movenext
  loop
  rs.close
%>
</select></h3>
<input type='submit' value='Continue' name='continue' />
</form>
</div>

<div id='body'>
<%
  file_ext = right(request.querystring("f"), len(request.querystring("f")) - instrrev(request.querystring("f"), "."))
  strSQL = "select * from supported_MIME where file_ext='" & file_ext & "'"
  rs.open strSQL, docs
  if not rs.eof then
    if rs("use_mime") <> 0 then
      response.write "<object data='" & tempurl & request.querystring("f") & "' type='" & rs("mime_str") & "' width='100%' height='923'></object>"
    else
      response.write "<h2>This document type cannot be viewed here.</h2><a href='" & tempurl & request.querystring("f") & "' target='_blank'><h3>Click here to launch document</h3></a>"
    end if
  else
    response.write "Not a supported document type<br />"
  end if
else
  response.redirect "doclist.asp"
end if
%>
</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>