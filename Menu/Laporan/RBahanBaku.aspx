<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="RBahanBaku.aspx.cs" Inherits="WebApplication.Menu.Laporan.RBahanBaku" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

		<dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="Laporan Bahan Baku" Width="100%" CssClass="noborder">
			<PanelCollection>
				<dx:PanelContent runat="server">
					<dx:ASPxGridView ID="gvRBahanBaku" runat="server" AutoGenerateColumns="False" DataSourceID="SqlRBahanBaku" Width="100%">
						<SettingsPager AlwaysShowPager="True">
                       </SettingsPager>
						<Settings ShowGroupPanel="True" />
						<SettingsSearchPanel Visible="True" />
						<Columns>
							<dx:GridViewDataTextColumn FieldName="id_transaksi" Caption="No. Transaksi" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="tanggal" Caption="Tanggal" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
							<PropertiesTextEdit DisplayFormatString="yyy-mM-dd">
                            </PropertiesTextEdit>
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="nama_bahan" Caption="Nama Bahan" ShowInCustomizationForm="True" VisibleIndex="2" Width="50%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="id_satuan" Caption="Satuan" ShowInCustomizationForm="True" VisibleIndex="2" Width="10%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="masuk" Caption="Masuk" ShowInCustomizationForm="True" VisibleIndex="3" Width="10%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="keluar" Caption="Keluar" ShowInCustomizationForm="True" VisibleIndex="4" Width="10%">
							</dx:GridViewDataTextColumn>
						</Columns>
					</dx:ASPxGridView>
					<asp:SqlDataSource ID="SqlRBahanBaku" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select a.id_transaksi, a.tanggal, b.nama_bahan, b.id_satuan , a.masuk, a.keluar  from saldo_bahan_baku a, ms_bahan_baku b where a.id_bahan = b.id_bahan order by a.id_transaksi, a.tanggal, b.nama_bahan "></asp:SqlDataSource>
				</dx:PanelContent>
			</PanelCollection>
		</dx:ASPxRoundPanel>

	</asp:Content>