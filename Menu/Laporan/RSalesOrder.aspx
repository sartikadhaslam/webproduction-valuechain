<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="RSalesOrder.aspx.cs" Inherits="WebApplication.Menu.Laporan.RSalesOrder" %>
	<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

		<dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="Laporan Pesanan" Width="100%" CssClass="noborder">
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
					<dx:ASPxGridView ID="gvRSalesOrder" runat="server" AutoGenerateColumns="False" DataSourceID="SqlRSalesOrder" Width="100%">
						<SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
						<Settings ShowGroupPanel="True" />
						<SettingsSearchPanel Visible="True" />
						<Columns>
							<dx:GridViewDataTextColumn FieldName="id_tso" Caption="No. Faktur" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="tanggal" Caption="Tanggal" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
							<PropertiesTextEdit DisplayFormatString="yyy-mM-dd">
                            </PropertiesTextEdit>
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="nama_sales" Caption="Nama Sales" ShowInCustomizationForm="True" VisibleIndex="2" Width="13%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="nama_customer" Caption="Nama Customer" ShowInCustomizationForm="True" VisibleIndex="3" Width="12%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="nama_barang" Caption="Nama Barang" ShowInCustomizationForm="True" VisibleIndex="4" Width="15%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="jumlah" Caption="Jumlah" ShowInCustomizationForm="True" VisibleIndex="5" Width="10%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="harga" Caption="Harga (Rp)" ShowInCustomizationForm="True" VisibleIndex="6" Width="10%">
							<PropertiesTextEdit DisplayFormatString="N">
                            </PropertiesTextEdit>
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="total" Caption="Total (Rp)" ShowInCustomizationForm="True" VisibleIndex="7" Width="10%">
							<PropertiesTextEdit DisplayFormatString="N">
                            </PropertiesTextEdit>
							</dx:GridViewDataTextColumn>
						</Columns>
						<TotalSummary>
                        <dx:ASPxSummaryItem DisplayFormat="C" FieldName="total" ShowInColumn="Total" SummaryType="Sum" ValueDisplayFormat="C" />
                    </TotalSummary>
					</dx:ASPxGridView>
					<asp:SqlDataSource ID="SqlRSalesOrder" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select a.id_tso, a.tanggal, b.nama_sales, c.nama_customer, d.nama_barang, a.jumlah, a.harga, a.total from rsalesorder a, ms_sales b, ms_customer c, ms_barang d where a.id_sales = b.id_sales and a.id_customer =  c.id_customer and a.id_barang = d.id_barang order by a.id_tso, a.tanggal, b.nama_sales, c.nama_customer"></asp:SqlDataSource>
				</dx:PanelContent>
			</PanelCollection>
		</dx:ASPxRoundPanel>

	</asp:Content>