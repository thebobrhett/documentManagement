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
'Bob Rhett - Friday, May 28, 2010
'  Created
'****************
'on error resume next

dim rsa
dim rsb
dim nodelete

nodelete = False

set rsa = CreateObject("adodb.recordset")
set rsb = CreateObject("adodb.recordset")
%>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>
<h2>Document Type Administration</h2>
</div>

<div id='menu'>
<%
response.write "<form action='doctypeaction.asp' method='post'>"
response.write "<h1>Create a new document type</h1>"
select case request.querystring("err")
  case "nodoctype"
    response.write "<span class='hilite'>Cannot be blank</span><br />"
    response.write "<input type='text' name='type_text' value='' /><br /><br />"
  case "duplicate_doctype"
    response.write "<span class='hilite'>A document type by this name already exists</span><br />"
    response.write "<input type='text' name='type_text' value='" & request.querystring("t") & "' /><br /><br />"
  case else
    response.write "<input type='text' name='type_text' value='' /><br /><br />"
end select
if Get_admin(currentuser) = True then
  response.write "<input type='submit' value='Create' name='new_doctype' />"
else
  response.write "<input type='submit' value='Create' name='new_doctype' disabled='disabled' />"
end if
response.write "</form>"
%>
</div>

<div id='body'>
<%
strSQL = "select * from doctype order by type_text"
rs.open strSQL, docs
do until rs.eof
  nodelete = True
  response.write "<form action='doctypeaction.asp' method='post'>"
  response.write "<table border='1' width='100%'>"
  response.write "<tr>"
  response.write "<td bgcolor='powderblue' colspan='100'>"
  response.write "<a name='" & replace(rs("type_text"), " ", "%20") & "'>"
  response.write "<input type='text' name='type_text' value='" & rs("type_text") & "' />"
  response.write "</a>"
  strSQL = "select count(0) from docs where type_id=(select type_id from doctype where type_text='" & rs("type_text") & "')"
  rsa.open strSQL, docs
  if rsa("count(0)") = 0 then
    strSQL = "select count(0) from datatype where doctype_id=(select type_id from doctype where type_text='" & rs("type_text") & "')"
    rsb.open strSQL, docs
    if rsb("count(0)") = 0 and Get_admin(currentuser) = True then
      response.write "<input type='submit' name='delete' value='Delete' />"
    else
      response.write "<input type='submit' name='delete' value='Delete' disabled='disabled' />"
    end if
    rsb.close
    nodelete = False
  elseif rsa("count(0)") = 1 then
    response.write " (" & rsa("count(0)") & " document)"
  else
    response.write " (" & rsa("count(0)") & " documents)"
  end if
  rsa.close
  response.write "</td>"
  response.write "<tr>"
  response.write "<th bgcolor='powderblue'>Datatype Text</th>"
  response.write "<th bgcolor='powderblue'>Datatype</th>"
  response.write "<th bgcolor='powderblue'>Sort Order</th>"
  response.write "<th bgcolor='powderblue'>Input Prompt</th>"
  response.write "<th bgcolor='powderblue'>Search Prompt</th>"
  response.write "<th bgcolor='powderblue'>AKSA User</th>"
  response.write "<th bgcolor='powderblue'>Currency</th>"
  response.write "<th bgcolor='powderblue'>Required</th>"
  response.write "<th bgcolor='powderblue'>Action</th>"
  response.write "</tr>"
  strSQL = "select * from datatype where doctype_id='" & rs("type_id") & "' order by sortorder"
  rsa.open strSQL, docs
  do until rsa.eof
    response.write "<tr>"
    if request.querystring("err") = "nodatatype" and request.querystring("t") = rs("type_text") and cint(request.querystring("i")) = rsa("datatype_id") then
      response.write "<td align='center' bgcolor='red'><input type='text' name='datatype_text_" & rsa("datatype_id") & "' value='' />"
    elseif request.querystring("err") = "duplicate_datatype" and request.querystring("d") = rs("type_text") and request.querystring("i") = cstr(rsa("datatype_id")) then
      response.write "<td align='center' bgcolor='red'><input type='text' name='datatype_text_" & rsa("datatype_id") & "' value='" & request.querystring("f") & "' />"
    else
      response.write "<td align='center'><input type='text' name='datatype_text_" & rsa("datatype_id") & "' value='" & rsa("datatype_text") & "' /></td>"
    end if
    response.write "</td>"
    response.write "<td align='center'>"
    response.write "<select name='datatype_" & rsa("datatype_id") & "'>"
    select case rsa("datatype")
      case "numeric"
        response.write "<option value='numeric' selected='selected'>Numeric</option>"
        response.write "<option value='varchar'>Text</option>"
        response.write "<option value='date'>Date</option>"
      case "varchar"
        response.write "<option value='numeric'>Numeric</option>"
        response.write "<option value='varchar' selected='selected'>Text</option>"
        response.write "<option value='date'>Date</option>"
      case "date"
        response.write "<option value='numeric'>Numeric</option>"
        response.write "<option value='varchar'>Text</option>"
        response.write "<option value='date' selected='selected'>Date</option>"
      case else
        response.write "<option value=''></option>"
        response.write "<option value='numeric'>Numeric</option>"
        response.write "<option value='varchar'>Text</option>"
        response.write "<option value='date'>Date</option>"
    end select
    response.write "</select>"
    response.write "</td>"
    response.write "<td align='center'><input type='text' name='sortorder_" & rsa("datatype_id") & "' value='" & rsa("sortorder") & "' size='3'/></td>"
    if request.querystring("err") = "noprompt" and request.querystring("d") = rs("type_text") and request.querystring("f") = rsa("datatype_text") then
      response.write "<td align='center' bgcolor='red'><input type='text' name='input_prompt_" & rsa("datatype_id") & "' value='' />"
    else
      response.write "<td align='center'><input type='text' name='input_prompt_" & rsa("datatype_id") & "' value='" & rsa("input_prompt") & "' />"
    end if
    response.write "</td>"
    response.write "<td align='center'><input type='text' name='search_prompt_" & rsa("datatype_id") & "' value='" & rsa("search_prompt") & "' /></td>"
    response.write "<td align='center'>"
    if rsa("is_uid") > 0 then
      if rsa("datatype") = "varchar" then
        response.write "<input type='checkbox' name='is_uid_" & rsa("datatype_id") & "' value='1' checked='checked' />"
      else
        response.write "<input type='checkbox' name='is_uid_" & rsa("datatype_id") & "' value='1' checked='checked' disabled='disabled' />"
      end if
    else
      if rsa("datatype") = "varchar" then
        response.write "<input type='checkbox' name='is_uid_" & rsa("datatype_id") & "' value='1' />"
      else
        response.write "<input type='checkbox' name='is_uid_" & rsa("datatype_id") & "' value='1' disabled='disabled' />"
      end if
    end if
    response.write "</td>"
    response.write "<td align='center'>"
    if rsa("is_currency") > 0 then
      if rsa("datatype") = "numeric" then
        response.write "<input type='checkbox' name='is_currency_" & rsa("datatype_id") & "' value='1' checked='checked' />"
      else
        response.write "<input type='checkbox' name='is_currency_" & rsa("datatype_id") & "' value='1' checked='checked' disabled='disabled' />"
      end if
    else
      if rsa("datatype") = "numeric" then
        response.write "<input type='checkbox' name='is_currency_" & rsa("datatype_id") & "' value='1' />"
      else
        response.write "<input type='checkbox' name='is_currency_" & rsa("datatype_id") & "' value='1' disabled='disabled' />"
      end if
    end if
    response.write "</td>"
    response.write "<td align='center'>"
    if rsa("is_reqd") > 0 then
      response.write "<input type='checkbox' name='is_reqd_" & rsa("datatype_id") & "' value='1' checked='checked' />"
    else
      response.write "<input type='checkbox' name='is_reqd_" & rsa("datatype_id") & "' value='1' />"
    end if
    response.write "</td>"
    response.write "<td align='center'>"
    if nodelete = False and Get_admin(currentuser) = True then
      response.write "<input type='submit' name='delete_" & rsa("datatype_id") & "' value='Delete' />"
    else
      response.write "<input type='submit' name='delete_" & rsa("datatype_id") & "' value='Delete' disabled='disabled' />"
    end if
    response.write "</td>"
    response.write "</tr>"
    rsa.movenext
  loop
  rsa.close
  response.write "<tr>"
  if request.querystring("err") = "nonewdatatype" and request.querystring("t") = rs("type_text") then
    response.write "<td align='center' bgcolor='red'><input type='text' name='datatype_text_new' value='' />"
  elseif request.querystring("err") = "duplicate_datatype" and request.querystring("d") = rs("type_text") and request.querystring("f") = "" then
    response.write "<td align='center' bgcolor='red'><input type='text' name='datatype_text_new' value='" & request.querystring("t") & "' />"
  elseif request.querystring("d") = rs("type_text") then 
    response.write "<td align='center'><input type='text' name='datatype_text_new' value='" & request.querystring("datatype_text") & "' />"
  else
    response.write "<td align='center'><input type='text' name='datatype_text_new' value='' />"
  end if
  response.write "</td>"
  response.write "<td align='center'>"
  response.write "<select name='datatype_new'>"
  if request.querystring("d") = rs("type_text") then
    select case request.querystring("datatype")
      case "numeric"
        response.write "<option value='numeric' selected='selected'>Numeric</option>"
        response.write "<option value='varchar'>Text</option>"
        response.write "<option value='date'>Date</option>"
      case "varchar"
        response.write "<option value='numeric'>Numeric</option>"
        response.write "<option value='varchar' selected='selected'>Text</option>"
        response.write "<option value='date'>Date</option>"
      case "date"
        response.write "<option value='numeric'>Numeric</option>"
        response.write "<option value='varchar'>Text</option>"
        response.write "<option value='date' selected='selected'>Date</option>"
      case else
        response.write "<option value='numeric'>Numeric</option>"
        response.write "<option value='varchar'>Text</option>"
        response.write "<option value='date'>Date</option>"
    end select
  else
    response.write "<option value='numeric'>Numeric</option>"
    response.write "<option value='varchar'>Text</option>"
    response.write "<option value='date'>Date</option>"
  end if
  response.write "</select>"
  response.write "</td>"
  if request.querystring("d") = rs("type_text") then
    response.write "<td align='center'><input type='text' name='sortorder_new' value='" & request.querystring("sortorder") & "' size='3'/></td>"
  else
    response.write "<td align='center'><input type='text' name='sortorder_new' value='' size='3'/></td>"
  end if
  if request.querystring("err") = "noprompt" and request.querystring("d") = rs("type_text") then
    response.write "<td align='center' bgcolor='red'><input type='text' name='input_prompt_new' value='' />"
  elseif request.querystring("d") = rs("type_text") then
    response.write "<td align='center'><input type='text' name='input_prompt_new' value='" & request.querystring("input_prompt") & "' />"
  else
    response.write "<td align='center'><input type='text' name='input_prompt_new' value='' />"
  end if
  response.write "</td>"
  if request.querystring("d") = rs("type_text") then
    response.write "<td align='center'><input type='text' name='search_prompt_new' value='" & request.querystring("search_prompt") & "' /></td>"
  else
    response.write "<td align='center'><input type='text' name='search_prompt_new' value='' /></td>"
  end if

  if request.querystring("err") = "badnewuid" and request.querystring("d") = rs("type_text") then
    response.write "<td align='center' bgcolor='red'><input type='checkbox' name='is_uid_new' value='1' checked='checked' />"
  else
    if request.querystring("is_uid") = "1" and request.querystring("d") = rs("type_text") then
      response.write "<td align='center'><input type='checkbox' name='is_uid_new' value='1' checked='checked'/>"
    else
      response.write "<td align='center'><input type='checkbox' name='is_uid_new' value='1' />"
    end if
  end if
  response.write "</td>"

  if request.querystring("err") = "badnewcur" and request.querystring("d") = rs("type_text") then
    response.write "<td align='center' bgcolor='red'><input type='checkbox' name='is_currency_new' value='1' checked='checked' />"
  else
    if request.querystring("is_currency") = "1" and request.querystring("d") = rs("type_text") then
      response.write "<td align='center'><input type='checkbox' name='is_currency_new' value='1' checked='checked' />"
    else
      response.write "<td align='center'><input type='checkbox' name='is_currency_new' value='1' />"
    end if
  end if
  response.write "</td>"
  if request.querystring("is_reqd") = "1" and request.querystring("d") = rs("type_text") then
    response.write "<td align='center'><input type='checkbox' name='is_reqd_new' value='1' checked='checked' />"
  else
    response.write "<td align='center'><input type='checkbox' name='is_reqd_new' value='1' />"
  end if
  response.write "</td>"
  response.write "<td align='center'>"
  if Get_admin(currentuser) = True then
    response.write "<input type='submit' name='add' value='Add' />"
  else
    response.write "<input type='submit' name='add' value='Add' disabled='disabled' />"
  end if
  response.write "</td>"
  response.write "</tr>"
  if Get_admin(currentuser) = True then
    response.write "<td align='center' colspan='100'><input type='submit' value='Submit Changes' name='update' /></td>"
  else
    response.write "<td align='center' colspan='100'><input type='submit' value='Submit Changes' name='update' disabled='disabled' /></td>"
  end if
  response.write "</table></form>"
  rs.movenext
loop
rs.close
%>
</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>