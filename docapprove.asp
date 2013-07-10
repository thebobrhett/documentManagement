<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'></meta>
<meta http-equiv='Expires' content='0'></meta>
<title>Document Management</title>
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
'Bob Rhett - Tuesday, January 26, 2010
'  Created
'****************
'on error resume next

dim rsa
dim rsb
dim doc_id

set rsa = CreateObject("adodb.recordset")
set rsb = CreateObject("adodb.recordset")
%>

<div id='title'>
<h1><a href='doclist.asp' class='hidelink'>Document Management System</a></h1>
<h2>Documents Pending Action</h2>
</div>

<div id='menu'>

<%
if request.querystring("filename") <> "" then
  doc_id = csng(left(request.querystring("filename"), instrrev(request.querystring("filename"), ".")))
  response.write "<h2>" & Get_doctype(doc_id) & " " & Get_docstatus(doc_id) & "</h2>"
  response.write "<form action='approveaction.asp?filename=" & request.querystring("filename") & "' method='post'>"
  response.write "<input type='hidden' name='filename' value='" & request.querystring("filename") & "' />"
  response.write "<h3>Document Type<br />"

  strSQL = "select * from docs inner join docdata on docs.doc_id=docdata.doc_id where docs.doc_id='" & doc_id & "'"
  rs.open strSQL, docs
  if not rs.eof then
    strSQL = "select * from doctype where type_id='" & rs("type_id") & "'"
    rsa.open strSQL, docs
    response.write "<b>" & Get_doctype(doc_id) & "</b></h3>"
    rsa.close

    response.write "<h3>Fiscal Year<br />"
    response.write "<b>" & rs("year") & "</b></h3>"

    strSQL = "select * from datatype where doctype_id='" & rs("type_id") & "' order by sortorder"
    rsa.open strSQL, docs
    do until rsa.eof
      if rsa("datatype_text") = "vendor_id" then
        response.write "<h3>" & rsa("input_prompt") & "<br />"
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<b>" & Get_vendor(rsb(rsa("datatype") & "_val")) & "</b></h3>"
        rsb.close

      elseif rsa("is_uid") > 0 then
        response.write "<h3>" & rsa("input_prompt") & "<br />"
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & rs("doc_id") & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<b>" & Get_name(rsb(rsa("datatype") & "_val")) & "</b></h3>"
        rsb.close
      else
        response.write "<h3>" & rsa("input_prompt") & "<br />"
        strSQL = "select " & rsa("datatype") & "_val from docdata where doc_id='" & doc_id & "' and datatype_id='" & rsa("datatype_id") & "'"
        rsb.open strSQL, docs
        response.write "<b>" & rsb(rsa("datatype") & "_val") & "</b></h3>"
        rsb.close
      end if
      rsa.movenext
    loop
    rsa.close

    response.write "<h3>Current Status<br />"
    response.write "<b>" & Get_docstatus(doc_id) & "</b></h3>"

    if rs("status_id") = 3 then
      response.write "<h3>Requested Information<br />"
      response.write "<b>" & Get_request(doc_id) & "</b></h3>"
      response.write "<input type='hidden' name='request' value='" & Get_request(doc_id) & "' />"
    end if

    if rs("reqd") <> "" then
      if Get_isdone(rs("status_id")) <> 0 then
        response.write "<h3>Completed by<br />"
      else
        response.write "<h3>Routed to<br />"
      end if
      response.write "<b>" & Get_name(rs("reqd")) & "</b></h3>"
    end if
  end if
  response.write "<input type='hidden' name='status_id' value='" & rs("status_id") & "' />"
  response.write "<input type='hidden' name='originator' value='" & rs("originator") & "' />"
  if rs("reqd") = currentuser then
    select case rs("status_id")
      case 2
        response.write "<input type='submit' value='Approve' name='approve' /><br />"
        response.write "<input type='submit' value='Decline' name='decline' /><br />"
        if request.querystring("err") = "comment" then
          response.write "<h3><span class='hilite'>If declining, enter comment</span><br />"
        else
          response.write "<h3>If declining, enter comment<br />"
        end if
        response.write "<textarea name='comment' cols='18' rows='5' /></textarea></h3>"

      case 3
        response.write "<input type='submit' value='Respond' name='respond' />"
      case 5
        response.write "<input type='submit' value='Reviewed' name='review' />"
    end select
  end if
  rs.close
