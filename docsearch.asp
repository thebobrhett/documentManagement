<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Search</title>
<link href='./css/docstyle.css' rel='stylesheet' type='text/css'>
<link href='./css/datepicker.css' rel='stylesheet' type='text/css' />
<script src='./js/datepicker.js' type='text/javascript'></script>
<script language='javascript'>
function reloadwindow() {
  document.form1.submit();
}
</script>
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
'Bob Rhett - Tuesday, January 26, 2010
'  Created
'****************
'on error resume next

dim rsa
dim rsb
dim rsq
dim rsRef
dim blor
dim bland
dim show_results
dim srch_vendor
dim srch_vendor_first
dim srch_person
dim srch_person_first
dim where_clause
dim where_clause_a
dim where_clause_b
dim where_clause_c
dim where_clause_d

set rsa = CreateObject("adodb.recordset")
set rsb = CreateObject("adodb.recordset")
set rsq = CreateObject("adodb.recordset")
set rsRef = CreateObject("adodb.recordset")
%>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>
<h2>Search for Documents</h2>
</div>

<div id='menu'>

<%
if request.form("reset") = "Reset" then
  session.abandon
  response.redirect "docsearch.asp"
else
  for each Item In request.form
    session(Item) = request.form(Item)
    'response.write Item & "=" & session(Item) & "<br>"
  next
end if

show_results = false
srch_vendor_first = false
srch_person_first = false

response.write "<form name='form1' action='docsearch.asp' method='post'>"

for each Item In session.contents
'response.write Item & "=" & session(Item) & "<br>"
  if session(Item) <> "" then
    select case Item
      case "type_id"
        where_clause = where_clause & "docs.type_id='" & cstr(session("type_id")) & "' and "
        show_results = True
      case "year"
        where_clause = where_clause & "docs." & Item & "='" & cstr(session(Item)) & "' and "
        show_results = True
      case "originator"
        where_clause = where_clause & "docs." & Item & "='" & session(Item) & "' and "
        show_results = True
      case "status_id"
        where_clause = where_clause & "docs." & Item & "='" & session(Item) & "' and "
        show_results = True
      case "search_date"
        if isdate(session(Item)) then
          where_clause = where_clause & "docs.insert_ts>'" & Format_String(session(Item),"datetime") & "' and docs.insert_ts<'" & Format_String(dateadd("d", 1, cdate(session(Item))),"datetime") & "' and "
          show_results = True
        end if
      case "vendor_id"
        if session("type_id") = "" then
          srch_vendor = true
          strSQL = "select * from datatype where datatype_text='vendor_id'"
          rs.open strSQL, docs
          if srch_person = false then
            where_clause_a = "(select d1.doc_id from docdata d1 where "
            if srch_person_first = false then
              srch_vendor_first = true
            end if
          else
            where_clause_a = "(select d1.doc_id from docdata d1 where d1.doc_id in "
          end if
          blor = False
          do until rs.eof
            if blor = False then
              blor = True
            else
              where_clause_b = where_clause_b & " or "
            end if
            where_clause_b = where_clause_b & "(d1.datatype_id='" & rs("datatype_id") & "' and d1." & rs("datatype") & "_val='" & Format_String(session(Item),rs("datatype")) & "')"
            rs.movenext
          loop
          rs.close
          where_clause_b = where_clause_b & ")"
          blor = False
          show_results = True
        end if
      case "person"
        if session("type_id") = "" then
          srch_person = true
          strSQL = "select * from datatype where is_uid<>'0'"
          rs.open strSQL, docs
          if srch_vendor = false then
            where_clause_c = "(select d2.doc_id from docdata d2 where "
            if srch_vendor_first = false then
              srch_person_first = true
            end if
          else
            where_clause_c = "(select d2.doc_id from docdata d2 where d2.doc_id in "
          end if
          blor = False
          do until rs.eof
            if blor = False then
              blor = True
            else
              where_clause_d = where_clause_d & " or "
            end if
            where_clause_d = where_clause_d & "(d2.datatype_id='" & rs("datatype_id") & "' and d2." & rs("datatype") & "_val='" & Format_String(session(Item),rs("datatype")) & "')"
            rs.movenext
          loop
          rs.close
          where_clause_d = where_clause_d & ")"
          blor = False
          show_results = True
        end if
    end select
  end if
