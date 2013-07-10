'on error resume next

dim objAssetMgt
dim objNetSuite
dim objrs
dim objrsRef
dim objrsName
dim strSQL

set objAssetMgt = CreateObject("adodb.connection")
objAssetMgt.Open = "driver={MySQL ODBC 3.51 Driver};option=16387;server=richmond.aksa.local;user=rootb;password=spandex;DATABASE=asset_management;"

set objNetSuite = CreateObject("adodb.connection")
objNetSuite.ConnectionString = "DSN=NetSuite.com;UID=pull.broker@dorlastan.com;pwd=PullBroker1;"
objNetSuite.open

set objrs = CreateObject("adodb.recordset")
set objrsRef = CreateObject("adodb.recordset")
set objrsName = CreateObject("adodb.recordset")

strSQL = "select ENTITY_ID, SALES_REP_ID from TRANSACTIONS where TRANID='PO8881'"
objrs.open strSQL, objNetSuite

strSQL = "select NAME from ENTITY where ENTITY_ID='"  & objrs("ENTITY_ID") & "'"
objrsRef.open strSQL, objNetSuite
wscript.echo "Vendor: " & objrsRef("NAME")
objrsRef.close

strSQL = "select EMPLOYEE_NUMBER from ENTITY where ENTITY_ID='"  & objrs("SALES_REP_ID") & "'"
objrsRef.open strSQL, objNetSuite

strSQL = "select last_name, nickname from users where accounting_number='" & objrsRef("EMPLOYEE_NUMBER") & "'"
objrsName.open strSQL, objAssetMgt
if not objrsName.eof then
  wscript.echo "Requisitioner: " & objrsName("nickname") & " " & objrsName("last_name")
else
  objrsName.close
  strSQL = "select last_name, nickname from users where accounting_number='00" & objrsRef("EMPLOYEE_NUMBER") & "'"
  objrsName.open strSQL, objAssetMgt
  if not objrsName.eof then
    wscript.echo "Requisitioner: " & objrsName("nickname") & " " & objrsName("last_name")
  else
    wscript.echo "not found"
  end if
end if
objrsName.close

objrsRef.close

objrs.close

set objrs = nothing
set objrsRef = nothing
set objrsName = nothing
objAssetMgt.close
objNetSuite.close
set objAssetMgt = nothing
set objNetSuite = nothing
