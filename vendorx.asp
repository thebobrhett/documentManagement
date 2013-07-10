<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Management Administration</title>
<link href='./css/docstyle.css' rel='stylesheet' type='text/css'>
<script src='./js/myprintln.js' type='text/javascript'></script>
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
'Bob Rhett - Tuesday, August 24, 2010
'  Created
'****************
'on error resume next

dim rsa
dim rsb
dim intCount

set rsa = CreateObject("adodb.recordset")
set rsb = CreateObject("adodb.recordset")
%>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>
<h2>Vendor List Administration</h2>
</div>

<div id='menu'>
<%
response.write "<form action='vendorxaction.asp' method='post'>"
response.write "<h1>Create a new ad hoc Vendor</h1>"
select case request.querystring("err")
  case "noname"
    response.write "<span class='hilite'>Cannot be blank</span><br />"
    response.write "<input type='text' name='vendor_name' value='' /><br /><br />"
  case "duplicate"
'****************
'Send the vendor id to this error
    response.write "<span class='hilite'>A vendor by this name already exists</span><br />"
    response.write "<input type='text' name='vendor_name' value='" & request.querystring("v") & "' /><br /><br />"
'****************
  case else
    response.write "<input type='text' name='vendor_name' value='' /><br /><br />"
end select
response.write "<input type='submit' value='Create' name='new_vendorx' />"
'response.write "<hr />"
'response.write "<h1>Update the Approved Vendor List from NetSuite</h1>"
'response.write "<input type='submit' value='Update' name='update_vendors' />"
response.write "</form>"
%>
</div>

<div id='body'>
<div id='col-left'>
<%
  response.write "<table border='1' width='100%'>"
  response.write "<caption>Approved Vendor List</caption>"
  response.write "<tr>"
  response.write "<th>ID</th>"
  response.write "<th>Name</th>"
  response.write "<th>Docs</th>"
  response.write "</tr>"
  strSQL = "select * from vendors where vendor_id>'0' order by name"
  rs.open strSQL, docs
  do until rs.eof
    response.write "<tr>"
    response.write "<td>" & rs("vendor_id") & "</td>"
    response.write "<td><a href='vendordetail.asp?v=" & rs("vendor_id") & "'>" & rs("name") & "</a></td>"
    strSQL = "select type_id from doctype"
    rsb.open strSQL, docs
    intCount = 0
    do until rsb.eof
      strSQL = "select count(0) from docdata where datatype_id=(select datatype_id from datatype where doctype_id='" & rsb("type_id") & "' and datatype_text='vendor_id') and numeric_val='" & rs("vendor_id") & "'"
      rsa.open strSQL, docs
      intCount = intCount + rsa("count(0)")
      rsa.close
      rsb.movenext
    loop
    rsb.close
    if intCount = 0 then
      response.write "<td>&nbsp;</td>"
    else
      response.write "<td align='center'>" & intCount & "</td>"
    end if
    response.write "</tr>"
    rs.movenext
  loop
  rs.close
  response.write "</table>"
%>
</div>

<div id='col-right'>
<%
response.write "<table border='1' width='100%'>"
response.write "<caption>Ad Hoc Vendor List</caption>"
response.write "<tr>"
response.write "<th>ID</th>"
response.write "<th>Name</th>"
response.write "<th>Docs</th>"
response.write "</tr>"
strSQL = "select * from vendors where vendor_id<'0' order by name"
rs.open strSQL, docs
do until rs.eof
  response.write "<tr>"
  response.write "<td>" & rs("vendor_id") & "</td>"
  response.write "<td>" & rs("name") & "</td>"
  strSQL = "select type_id from doctype"
  rsb.open strSQL, docs
  intCount = 0
  do until rsb.eof
    strSQL = "select count(0) from docdata where datatype_id=(select datatype_id from datatype where doctype_id='" & rsb("type_id") & "' and datatype_text='vendor_id') and numeric_val='" & rs("vendor_id") & "'"
    rsa.open strSQL, docs
    intCount = intCount + rsa("count(0)")
    rsa.close
    rsb.movenext
  loop
  rsb.close
  response.write "<td align='center'>"
  if intCount = 0 then
    response.write "<a href='vendorxaction.asp?id=" & rs("vendor_id") & "&delete=yes'>Delete</a>"
  else
    response.write intCount
  end if
  response.write "</td>"
  response.write "</tr>"
  rs.movenext
loop
rs.close
response.write "</table>"
%>
</div>
</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>