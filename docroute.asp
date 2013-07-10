<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Routing</title>
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

dim rsRte
dim rsRef
dim doc_id
dim status_id
dim bl1
dim intStep

set rsRte = CreateObject("adodb.recordset")
set rsRef = CreateObject("adodb.recordset")
%>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>

<%
if request.querystring("filename") <> "" then
  doc_id = csng(left(request.querystring("filename"), instrrev(request.querystring("filename"), ".")))
  response.write "<h2>" & Get_doctype(doc_id) & " Routing</h2>"
else
  response.write "<h2>Route Documents</h2>"
end if
%>

</div>

<div id='menu'>
<form action='routeaction.asp' method='post'>

<%
if request.querystring("filename") <> "" then
  response.write "<input type='hidden' name='filename' value='" & request.querystring("filename") & "' />"

  if session("status_id") = "" then
    if request.cookies("laststatus") = "" then
      status_id = "2"
    else
      status_id = request.cookies("laststatus")
    end if
  else
    status_id = session("status_id")
  end if

  strSQL = "select * from docs where doc_id='" & doc_id & "'"
  rs.open strSQL, docs

  strSQL = "select * from route where doc_id='" & doc_id & "' order by step"
  rsRte.open strSQL, docs

  bl1 = true
  intStep = 0
  do until rsRte.eof
    if bl1 = true then
      response.write "<h3>Route to<br />"
    else
      response.write "<h3>...then to<br />"
    end if
    response.write "<b>" & Get_name(rsRte("route_to")) & "</b><br />"
    response.write "<b>" & Get_status(rsRte("status_id")) & "</b></h3>"
    bl1 = false
    rsRte.movenext
  loop
  rsRte.close

  if bl1 = true then
    response.write "<h3>Current Status<br />"
    response.write "<b>" & Get_docstatus(doc_id) & "</b></h3>"
    if rs("reqd") <> "" then
      if rs("status_id") = 4 or rs("status_id") = 6 then
        response.write "<h3>Completed by<br />"
      else
        response.write "<h3>Routed to<br />"
      end if
      response.write "<b>" & Get_name(rs("reqd")) & "</b></h3>"
    end if
    response.write "<input type='hidden' name='intStep' value='1' />"
    response.write "<h3>Route to<br />"
    if session("reqd") = "" then
      session("reqd") = request.cookies("lastroute")
    end if
  else
    strSQL = "select * from route where doc_id='" & doc_id & "' order by step desc"
    rsRte.open strSQL, docs
    response.write "<input type='hidden' name='intStep' value='" & cstr(rsRte("step") + 1) & "' />"
    response.write "<h3>...then to<br />"
    if request.querystring("err") = "" then
      session("reqd") = Get_super(rsRte("route_to"))
    end if
    rsRte.close
  end if

  response.write "<select name='reqd'>"
  strSQL = "select * from users where status='Active' order by last_name, first_name"
  rsRef.open strSQL, db
  do until rsRef.eof
    if rsRef("cwid") = session("reqd") then
      response.write "<option value='" & rsRef("cwid") & "' selected='selected'>" & rsRef("last_name") & ", " & rsRef("nickname") & "</option>"
    else
      response.write "<option value='" & rsRef("cwid") & "'>" & rsRef("last_name") & ", " & rsRef("nickname") & "</option>"
    end if
    rsRef.movenext
  loop
  rsRef.close
  response.write "</select></h3>"

  if request.querystring("err") = "status" then
    response.write "<h3><span class='hilite'>Set Status to</span><br />"
  else
    response.write "<h3>Set Status to<br />"
  end if
  response.write "<select name='status_id'>"
  strSQL = "select * from status where is_done='0' order by sortorder"
  rsRef.open strSQL, docs
  do until rsRef.eof
    if rsRef("status_id") = cint(status_id) then
      response.write "<option value='" & rsRef("status_id") & "' selected='selected'>" & rsRef("status_text") & "</option>"
    else
      response.write "<option value='" & rsRef("status_id") & "'>" & rsRef("status_text") & "</option>"
    end if
    rsRef.movenext
  loop
  rsRef.close
  response.write "</select></h3>"

  if request.querystring("err") = "request" then
    response.write "<h3><span class='hilite'>Requested Information</span><br />"
    response.write "<textarea name='request' cols='18' rows='5' /></textarea></h3>"
  end if

  rs.close
  response.write "<input type='submit' value='Then to...' name='route' /><br />"
  response.write "<input type='submit' value='Done' name='route' /><br />"
  if bl1 = false then
    response.write "<input type='submit' value='Delete last' name='route' /><br />"
  end if
  response.write "<input type='submit' value='Cancel' name='route' />"
  response.write "</form>"