else
  response.write "<a href='docsearch.asp' class='hidelink'><h1>Search</h1></a>"
  response.write "<a href='docroute.asp' class='hidelink'><h1>Route</h1></a>"
  response.write "<a href='docapprove.asp' class='hidelink'><h1>Action</h1></a><br />"
end if
%>

</form>
</div>

<div id='body'>
<%
if request.querystring("filename") = "" then
  strSQL = "select * from docs where reqd='" & currentuser & "' and status_id<>1 and status_id<>4 order by insert_ts desc"
  rs.open strSQL, docs
  response.write "<table border='1' width='100%'>"
  if rs.eof then
    response.write "<caption>No Pending Action for " & Get_name(currentuser) & "</caption>"
  else
    response.write "<caption>Pending Action for " & Get_name(currentuser) & "</caption>"
    response.write "<tr>"
    response.write "<th bgcolor='powderblue'>Document Type</th>"
    response.write "<th bgcolor='powderblue'>Originator</th>"
    response.write "<th bgcolor='powderblue'>Status</th>"
    response.write "<th bgcolor='powderblue'>Insert Date</th>"
    response.write "<th bgcolor='powderblue'>Fiscal Year</th>"
    response.write "<th bgcolor='powderblue'>Action</th>"
    response.write "</tr>"
  end if
  do until rs.eof
    response.write "<tr>"
    response.write "<td align='center'>" & Get_type(rs("type_id")) & "</td>"
    response.write "<td align='center'>" & Get_name(rs("originator")) & "</td>"
    response.write "<td align='center'>" & Get_status(rs("status_id")) & "</td>"
    response.write "<td>" & cdate(rs("insert_ts")) & "</td>"
    response.write "<td align='center'>" & cstr(rs("year")) & "</td>"
    response.write "<td align='center'><a href='docapprove.asp?filename=" & rs("filename") & "'>Review</a></td>"
    rs.movenext
  loop
  rs.close
  response.write "</table>"

  if Get_admin(currentuser) = True then
    response.write "<hr />"
    strSQL = "select * from docs where reqd<>'" & currentuser & "' and status_id<>1 and status_id<>4 order by reqd, insert_ts desc"
    rs.open strSQL, docs
    response.write "<table border='1' width='100%'>"
    if rs.eof then
      response.write "<caption>No Other Pending Action</caption>"
    else
      response.write "<caption>Other Pending Action</caption>"
      response.write "<tr>"
      response.write "<th bgcolor='powderblue'>Document Type</th>"
      response.write "<th bgcolor='powderblue'>Originator</th>"
      response.write "<th bgcolor='powderblue'>Status</th>"
      response.write "<th bgcolor='powderblue'>Requirement</th>"
      response.write "<th bgcolor='powderblue'>Insert Date</th>"
      response.write "<th bgcolor='powderblue'>Fiscal Year</th>"
      response.write "<th bgcolor='powderblue'>Action</th>"
      response.write "</tr>"
    end if
    do until rs.eof
      response.write "<tr>"
      response.write "<td align='center'>" & Get_type(rs("type_id")) & "</td>"
      response.write "<td align='center'>" & Get_name(rs("originator")) & "</td>"
      response.write "<td align='center'>" & Get_status(rs("status_id")) & "</td>"
      response.write "<td align='center'>" & Get_name(rs("reqd")) & "</td>"
      response.write "<td>" & cdate(rs("insert_ts")) & "</td>"
      response.write "<td align='center'>" & cstr(rs("year")) & "</td>"
      response.write "<td align='center'><a href='docapprove.asp?filename=" & rs("filename") & "'>Review</a></td>"
      rs.movenext
    loop
    rs.close
    response.write "</table>"
  end if
else
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