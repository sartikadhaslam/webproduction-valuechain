<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="RShipping.aspx.cs" Inherits="WebApplication.Menu.Laporan.RShipping" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

		<dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="Laporan Pengiriman" Width="100%" CssClass="noborder">
			<PanelCollection>
				<dx:PanelContent runat="server">
					<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="7">
						<Items>
							<dx:LayoutItem ShowCaption="False">
								<LayoutItemNestedControlCollection>
									<dx:LayoutItemNestedControlContainer runat="server">
										<dx:ASPxLabel ID="lblTglAwal" runat="server" Text="Tanggal Awal">
										</dx:ASPxLabel>
									</dx:LayoutItemNestedControlContainer>
								</LayoutItemNestedControlCollection>
							</dx:LayoutItem>
							<dx:LayoutItem ShowCaption="False">
								<LayoutItemNestedControlCollection>
									<dx:LayoutItemNestedControlContainer runat="server">
										<dx:ASPxDateEdit ID="deTglAwal" runat="server" EditFormat="Custom" EditFormatString="yyyy-MM-dd">
										</dx:ASPxDateEdit>
									</dx:LayoutItemNestedControlContainer>
								</LayoutItemNestedControlCollection>
							</dx:LayoutItem>
							<dx:EmptyLayoutItem>
							</dx:EmptyLayoutItem>
							<dx:LayoutItem ShowCaption="False">
								<LayoutItemNestedControlCollection>
									<dx:LayoutItemNestedControlContainer runat="server">
										<dx:ASPxLabel ID="lblTglAkhir" runat="server" Text="Tanggal Akhir">
										</dx:ASPxLabel>
									</dx:LayoutItemNestedControlContainer>
								</LayoutItemNestedControlCollection>
							</dx:LayoutItem>
							<dx:LayoutItem ShowCaption="False">
								<LayoutItemNestedControlCollection>
									<dx:LayoutItemNestedControlContainer runat="server">
										<dx:ASPxDateEdit ID="deTglAkhir" runat="server" EditFormat="Custom" EditFormatString="yyyy-MM-dd">
										</dx:ASPxDateEdit>
									</dx:LayoutItemNestedControlContainer>
								</LayoutItemNestedControlCollection>
							</dx:LayoutItem>
							<dx:LayoutItem ShowCaption="False">
								<LayoutItemNestedControlCollection>
									<dx:LayoutItemNestedControlContainer runat="server">
										<dx:ASPxButton ID="btnOpen" runat="server" Text="Buka" OnClick="btn_Proses">
										</dx:ASPxButton>
									</dx:LayoutItemNestedControlContainer>
								</LayoutItemNestedControlCollection>
							</dx:LayoutItem>
						</Items>
					</dx:ASPxFormLayout>
					<dx:ASPxGridView ID="gvRShipping" runat="server" AutoGenerateColumns="False" DataSourceID="SqlRShipping" Width="100%">
						<SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
						<Settings ShowGroupPanel="True"/>
						<SettingsSearchPanel Visible="True" />
						<Columns>
							<dx:GridViewDataTextColumn FieldName="id_sjl" Caption="No. SJL" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="tanggal" Caption="Tanggal" ShowInCustomizationForm="True" VisibleIndex="2" Width="10%">
							<PropertiesTextEdit DisplayFormatString="yyy-mM-dd">
                            </PropertiesTextEdit>
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="id_faktur" Caption="No. Faktur" ShowInCustomizationForm="True" VisibleIndex="3" Width="13%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="nama_sales" Caption="Nama Sales" ShowInCustomizationForm="True" VisibleIndex="4" Width="12%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="nama_customer" Caption="Nama Customer" ShowInCustomizationForm="True" VisibleIndex="5" Width="15%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="nama_barang" Caption="Nama Barang" ShowInCustomizationForm="True" VisibleIndex="6" Width="10%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="jumlah" Caption="Jumlah" ShowInCustomizationForm="True" VisibleIndex="7" Width="10%">
							</dx:GridViewDataTextColumn>
						</Columns>
						<TotalSummary>
                        <dx:ASPxSummaryItem DisplayFormat="C" FieldName="total" ShowInColumn="Total" SummaryType="Sum" ValueDisplayFormat="C" />
                    </TotalSummary>
					</dx:ASPxGridView>
					<asp:SqlDataSource ID="SqlRShipping" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="
select a.id_sjl, a.tanggal, a.id_faktur, c.nama_sales, d.nama_customer, g.nama_barang, a.jumlah
from rshipping a, ms_barang b, ms_sales c, ms_customer d, faktur_header e, sales_order_header f , ms_barang g
where a.id_barang = b.id_barang 
and a.id_faktur = e.id_faktur
and e.id_tso = f.id_tso
and f.id_sales = c.id_sales
and f.id_sales = d.id_customer 
and a.id_barang = g.id_barang order by a.id_sjl, a.tanggal, a.id_faktur"></asp:SqlDataSource>
				</dx:PanelContent>
			</PanelCollection>
		</dx:ASPxRoundPanel>

	</asp:Content>