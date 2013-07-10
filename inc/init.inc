<%
'Global Configuration
dim docs
dim db
dim rs
dim strSQL

set docs = CreateObject("adodb.connection")
docs.Open = "driver={MySQL ODBC 3.51 Driver};option=16387;server=richmond.aksa.local;user=doc_user;password=Fibers01;DATABASE=docmgt;"

set db = CreateObject("adodb.connection")
db.Open = "driver={MySQL ODBC 3.51 Driver};option=16387;server=richmond.aksa.local;user=assetmgtro;password=Fibers01;DATABASE=asset_management;"

set rs = CreateObject("adodb.recordset")

dim sourcepath
dim temppath
dim docpath
dim sourceurl
dim tempurl
dim docurl

set objNetwork = createobject("wscript.network")
objNetwork.MapNetworkDrive "K:",  "\\mogsa4\DorCommon", False, "aksa\ASPNET", "Hard2see"
objNetwork.MapNetworkDrive "L:",  "\\mogsb7\docmgt", False, "aksa\ASPNET", "Hard2see"

'sourcepath = "D:\DorCommon\Scans\"
sourcepath = "K:\Scans\"
'sourcepath = "C:\Inetpub\"
'temppath = "C:\inetpub\wwwroot\docs\temp\"
'temppath = "D:\docmgt\temp\"
'temppath = "\\mogsa4\docmgt\temp\"
temppath = "L:\temp\"
'docpath = "C:\inetpub\wwwroot\docs\docs\"
'docpath = "D:\docmgt\docs\"
'docpath = "\\mogsa4\docmgt\docs\"
docpath = "L:\docs\"
sourceurl = "http://mogsb6/docs/source/"
tempurl = "http://mogsb6/docs/temp/"
docurl = "http://mogsb6/docs/docs/"

dim currentuser
currentuser = request.servervariables("LOGON_USER")
currentuser = right(currentuser,len(currentuser)-instr(currentuser,"\"))
%>