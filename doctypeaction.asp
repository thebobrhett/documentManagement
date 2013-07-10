<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Management</title>
<link href='./css/docstyle.css' rel='stylesheet' type='text/css'>
<!--#includes file='./inc/init.inc'-->
<!--#includes file='./inc/func.inc'-->
<!--#includes file='./inc/sub.inc'-->
</head>

<body>


<%
'****************
'Bob Rhett - Tuesday, June 1, 2010
'  Created
'****************
'on error resume next

docs.close
docs.Open = "driver={MySQL ODBC 3.51 Driver};option=16387;server=richmond.aksa.local;user=doc_admin;password=sparkplug;DATABASE=docmgt;"

dim rsa
dim rsb
dim rsRef
dim rsAction
'dim doc_id
'dim strText
'dim pastdate
'dim outdated
'dim flag_complete
'dim vendorx
dim sortorder
dim strIndex

'doc_id = csng(left(request("filename"), instrrev(request("filename"), ".")))
'pastdate = dateadd("d", 0-7, now)
'outdated = Format_String(pastdate,"")
'flag_complete = "incomplete"
'prompt_complete = ""

set rsa = CreateObject("adodb.recordset")
set rsb = CreateObject("adodb.recordset")
set rsRef = CreateObject("adodb.recordset")
set rsAction = CreateObject("adodb.recordset")

'set objFSO = Server.CreateObject("Scripting.FileSystemObject")

'response.write "<form action='docedit.asp' method='post'>"
'response.write "<input type='hidden' name='ref_url' value='" & request.form("ref_url") & "' />"
'response.write "</form>"

for each Item In request.form
  response.write Item & " = "
  response.write "'" & request.form(Item) & "'<br>"
next

if request.form("new_doctype") = "Create" then
  if request.form("type_text") = "" then
    'They didn't enter a document type name
    response.redirect "doctype.asp?err=nodoctype"
  else
    strSQL = "select * from doctype where type_text='" & request.form("type_text") & "'"
    rs.open strSQL, docs
    if not rs.eof then
      'They entered a duplicate document type name
      response.redirect "doctype.asp?err=duplicate_doctype&t=" & request.form("type_text")
    else
      strSQL = "insert into doctype (type_text) values ('" & request.form("type_text") & "')"
      response.write "'" & strSQL & "'<br>"
      rsAction.open strSQL, docs
      response.redirect "doctype.asp#" & request.form("type_text")
    end if
    rs.close
  end if
end if

if request.form("delete") = "Delete" then
  strSQL = "select * from docs where type_id=(select type_id from doctype where type_text='" & request.form("type_text") & "')"
  response.write "strSQL='" & strSQL & "'<br>"
  rs.open strSQL, docs
  if rs.eof then
    strSQL = "delete from doctype where type_text='" & request.form("type_text") & "'"
    rsAction.open strSQL, docs
    response.redirect "doctype.asp#" & request.form("type_text")
  else 
    'If there are associated documents, don't delete.
    'This is moot since the delete button no longer appears when there are associated documents.
    'I'm leaving it in case it becomes useful later.
    response.redirect "doctype.asp?err=no_delete"
  end if
  rs.close
end if

if request.form("add") = "Add" then
  str_redirect = "&datatype_text=" & request.form("datatype_text_new")
  str_redirect = str_redirect & "&datatype=" & request.form("datatype_new")
  str_redirect = str_redirect & "&input_prompt=" & request.form("input_prompt_new")
  str_redirect = str_redirect & "&search_prompt=" & request.form("search_prompt_new")
  str_redirect = str_redirect & "&is_uid=" & request.form("is_uid_new")
  str_redirect = str_redirect & "&is_currency=" & request.form("iscurrency_new")
  str_redirect = str_redirect & "&is_reqd=" & request.form("is_reqd_new")
  if request.form("datatype_text_new") = "" then
    'They didn't enter a datatype text
    response.redirect "doctype.asp?err=nonewdatatype&t=" & request.form("type_text") & str_redirect & "#" & request.form("type_text")
  else
    strSQL = "select * from datatype where datatype_text='" & lcase(replace(request.form("datatype_text_new"), " ", "_")) & "' and doctype_id=(select type_id from doctype where type_text='" & request.form("type_text") & "')"
    rs.open strSQL, docs
    if not rs.eof then
      'They entered a duplicate datatype name
      response.redirect "doctype.asp?err=duplicate_datatype&d=" & request.form("type_text") & "&t=" & lcase(replace(request.form("datatype_text_new"), " ", "_")) & str_redirect & "#" & request.form("type_text")
    else
      if request.form("sortorder_new") = "" then
        'Fix the sortorder
        strSQL = "select sortorder from datatype where doctype_id=(select type_id from doctype where type_text='" & request.form("type_text") & "') order by sortorder desc"
        rsRef.open strSQL, docs
        if not rsRef.eof then
          sortorder = rsRef("sortorder") + 1
        else
          sortorder = 1
        end if
        rsRef.close
        str_redirect = str_redirect & "&sortorder=" & cstr(sortorder)
      else
        sortorder = request.form("sortorder_new")
      end if
      if request.form("input_prompt_new") = "" then
        'Fix the input_prompt
        response.redirect "doctype.asp?err=noprompt&d=" & request.form("type_text") & "&t=" & lcase(replace(request.form("datatype_text_new"), " ", "_")) & str_redirect & "#" & request.form("type_text")
      end if
      if request.form("is_uid_new") = 1 and request.form("datatype_new") <> "varchar" then
        response.redirect "doctype.asp?err=badnewuid&d=" & request.form("type_text") & str_redirect & "#" & request.form("type_text")
      end if
      if request.form("is_currency_new") = 1 and request.form("datatype_new") <> "numeric" then
        response.redirect "doctype.asp?err=badnewcur&d=" & request.form("type_text") & str_redirect & "#" & request.form("type_text")
      end if
      strSQL = "insert into datatype (doctype_id, sortorder, datatype_text, datatype, input_prompt, search_prompt, is_uid, is_currency, is_reqd) values ((select type_id from doctype where type_text='" & request.form("type_text") & "'), '" & sortorder & "', '" & lcase(replace(request.form("datatype_text_new"), " ", "_")) & "', '" & request.form("datatype_new") & "', '" & request.form("input_prompt_new") & "', '" & request.form("search_prompt_new") & "', '" & request.form("is_uid_new") & "', '" & request.form("is_currency_new") & "', '" & request.form("is_reqd_new") & "')"
      response.write "'" & strSQL & "'<br>"
      rsAction.open strSQL, docs
    end if
    rs.close
  end if
  response.redirect "doctype.asp#" & request.form("type_text")
