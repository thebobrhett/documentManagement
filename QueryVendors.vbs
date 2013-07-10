'on error resume next

dim objdb
dim objNetSuite
dim objrs
dim objDelete
dim objInsert
dim strSQL

set objdb = CreateObject("adodb.connection")
objdb.Open = "driver={MySQL ODBC 3.51 Driver};option=16387;server=richmond.aksa.local;user=rootb;password=spandex;DATABASE=docmgt;"

set objNetSuite = CreateObject("adodb.connection")
objNetSuite.ConnectionString = "DSN=NetSuite.com;UID=pull.broker@dorlastan.com;PWD=1800Flowers;"
objNetSuite.open

set objrs = CreateObject("adodb.recordset")
set objDelete = CreateObject("adodb.recordset")
set objInsert = CreateObject("adodb.recordset")

strSQL = "delete from vendors where vendor_id>'0'"
objDelete.open strSQL, objdb

strSQL = "select VENDOR_ID, NAME from VENDORS where VENDOR_TYPE_ID<>'16' and VENDOR_TYPE_ID<>'21' order by NAME"
objrs.open strSQL, objNetSuite
do until objrs.eof
  strSQL = "insert into vendors (vendor_id, name) values ('" & objrs("VENDOR_ID") & "', '" & replace(replace(objrs("NAME"), "\", "\\"), "'", "\'") & "')"
  wscript.echo strSQL
  objInsert.Open strSQL, objdb
  objrs.movenext
loop
objrs.close

set objrs = nothing
set objInsert = nothing
set objDelete = nothing
objdb.close
objNetSuite.close
set objdb = nothing
set objNetSuite = nothing