else
  response.write "<a href='docsearch.asp'><h1>Search</h1></a>"
  response.write "<a href='docroute.asp'><h1>Route</h1></a>"
  response.write "<a href='docapprove.asp'><h1>Action</h1></a><br />"
end if

'response.write "<br>Form<br>"
'for each Item in request.form
'  response.write Item & "=" & request.form(Item) & "<br>"
'next
'response.write "<br>Cookies<br>"
'for each Item in request.cookies
'  response.write Item & "=" & request.cookies(Item) & "<br>"
'next
'response.write "<br>Querystring<br>"
'for each Item in request.querystring
'  response.write Item & "=" & request.querystring(Item) & "<br>"
'next

%>

</div>

<div id='body'>
<%
if request.querystring("filename") <> "" then
  file_ext = right(request.querystring("filename"), len(request.querystring("filename")) - instrrev(request.querystring("filename"), "."))
  strSQL = "select * from supported_MIME where file_ext='" & file_ext & "'"
  rs.open strSQL, docs
  if not rs.eof then
    if rs("use_mime") <> 0 then
      response.write "<object data='" & docurl & Get_year(doc_id) & "/" & Get_doctype(doc_id) & "/" & request.querystring("filename") & "' type='" & rs("mime_str") & "' width='100%' height='923'></object>"
    else
      response.write "<h2>This document type cannot be viewed here.</h2><a href='" & docurl & Get_year(doc_id) & "/" & Get_doctype(doc_id) & "/" & request.querystring("filename") & "' target='_blank'><h3>Click here to launch document</h3></a>"
    end if
  else
    response.write "Not a supported document type<br />"
  end if
  rs.close
