<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Sample Scans</title>
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

<div id='title'>
<h1>Document Management System</h1>
<h2>Sample Scans</h2>
</div>

<div id='menu'>
</div>

<div id='body'>
<%
'****************
'Bob Rhett - Friday, May 21, 2010
'  Created
'****************
'on error resume next

dim objData
dim objFSO
dim objFolder
dim colFiles
dim int_resolution
dim str_filetype

'arrSamples = Array("c075.pdf", "b075.pdf", "c075.jpg", "b075.tif", "c150.pdf", "b150.pdf", "c150.jpg", "b150.tif", "c200.pdf", "b200.pdf", "c200.jpg", "b200.tif", "c300.pdf", "b300.pdf", "c300.jpg", "b300.tif", "c600.pdf", "b600.pdf", "c600.jpg", "b600.tif")
arrSamples = Array("c075.pdf", "b075.pdf", "c075.jpg", "b075.tif", "c150.pdf", "b150.pdf", "c150.jpg", "b150.tif", "c200.pdf", "b200.pdf", "c200.jpg", "b200.tif", "c300.pdf", "b300.pdf", "c300.jpg", "b300.tif", "c600.pdf", "b600.pdf", "c600.jpg", "b600.tif")

set objFSO = Server.CreateObject("Scripting.FileSystemObject")
response.write "<table border='1' width='100%'>"
response.write "<tr>"
response.write "<th bgcolor='powderblue'>Resolution</th>"
response.write "<th bgcolor='powderblue'>pdf<br>color</th>"
response.write "<th bgcolor='powderblue'>pdf<br>black</th>"
response.write "<th bgcolor='powderblue'>jpg<br>color</th>"
response.write "<th bgcolor='powderblue'>tif<br>black</th>"

for i = 0 to ubound(arrSamples)
  int_resolution = left(arrSamples(i), instr(arrSamples(i), ".") - 1)
  int_resolution = right(int_resolution, len(int_resolution) - 1)
  str_color = left(arrSamples(i), 1)
  str_filetype = right(arrSamples(i), len(arrSamples(i)) - instrrev(arrSamples(i), "."))
  set objFile = objFSO.GetFile("C:\inetpub\wwwroot\docs\scans\" & arrSamples(i))
  if int_row <> int_resolution then
    int_row = int_resolution
    response.write "</tr>"
    response.write "<tr>"
    response.write "<th>" & int_resolution & " dpi</th>"
  end if
  response.write "<td align='center'><a href='http://mogsb6/docs/scans/" & objFile.name & "' target='_blank'>" & formatnumber(objFile.size / 1000, 0) & " Kb</a></td>"
next
response.write "</tr>"
response.write "</table>"
%>
</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>