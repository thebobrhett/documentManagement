<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Management</title>
<link href='./css/docstyle.css' rel='stylesheet' type='text/css'>
<link href='./css/datepicker.css' rel='stylesheet' type='text/css' />
<script src='./js/datepicker.js' type='text/javascript'>{"buttontabindex":false}</script>
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
'
'Bob Rhett - Friday, May 28, 2010
'  Added selection for alternate vendor list
'****************
'on error resume next

dim rsa
dim rsb
dim rsc
dim rsRef
dim doc_id

set rsa = CreateObject("adodb.recordset")
set rsb = CreateObject("adodb.recordset")
set rsc = CreateObject("adodb.recordset")
set rsRef = CreateObject("adodb.recordset")

%>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>

<%
if request.querystring("filename") <> "" then
  doc_id = csng(left(request.querystring("filename"), instrrev(request.querystring("filename"), ".")))
  response.write "<h2>" & Get_doctype(doc_id) & " Data Entry</h2>"
else
  response.write "<h2>No Document Selected for Editing</h2>"
end if
%>

</div>

<div id='menu'>

<%
if request.querystring("filename") <> "" then
  response.write "<form action='docaction.asp' method='post'>"
  response.write "<input type='hidden' name='filename' value='" & request.querystring("filename") & "' />"
  response.write "<input type='hidden' name='ref_url' value='" & request.form("ref_url") & "' />"
  response.write "<h3>Document Type<br />"
  response.write "<select name='type_id'>"
  strSQL = "select * from docs inner join docdata on docs.doc_id=docdata.doc_id where docs.doc_id='" & doc_id & "'"
  rs.open strSQL, docs
  if not rs.eof then
    strSQL = "select * from doctype order by type_text"
    rsa.open strSQL, docs
    do until rsa.eof
      if rs("type_id") = rsa("type_id") then
        response.write "<option value='" & rsa("type_id") & "' selected='selected'>" & rsa("type_text") & "</option>"
      else
        response.write "<option value='" & rsa("type_id") & "'>" & rsa("type_text") & "</option>"
      end if
      rsa.movenext
    loop
    rsa.close
    response.write "</select></h3>"

    response.write "<h3>Fiscal Year<br />"
    response.write "<input type='text' name='year' value='" & rs("year") & "' size='6' /></h3>"

    strSQL = "select * from datatype where doctype_id='" & rs("type_id") & "' order by sortorder"
    rsa.open strSQL, docs
    do until rsa.eof
      if rsa("datatype_text") = "vendor_id" then
        if request.querystring("err") = rsa("datatype_text") then
          response.write "<h3>" & rsa("input_prompt") & "<br /><span class='hilite'>select from list</span><br />"
        else
          response.write "<h3>" & rsa("input_prompt") & "<br />"
        end if
        response.write "<select name='" & rsa("datatype_text") & "'>"
        response.write "<option value=''></option>"
        strSQL = "select * from vendors order by name"
        rsRef.open strSQL, docs
        strSQL = "select datatype_id from datatype where datatype_text='vendor_id'"
        rsb.open strSQL, docs
        do until rsb.eof
          strSQL = "select * from docdata where doc_id='" & doc_id & "' and datatype_id='" & rsb("datatype_id") & "'"
          rsc.open strSQL, docs
          if not rsc.eof then
            do until rsRef.eof
              if rsRef("vendor_id") = rsc("numeric_val") then
                if rsRef("vendor_id") < 0 then
                  response.write "<option value='" & rsRef("vendor_id") & "' selected='selected'>" & rsRef("name") & " (ad hoc)</option>"
                else
                  response.write "<option value='" & rsRef("vendor_id") & "' selected='selected'>" & rsRef("name") & "</option>"
                end if
              else
                if rsRef("vendor_id") < 0 then
                  response.write "<option value='" & rsRef("vendor_id") & "'>" & rsRef("name") & " (ad hoc)</option>"
                else
                  response.write "<option value='" & rsRef("vendor_id") & "'>" & rsRef("name") & "</option>"
                end if
              end if
              rsRef.movenext
            loop
            rsRef.close
          end if
          rsc.close
          rsb.movenext
        loop
        rsb.close
        response.write "</select></h3>"
      elseif rsa("datatype_text") = "cost_center" then
        if request.querystring("err") = rsa("datatype_text") then
          response.write "<h3>" & rsa("input_prompt") & "<br /><span class='hilite'>select from list</span><br />"
        else
          response.write "<h3>" & rsa("input_prompt") & "<br />"
        end if
        response.write "<select name='" & rsa("datatype_text") & "' tabindex='" & rsa("sortorder") & "'>"
        strSQL = "select * from cost_centers where cost_center<>'' order by cost_center"
        rsRef.open strSQL, db
        do until rsRef.eof
          strSQL = "select * from docdata where doc_id='" & doc_id & "' and datatype_id='" & rsa("datatype_id") & "'"
          rsb.open strSQL, docs
          if not rsb.eof then
            if rsRef("cost_center") = rsb("varchar_val") then
              response.write "<option value='" & rsRef("cost_center") & "' selected='selected'>" & rsRef("netsuite_cost_center") & "</option>"
            elseif rsRef("cost_center") = request.cookies(rsa("datatype_text")) then
              response.write "<option value='" & rsRef("cost_center") & "' selected='selected'>" & rsRef("netsuite_cost_center") & "</option>"
            else
              response.write "<option value='" & rsRef("cost_center") & "'>" & rsRef("netsuite_cost_center") & "</option>"
            end if
          end if
          rsb.close
          rsRef.movenext
        loop
        rsRef.close
        response.write "</select></h3>"
      elseif rsa("is_uid") > 0 then
        if request.querystring("err") = rsa("datatype_text") then
          response.write "<h3>" & rsa("input_prompt") & "<br /><span class='hilite'>select from list</span><br />"
        else
          response.write "<h3>" & rsa("input_prompt") & "<br />"
        end if
        response.write "<select name='" & rsa("datatype_text") & "'>"
        strSQL = "select * from users where status='Active' order by last_name, first_name"
        rsRef.open strSQL, db
        strSQL = "select datatype_id from datatype where is_uid>'0'"
        rsb.open strSQL, docs
        do until rsb.eof
          strSQL = "select * from docdata where doc_id='" & doc_id & "' and datatype_id='" & rsb("datatype_id") & "'"
          rsc.open strSQL, docs
          if not rsc.eof then
            do until rsRef.eof
              if rsRef("cwid") = rsc("varchar_val") then
              response.write "<option value='" & rsRef("cwid") & "' selected='selected'>" & rsRef("last_name") & ", " & rsRef("nickname") & "</option>"
              else
                response.write "<option value='" & rsRef("cwid") & "'>" & rsRef("last_name") & ", " & rsRef("nickname") & "</option>"
              end if
              rsRef.movenext
            loop
            rsRef.close
          end if
          rsc.close
          rsb.movenext
        loop
        rsb.close
        response.write "</select></h3>"
      else
        if request.querystring("err") = rsa("datatype_text") then
          response.write "<h3>" & rsa("input_prompt") & "<br /><span class='hilite'>" & session("err_prompt") & "</span><br />"
        else
          response.write "<h3>" & rsa("input_prompt") & "<br />"
        end if
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & doc_id & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        if not rsb.eof then
          if rsa("is_currency") <> 0 then
            response.write "<input type='text' name='" & rsa("datatype_text") & "' value='" & Format_String(rsb(rsa("datatype") & "_val"),"currency") & "' /></h3>"
          elseif rsa("datatype") = "date" then
            response.write "<input type='text' name='" & rsa("datatype_text") & "' id='" & rsa("datatype_text") & "' value='" & rsb(rsa("datatype") & "_val") & "' class='w16em' /></h3>"