next

if srch_vendor = true and srch_person = false then 
  where_clause_a = where_clause_a & where_clause_b & " and "
end if
if srch_person = true and srch_vendor = false then 
  where_clause_a = where_clause_c & where_clause_d & " and "
end if
if srch_vendor = true and srch_person = true then
  if srch_vendor_first = true then
    where_clause_a = where_clause_c & where_clause_a & where_clause_b & " and (" & where_clause_d & ") and "
  elseif srch_person_first = true then
    where_clause_a = where_clause_a & where_clause_c & where_clause_d & " and (" & where_clause_b & ") and "
  end if
end if

'Search by:
'Document Type
response.write "<h3>Document Type<br />"
response.write "<select name='type_id' onchange='reloadwindow();'>"
response.write "<option value=''></option>"
strSQL = "select * from doctype order by type_text"
rs.open strSQL, docs
do until rs.eof
  if session("type_id") = cstr(cint(rs("type_id"))) then
    response.write "<option value='" & rs("type_id") & "' selected='selected'>" & rs("type_text") & "</option>"
  else
    response.write "<option value='" & rs("type_id") & "'>" & rs("type_text") & "</option>"
  end if
  rs.movenext
loop
rs.close
response.write "</select></h3>"

'Fiscal Year
response.write "<h3>Fiscal Year<br />"
response.write "<select name='year' onchange='reloadwindow();'>"
response.write "<option value=''></option>"
strSQL = "select year from docs group by year order by year desc"
rs.open strSQL, docs
do until rs.eof
  if session("year") = cstr(cint(rs("year"))) then
    response.write "<option value='" & rs("year") & "' selected='selected'>" & rs("year") & "</option>"
  else
    response.write "<option value='" & rs("year") & "'>" & rs("year") & "</option>"
  end if
  rs.movenext
loop
rs.close
response.write "</select></h3>"

'Originator
response.write "<h3>Originator<br />"
response.write "<select name='originator' onchange='reloadwindow();'>"
response.write "<option value=''></option>"
strSQL = "select cwid, nickname, last_name from users order by last_name"
rs.Open strSQL, db
do until rs.eof
  strSQL = "select originator from docs where originator='" & rs("cwid") & "'"
  rsq.open strSQL, docs
  if not rsq.eof then
    if session("originator") = rsq("originator") then
      response.write "<option value='" & rs("cwid") & "' selected='selected'>" & rs("nickname") & " " & rs("last_name") & "</option>"
    else
      response.write "<option value='" & rs("cwid") & "'>" & rs("nickname") & " " & rs("last_name") & "</option>"
    end if
  end if
  rsq.close
  rs.movenext
loop
rs.close
response.write "</select></h3>"

'Status
response.write "<h3>Status<br />"
response.write "<select name='status_id' onchange='reloadwindow();'>"
response.write "<option value=''></option>"
strSQL = "select * from status order by sortorder"
rs.open strSQL, docs
do until rs.eof
  if session("status_id") = cstr(cint(rs("status_id"))) then
    response.write "<option value='" & rs("status_id") & "' selected='selected'>" & rs("status_text") & "</option>"
  else
    response.write "<option value='" & rs("status_id") & "'>" & rs("status_text") & "</option>"
  end if
  rs.movenext
loop
rs.close
response.write "</select></h3>"

'Date
response.write "<h3>Insert Date<br />"
'****************
if isdate(session("search_date")) then
  response.write "<input type='text' name='search_date' id='search_date' value='" & cdate(session("search_date")) & "' onchange='reloadwindow();' class='w16em' />"
else
  response.write "<input type='text' name='search_date' id='search_date' onchange='reloadwindow();' class='w16em' />"
end if
'****************
%>
  <script type='text/javascript'>
    // <![CDATA[  
      var opts = {                            
        formElements:{"search_date":"m-sl-d-sl-Y"},
        fillGrid:true,
        constrainSelection:false,
        reloadonSelect:true
      };      
      datePickerController.createDatePicker(opts);
    // ]]>
  </script>
