'on error resume next

dim objdb
dim objrs
dim strSQL

set objdb = CreateObject("adodb.connection")
'objdb.Open = "driver={MySQL ODBC 3.51 Driver};option=16387;server=richmond.aksa.local;user=rootb;password=spandex;DATABASE=docmgt;"

set objrs = CreateObject("adodb.recordset")

strSQL = "alter table sandbox auto_increment=1"
objRS.Open strSQL, objdb

strSQL = "alter table docs auto_increment=1"
objRS.Open strSQL, objdb

strSQL = "alter table docdata auto_increment=1"
objRS.Open strSQL, objdb

set objrs = nothing
objdb.Close
set objdb = nothing
