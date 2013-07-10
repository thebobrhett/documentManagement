<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Listing</title>
<link rel=STYLESHEET href='http://mogsa4/docs/docstyle.css' type='text/css'>
<script src='http://mogsa4/myprintln.js'></script>
<style type="text/css">
caption { font-weight:bold; font-size:14; color:darkblue}
th {background-color:powderblue; font-weight:bold; font-size:12; color:black}
td { font-weight:normal; font-size:12; color:black; }
span.sort { font-family:"Wingdings 3";font-size:10;color:gray; }
</style>
<!--#includes file='func.inc'-->
</head>

<body>

<div id='logo'>
<img src='http://mogsa4/images/AKGroupLogoSmall.gif'>
<div style='position:absolute; left:10px; top:70px;'><h5><b>A Stretch Above the Rest</b></h5></div>
</div>

<div id='title'>
<h1>Document Management System</h1>
<h2>Documents to be Filed</h2>
</div>

<div id='menu'>
<a href='docsearch.asp'><h1>Search</h1></a>
<a href='docroute.asp'><h1>Route</h1></a>
<a href='docapprove.asp'><h1>Approve</h1></a><br />
</div>

<div id='body'>
<%
'****************
'Bob Rhett - Wednesday, January 20, 2010
'  Created
'****************
'on error resume next

dim objData
dim objFSO
dim objFolder
dim colFiles
dim Tempname

const adVarChar = 200
const adDate = 7
const MaxChar = 255

set objData = CreateObject("ADOR.Recordset")
set objFSO = Server.CreateObject("Scripting.FileSystemObject")
set objFolder = objFSO.GetFolder(sourcepath)
set colFiles = objFolder.Files

objData.Fields.Append "Filename", adVarChar, MaxChar
objData.Fields.Append "CreateDate", adDate
objData.Fields.Append "FileSize", AdVarChar, MaxChar

objData.open
for each objFile in colFiles
  if not objFile.Attributes AND 2 then
    objData.Addnew
    objData ("Filename") = objFile.name
    objData ("CreateDate") = cdate(objFile.datecreated)
    objData ("FileSize") = objFile.size
    objData.update
  end if
next

response.write "<table border='1'>"
response.write "<tr>"

select case request("s")
  case "n"
    objData.Sort = "Filename"
    response.write "<th bgcolor='powderblue'><a href='doclist.asp?s=nd'>Filename</a><span class='sort'>r</span></th>"
    response.write "<th bgcolor='powderblue'><a href='doclist.asp'>Date</a></th>"
  case "nd"
    objData.Sort = "Filename desc"
    response.write "<th bgcolor='powderblue'><a href='doclist.asp?s=n'>Filename</a><span class='sort'>s</span></th>"
    response.write "<th bgcolor='powderblue'><a href='doclist.asp'>Date</a></th>"
  case "d"
    objData.Sort = "CreateDate"
    response.write "<th bgcolor='powderblue'><a href='doclist.asp?s=n'>Filename</a></th>"
    response.write "<th bgcolor='powderblue'><a href='doclist.asp'>Date</a><span class='sort'>r</span></th>"
  case else
    objData.Sort = "CreateDate desc"
    response.write "<th bgcolor='powderblue'><a href='doclist.asp?s=n'>Filename</a></th>"
    response.write "<th bgcolor='powderblue'><a href='doclist.asp?s=d'>Date</a><span class='sort'>s</span></th>"
end select

response.write "<th>Size</th>"
response.write "<th colspan='2'>Action</th>"
response.write "</tr>"
do until objData.eof
  response.write "<tr>"
  response.write "<td><a href='docfile.asp?f=" & objData.Fields.Item("Filename") & "'>" & objData.Fields.Item("Filename") & "</a></td>"
  response.write "<td>" & objData.Fields.Item("CreateDate") & "</td>"
  response.write "<td align='right'>" & formatnumber(objData.Fields.Item("FileSize") / 1000, 0) & " Kb</td>"
  response.write "<td align='center'><a href='" & sourceurl & objData.Fields.Item("Filename") & "' target='_blank'>View</a></td>"
  response.write "<td align='center'><a href='docdel.asp?f=" & objData.Fields.Item("Filename") & "'>Delete</a></td>"
  response.write "</tr>"
  objData.movenext
loop
response.write "</table>"
%>
</div>

</body>
</html>