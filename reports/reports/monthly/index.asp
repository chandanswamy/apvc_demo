<html>

<head>
<style> 
  <!-- 
   a { color:#0000FF; text-decoration: none; } 
   a:hover { color:  #A000FF; text-decoration: underline;} 
  --> 
</style>
<title>Andhra Pradesh Vigilance Commission </title>
</head>
<body bgcolor="#FFFFFF">

<%@ LANGUAGE = VBScript %>
<%
	''dim counter
	''set fso = CreateObject("Scripting.FileSystemObject")
	''set act = fso.opentextfile(server.mappath("aspcount.txt"))
	''counter = act.ReadLine


dim oconn
set oconn=server.createobject("ADODB.Connection")

oconn.Open "provider=sqloledb;SERVER=10.160.0.4;UID=vc_web;PWD=bew_vc;DATABASE=vigilence"

If IsObject(oconn) Then
     If oconn.State = 1 Then
      'Response.write("The sql Connection is actively connected to the database")
   End if
 else
 Response.write("The sqlconn connection is not active")
End If

	
			Dim oRs			' object for output recordset object   
			dim n             ' no of complaints
		
			
			
			Set oRs = oConn.Execute ( "select * from visitor_det order by v_no desc" )
			if oRs.EOF=false then
				n= clng(oRs.fields("v_no"))
			else 
				n=0	
			end if
			oRs.close
			dim ip
			ip=Request.ServerVariables("REMOTE_HOST")
			
			
	if session("been_here_before") = "" then
	session("been_here_before") = "Yes"
		    n=n+1
			oConn.Execute "	INSERT INTO visitor_det(v_no,v_ip) values (" & n &", '" &ip& "')"
end if


	'counter=counter+1
	'set act = fso.CreateTextFile(server.mappath("aspcount.txt"),true)
	'act.WriteLine (counter)
'		act.close
'		set act=nothing
'		set fso=nothing


'		Response.Write ("You are visitor No: ")
'		Response.Write ("<font size=2  face=Arial><b>")
'		Response.write (n)
'		Response.Write("</b></font>")
Session.LCID=2057
%>

<div align="center">

<table border="0" width="80%" bgcolor="#FFFFFF" height="445" cellspacing="0"
cellpadding="0">
  <tr>
    <td valign="top"><p align="center"><font face="Times New Roman" size="3"><img
    src="imgs/3.gif" width="725" height="95"></font></td>
  </tr>
  <tr>
    <td align="center" valign="bottom"><table border="0" width="100%">
      <tr>
        <td width="35%"><table border="0" width="100%">
          <tr>
            <td bgcolor="#800000"><b><font face="Times New Roman" size="3" color="#FFFFFF">About US</font></b></td>
          </tr>
          <tr>
            <td><font face="Times New Roman" size="3"><font color="#0000A0"><a href="about%20apvc.htm"
            target="_top">Introduction</a><br>
            </font><font color="#0000FF"><a href="APPENDIX.doc">Organizational Setup</a><br>
            <a href="jurd.htm">Jurisdiction &amp; Function</a>
            </font></font></td>
          </tr>
        </table>
        <table border="0" width="100%" height="167">
          <tr>
            <td bgcolor="#713800" height="18" colspan="2"><font face="Times New Roman" size="2"
            color="#FFFFFF"><b>Manuals</b></font></td>
          </tr>
          <tr>
            <td align="right" height="18" colspan="2"><font face="Times New Roman" size="3"
            color="#0000A0"><a href="js/manual.asp" target="_blank">A.P. Vigilance Manual</a></font></td>
          </tr>
          <tr>
            <td align="right" height="18" colspan="2"><font face="Times New Roman" size="3"
            color="#0000A0"><a href="HandbookforCVO-VOs.pdf">Handbook for Vigilance Officers</a></font></td>
          </tr>
          <tr>
            <td align="right" height="18" colspan="2"><a href="HandbookforDisA.pdf"><font face="Times New Roman" size="3" color="#0000FF">Handbook for Disciplinary Authorities</font></a></td>
          </tr>
          <tr>
            <td bgcolor="#FFB366" height="18" colspan="2">
            <font face="Times New Roman" size="2"
            color="#800080"><strong>Press Note&nbsp; </strong></font></td>
          </tr>
          
           <tr>
            <!--td align="right" height="18" colspan="2"><font face="Times New Roman" size="3">
            <a target="_blank" href="PressRel/Rejoinder_Aug_07.htm"><span style="FONT-FAMILY: 'Times New Roman'">&nbsp;Rejoinder to the Press Release</span></a></font></td-->
          </tr>
          <tr>
            <!--td align="right" height="18" colspan="2"><font face="Times New Roman" size="3">
            <span style="FONT-FAMILY: 'Times New Roman'">&nbsp;<a href="PressRel/PressRel_10Aug07.htm">Press Release</a></span></a></font></td-->
          </tr>
         

          <tr>
            <td align="right" height="18" colspan="2"><font face="Times New Roman" size="3"><a
            href="RInf/press_note.htm" target="_blank"><span style="FONT-FAMILY: 'Times New Roman'">Whistleblowers
            Protection</span></a></font></td>
          </tr>
         

</center>
          <center>

          <tr>
            <td bgcolor="#CC6600" height="18" colspan="2"><font face="Times New Roman" size="2" color="#FFFFFF"><strong>APVC
              Information under RTI Act</strong></font></td>
          </tr>
</center>
          <tr>
            <td bgcolor="#FFFFFF" height="18" width="50%"><font face="Times New Roman" size="3"><p align="right"> <a href="RInf/Rto_inf_act_2005.htm" target="_blank">In English</a></font></td>
              <center>

           <!-- <td bgcolor="#FFFFFF" height="18" width="30%"><font face="Times New Roman" size="3"><p align="right"><a href="RInf/UnderConstruction.jpg" target="_blank"><center><img src="imgs/telugu.jpg" width="70" height="24"
            style="background-color: rgb(255,255,255); color: rgb(255,255,255); border: medium none rgb(255,255,255)"></a></font></td> -->
          </tr>
</center>
            <tr>
            <td height="18" colspan="2">
              <p align="right"><a href="RTI-Act.pdf"><font face="Times New Roman" size="3">Right to Information Act 2005</font></a></td>
            </tr>
            <tr>
            <td height="18" colspan="2">
              </td>
            </tr>
            <center>

        </table>
      </center>
        </td>
        <td width="30%" align="center"><p align="center"><font face="Times New Roman" size="3">
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="obj1"
        codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"
        border="0" width="147" height="142">
          <param name="movie" value="imgs/eagle1.swf">
          <param name="quality" value="High"><embed src="imgs/eagle.swf" pluginspage="http://www.macromedia.com/go/getflashplayer"
type="application/x-shockwave-flash" name="obj1" width="160" height="160"></object>
        </font></td>
        <td width="35%" valign="top"><table border="0" width="100%">
          <tr>
            <td bgcolor="#CC3300" width="100%"><font face="Times New Roman" size="2" color="#FFFFFF"><b>APVC -
            Personnels</b></font></td>
           
          </tr>
          <tr>
            <td bgcolor="#FFEEDD" width="100%">
            <p align="left"><font color="#1C377C" face="Times New Roman" size="3">Vigilance
            Commissioner</font></td>
          </tr>
          <tr>
            <td width="100%">
            <p align="right">-</td>
          </tr>
          <tr>
            <td width="100%">
           




            <p align="right"><strong><font color="#800000" face="Times New Roman" size="3">Shri S.V.Prasad, IAS(Retd) </font><a href="demitted.htm"><font color="#800000" face="Times New Roman" size="2">&nbsp;</font></a></strong></td>
          </tr>
          <tr>
            <td bgcolor="#FFEEDD" width="100%">
            <p align="left"><font color="#1C377C" face="Times New Roman" size="3">Consultant and Secretary to
            Vigilance Commissioner (Incharge)</font></td>
          </tr>
          <tr>
            <td height="16" width="100%">
            <p align="right"><strong>
            <font face="Times New Roman" color="#800000" size="3">Shri.B.Ramaiah,IAS (Retd.)&nbsp; </font></strong></td>
          </tr>
          <tr>
            <td bgcolor="#FF9D6F" width="100%"><font face="Times New Roman" size="2"><b>Contact Details</b></font></td>
          </tr>
          <tr>
            <td width="100%"><p align="right"><font color="#1C377C" face="Times New Roman" size="3"><a
            href="contact_us.htm">You can Reach Us</a></font></td>
          </tr>
           <tr>
            <td bgcolor="#FF9D6F" width="100%"><font face="Times New Roman" size="2"><b>Staff Details</b></font></td>
          </tr>
          <tr>
            <td width="100%"><p align="right"><font color="#1C377C" face="Times New Roman" size="3"><a
            href="list_of_officers.htm">Officers working</a></font></td>
          </tr>
          <tr>
            <td width="100%"><p align="right"><font color="#1C377C" face="Times New Roman" size="3"><a
            href="salary.htm">Salary</a></font></td>
          </tr>
          <tr>
            <td width="100%"><p align="right"><font color="#1C377C" face="Times New Roman" size="3"><a
            href="budget.htm">Budget2012-13</a></font></td>
          </tr>

          
          <tr>
            <td bgcolor="#FFB366" width="100%"><font face="Times New Roman" size="2" color="#800000"><strong>Monthly
            Reports</strong></font></td>
          </tr>
          <tr>
            <td align="right" width="100%">
              <p align="left"><font face="Times New Roman" size="3">Performance of Commission in <br>
			  <a target="_blank" href="MR/jan_2012.htm"> 2011-12</a>&nbsp;&nbsp;&nbsp;
			  <a target="_blank" href="MR/jan_2013.htm"> 2012-13</a>&nbsp;&nbsp;&nbsp;
			    <a target="_blank" href="MR/April-June2013.htm">April-June 13 </a>  &nbsp;&nbsp;&nbsp;&nbsp;
			   <br>  <a target="_blank" href="MR/julyaug2013.htm">July-August 13 </a>  &nbsp;&nbsp;&nbsp;&nbsp;
			  </font></p>
            </td>
          </tr>
          <!--<tr>
            <td align="right" width="100%">
            <a target="_blank" href="arch_disp_case.htm"><img border="0" src="imgs/archive.jpg" width="82" height="11" style="border-bottom-style: solid; padding-bottom: 1"></a></td>
          </tr>-->
          <tr>
            <td align="right" height="17" bgcolor="#CC0000" width="100%">
              <p align="left"><b><font face="Times New Roman" color="#FFFFFF" size="2">Circular</font></b></td>
          </tr>
          <tr>
            <td align="right" height="18" width="100%"><font face="Times New Roman" size="3"> <span style="font-family: Times New Roman"><a target="_blank" href="Cir/go_522.htm">Definition
              of Vigilance angle</a></span></font></td>
          </tr>
          <tr>
            <td bgcolor="#713800" height="18" width="100%"><font face="Times New Roman" size="2"
            color="#FFFFFF"><b><a href="prev_vc.htm" style="color: #FFFFFF">
            Officers worked as Vigilance Commissioners</a></b></font></td>
          </tr>
          <tr>
            <td align="right" height="18" width="100%"></td>
          </tr>
          <tr>
            <td align="right" width="100%"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td width="35%" colspan="3" height="1"></td>
      </tr>
      <tr>
        <td width="35%" colspan="3" height="3"><p align="center"><font color="#000080"
        face="Times New Roman" size="3"><img border="0" src="imgs/redbar.gif" width="307"
        height="2"></font></td>
      </tr>
    </table>
    <p align="center"><font face="Times New Roman" size="3"><font color="#FF0000"><u>DISCLAIMER:</u></font><font
    color="#000080">&nbsp; For any further clarification or suggestions please mail to:  </font><a
    style="color: #800000; text-decoration: none" href="mailto:vc@ap.gov.in">vc@ap.gov.in</a><br>
    <font color="#000080">The content of this website is maintained by&nbsp; Andhra Pradesh
    Vigilance Commission </font><br>
    <font color="#CC3300">Website Designed,Developed and Hosted by: </font><font
    color="#000080"><a style="color: #CC3300; text-decoration: none" href="http://www.nic.in">National
    Informatics Centre</a></font><font color="#CC3300">, Andhra Pradesh</font></font><p align="center">
    <font face="Times New Roman" color="#CC3300"><%
    'response.write(DateValue(now()))
    %></font></td>
  </tr>
</table>
</div>
</body>
</html>