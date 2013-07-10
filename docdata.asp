<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Management</title>
<link href='./css/docstyle.css' rel='stylesheet' type='text/css' />
<link href='./css/datepicker.css' rel='stylesheet' type='text/css' />
<script src='./js/datepicker.js' type='text/javascript'>{"buttontabindex":false}</script>
<script src='./js/myprintln.js' type='text/javascript'></script>
<!--#includes file='./inc/init.inc'-->
<!--#includes file='./inc/func.inc'-->
<!--#includes file='./inc/sub.inc'-->
</head>

<%
'****************
'Bob Rhett - Tuesday, January 26, 2010
'  Created
'****************
'on error resume next

dim rsRef
dim rsb
dim int_nexttab

set rsRef = CreateObject("adodb.recordset")
set rsb = CreateObject("adodb.recordset")

strSQL = "select * from datatype where doctype_id='" & request("type_id")  & "' order by sortorder"
rs.open strSQL, docs
%>

<body onload='document.dataform.<%=rs("datatype_text") %>.focus();'>

<div id='logo'>
<img src='http://mogsb6/images/AKGroupLogoSmall.gif'>
<div style='position:absolute; left:10px; top:70px;'><h5><b>A Stretch Above the Rest</b></h5></div>
</div>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>
<h2><%=Get_type(request.form("type_id"))%> Data Entry</h2>
</div>

<div id='menu'>
<form action='docaction.asp' method='post' name='dataform'>
<input type='hidden' name='filename' value='<%=request("filename")%>' />
<input type='hidden' name='type_id' value='<%=request("type_id") %>' />

<%
response.cookies("type_id") = request.form("type_id")
response.cookies("type_id").expires = date() + 30

do until rs.eof
  if rs("datatype_text") = "vendor_id" then
    if request.querystring("err") = rs("datatype_text") then
      response.write "<h3>" & rs("input_prompt") & "<br /><span class='hilite'>select from list</span><br />"
    else
      response.write "<h3>" & rs("input_prompt") & "<br />"
    end if
    response.write "<select name='" & rs("datatype_text") & "' tabindex='" & rs("sortorder") & "'>"
    response.write "<option value=''></option>"
'    strSQL = "select * from vendors where category<>'Employee' and category<>'Labor - AKSA Payroll' order by name"
    strSQL = "select * from vendors order by name"
