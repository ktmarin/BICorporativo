<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMCalendario.aspx.cs" Inherits="MCWebHogar.CRM.FRMCalendario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">



    <link href="/Styles/FullCalendar/fullcalendar.min.css" rel="stylesheet" />
    <link href="/Styles/FullCalendar/fullcalendar.print.min.css" rel="stylesheet" media="print" />
    <script src="/Scripts/FullCalendar/lib/moment.min.js"></script>
    <script src="/Scripts/FullCalendar/lib/jquery.min.js"></script>
    <script src="/Scripts/FullCalendar/fullcalendar.min.js"></script>
    
  

    <script type="text/javascript">

        function activarloading() {
            document.getElementById('fade2').style.display = 'block';
            document.getElementById('modalloading').style.display = 'block';

        }

        function desactivarloading() {

            document.getElementById('fade2').style.display = 'none';
            document.getElementById('modalloading').style.display = 'none';
            return false;
        }



        $(document).ready(function () {
            activarloading();
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },

                navLinks: true, // can click day/week names to navigate views
                editable: false,
                eventLimit: true, // allow "more" link when too many events
                events: '../CRM/EventosCalendario/Calendario.ashx'
            });
            desactivarloading();
        });



      
    </script>

     <style type="text/css">
	    /*body {
		    margin: 40px 10px;
		    padding: 0;
		    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		    font-size: 14px;
	    }*/

	    #calendar {
		    max-width: 1080px;
		    margin: 0 auto;
	    }

        .stbutton {
            text-align: left;
        }
        .auto-style1 {
            width: 120px;
         }
        .auto-style3 {
            width: 250px;
         }
        .auto-style4 {
            width: 10px;
         }
        .Etiquetas {
            font-size: 15px; 
            color: #A6A7AB; 
            font-weight: normal; 
            font-family: 'Century Gothic';
       }
        .modalBackground{
            background-color: black;
            filter: alpha(opacity=90);
            opacity: 0.8;
            z-index: 10000;
        }
        </style>    
     <div id="modalloading" class="loading">
		   
		    <img src="../images/cargando5.gif" width="100" height="100" /> 
    </div>
    <div id="fade2" class="overlayload" ></div>
    
         <br /><br /><br />
             <div class="main container">
              <h2 class="colortitulo">Calendario</h2>
                  <br />
                <div id="PrincCalendario">
               <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>--%>
                        <div id="calendar"></div>
                  <%--  </ContentTemplate>
                </asp:UpdatePanel>--%>
            </div> 


              
            </div>


</asp:Content>
