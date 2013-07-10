<%
set rs = nothing
docs.close
set docs = nothing
db.close
set db = nothing
set objNetwork = createobject("wscript.network")
on error resume next
objNetwork.RemoveNetworkDrive "K:"
objNetwork.RemoveNetworkDrive "L:"
on error goto 0
%>