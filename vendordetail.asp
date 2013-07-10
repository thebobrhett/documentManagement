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
'Bob Rhett - Tuesday, October 18, 2011
'  Created
'****************
'on error resume next

dim rsa
dim rsb
dim intCount

set rsa = CreateObject("adodb.recordset")
set rsb = CreateObject("adodb.recordset")

vendor_id = request.querystring("v")
type_id = request.querystring("t")
sort = request.querystring("s")
direction = request.querystring("y")
%>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>
<%
if vendor_id <> "" then
  strSQL = "select name from vendors where vendor_id='" & vendor_id & "'"
  rs.open strSQL, docs
  if not rs.eof then
    response.write "<h2>" & rs("name") & "</h2>"
  end if
  rs.close
else
    response.write "<h2>No Vendor Specified</h2>"
end if
%>
</div>

<div id='menu'>
<%
'Search for Document Types
strSQL = "select type_id from doctype"
rsa.open strSQL, docs
do until rsa.eof
  strSQL = "select count(0) from docdata where datatype_id=(select datatype_id from datatype where doctype_id='" & rsa("type_id") & "' and datatype_text='vendor_id') and numeric_val='" & vendor_id & "'"
  rsb.open strSQL, docs
  if rsb("count(0)") > 0 then
    response.write "<a href='vendordetail.asp?v=" & vendor_id & "&t=" & rsa("type_id") & "' class='hidelink'><h1>" & Get_type(rsa("type_id")) & "</h1></a>"
  end if
  rsb.close
  rsa.movenext
loop
rsa.close
%>
</div>

<div id='body'>
<%
if vendor_id <> "" and type_id <> "" then
  response.write "<table border='1' width='100%'>"
  response.write "<caption>" & Get_type(type_id) & "</caption>"
  'Create the header and query
  response.write "<tr>"
  strSQL = "select * from datatype where doctype_id='" & type_id & "' order by sortorder"
  rsa.open strSQL, docs
  do until rsa.eof
    response.write "<th><a href='vendordetail.asp?v=" & vendor_id & "&t=" & type_id
    if sort = "" then
      response.write "&s=" & rsa("datatype_id") & "&y=a'>" & rsa("search_prompt") & "<a></th>"
      strSQL = "select * from docs inner join docdata on docs.doc_id=docdata.doc_id where docs.type_id='" & type_id & "' and ((docdata.datatype_id=(select datatype_id from datatype where doctype_id='" & type_id & "' and datatype_text='vendor_id') and docdata.numeric_val='" & vendor_id & "')) and docs.doc_id is not null order by docs.insert_ts desc"
    else
      if cint(sort) = rsa("datatype_id") then
        if direction = "d" then
          response.write "&s=" & rsa("datatype_id") & "&y=a'>" & rsa("search_prompt") & "<a><span class='sort'>s</span></th>"
          strSQL = "select * from docs inner join docdata on docs.doc_id=docdata.doc_id inner join docdata as orderby on orderby.doc_id=docdata.doc_id where docs.type_id='" & type_id & "' and ((docdata.datatype_id=(select datatype_id from datatype where doctype_id='" & type_id & "' and datatype_text='vendor_id') and docdata.numeric_val='" & vendor_id & "')) and orderby.datatype_id='" & sort & "' and docs.doc_id is not null order by orderby." & Get_datatype_val(sort) & "_val desc"
        else
          response.write "&s=" & rsa("datatype_id") & "&y=d'>" & rsa("search_prompt") & "<a><span class='sort'>r</span></th>"
          strSQL = "select * from docs inner join docdata on docs.doc_id=docdata.doc_id inner join docdata as orderby on orderby.doc_id=docdata.doc_id where docs.type_id='" & type_id & "' and ((docdata.datatype_id=(select datatype_id from datatype where doctype_id='" & type_id & "' and datatype_text='vendor_id') and docdata.numeric_val='" & vendor_id & "')) and orderby.datatype_id='" & sort & "' and docs.doc_id is not null order by orderby." & Get_datatype_val(sort) & "_val asc"
        end if
      else
        response.write "&s=" & rsa("datatype_id") & "&y=a'>" & rsa("search_prompt") & "<a></th>"
      end if
    end if
    rsa.movenext
  loop
  response.write "<th>Action</th>"
  response.write "</tr>"
  'List the data
'  response.write strSQL
  rs.open strSQL, docs
  do until rs.eof
    response.write "<tr>"
    rsa.movefirst
    do until rsa.eof
      if rsa("datatype_text") = "vendor_id" then
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<td>" & Get_vendor(rsb(rsa("datatype") & "_val")) & "</td>"
        rsb.close
      elseif rsa("datatype_text") = "url" then
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<td><a href='" & rsb(rsa("datatype") & "_val") & "' target='_blank'>" & rsb(rsa("datatype") & "_val") & "</a></td>"
        rsb.close
      elseif rsa("datatype_text") = "cost_center" then
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<td align='center'>" & Get_costcenter(rsb(rsa("datatype") & "_val")) & "</td>"
        rsb.close
      elseif rsa("is_uid") <> 0 then
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<td align='center'>" & Get_name(rsb(rsa("datatype") & "_val")) & "</td>"
        rsb.close
      else
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        if not rsb.eof then
          if rsa("is_currency") <> 0 then
            response.write "<td align='center'>" & Format_String(rsb(rsa("datatype") & "_val"),"currency") & "</td>"
          else
            response.write "<td align='center'>" & rsb(rsa("datatype") & "_val") & "</td>"
          end if
        end if
        rsb.close
      end if
      rsa.movenext
    loop
    response.write "<td align='center'><a href='docview.asp?filename=" & rs("filename") & "'>View</a></td>"
    response.write "</tr>"
    rs.movenext
  loop
  rs.close
  rsa.close
  response.write "</table>"
end if
%>
</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>