<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="ShippingForm.aspx.cs" Inherits="WebApplication.Menu.Outbound.ShippingForm" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
	<dx:ASPxRoundPanel ID="rpShippingForm" runat="server" HeaderText="Form Shipping" Width="100%" CssClass="noborder" HorizontalAlign="Left">
		<PanelCollection>
			<dx:PanelContent runat="server">
				<dx:ASPxFormLayout ID="flShippingForm" runat="server" ColCount="5">
					<Items>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblKode" runat="server" Text="Kode Transaksi">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxTextBox ID="txtKode" runat="server" Enabled="false">
									</dx:ASPxTextBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="3">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblTanggal" runat="server" Text="Tanggal Pengiriman">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxDateEdit ID="deTanggal" runat="server" EditFormat="Custom" EditFormatString="yyyy-MM-dd">
									</dx:ASPxDateEdit>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="3">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblFaktur" runat="server" Text="No. Faktur">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False" ColSpan="4">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxComboBox ID="cbxFaktur" runat="server" Width="100%" OnSelectedIndexChanged="shipping_SelectedIndexChanged" AutoPostBack="true">
									</dx:ASPxComboBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblCustomer" runat="server" Text="Customer">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ColSpan="4" ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxTextBox ID="txtCustomer" runat="server" Width="100%" Enabled="false">
									</dx:ASPxTextBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblSales" runat="server" Text="Sales">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ColSpan="4" ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxTextBox ID="txtSales" runat="server" Width="100%" Enabled="false">
									</dx:ASPxTextBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblhp" runat="server" Text="No. HP Customer">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ColSpan="4" ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxTextBox ID="txthp" runat="server" Width="100%" Enabled="false">
									</dx:ASPxTextBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblAlamat" runat="server" Text="Alamat Customer">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False" ColSpan="4">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxMemo ID="meAlamat" runat="server" Width="100%" Enabled="false">
									</dx:ASPxMemo>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxButton ID="btnProses" runat="server" Text="Proses" OnClick="btn_Proses">
									</dx:ASPxButton>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
					</Items>
				</dx:ASPxFormLayout>
				<br>
				<dx:ASPxGridView ID="gvShippingForm" runat="server" AutoGenerateColumns="False" DataSourceID="SqlShippingDetail" Width="50%">
					<Columns>
						<dx:GridViewDataTextColumn FieldName="nama_barang" Caption="Nama Barang" ShowInCustomizationForm="True" VisibleIndex="0">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="jumlah" Caption="Jumlah" ShowInCustomizationForm="True" VisibleIndex="1">
						</dx:GridViewDataTextColumn>
					</Columns>
				</dx:ASPxGridView>
				<asp:SqlDataSource ID="SqlShippingDetail" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select b.nama_barang, a.jumlah from pengiriman_detail a, ms_barang b where a.id_barang = b.id_barang and id_sjl = @Kode order by nama_barang" OnSelecting="dsms_shipping_detail_Selecting">
					<SelectParameters>
						<asp:Parameter Name="Kode" />
					</SelectParameters>
				</asp:SqlDataSource>
				<br />
	<dx:ASPxFormLayout ID="flButtonShipping" runat="server" ColCount="5" Width="20%">
		<Items>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="btnSimpan" runat="server" Text="Simpan" Width="100px" OnClick="btn_Save">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="btnBatal" runat="server" Text="Batal" Width="100px" OnClick="btn_Cancel">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>
			</dx:PanelContent>
		</PanelCollection>
	</dx:ASPxRoundPanel>
</asp:content>