'    strSQL = "select * from vendors union all select * from vendorx order by name"
    rsRef.open strSQL, docs
    do until rsRef.eof
      if cstr(rsRef("vendor_id")) = session(rs("datatype_text")) then
        response.write "<option value='" & rsRef("vendor_id") & "' selected='selected'>" & rsRef("name") & "</option>"
      elseif cstr(rsRef("vendor_id")) = request.cookies(rs("datatype_text")) then
        response.write "<option value='" & rsRef("vendor_id") & "' selected='selected'>" & rsRef("name") & "</option>"
      else
        response.write "<option value='" & rsRef("vendor_id") & "'>" & rsRef("name") & "</option>"
      end if
      rsRef.movenext
    loop
    rsRef.close
    response.write "</select></h3>"
  elseif rs("datatype_text") = "cost_center" then
    if request.querystring("err") = rs("datatype_text") then
      response.write "<h3>" & rs("input_prompt") & "<br /><span class='hilite'>select from list</span><br />"
    else
      response.write "<h3>" & rs("input_prompt") & "<br />"
    end if
    response.write "<select name='" & rs("datatype_text") & "' tabindex='" & rs("sortorder") & "'>"
    strSQL = "select * from cost_centers where cost_center<>'' order by cost_center"
    rsRef.open strSQL, db
    do until rsRef.eof
      if rsRef("cost_center") = session(rs("datatype_text")) then
        response.write "<option value='" & rsRef("cost_center") & "' selected='selected'>" & rsRef("netsuite_cost_center") & "</option>"
      elseif rsRef("cost_center") = request.cookies(rs("datatype_text")) then
        response.write "<option value='" & rsRef("cost_center") & "' selected='selected'>" & rsRef("netsuite_cost_center") & "</option>"
      else
        response.write "<option value='" & rsRef("cost_center") & "'>" & rsRef("netsuite_cost_center") & "</option>"
      end if
      rsRef.movenext
    loop
    rsRef.close
    response.write "</select></h3>"
  elseif rs("is_uid") = 1 then
    if request.querystring("err") = rs("datatype_text") then
      response.write "<h3>" & rs("input_prompt") & "<br /><span class='hilite'>select from list</span><br />"
    else
      response.write "<h3>" & rs("input_prompt") & "<br />"
    end if
    response.write "<select name='" & rs("datatype_text") & "' tabindex='" & rs("sortorder") & "'>"
    strSQL = "select * from users where status='Active' order by last_name, nickname"
    rsRef.open strSQL, db
    do until rsRef.eof
      if rsRef("cwid") = session(rs("datatype_text")) then
        response.write "<option value='" & rsRef("cwid") & "' selected='selected'>" & rsRef("last_name") & ", " & rsRef("nickname") & "</option>"
      elseif rsRef("cwid") = request.cookies(rs("datatype_text")) then
        response.write "<option value='" & rsRef("cwid") & "' selected='selected'>" & rsRef("last_name") & ", " & rsRef("nickname") & "</option>"
      else
        response.write "<option value='" & rsRef("cwid") & "'>" & rsRef("last_name") & ", " & rsRef("nickname") & "</option>"
      end if
      rsRef.movenext
    loop
    rsRef.close
    response.write "</select></h3>"
  else
    if request.querystring("err") = rs("datatype_text") then
      response.write "<h3>" & rs("input_prompt") & "<br /><span class='hilite'>" & session("err_prompt") & "</span><br />"
    else
      response.write "<h3>" & rs("input_prompt") & "<br />"
    end if
    if rs("is_currency") <> 0 then
      response.write "<input type='text' name='" & rs("datatype_text") & "' value='" & session(rs("datatype_text")) & "' tabindex='" & rs("sortorder") & "' /></h3>"
    elseif rs("datatype") = "date" then
      response.write "<input type='text' name='" & rs("datatype_text") & "' id='" & rs("datatype_text") & "' value='" & session(rs("datatype_text")) & "' tabindex='" & rs("sortorder") & "' class='w16em' /></h3>"
%>
  <script type='text/javascript'>
    // <![CDATA[  
      var opts = {                            
        formElements:{"<%=rs("datatype_text")%>":"m-sl-d-sl-Y"},
        fillGrid:true,
        constrainSelection:false        
      };      
      datePickerController.createDatePicker(opts);
    // ]]>
  </script>
<%
      response.write "<br />"
    else
      response.write "<input type='text' name='" & rs("datatype_text") & "' value='" & session(rs("datatype_text")) & "' tabindex='" & rs("sortorder") & "' /></h3>"
    end if
  end if
  int_nexttab = rs("sortorder") + 1
  rs.movenext
loop
rs.close
if request.cookies("year") <> "" then
  response.write "<h3>Fiscal Year<br /><input type='text' name='year' value='" & request.cookies("year") & "' size='6' tabindex='" & int_nexttab & "' /></h3>"
else
  response.write "<h3>Fiscal Year<br /><input type='text' name='year' value='" & cstr(year(now)) & "' size='6' tabindex='" & int_nexttab & "' /></h3>"
end if

'for each Item in request.cookies
'  response.write Item & "=" & request.form(Item) & "<br>"
'next
%>

<input type='submit' value='Save' name='submit' />
</form>
</div>

<div id='body'>
<%
file_ext = right(request("filename"), len(request("filename")) - instrrev(request("filename"), "."))
strSQL = "select * from supported_MIME where file_ext='" & file_ext & "'"
rs.open strSQL, docs
if not rs.eof then
  if rs("use_mime") <> 0 then
    response.write "<object data='" & tempurl & request("filename") & "' type='" & rs("mime_str") & "' width='100%' height='923'></object>"
  else
    response.write "<h2>This document type cannot be viewed here.</h2><a href='" & tempurl & request("filename") & "' target='_blank'><h3>Click here to launch document</h3></a>"
  end if
else
  response.write "Not a supported document type<br />"
end if
rs.close
%>
</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>