<%
response.write "</h3><br />"

if session("type_id") = "" then
  'Vendor
  response.write "<h3>Vendor<br />"
  response.write "<select name='vendor_id' onchange='reloadwindow();'>"
  response.write "<option value=''></option>"
  strSQL = "select * from vendors where vendor_id in (select numeric_val from docdata inner join datatype on docdata.datatype_id=datatype.datatype_id where datatype.datatype_text='vendor_id' group by numeric_val) order by name"
'  strSQL = "select * from vendors where vendor_id in (select numeric_val from docdata inner join datatype on docdata.datatype_id=datatype.datatype_id where datatype.datatype_text='vendor_id' group by numeric_val) union select * from vendorx where vendor_id in (select numeric_val from docdata inner join datatype on docdata.datatype_id=datatype.datatype_id where datatype.datatype_text='vendor_id' group by numeric_val) or vendorx.vendor_id in (select numeric_val from docdata inner join datatype on docdata.datatype_id=datatype.datatype_id where datatype.datatype_text='vendor_id' group by numeric_val) order by name"
  rs.open strSQL, docs
  do until rs.eof
    if session("vendor_id") = cstr(rs("vendor_id")) then
      response.write "<option value='" & rs("vendor_id") & "' selected='selected'>" & rs("name") & "</option>"
    else
      response.write "<option value='" & rs("vendor_id") & "'>" & rs("name") & "</option>"
    end if
    rs.movenext
  loop
  rs.close
  response.write "</select></h3>"

  'Person
  response.write "<h3>Person<br />"
  response.write "<select name='person' onchange='reloadwindow();'>"
  response.write "<option value=''></option>"
  strSQL = "select cwid, nickname, last_name from users order by last_name"
  rs.Open strSQL, db
  do until rs.eof
    strSQL = "select varchar_val from docdata where varchar_val='" & rs("cwid") & "'"
    rsq.open strSQL, docs
    if not rsq.eof then
      if session("person") = rsq("varchar_val") then
        response.write "<option value='" & rs("cwid") & "' selected='selected'>" & rs("nickname") & " " & rs("last_name") & "</option>"
      else
        response.write "<option value='" & rs("cwid") & "'>" & rs("nickname") & " " & rs("last_name") & "</option>"
      end if
    end if
    rsq.close
    rs.movenext
  loop
  rs.close
  response.write "</select></h3>"
  response.write "<input type='submit' value='Reset' name='reset' />"
