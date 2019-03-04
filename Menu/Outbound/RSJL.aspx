<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="RSJL.aspx.cs" Inherits="WebApplication.Menu.Outbound.RSJL" %>
<%@ Register assembly="DevExpress.XtraReports.v17.1.Web, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraReports.Web" tagprefix="dx" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
	<dx:ASPxWebDocumentViewer ID="ASPxWebDocumentViewer1" runat="server" ReportSourceId="WebApplication.Reports.SJL">
	</dx:ASPxWebDocumentViewer>
	</asp:Content>
