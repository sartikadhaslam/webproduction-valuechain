<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master"  CodeBehind="CheckStock.aspx.cs" Inherits="WebApplication.Menu.Inbound.CheckStock" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
	<dx:ASPxRoundPanel ID="ASPxRoundPanel1" HeaderText="Check Stock" HorizontalAlign="Left" runat="server" ShowCollapseButton="false" Width="100%" CssClass="noborder">
		<PanelCollection>
<dx:PanelContent runat="server">
	<dx:ASPxGridView ID="gvCheckStock" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCheckStock" KeyFieldName="id_saldo" Width="100%">
		<SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
		<SettingsSearchPanel Visible="True"/>
		<Columns>
			<dx:GridViewDataTextColumn FieldName="nama_bahan" ShowInCustomizationForm="True" VisibleIndex="2" Caption="Nama Bahan" Width="45%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="id_satuan" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Satuan" Width="5%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="masuk" ShowInCustomizationForm="True" VisibleIndex="4" Caption="Masuk" Width="10%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="keluar" ShowInCustomizationForm="True" VisibleIndex="5" Caption="Keluar" Width="10%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="sisa" ShowInCustomizationForm="True" VisibleIndex="6" Caption="Sisa" Width="10%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="max_stock" ShowInCustomizationForm="True" VisibleIndex="7" Caption="Max" Width="10%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="min_stock" ShowInCustomizationForm="True" VisibleIndex="8" Caption="Min" Width="10%">
			</dx:GridViewDataTextColumn>

		</Columns>
	</dx:ASPxGridView>
	<asp:SqlDataSource ID="SqlCheckStock" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select b.nama_bahan , sum(a.masuk) as masuk, sum(a.keluar) as keluar, sum(a.masuk) - sum(a.keluar) as sisa, b.id_satuan, b.max_stock, b.min_stock  from saldo_bahan_baku a, ms_bahan_baku b where a.id_bahan = b.id_bahan group by b.nama_bahan, b.id_satuan, b.max_stock, b.min_stock order by b.nama_bahan"></asp:SqlDataSource>
			</dx:PanelContent>
</PanelCollection>
	</dx:ASPxRoundPanel>
</asp:Content>
