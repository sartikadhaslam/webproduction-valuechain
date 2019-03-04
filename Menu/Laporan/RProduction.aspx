<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master"   CodeBehind="RProduction.aspx.cs" Inherits="WebApplication.Menu.Laporan.RProduction" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

		<dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="Laporan Produksi" Width="100%" CssClass="noborder">
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
					<dx:ASPxGridView ID="gvRProduction" runat="server" AutoGenerateColumns="False" DataSourceID="SqlRProduksi" Width="100%">
						<SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
						<Settings ShowGroupPanel="True" />
						<SettingsSearchPanel Visible="True" />
						<Columns>
							<dx:GridViewDataTextColumn FieldName="id_production" Caption="No. Produksi" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="tanggal" Caption="Tanggal" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
							<PropertiesTextEdit DisplayFormatString="yyy-mM-dd">
                            </PropertiesTextEdit>
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="tanggal_so" Caption="Tanggal SO" ShowInCustomizationForm="True" VisibleIndex="2" Width="10%">
							<PropertiesTextEdit DisplayFormatString="yyy-mM-dd">
                            </PropertiesTextEdit>
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="keterangan" Caption="Keterangan" ShowInCustomizationForm="True" VisibleIndex="3" Width="35%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="nama_barang" Caption="Nama Barang" ShowInCustomizationForm="True" VisibleIndex="4" Width="25%">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="jumlah" Caption="Jumlah" ShowInCustomizationForm="True" VisibleIndex="5" Width="10%">
							</dx:GridViewDataTextColumn>
						</Columns>
					</dx:ASPxGridView>
					<asp:SqlDataSource ID="SqlRProduksi" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select a.id_production, a.tanggal, a.tanggal_so, a.keterangan, b.nama_barang, a.jumlah from rproduction a, ms_barang b where a.id_barang = b.id_barang order by a.id_production, a.tanggal, a.tanggal_so, b.nama_barang">

					</asp:SqlDataSource>
				</dx:PanelContent>
			</PanelCollection>
		</dx:ASPxRoundPanel>

	</asp:Content>