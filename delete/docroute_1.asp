<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Routing</title>
<link rel=STYLESHEET href='http://mogsa4/docs/docstyle.css' type='text/css'>
<script src='http://mogsa4/myprintln.js'></script>
<style type="text/css">
caption { font-weight:bold; font-size:14; color:darkblue}
th {background-color:powderblue; font-weight:bold; font-size:12; color:black}
td { font-weight:normal; font-size:12; color:black; }
span.hilite { color:red; }
span.hidelink { text-decoration:none; color:darkblue; }
</style>
<!--#includes file='func.inc'-->
</head>
<body>

<div id='logo'>
<img src='http://mogsa4/images/AKGroupLogoSmall.gif'>
<div style='position:absolute; left:10px; top:70px;'><h5><b>A Stretch Above the Rest</b></h5></div>
</div>

<%
'****************
'Bob Rhett - Tuesday, January 26, 2010
'  Created
'****************
'on error resume next

dim rsRef
dim doc_id
dim status_id

set rsRef = CreateObject("adodb.recordset")

if request("filename") <> "" then
  doc_id = csng(left(request("filename"), instrrev(request("filename"), ".")))
end if
%>

<div id='title'>
<h1><a href='doclist.asp'><span class='hidelink'>Document Management System</span></a></h1>

<%
if request("filename") <> "" then
  response.write "<h2>" & Get_doctype(doc_id) & " Routing</h2>"
else
  response.write "<h2>Route Documents</h2>"
end if
%>

</div>

<div id='menu'>
<form action='routeaction.asp' method='post'>

<%
if request("filename") <> "" then
  response.write "<input type='hidden' name='filename' value='" & request("filename") & "' />"
  response.write "<h3>Current Status<br />"
  strSQL = "select status_text, status_id from status where status_id=(select status_id from docs where doc_id='" & doc_id & "')"
  rs.open strSQL, docs
  response.write "<b>" & rs("status_text") & "</b></h3>"
  if session("status_id") = "" then
    status_id = rs("status_id")
  else
    status_id = session("status_id")
  end if
  rs.close

  strSQL = "select * from docs where doc_id='" & doc_id & "'"
  rs.open strSQL, docs

  response.write "<h3>Route to<br />"
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

  response.write "<h3>Set Status to<br />"
  response.write "<select name='status_id'>"
  strSQL = "select * from status order by sortorder"
  rsRef.open strSQL, docs
  do until rsRef.eof
    if rsRef("status_id") <> 1 then
      if rsRef("status_id") = cint(status_id) then
        response.write "<option value='" & rsRef("status_id") & "' selected='selected'>" & rsRef("status_text") & "</option>"
      else
        response.write "<option value='" & rsRef("status_id") & "'>" & rsRef("status_text") & "</option>"
      end if
    end if
    rsRef.movenext
  loop
  rsRef.close
  response.write "</select></h3>"

  if request("err") = "request" then
    response.write "<h3><span class='hilite'>Requested Information</span><br />"
    response.write "<textarea name='request' cols='18' rows='5' />" & rs("request") & "</textarea></h3>"
  end if

  rs.close
  response.write "<input type='submit' value='Submit' name='route' />"
  response.write "</form>"
  response.write "<form action='docroute.asp' method='post'>"
  response.write "<input type='submit' value='Cancel' name='route' />"
  response.write "</form>"
else
  response.write "<a href='docsearch.asp'><h1>Search</h1></a>"
  response.write "<a href='docroute.asp'><h1>Route</h1></a>"
  response.write "<a href='docapprove.asp'><h1>Approve</h1></a><br />"
end if
%>

</div>

<div id='body'>
<%
if request("filename") <> "" then
  file_ext = right(request("filename"), len(request("filename")) - instrrev(request("filename"), "."))
  strSQL = "select mime_str from supported_MIME where file_ext='" & file_ext & "'"
  rs.open strSQL, docs
  if not rs.eof then
    if request("type_id") = "" then
      response.write "<object data='" & docurl & Get_year(doc_id) & "/" & Get_doctype(doc_id) & "/" & request("filename") & "' type='" & rs("mime_str") & "' width='100%' height='923'></object>"
    else
      response.write "<object data='" & tempurl & request("filename") & "' type='" & rs("mime_str") & "' width='100%' height='923'></object>"
    end if
  end if
  rs.close
else
'  strSQL = "select * from docs inner join docdata on docs.doc_id=docdata.doc_id where  " & where_clause & "docs.doc_id is not null group by docdata.doc_id order by docs.insert_ts desc"
  strSQL = "select * from docs where status_id=1 order by insert_ts desc"
  rs.open strSQL, docs
  response.write "<table border='1'>"
  if rs.eof then
    response.write "<caption>No Documents to be Routed</caption>"
  else
    response.write "<caption>Documents to be Routed</caption>"
    response.write "<tr>"
    response.write "<th bgcolor='powderblue'>Document Type</th>"
    response.write "<th bgcolor='powderblue'>Originator</th>"
    response.write "<th bgcolor='powderblue'>Status</th>"
    response.write "<th bgcolor='powderblue'>Insert Date</th>"
    response.write "<th bgcolor='powderblue'>Fiscal Year</th>"
    response.write "<th bgcolor='powderblue'>Action</th>"
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
  response.write "</table>"
end if
%>

</div>

</body>
</html>