%>
  <script type='text/javascript'>
    // <![CDATA[  
      var opts = {                            
        formElements:{"<%=rsa("datatype_text")%>":"m-sl-d-sl-Y"},
        fillGrid:true,
        constrainSelection:false        
      };      
      datePickerController.createDatePicker(opts);
    // ]]>
  </script>
<%
            response.write "<br />"
          else
            response.write "<input type='text' name='" & rsa("datatype_text") & "' value='" & rsb(rsa("datatype") & "_val") & "' /></h3>"
          end if
        end if
        rsb.close
      end if
      rsa.movenext
    loop
    rsa.close
  end if
  rs.close
'****************
'Should an administrator be able to modify the status?
'  to set a completed document back to new to be re-routed?
'****************
  response.write "<input type='submit' value='Update' name='edit' />"
  response.write "</form>"
  response.write "<form action='" & request.form("ref_url") & "' method='post'>"
  response.write "<input type='submit' value='Cancel' name='edit' />"
  response.write "</form>"
end if
%>

</div>

<div id='body'>

<%
if request.querystring("filename") <> "" then
  file_ext = right(request.querystring("filename"), len(request.querystring("filename")) - instrrev(request.querystring("filename"), "."))
  strSQL = "select * from supported_MIME where file_ext='" & file_ext & "'"
  rs.open strSQL, docs
  if not rs.eof then
    if request.form("type_id") = "" then
      if rs("use_mime") <> 0 then
        response.write "<object data='" & docurl & Get_year(doc_id) & "/" & Get_doctype(doc_id) & "/" & request.querystring("filename") & "' type='" & rs("mime_str") & "' width='100%' height='923'></object>"
      else
        response.write "<h2>This document type cannot be viewed here.</h2><a href='" & docurl & Get_year(doc_id) & "/" & Get_doctype(doc_id) & "/" & request.querystring("filename") & "' target='_blank'><h3>Click here to launch document</h3></a>"
      end if
    else
      if rs("use_mime") <> 0 then
        response.write "<object data='" & tempurl & request.querystring("filename") & "' type='" & rs("mime_str") & "' width='100%' height='923'></object>"
      else
        response.write "<h2>This document type cannot be viewed here.</h2><a href='" & tempurl & request.querystring("filename") & "' target='_blank'><h3>Click here to launch document</h3></a>"
      end if
    end if
  end if
  rs.close
end if
%>

</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>