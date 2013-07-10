'on error resume next

dim objdb
dim objrs
dim strSQL

set objdb = CreateObject("adodb.connection")
objdb.Open = "driver={MySQL ODBC 3.51 Driver};option=16387;server=richmond.aksa.local;user=rootb;password=spandex;DATABASE=docmgt;"
set objrs = CreateObject("adodb.recordset")

strSQL = "delete from docs_recent"
objrs.open strSQL, objdb

strSQL = "insert into docs_recent select * from docs order by insert_ts desc limit 500"
objrs.Open strSQL, objdb

set objrs = nothing
objdb.Close
set objdb = nothing
