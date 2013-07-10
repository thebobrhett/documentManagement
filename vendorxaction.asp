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
'Bob Rhett - Tuesday, August 24, 2010
'  Created
'****************
'on error resume next
dim rsAction

set rsAction = CreateObject("adodb.recordset")

docs.close
docs.Open = "driver={MySQL ODBC 3.51 Driver};option=16387;server=richmond.aksa.local;user=doc_admin;password=sparkplug;DATABASE=docmgt;"


if request.form("new_vendorx") = "Create" then
  if request.form("vendor_name") = "" then
    'They didn't enter a vendor name
    response.redirect "vendorx.asp?err=noname"
  else
    strSQL = "select * from vendors where name='" & request.form("vendor_name") & "'"
    rs.open strSQL, docs
    if not rs.eof then
      'They entered a duplicate document type name
      response.redirect "vendorx.asp?err=duplicate&v=" & request.form("vendor_name")
    else
      'Get the next id number
      strSQL = "select vendor_id from vendors where vendor_id<'0' order by vendor_id"
      rsAction.open strSQL, docs
      if rsAction.eof then
        strSQL = "insert into vendors (vendor_id, name) values ('-1', '" & request.form("vendor_name") & "')"
      else
        strSQL = "insert into vendors (vendor_id, name) values ('" & rsAction("vendor_id") - 1 & "', '" & request.form("vendor_name") & "')"
      end if
      rsAction.close
      response.write "'" & strSQL & "'<br>"
      rsAction.open strSQL, docs
    end if
    rs.close
  end if
end if

if request.form("update_vendors") = "Update" then
  dim objNetSuite
  dim objDelete
  dim objInsert

  set objNetSuite = CreateObject("adodb.connection")
'****************
'Must open port 1706 to the internet for this to work
'Scheduled to run from Toronto
  objNetSuite.ConnectionString = "DSN=NetSuite.com;UID=pull.broker@dorlastan.com;PWD=20Dollars;"
  objNetSuite.open
'****************

  set objDelete = CreateObject("adodb.recordset")
  set objInsert = CreateObject("adodb.recordset")

  strSQL = "delete from vendors where vendor_id>'0'"
  objDelete.open strSQL, objdb

  strSQL = "select VENDOR_ID, NAME from VENDORS where VENDOR_TYPE_ID<>'16' and VENDOR_TYPE_ID<>'21' order by NAME"
  rs.open strSQL, objNetSuite
  do until rs.eof
    strSQL = "insert into vendors (vendor_id, name) values ('" & rs("VENDOR_ID") & "', '" & replace(replace(rs("NAME"), "\", "\\"), "'", "\'") & "')"
    response.write "Updating Vendor " & rs("NAME") & "<br />"
    objInsert.Open strSQL, objdb
    rs.movenext
  loop
  rs.close

  set objInsert = nothing
  set objDelete = nothing
  objNetSuite.close
  set objNetSuite = nothing
end if

if request.querystring("delete") = "yes" then
  strSQL = "delete from vendors where vendor_id='" & request.querystring("id") & "'"
  rs.open strSQL, docs
end if

response.redirect "vendorx.asp"
%>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>