else
  response.write "<input type='submit' value='Reset' name='reset' />"
  response.write "<hr />"
  response.write "<h2>Additional Filters</h2>"
  response.write "<input type='submit' value='Apply' name='search' />"
  strSQL = "select * from datatype where datatype_text='vendor_id' and doctype_id='" & session("type_id")  & "'"
  rs.open strSQL, docs
  if rs.eof then
    session("vendor_id") = ""
  end if
  rs.close
  strSQL = "select * from datatype where is_uid<>'0' and doctype_id='" & session("type_id")  & "'"
  rs.open strSQL, docs
  if not rs.eof then
    if session(rs("datatype_text")) = "" then
      session(rs("datatype_text")) = session("person")
    end if
  end if
  rs.close
  strSQL = "select * from datatype where doctype_id='" & session("type_id")  & "' order by sortorder"
  rs.open strSQL, docs
  do until rs.eof
    if rs("datatype_text") = "vendor_id" then
      response.write "<h3>" & rs("search_prompt") & "<br />"
      response.write "<select name='" & rs("datatype_text") & "'>"
      response.write "<option value=''></option>"
      strSQL = "select * from vendors where vendor_id in (select numeric_val from docdata inner join datatype on docdata.datatype_id=datatype.datatype_id where datatype.datatype_text='vendor_id' and datatype.doctype_id='" & session("type_id")  & "' group by numeric_val) order by name"
      'strSQL = "select * from vendors order by name"
      rsRef.open strSQL, docs
      do until rsRef.eof
        if session(rs("datatype_text")) = cstr(cint(rsRef("vendor_id"))) then
          response.write "<option value='" & rsRef("vendor_id") & "' selected='selected'>" & rsRef("name") & "</option>"
        else
          response.write "<option value='" & rsref("vendor_id") & "'>" & rsRef("name") & "</option>"
        end if
        rsRef.movenext
      loop
      response.write "</select></h3>"
      rsRef.close
    elseif rs("datatype_text") = "cost_center" then
      response.write "<h3>" & rs("search_prompt") & "<br />"
      response.write "<select name='" & rs("datatype_text") & "'>"
      response.write "<option value=''></option>"
      strSQL = "select * from cost_centers where cost_center<>'' order by netsuite_cost_center"
      rsRef.Open strSQL, db
      do until rsRef.eof
        if session(rs("datatype_text")) = rsRef("cost_center") then
          response.write "<option value='" & rsRef("cost_center") & "' selected='selected'>" & rsRef("netsuite_cost_center") & "</option>"
        else
          response.write "<option value='" & rsref("cost_center") & "'>" & rsRef("netsuite_cost_center") & "</option>"
        end if
        rsRef.movenext
      loop
      rsRef.close
      response.write "</select></h3>"
    elseif rs("is_uid") <> 0 then
      response.write "<h3>" & rs("search_prompt") & "<br />"
      response.write "<select name='" & rs("datatype_text") & "'>"
      response.write "<option value=''></option>"
      strSQL = "select cwid, nickname, last_name from users order by last_name"
      rsRef.Open strSQL, db
      strSQL = "select datatype_id from datatype where datatype_text='" & rs("datatype_text") & "' and doctype_id='" & session("type_id") & "'"
      rsa.open strSQL, docs
      do until rsRef.eof
        strSQL = "select varchar_val from docdata where datatype_id='" & rsa("datatype_id") & "' and varchar_val='" & rsRef("cwid") & "'"
        rsq.open strSQL, docs
        if not rsq.eof then
          if session(rs("datatype_text")) = rsRef("cwid") then
            response.write "<option value='" & rsRef("cwid") & "' selected='selected'>" & rsRef("nickname") & " " & rsRef("last_name") & "</option>"
          else
            response.write "<option value='" & rsref("cwid") & "'>" & rsRef("nickname") & " " & rsRef("last_name") & "</option>"
          end if
        end if
        rsq.close
        rsRef.movenext
      loop
      rsa.close
      rsRef.close
      response.write "</select></h3>"
    else
      response.write "<h3>" & rs("search_prompt") & "<br />"
'****************
      if rs("is_currency") <> 0 then
        response.write "<input type='text' name='" & rs("datatype_text") & "' value='" & Format_String(session(rs("datatype_text")),"currency") & "' /></h3>"
      elseif rs("datatype") = "date" then
        response.write "<input type='text' id='" & rs("datatype_text") & "' name='" & rs("datatype_text") & "' value='" & session(rs("datatype_text")) & "' class='w16em' /></h3>"
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
        response.write "<input type='text' name='" & rs("datatype_text") & "' value='" & session(rs("datatype_text")) & "' /></h3>"
      end if
'****************
'      response.write "<input type='text' name='" & rs("datatype_text") & "' value='" & session(rs("datatype_text")) & "' /></h3>"
    end if
    rs.movenext
  loop
  rs.close
  bland = false
  blor = false
  for each Item In session.contents
    if bland = false then
      where_clause = where_clause & "("
      bland = true
    end if    
    if session(Item) <> "" then
      strSQL = "select * from datatype where doctype_id='" & session("type_id")  & "'"
      rs.open strSQL, docs
      do until rs.eof
        if rs("datatype_text") = Item then
          if blor = false then
            blor = True
          else
            where_clause = where_clause & " and "
          end if

