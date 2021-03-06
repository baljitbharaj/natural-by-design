﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDesignBid.aspx.cs" Inherits="NBDSite.ViewDesignBid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Natural By Design | Design Bid Summary</title>
    <script src="../../jquery-3.1.1.min.js"></script>
    <script src="../../NBD_jquery.js"></script>

    <link rel="stylesheet" href="../../unsemantic-grid-responsive-tablet.css"/>
    <link rel="stylesheet" href="../../style.css"/>

    <link href="../../images/NBD.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="../../images/NBD.png" rel="nbd" />
    <style type="text/css">
        .auto-style1 {
            height: 36px;
            width: 59px;
        }
        .auto-style2 {
            width: 27px;
        }
        .auto-style3 {
            width: 59px;
        }
    </style>
</head>
<body>
<asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="False">
    <div id="wrapper">
    <form id="form1" runat="server">
    <div>
        <div>
            <div class="go-left">
                <asp:HyperLink ID="NBDHome" runat="server" NavigateUrl="~/Views/Home.aspx">
                    <img alt="NBD" src="../../images/NBD_Logo.png" width="175"/>
                </asp:HyperLink>
            </div>
            <div class="go-right outter" style="text-align: right">
                <asp:Label ID="lblWelcome" runat="server" Text="Welcome, "></asp:Label>
                <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout"/>
                <br />
                <div class="inner">
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </div>
                
            </div>
        </div>
        <div class="clear-me">
            <nav class="center-me">
                <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Views/Home.aspx">Home</asp:HyperLink>
                <a href="#" class="toggle-me">New Form</a>
                <asp:HyperLink ID="hlNewProject" runat="server" NavigateUrl="~/Views/FormEntry/NewProject.aspx">New Project</asp:HyperLink>
                <asp:HyperLink ID="hlClients" runat="server" NavigateUrl="~/Views/Clients.aspx">Clients</asp:HyperLink>
                <asp:HyperLink ID="hlFeedback" runat="server" NavigateUrl="~/Views/Feedback.aspx">Feedback</asp:HyperLink>
            </nav>
            <div class="panel center-me">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Views/FormEntry/ClientEntry.aspx">New Client</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Views/FormEntry/NewProject.aspx">New Project</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Views/FormEntry/DesignBid.aspx">Design Bid</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Views/FormEntry/DesignBudget.aspx">Design Budget</asp:HyperLink>
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Views/FormEntry/CreateTeam.aspx">Create Team</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Views/FormEntry/ProductionPlan.aspx">Production Plan</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Views/FormEntry/DailyWorkReport.aspx">Daily Work Report</asp:HyperLink>
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Views/FormEntry/ProjectAdminReport.aspx">Project Admin Report</asp:HyperLink>
            </div>
        </div>
    </div>
    <div>
        <h1>Design Bid</h1>
        <fieldset>
            <legend>Project Information</legend>
            <table class="auto-style19">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblProject" runat="server" Text="Project:"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtProjectName" runat="server" Width="225px" ReadOnly="True" OnTextChanged="txtProjectName_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lblProjectSite" runat="server" Text="Project Site:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProjectSite" runat="server" Width="225px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblBeginDate" runat="server" Text="Start Date:"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtProjectStart" runat="server" Width="225px" ValidationGroup="Project" ReadOnly="True"></asp:TextBox>
                    <asp:CompareValidator ID="cvProjectStart" runat="server" ControlToValidate="txtProjectStart" ErrorMessage="* Project Start Date must be valid date" ForeColor="Red" Operator="DataTypeCheck" Type="Date" ValidationGroup="Project"></asp:CompareValidator>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lblBidAmount" runat="server" Text="Bid Amount:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProjectBid" runat="server" Width="225px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblComplDate" runat="server" Text="Compl. Date:"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtProjectEnd" runat="server" Width="225px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lblBidDate" runat="server" Text="Bid Date:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProjectBidDate" runat="server" Width="225px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
        </fieldset>
        <br />
        <fieldset>
            <legend>Client Information</legend>
            <table>
            <tr>
                <td class="auto-style25">
                    <asp:Label ID="lblClientName" runat="server" Text="Client Name:"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtClientName" runat="server" ReadOnly="True" Width="225px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style25">
                    <asp:Label ID="lblClientContact" runat="server" Text="Contact:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtClientContact" runat="server" ReadOnly="True" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblClientAddress" runat="server" Text="Client Address:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtClientAddress" runat="server" ReadOnly="True" Width="225px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblClientPhone" runat="server" Text="Phone:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtClientPhone" runat="server" ReadOnly="True" Width="225px"></asp:TextBox>
                </td>
            </tr>
        </table>
        </fieldset>
        <br />

        <fieldset>
            <legend>Project Team</legend>
            <table class="auto-style19">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Sales Assoc:"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtSalesAssoc" runat="server" Width="225px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Text="Designer:"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtDesigner" runat="server" Width="225px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
        </fieldset>
        <br />

        <fieldset>
            <legend>Material Requirements</legend>
            <table class="auto-style19">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label20" runat="server" Text="Qnty"></asp:Label>
                    </strong></td>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label21" runat="server" Text="Code/Description"></asp:Label>
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Label ID="Label22" runat="server" Text="Size"></asp:Label>
                    </strong></td>
                <td></td>
                <td class="auto-style15"><strong>
                    <asp:Label ID="Label23" runat="server" Text="Net/Unit"></asp:Label>
                    </strong></td>
                <td><strong>
                    <asp:Label ID="Label24" runat="server" Text="Ext. Cost"></asp:Label>
                    </strong></td>
                 <td><strong>
                    <asp:Label ID="Label1" runat="server" Text="Deliver"></asp:Label>
                    </strong></td>
                 <td><strong>
                    <asp:Label ID="Label2" runat="server" Text="Install"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>
                    <asp:Label ID="Label19" runat="server" Text="Plants:"></asp:Label>
                    </strong></td>
                <td class="auto-style3">
                    </td>
                <td class="auto-style3">
                    </td>
                <td class="auto-style34">
                    </td>
                <td class="auto-style34">
                    </td>
                <td class="auto-style35">
                    </td>
                <td class="auto-style35">
                    </td>
                <td class="auto-style35">
                    </td>
            </tr>
            <asp:PlaceHolder ID="phPlantsOgControls" runat="server">
            <tr>
                <td class="auto-style21">
                    
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtPlantQ" runat="server" Width="50px" ReadOnly="true"></asp:TextBox>
                    
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtPlantType" runat="server" Width="100px" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtPlantS" runat="server" Width="100px" ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPlantSU" runat="server"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtPlantU" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtPlantE" runat="server" Width="100px" AutoPostBack="True" OnTextChanged="txtPlantE_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtPlantD" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtPlantI" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            </asp:PlaceHolder>
            <tr>
                <td class="auto-style2">
                    
                </td>
                <td class="auto-style3">
                    <asp:PlaceHolder ID="phPlantQ" runat="server"></asp:PlaceHolder>
                </td>
                <td class="auto-style3">
                    <asp:PlaceHolder ID="phPlantChoose" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPlantS" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPlantLbl" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPlantU" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPlantE" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPlantD" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPlantI" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>
                    <asp:Label ID="Label25" runat="server" Text="Pottery:"></asp:Label>
                    </strong></td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <asp:PlaceHolder ID="phPotteryOgControls" runat="server">
            <tr>
                <td class="auto-style12">
                    
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtPotteryQ" runat="server" Width="50px" ReadOnly="true"></asp:TextBox>
                    
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtPotteryType" runat="server" Width="100px" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtPotteryS" runat="server" Width="100px" ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPotterySU" runat="server"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtPotteryU" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtPotteryE" runat="server" Width="100px" AutoPostBack="True" OnTextChanged="txtPotteryE_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtPotteryD" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtPotteryI" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            </asp:PlaceHolder>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:PlaceHolder ID="phPotteryQ" runat="server"></asp:PlaceHolder>
                </td>
                <td class="auto-style3">
                    <asp:PlaceHolder ID="phPotteryChoose" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPotteryS" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPotteryLbl" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPotteryU" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPotteryE" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPotteryD" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phPotteryI" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>
                    <asp:Label ID="Label26" runat="server" Text="Materials:"></asp:Label>
                    </strong></td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <asp:PlaceHolder ID="phMaterialsOgControls" runat="server">
            <tr>
                <td class="auto-style26">
                    
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtMaterialQ" runat="server" Width="50px" ReadOnly="true"></asp:TextBox>
                    
                </td>
                <td class="auto-style28">
                    <asp:Textbox ID="txtMaterialType" runat="server" Width="100px" ReadOnly="true"></asp:Textbox>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtMaterialS" runat="server" Width="100px" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:Label ID="lblMaterialSU" runat="server"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtMaterialU" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtMaterialE" runat="server" Width="100px" AutoPostBack="True" OnTextChanged="txtMaterialE_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtMaterialD" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtMaterialI" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            </asp:PlaceHolder>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:PlaceHolder ID="phMatQ" runat="server"></asp:PlaceHolder>
                </td>
                <td class="auto-style3">
                    <asp:PlaceHolder ID="phMatChoose" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phMatS" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phMatLbl" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phMatU" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phMatE" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phMatD" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phMatI" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:Label ID="txtQntyT" runat="server" Font-Bold="True" Text="Qnty"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="txtDescriptionT" runat="server" Font-Bold="True" Text="Code/Description"></asp:Label>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <asp:Label ID="txtDeliverFrom" runat="server" Font-Bold="True" Text="Delivery From:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="txtDeliverTo" runat="server" Font-Bold="True" Text="Delivery To:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>
                    <asp:Label ID="lblTools" runat="server" Text="Tools:"></asp:Label>
                    </strong></td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtToolQ" runat="server" Width="50px" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtToolType" runat="server" Width="100px" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtToolDeliverFrom" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtToolDeliverTo" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:PlaceHolder ID="phToolQ" runat="server"></asp:PlaceHolder>
                </td>
                <td class="auto-style3">
                    <asp:PlaceHolder ID="phToolChoose" runat="server"></asp:PlaceHolder>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <asp:PlaceHolder ID="phToolDeliverFrom" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phToolDeliverTo" runat="server"></asp:PlaceHolder>
                </td>
                <td></td>
            </tr>
        </table>
        </fieldset>
        <br />

        <fieldset>
            <legend>Labour Requirements</legend>
            <table>
            <tr>
                <td></td>
                <td></td>
                <td>
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Text="Hours"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" Text="Cost/Hr"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label31" runat="server" Font-Bold="True" Text="Ext. Cost"></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="Label27" runat="server" Font-Bold="True" Text="Design Consultant:"></asp:Label>
                </td>
                <td></td>
                <td>
                    <asp:TextBox ID="txtDesignH" runat="server" Width="46px" AutoPostBack="True" OnTextChanged="txtDesignH_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtDesignC" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtDesignE" runat="server" AutoPostBack="True" OnTextChanged="txtDesignE_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td></td>
                <td>
                    <asp:PlaceHolder ID="phDesignH" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phDesignC" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phDesignE" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Production Workers:"></asp:Label>
                </td>
                <td></td>
                <td>
                    <asp:TextBox ID="txtProductionH" runat="server" Width="46px" AutoPostBack="True" OnTextChanged="txtProductionH_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtProductionC" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtProductionE" runat="server" AutoPostBack="True" OnTextChanged="txtProductionE_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                    <asp:PlaceHolder ID="phProdH" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phProdC" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phProdE" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Equipment Operator:"></asp:Label>
                </td>
                <td></td>
                <td>
                    <asp:TextBox ID="txtHeoH" runat="server" Width="46px" AutoPostBack="True" OnTextChanged="txtHeoH_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtHeoC" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtHeoE" runat="server" AutoPostBack="True" OnTextChanged="txtHeoE_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                    <asp:PlaceHolder ID="phHeoH" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phHeoC" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:PlaceHolder ID="phHeoE" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
        </table>
        </fieldset>
        <br />
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" style="padding:20px">
            <br />
            <asp:Label ID="lblSummary" runat="server" Text="Summary" Font-Bold="True" Font-Size="Large"></asp:Label>
            <br />
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblSumDesc" runat="server" Font-Bold="True" Text="Description"></asp:Label>
                    </td>
                    <td></td>
                    <td>
                        <asp:Label ID="lblSumHours" runat="server" Font-Bold="True" Text="Total Hours"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSumCost" runat="server" Font-Bold="True" Text="Total Cost"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSumDesign" runat="server" Text="Design Consultant"></asp:Label>
                    </td>
                    <td></td>
                    <td>
                        <asp:Label ID="lblSumDesignH" runat="server" Text="0"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSumDesignC" runat="server" Text="0"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSumProd" runat="server" Text="Production Workers"></asp:Label>
                    </td>
                    <td></td>
                    <td>
                        <asp:Label ID="lblSumProdH" runat="server" Text="0"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSumProdC" runat="server" Text="0"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSumHEO" runat="server" Text="Equipment Operator"></asp:Label>
                    </td>
                    <td></td>
                    <td>
                        <asp:Label ID="lblSumHeoH" runat="server" Text="0"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSumHeoC" runat="server" Text="0"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSumMaterialCost" runat="server" Text="Materials"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td></td>
                    <td>
                        <asp:Label ID="lblSumMaterialsC" runat="server" Text="0"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSumTotalDesc" runat="server" Text="Total" Font-Bold="True"></asp:Label>
                    </td>
                    <td></td>
                    <td>
                        <asp:Label ID="lblSumTotalH" runat="server" Text="0" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSumTotalC" runat="server" Text="0" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSumTotalP" runat="server" Text="(0% of bid)" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
    </div>
        <asp:ObjectDataSource ID="odsProjects" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBDDataSetTableAdapters.PROJECTTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_projName" Type="String" />
                <asp:Parameter Name="Original_projSite" Type="String" />
                <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                <asp:Parameter Name="Original_projEstStart" Type="String" />
                <asp:Parameter Name="Original_projEstEnd" Type="String" />
                <asp:Parameter Name="Original_projActStart" Type="String" />
                <asp:Parameter Name="Original_projActEnd" Type="String" />
                <asp:Parameter Name="Original_projEstCost" Type="String" />
                <asp:Parameter Name="Original_projActCost" Type="String" />
                <asp:Parameter Name="Original_projBidCustAccept" Type="Boolean" />
                <asp:Parameter Name="Original_projBidMgmtAccept" Type="Boolean" />
                <asp:Parameter Name="Original_projCurrentPhase" Type="String" />
                <asp:Parameter Name="Original_projIsFlagged" Type="Boolean" />
                <asp:Parameter Name="Original_clientID" Type="Int32" />
                <asp:Parameter Name="Original_designerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="projName" Type="String" />
                <asp:Parameter Name="projSite" Type="String" />
                <asp:Parameter Name="projBidDate" Type="DateTime" />
                <asp:Parameter Name="projEstStart" Type="String" />
                <asp:Parameter Name="projEstEnd" Type="String" />
                <asp:Parameter Name="projActStart" Type="String" />
                <asp:Parameter Name="projActEnd" Type="String" />
                <asp:Parameter Name="projEstCost" Type="String" />
                <asp:Parameter Name="projActCost" Type="String" />
                <asp:Parameter Name="projBidCustAccept" Type="Boolean" />
                <asp:Parameter Name="projBidMgmtAccept" Type="Boolean" />
                <asp:Parameter Name="projCurrentPhase" Type="String" />
                <asp:Parameter Name="projIsFlagged" Type="Boolean" />
                <asp:Parameter Name="clientID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="projName" Type="String" />
                <asp:Parameter Name="projSite" Type="String" />
                <asp:Parameter Name="projBidDate" Type="DateTime" />
                <asp:Parameter Name="projEstStart" Type="String" />
                <asp:Parameter Name="projEstEnd" Type="String" />
                <asp:Parameter Name="projActStart" Type="String" />
                <asp:Parameter Name="projActEnd" Type="String" />
                <asp:Parameter Name="projEstCost" Type="String" />
                <asp:Parameter Name="projActCost" Type="String" />
                <asp:Parameter Name="projBidCustAccept" Type="Boolean" />
                <asp:Parameter Name="projBidMgmtAccept" Type="Boolean" />
                <asp:Parameter Name="projCurrentPhase" Type="String" />
                <asp:Parameter Name="projIsFlagged" Type="Boolean" />
                <asp:Parameter Name="clientID" Type="Int32" />
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_projName" Type="String" />
                <asp:Parameter Name="Original_projSite" Type="String" />
                <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                <asp:Parameter Name="Original_projEstStart" Type="String" />
                <asp:Parameter Name="Original_projEstEnd" Type="String" />
                <asp:Parameter Name="Original_projActStart" Type="String" />
                <asp:Parameter Name="Original_projActEnd" Type="String" />
                <asp:Parameter Name="Original_projEstCost" Type="String" />
                <asp:Parameter Name="Original_projActCost" Type="String" />
                <asp:Parameter Name="Original_projBidCustAccept" Type="Boolean" />
                <asp:Parameter Name="Original_projBidMgmtAccept" Type="Boolean" />
                <asp:Parameter Name="Original_projCurrentPhase" Type="String" />
                <asp:Parameter Name="Original_projIsFlagged" Type="Boolean" />
                <asp:Parameter Name="Original_clientID" Type="Int32" />
                <asp:Parameter Name="Original_designerID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="odsTools" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBDDataSetTableAdapters.TOOLTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_toolDesc" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="toolDesc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="toolDesc" Type="String" />
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_toolDesc" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="odsTasks" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBDDataSetTableAdapters.TASKTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_taskDesc" Type="String" />
                <asp:Parameter Name="Original_taskStdTimeAmnt" Type="Byte" />
                <asp:Parameter Name="Original_taskStdTimeUnit" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="taskDesc" Type="String" />
                <asp:Parameter Name="taskStdTimeAmnt" Type="Byte" />
                <asp:Parameter Name="taskStdTimeUnit" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="taskDesc" Type="String" />
                <asp:Parameter Name="taskStdTimeAmnt" Type="Byte" />
                <asp:Parameter Name="taskStdTimeUnit" Type="String" />
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_taskDesc" Type="String" />
                <asp:Parameter Name="Original_taskStdTimeAmnt" Type="Byte" />
                <asp:Parameter Name="Original_taskStdTimeUnit" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
</form>
<footer>
    <small>Copyright © 2016 Natural By Design. All rights reserved. <a href="#">Terms of Use</a> | <a href="#">Privacy Policy</a></small>
</footer>
</div>
</asp:PlaceHolder>
</body>
</html>