else
  strSQL = "select * from docs where originator='" & currentuser & "' and status_id=1 order by insert_ts desc"
  rs.open strSQL, docs
  response.write "<table border='1' width='100%'>"
  if rs.eof then
    response.write "<caption>No Documents to be Routed by " & Get_name(currentuser) & "</caption>"
  else
    response.write "<caption>Documents to be Routed by " & Get_name(currentuser) & "</caption>"
    response.write "<tr>"
    response.write "<th>Document Type</th>"
    response.write "<th>Originator</th>"
    response.write "<th>Status</th>"
    response.write "<th>Insert Date</th>"
    response.write "<th>Fiscal Year</th>"
    response.write "<th>Action</th>"
    response.write "</tr>"
  end if
  do until rs.eof
    response.write "<tr>"
    response.write "<td align='center'>" & Get_type(rs("type_id")) & "</td>"
    response.write "<td align='center'>" & Get_name(rs("originator")) & "</td>"
    response.write "<td align='center'>" & Get_status(rs("status_id")) & "</td>"
    response.write "<td>" & cdate(rs("insert_ts")) & "</td>"
    response.write "<td align='center'>" & cstr(rs("year")) & "</td>"
    response.write "<td align='center'><a href='docroute.asp?filename=" & rs("filename") & "'>Route</a></td>"
    rs.movenext
  loop
  rs.close
  response.write "</table>"

  response.write "<hr />"
  strSQL = "select * from docs where originator='" & currentuser & "' and status_id<>1 and status_id<>4 order by insert_ts desc"
  rs.open strSQL, docs
  response.write "<table border='1' width='100%'>"
  if rs.eof then
    response.write "<caption>No Documents In Process by " & Get_name(currentuser) & "</caption>"
  else
    response.write "<caption>Documents In Process by " & Get_name(currentuser) & "</caption>"
    response.write "<tr>"
    response.write "<th>Document Type</th>"
    response.write "<th>Originator</th>"
    response.write "<th>Status</th>"
    response.write "<th>Requirement</th>"
    response.write "<th>Insert Date</th>"
    response.write "<th>Fiscal Year</th>"
    response.write "<th>Action</th>"
    response.write "</tr>"
  end if
  do until rs.eof
    response.write "<tr>"
    response.write "<td align='center'>" & Get_type(rs("type_id")) & "</td>"
    response.write "<td align='center'>" & Get_name(rs("originator")) & "</td>"
    response.write "<td align='center'>" & Get_status(rs("status_id")) & "</td>"
    response.write "<td align='center'>" & Get_name(rs("reqd")) & "</td>"
    response.write "<td>" & cdate(rs("insert_ts")) & "</td>"
    response.write "<td align='center'>" & cstr(rs("year")) & "</td>"
    response.write "<td align='center'><a href='docroute.asp?filename=" & rs("filename") & "'>Route</a></td>"
    rs.movenext
  loop
  rs.close
  response.write "</table>"

  if Get_admin(currentuser) = True then
    response.write "<hr />"
    strSQL = "select * from docs where originator<>'" & currentuser & "' and status_id=1 order by insert_ts desc"
    rs.open strSQL, docs
    response.write "<table border='1' width='100%'>"
    if rs.eof then
      response.write "<caption>No Other Documents to be Routed</caption>"
    else
      response.write "<caption>Other Documents to be Routed</caption>"
      response.write "<tr>"
      response.write "<th>Document Type</th>"
      response.write "<th>Originator</th>"
      response.write "<th>Status</th>"
      response.write "<th>Insert Date</th>"
      response.write "<th>Fiscal Year</th>"
      response.write "<th>Action</th>"
      response.write "</tr>"
    end if
    do until rs.eof
      response.write "<tr>"
      response.write "<td align='center'>" & Get_type(rs("type_id")) & "</td>"
      response.write "<td align='center'>" & Get_name(rs("originator")) & "</td>"
      response.write "<td align='center'>" & Get_status(rs("status_id")) & "</td>"
      response.write "<td>" & cdate(rs("insert_ts")) & "</td>"
      response.write "<td align='center'>" & cstr(rs("year")) & "</td>"
      response.write "<td align='center'><a href='docroute.asp?filename=" & rs("filename") & "'>Route</a></td>"
      rs.movenext
    loop
    rs.close
    response.write "</table>"

    response.write "<hr />"
    strSQL = "select * from docs where originator<>'" & currentuser & "' and status_id<>1 and status_id<>4 order by insert_ts desc"
    rs.open strSQL, docs
    response.write "<table border='1' width='100%'>"
    if rs.eof then
      response.write "<caption>No Other Documents In Process</caption>"
    else
      response.write "<caption>Other Documents In Process</caption>"
      response.write "<tr>"
      response.write "<th>Document Type</th>"
      response.write "<th>Originator</th>"
      response.write "<th>Status</th>"
      response.write "<th>Requirement</th>"
      response.write "<th>Insert Date</th>"
      response.write "<th>Fiscal Year</th>"
      response.write "<th>Action</th>"
      response.write "</tr>"
    end if
    do until rs.eof
      response.write "<tr>"
      response.write "<td align='center'>" & Get_type(rs("type_id")) & "</td>"
      response.write "<td align='center'>" & Get_name(rs("originator")) & "</td>"
      response.write "<td align='center'>" & Get_status(rs("status_id")) & "</td>"
      response.write "<td align='center'>" & Get_name(rs("reqd")) & "</td>"
      response.write "<td>" & cdate(rs("insert_ts")) & "</td>"
      response.write "<td align='center'>" & cstr(rs("year")) & "</td>"
      response.write "<td align='center'><a href='docroute.asp?filename=" & rs("filename") & "'>Route</a></td>"
      rs.movenext
    loop
    rs.close
    response.write "</table>"
  end if
end if
%>

</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>