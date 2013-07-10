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

'Track the return path and pass to edit
'Add a return button

dim rsa
dim rsb
dim doc_id

set rsa = CreateObject("adodb.recordset")
set rsb = CreateObject("adodb.recordset")
%>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>

<%
if request.querystring("filename") <> "" then
  doc_id = csng(left(request.querystring("filename"), instrrev(request.querystring("filename"), ".")))
  strSQL = "select type_id from docs where doc_id='" & doc_id & "'"
  rs.open strSQL, docs
  response.write "<h2>" & Get_type(rs("type_id")) & " Data View</h2>"
  rs.close
else
  response.write "<h2>No File Selected for Viewing</h2>"
end if
%>

</div>

<div id='menu'>

<%
if request.querystring("filename") <> "" then
  response.write "<form action='docedit.asp?filename=" & request.querystring("filename") & "' method='post'>"
  response.write "<input type='hidden' name='filename' value='" & request.querystring("filename") & "' />"
  response.write "<input type='hidden' name='ref_url' value='docview.asp?filename=" & request.querystring("filename") & "' />"

  strSQL = "select * from docs inner join docdata on docs.doc_id=docdata.doc_id where docs.doc_id='" & doc_id & "'"
  rs.open strSQL, docs
  if not rs.eof then
    response.write "<h3>Document Type<br />"
    response.write "<b>" & Get_type(rs("type_id")) & "</b></h3>"
    response.write "<h3>Current Status<br />"
    response.write "<b>" & Get_docstatus(doc_id)
    select case rs("status_id")
      case 3
        response.write "<br />" & Get_request(doc_id)
      case 6
        response.write "<br />" & Get_request(doc_id)
      case 7
        response.write "<br />" & Get_request(doc_id)
    end select
    response.write "</b></h3>"
    if rs("reqd") <> "" then
      if Get_isdone(rs("status_id")) <> 0 then
        response.write "<h3>Completed by<br />"
      else
        response.write "<h3>Routed to<br />"
      end if
      response.write "<b>" & Get_name(rs("reqd")) & "</b></h3>"
    end if
    response.write "<h3>Fiscal Year<br />"
    response.write "<b>" & rs("year") & "</b></h3>"
    strSQL = "select * from datatype where doctype_id='" & rs("type_id") & "' order by sortorder"
    rsa.open strSQL, docs
    do until rsa.eof
      if rsa("datatype_text") = "vendor_id" then
        response.write "<h3>" & rsa("search_prompt") & "<br />"
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<b>" & Get_vendor(rsb(rsa("datatype") & "_val")) & "</b></h3>"
        rsb.close
      elseif rsa("datatype_text") = "url" then
        response.write "<h3>" & rsa("search_prompt") & "<br />"
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<a href='" & rsb(rsa("datatype") & "_val") & "' target='_blank'>" & rsb(rsa("datatype") & "_val") & "</a></h3>"
        rsb.close

      elseif rsa("datatype_text") = "cost_center" then
        response.write "<h3>" & rsa("search_prompt") & "<br />"
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<b>" & Get_costcenter(rsb(rsa("datatype") & "_val")) & "</b></h3>"
        rsb.close

      elseif rsa("is_uid") <> 0 then
        response.write "<h3>" & rsa("search_prompt") & "<br />"
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<b>" & Get_name(rsb(rsa("datatype") & "_val")) & "</b></h3>"
        rsb.close
      else
        response.write "<h3>" & rsa("search_prompt") & "<br />"
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        if not rsb.eof then
          if rsa("is_currency") <> 0 then
            response.write "<b>" & Format_String(rsb(rsa("datatype") & "_val"),"currency") & "</b></h3>"
          else
            response.write "<b>" & rsb(rsa("datatype") & "_val") & "</b></h3>"
          end if
        end if
        rsb.close
      end if
      rsa.movenext
    loop
    rsa.close
  end if
  rs.close
  response.write "<input type='submit' value='Edit' name='edit' />"
  response.write "</form>"

  if request.servervariables("HTTP_REFERER") <> "" then
    response.write "<form action='" & request.servervariables("HTTP_REFERER") & "' method='post'>"
    response.write "<input type='submit' value='Return' name='return' />"
    response.write "</form>"
  end if

else
  response.write "<a href='docsearch.asp' class='hidelink'><h1>Search</h1></a>"
  response.write "<a href='docroute.asp' class='hidelink'><h1>Route</h1></a>"
  response.write "<a href='docapprove.asp' class='hidelink'><h1>Action</h1></a><br />"
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
  response.write "<hr />"
  response.write "<table border='1'>"
  response.write "<caption>History for Document " & doc_id & "</caption>"
  response.write "<tr>"
  response.write "<th bgcolor='powderblue'>Action Timestamp</th>"
  response.write "<th bgcolor='powderblue'>User</th>"
  response.write "<th bgcolor='powderblue'>Action Type</th>"
  response.write "<th bgcolor='powderblue'>Action Taken</th>"
  response.write "</tr>"
  strSQL = "select * from actionlog where doc_id='" & doc_id & "' order by action_ts"
'  response.write strSQL & "<br>"
  rs.open strSQL, docs
  do until rs.eof
    response.write "<tr>"
    response.write "<td>" & rs("action_ts") & "</td>"
    response.write "<td align='center'>" & Get_name(rs("user_id")) & "</td>"
    response.write "<td align='center'>" & Get_update(rs("update_id")) & "</td>"
    response.write "<td>" & rs("action_text")
    strText = rs("additional_text")
    if not isnull(strText) then
      response.write " - " & strText
    end if
    response.write "</td>"
    rs.movenext
  loop
  response.write "</table>"
end if
%>
</div>

</body>
<!--#includes file='./inc/cleanup.inc'-->
</html>