end if

if request.form("update") = "Submit Changes" then
  for each Item In request.form
    response.write Item & " = "
    response.write "'" & request.form(Item) & "'<br>"
    response.write "Item='" & Item & "'<br>"
    if instr(Item, "_") > 0 then
      strField = left(Item, instrrev(Item, "_") - 1)
      strIndex = right(Item, len(Item) - instrrev(Item, "_"))
      response.write "strField='" & strField & "'<br>"
      response.write "strIndex='" & strIndex & "'<br>"
    end if
    if isnumeric(strIndex) then
      strSQL = "select " & strField & " from datatype where datatype_id='" & strIndex & "'"
      rs.open strSQL, docs
      'Has it changed?
      response.write "rs(strField)='" & rs(strField) & "'<br>"
      response.write "request.form(Item)='" & request.form(Item) & "'<br>"
      if isnull(rs(strField)) then
        strField_val = ""
      else
        strField_val = cstr(rs(strField))
      end if
      if strField_val <> request.form(Item) then
        if strField = "datatype_text" then
          if request.form(Item) = "" then
            'They didn't enter a datatype text
            response.redirect "doctype.asp?err=nodatatype&t=" & request.form("type_text") & "&f=" & strField & "&i=" & strIndex & "#" & request.form("type_text")
          else
            strSQL = "select count(0) from datatype where datatype_text='" & lcase(replace(request.form("datatype_text_" & strIndex), " ", "_")) & "' and doctype_id=(select type_id from doctype where type_text='" & request.form("type_text") & "')"
            response.write "'" & strSQL & "'<br>"
            rsa.open strSQL, docs
            response.write "'" & rsa("count(0)") & "'<br>"
            if rsa("count(0)") > 0 then
              'They entered a duplicate datatype name
              response.redirect "doctype.asp?err=duplicate_datatype&d=" & request.form("type_text") & "&f=" & lcase(replace(request.form("datatype_text_" & strIndex), " ", "_")) & "&i=" & strIndex & "#" & request.form("type_text")
            end if
            rsa.close
          end if
        end if
        if request.form("sortorder_" & strIndex) = "" then
          strSQL = "select sortorder from datatype where doctype_id=(select type_id from doctype where type_text='" & request.form("type_text") & "') order by sortorder desc"
          rsRef.open strSQL, docs
          if not rsRef.eof then
            sortorder = rsRef("sortorder") + 1
          else
            sortorder = 1
          end if
        end if
        if strField = "datatype_text" then
          strSQL = "update datatype set datatype_text='" & lcase(replace(request.form("datatype_text_" & strIndex), " ", "_")) & "' where datatype_id='" & strIndex & "'"
        elseif strField = "input_prompt" and request.form("input_prompt_" & strIndex) = "" then
          strSQL = "update datatype set input_prompt='" & request.form("datatype_text_" & strIndex) & "' where datatype_id='" & strIndex & "'"
        else
          strSQL = "update datatype set " & strField & "='" & request.form(Item) & "' where datatype_id='" & strIndex & "'"
        end if
        response.write "'" & strSQL & "'<br>"
        rsAction.open strSQL, docs
      end if
      rs.close
    end if
  next

  'Process the checkboxes
  strSQL = "select * from datatype where doctype_id=(select type_id from doctype where type_text='" & request.form("type_text") & "')"
  rs.open strSQL, docs
  do until rs.eof
    if isempty(request.form("is_uid_" & rs("datatype_id"))) and rs("is_uid") > 0 then
      strSQL = "update datatype set is_uid='0' where datatype_id='" & rs("datatype_id") & "'"
      rsAction.open strSQL, docs
    end if
    if isempty(request.form("is_currency_" & rs("datatype_id"))) and rs("is_currency") > 0 then
      strSQL = "update datatype set is_currency='0' where datatype_id='" & rs("datatype_id") & "'"
      rsAction.open strSQL, docs
    end if
    if isempty(request.form("is_reqd_" & rs("datatype_id"))) and rs("is_reqd") > 0 then
      strSQL = "update datatype set is_reqd='0' where datatype_id='" & rs("datatype_id") & "'"
      rsAction.open strSQL, docs
    end if
    rs.movenext
  loop
  rs.close
  response.redirect "doctype.asp#" & request.form("type_text")
end if

strSQL = "select datatype_id from datatype where doctype_id=(select type_id from doctype where type_text='" & request.form("type_text") & "')"
rs.open strSQL, docs
do until rs.eof
  if request.form("delete_" & rs("datatype_id")) = "Delete" then
    strSQL = "delete from datatype where datatype_id='" & rs("datatype_id") & "'"
    rsAction.open strSQL, docs
    response.redirect "doctype.asp#" & request.form("type_text")
  end if
  rs.movenext
loop
rs.close
%>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>