'if numeric or date use "=" instead of "like"
          if rs("datatype") = "varchar" then
            'where_clause = where_clause & "(select doc_id from docdata where docdata.datatype_id='" & rs("datatype_id") & "' and docdata." & rs("datatype") & "_val like '%" & Format_String(session(Item),rs("datatype")) & "%')"
            where_clause = where_clause & "(docdata.datatype_id='" & rs("datatype_id") & "' and docdata." & rs("datatype") & "_val like '%" & Format_String(session(Item),rs("datatype")) & "%')"
          else
            'where_clause = where_clause & "(select doc_id from docdata where docdata.datatype_id='" & rs("datatype_id") & "' and docdata." & rs("datatype") & "_val ='" & Format_String(session(Item),rs("datatype")) & "')"
            where_clause = where_clause & "(docdata.datatype_id='" & rs("datatype_id") & "' and docdata." & rs("datatype") & "_val='" & Format_String(session(Item),rs("datatype")) & "')"
          end if
        end if
        rs.movenext
      loop
      rs.close
      show_results = True
    end if
  next
  if bland = true then
    where_clause = where_clause & ") and "
    bland = false
  end if
end if
%>
</form>
</div>

<div id='body'>
<%
if show_results = False then
  response.write "<table border='1' width='100%'>"
  response.write "<caption>Recently Added Documents</caption>"
  response.write "<tr>"
  response.write "<th bgcolor='powderblue'>Document Type</th>"
  response.write "<th bgcolor='powderblue'>Originator</th>"
  response.write "<th bgcolor='powderblue'>Status</th>"
  response.write "<th bgcolor='powderblue'>Insert Date</th>"
  response.write "<th bgcolor='powderblue'>Fiscal Year</th>"
  response.write "<th bgcolor='powderblue'>Action</th>"
  response.write "</tr>"
  strSQL = "select * from docs_recent"
  'response.write strSQL & "<br>"
  rs.open strSQL, docs
  do until rs.eof
    response.write "<tr>"
    response.write "<td align='center'>" & Get_type(rs("type_id")) & "</td>"
    response.write "<td align='center'>" & Get_name(rs("originator")) & "</td>"
    response.write "<td align='center'>" & Get_status(rs("status_id")) & "</td>"
    response.write "<td>" & cdate(rs("insert_ts")) & "</td>"
    response.write "<td align='center'>" & cstr(rs("year")) & "</td>"
    response.write "<td align='center'><a href='docview.asp?filename=" & rs("filename") & "'>View</a></td>"
    rs.movenext
  loop
  response.write "</table>"
else
  where_clause = replace(where_clause, "()", "(docs.doc_id is not null)" )
  if session("type_id") = "" then
    strSQL = "select * from docs where " & where_clause
    if where_clause_a <> "" then
      strSQL = strSQL & "docs.doc_id in " & where_clause_a & "docs.doc_id is not null order by docs.insert_ts desc"
    else
      strSQL = strSQL & "docs.doc_id is not null order by docs.insert_ts desc"
    end if
  else
    strSQL = "select * from docs inner join docdata on docs.doc_id=docdata.doc_id where " & where_clause & "docs.doc_id is not null group by docdata.doc_id order by docs.insert_ts desc"
  end if
'****************
'unremark for testing
'  response.write strSQL & "<br>"
'  strSQL = "select * from docs"
'****************
  rs.open strSQL, docs
  response.write "<table border='1' width='100%'>"
  if rs.eof then
    response.write "<caption>No Search Results</caption>"
'    response.write "<tr>"
'    response.write "<td>" & strSQL & "</th>"
'    response.write "</tr>"
  else
    response.write "<caption>Search Results</caption>"
    response.write "<tr>"
    response.write "<th>Document Type</th>"
    response.write "<th>Originator</th>"
    response.write "<th>Status</th>"
    response.write "<th>Insert Date</th>"
    response.write "<th>Fiscal Year</th>"
    response.write "<th>Action</th>"
    response.write "</tr>"
  end if
  do until rs.eof
    response.write "<tr>"
    response.write "<td align='center'>" & Get_type(rs("type_id")) & "</td>"
    response.write "<td align='center'>" & Get_name(rs("originator")) & "</td>"
    response.write "<td align='center'>" & Get_status(rs("status_id")) & "</td>"
    response.write "<td>" & cdate(rs("insert_ts")) & "</td>"
    response.write "<td align='center'>" & cstr(rs("year")) & "</td>"
    response.write "<td align='center'><a href='docview.asp?filename=" & rs("filename") & "'>View</a></td>"
    rs.movenext
  loop
  response.write "</table>"
end if
%>
</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>