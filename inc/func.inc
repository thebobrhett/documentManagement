<%
function Format_String(strText, datatype)
  select case datatype
    case ""
      if isdate(strText) then
        Format_String = cstr(year(strText)) & "-"
        if month(strText) < 10 then
          Format_String = Format_String & "0" & cstr(month(strText)) & "-"
        else
          Format_String = Format_String & cstr(month(strText)) & "-"
        end if
        if day(strText) < 10 then
          Format_String = Format_String & "0" & cstr(day(strText)) & " "
        else
          Format_String = Format_String & cstr(day(strText)) & " "
        end if
        if hour(strText) < 10 then
          Format_String = Format_String & "0" & cstr(hour(strText)) & ":"
        else
          Format_String = Format_String & cstr(hour(strText)) & ":"
        end if
        if minute(strText) < 10 then
          Format_String = Format_String & "0" & cstr(minute(strText)) & ":"
        else
          Format_String = Format_String & cstr(minute(strText)) & ":"
        end if
        if second(strText) < 10 then
          Format_String = Format_String & "0" & cstr(second(strText))
        else
          Format_String = Format_String & cstr(second(strText))
        end if
      else
        Format_String = strText
      end if
    case "datetime"
      if isdate(strText) then
        Format_String = cstr(year(strText)) & "-"
        if month(strText) < 10 then
          Format_String = Format_String & "0" & cstr(month(strText)) & "-"
        else
          Format_String = Format_String & cstr(month(strText)) & "-"
        end if
        if day(strText) < 10 then
          Format_String = Format_String & "0" & cstr(day(strText)) & " "
        else
          Format_String = Format_String & cstr(day(strText)) & " "
        end if
        if hour(strText) < 10 then
          Format_String = Format_String & "0" & cstr(hour(strText)) & ":"
        else
          Format_String = Format_String & cstr(hour(strText)) & ":"
        end if
        if minute(strText) < 10 then
          Format_String = Format_String & "0" & cstr(minute(strText)) & ":"
        else
          Format_String = Format_String & cstr(minute(strText)) & ":"
        end if
        if second(strText) < 10 then
          Format_String = Format_String & "0" & cstr(second(strText))
        else
          Format_String = Format_String & cstr(second(strText))
        end if
      else
        Format_String = strText
      end if
    case "date"
      if isdate(strText) then
        Format_String = cstr(year(strText)) & "-"
        if month(strText) < 10 then
          Format_String = Format_String & "0" & cstr(month(strText)) & "-"
        else
          Format_String = Format_String & cstr(month(strText)) & "-"
        end if
        if day(strText) < 10 then
          Format_String = Format_String & "0" & cstr(day(strText)) & " "
        else
          Format_String = Format_String & cstr(day(strText)) & " "
        end if
      else
        Format_String = strText
      end if
    case "numeric"
      if isnumeric(strText) then
        Format_String = csng(strText)
      end if
    case "currency"
      if strText <> "" then
        Format_String = FormatCurrency(csng(strText), 2)
      else
        Format_String = strText
      end if
    case "text"
      Format_String = replace(strtext, "\", "\\")
      Format_String = replace(strtext, "'", "\'")
    case else
      Format_String = strText
  end select
end function

function Get_year(doc_id)
  dim rs_year
  set rs_year = CreateObject("adodb.recordset")
  rs_year.open "select year from docs where doc_id='" & doc_id & "'", docs
  if not rs_year.eof then
    Get_year = rs_year("year")
  else
    Get_year = doc_id
  end if
  rs_year.close
  set rs_year=nothing
end function

function Get_doctype(doc_id)
  dim rs_doctype
  set rs_doctype = CreateObject("adodb.recordset")
  rs_doctype.open "select type_text from doctype where type_id=(select type_id from docs where doc_id='" & doc_id & "')", docs
  if not rs_doctype.eof then
    Get_doctype = rs_doctype("type_text")
  else
    Get_doctype = doc_id
  end if
  rs_doctype.close
  set rs_doctype=nothing
end function

function Get_type(type_id)
  dim rs_type
  set rs_type = CreateObject("adodb.recordset")
  rs_type.open "select type_text from doctype where type_id='" & type_id & "'", docs
  if not rs_type.eof then
    Get_type = rs_type("type_text")
  else
    Get_type = type_id
  end if
  rs_type.close
  set rs_type=nothing
end function

function Get_typeid(doc_id)
  dim rs_typeid
  set rs_typeid = CreateObject("adodb.recordset")
  rs_typeid.open "select type_id from docs where doc_id='" & doc_id & "'", docs
  if not rs_typeid.eof then
    Get_typeid = rs_typeid("type_id")
  else
    Get_typeid = doc_id
  end if
  rs_typeid.close
  set rs_typeid=nothing
end function

function Get_originator(doc_id)
  dim rs_orig
  set rs_orig = CreateObject("adodb.recordset")
  rs_orig.open "select originator from docs where doc_id='" & doc_id & "'", docs
  if not rs_orig.eof then
    Get_originator = rs_orig("originator")
  else
    Get_originator = doc_id
  end if
  rs_orig.close
  set rs_orig=nothing
end function

function Get_docstatus(doc_id)
  dim rs_docstatus
  set rs_docstatus = CreateObject("adodb.recordset")
  rs_docstatus.open "select status_text from status where status_id=(select status_id from docs where doc_id='" & doc_id & "')", docs
  if not rs_docstatus.eof then
    Get_docstatus = rs_docstatus("status_text")
  else
    Get_docstatus = doc_id
  end if
  rs_docstatus.close
  set rs_docstatus=nothing
end function

function Get_status(status_id)
  dim rs_status
  set rs_status = CreateObject("adodb.recordset")
  rs_status.open "select status_text from status where status_id='" & status_id & "'", docs
  if not rs_status.eof then
    Get_status = rs_status("status_text")
  else
    Get_status = status_id
  end if
  rs_status.close
  set rs_status=nothing
end function

function Get_statusid(doc_id)
  dim rs_statusid
  set rs_statusid = CreateObject("adodb.recordset")
  rs_statusid.open "select status_id from docs where doc_id='" & doc_id & "'", docs
  if not rs_statusid.eof then
    Get_statusid = rs_statusid("status_id")
  else
    Get_statusid = doc_id
  end if
  rs_statusid.close
  set rs_statusid=nothing
end function

function Get_datatype(datatype_id)
  dim rs_datatype
  set rs_datatype = CreateObject("adodb.recordset")
  rs_datatype.open "select datatype_text from datatype where datatype_id='" & datatype_id & "'", docs
  if not rs_datatype.eof then
    Get_datatype = rs_datatype("datatype_text")
  else
    Get_datatype = datatype_id
  end if
  rs_datatype.close
  set rs_datatype=nothing
end function

function Get_datatypeid(datatype_text, type_id)
  dim rs_datatypeid
  set rs_datatypeid = CreateObject("adodb.recordset")
  rs_datatypeid.open "select datatype_id from datatype where datatype_text='" & datatype_text & "' and doctype_id='" & type_id & "'", docs
  if not rs_datatypeid.eof then
    Get_datatypeid = rs_datatypeid("datatype_id")
  else
    Get_datatypeid = datatype_text
  end if
  rs_datatypeid.close
  set rs_datatypeid=nothing
end function

function Get_datatype_val(datatype_id)
  dim rs_datatype_val
  set rs_datatype_val = CreateObject("adodb.recordset")
  rs_datatype_val.open "select datatype from datatype where datatype_id='" & datatype_id & "'", docs
  if not rs_datatype_val.eof then
    Get_datatype_val = rs_datatype_val("datatype")
  else
    Get_datatype_val = datatype_id
  end if
  rs_datatype_val.close
  set rs_datatype_val=nothing
end function

function Get_vendor(vendor_id)
  dim rs_vendor
  set rs_vendor = CreateObject("adodb.recordset")
  rs_vendor.open "select name from vendors where vendor_id='" & vendor_id & "'", docs
  if not rs_vendor.eof then
    Get_vendor = rs_vendor("name")
  else
    Get_vendor = vendor_id
  end if
  rs_vendor.close
  set rs_vendor=nothing
end function

function Get_costcenter(cc)
  dim rs_cc
  set rs_cc = CreateObject("adodb.recordset")
  rs_cc.open "select netsuite_cost_center from cost_centers where cost_center='" & cc & "'", db
  if not rs_cc.eof then
    Get_costcenter = rs_cc("netsuite_cost_center")
  else
    Get_costcenter = cc
  end if
  rs_cc.close
  set rs_cc=nothing
end function

function Get_name(uid)
  dim rs_name
  set rs_name = CreateObject("adodb.recordset")
  rs_name.open "select last_name, nickname from users where cwid='" & uid & "'", db
  if not rs_name.eof then
    Get_name = rs_name("nickname") & " " & rs_name("last_name")
  else
    Get_name = uid
  end if
  rs_name.close
  set rs_name=nothing
end function

function Get_name_lnf(uid)
  dim rs_name
  set rs_name = CreateObject("adodb.recordset")
  rs_name.open "select last_name, nickname from users where cwid='" & uid & "'", db
  if not rs_name.eof then
    Get_name_lnf = rs_name("last_name") & ", " & rs_name("nickname")
  else
    Get_name_lnf = uid
  end if
  rs_name.close
  set rs_name=nothing
end function

function Get_email(uid)
  dim rs_email
  set rs_email = CreateObject("adodb.recordset")
  rs_email.open "select internet_mail from users where cwid='" & uid & "'", db
  if not rs_email.eof then
    Get_email = rs_email("internet_mail")
  else
    Get_email = uid
  end if
  rs_email.close
  set rs_email=nothing
end function

function Get_super(uid)
  dim rs_super
  set rs_super = CreateObject("adodb.recordset")
  rs_super.open "select sponsor from users where cwid='" & uid & "'", db
  if not rs_super.eof then
    Get_super = rs_super("sponsor")
  else
    Get_super = uid
  end if
  rs_super.close
  set rs_super=nothing
end function

function Get_admin(uid)
  dim rs_admin
  set rs_admin = CreateObject("adodb.recordset")
  rs_admin.open "select docmgt_admin from access where emp_no=(select accounting_number from users where cwid='" & currentuser & "')", db
  if not rs_admin.eof then
    if rs_admin("docmgt_admin") <> 0 then
      Get_admin = True
    else
      Get_admin = False
    end if
  else
    Get_admin = False
  end if
  rs_admin.close
  set rs_admin=nothing
end function

function Get_update(update_id)
  dim rs_update
  set rs_update = CreateObject("adodb.recordset")
  rs_update.open "select update_text from updates where update_id='" & update_id & "'", docs
  if not rs_update.eof then
    Get_update = rs_update("update_text")
  else
    Get_update = update_id
  end if
  rs_update.close
  set rs_update=nothing
end function

function Get_request(doc_id)
  dim rs_request
  set rs_request = CreateObject("adodb.recordset")
  rs_request.open "select request from route where doc_id='" & doc_id & "' order by step", docs
  if not rs_request.eof then
    Get_request = rs_request("request")
  else
    Get_request = doc_id
  end if
  rs_request.close
  set rs_request=nothing
end function

function Get_isdone(status_id)
  dim rs_isdone
  set rs_isdone = CreateObject("adodb.recordset")
  rs_isdone.open "select is_done from status where status_id='" & status_id & "'", docs
  if not rs_isdone.eof then
    Get_isdone = rs_isdone("is_done")
  else
    Get_isdone = 0
  end if
  rs_isdone.close
  set rs_isdone=nothing
end function
%>