<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="FakturForm.aspx.cs" Inherits="WebApplication.Menu.Sales.FakturForm" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
	<dx:ASPxRoundPanel ID="rpFakturForm" runat="server" HeaderText="Form Faktur" Width="100%" CssClass="noborder">
		<PanelCollection>
			<dx:PanelContent runat="server">
				<dx:ASPxFormLayout ID="flFakturForm" runat="server" ColCount="5">
					<Items>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblIdFaktur" runat="server" Text="Kode Transaksi">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxTextBox ID="txtIdFaktur" runat="server" Enabled="false">
									</dx:ASPxTextBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="3">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblTanggal" runat="server" Text="Tanggal Faktur">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxDateEdit ID="deTanggal" runat="server"  EditFormat="Custom" EditFormatString="yyyy-MM-dd">
									</dx:ASPxDateEdit>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="3">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="txtNoSO" runat="server" Text="No SO">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxComboBox ID="cbxNoSO" runat="server" OnSelectedIndexChanged="faktur_SelectedIndexChanged" AutoPostBack="true">
									</dx:ASPxComboBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="3">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblTglSO" runat="server" Text="Tanggal SO">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxDateEdit ID="deTanggalSO" runat="server" Enabled="false"  EditFormat="Custom" EditFormatString="yyyy-MM-dd">
									</dx:ASPxDateEdit>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="3">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblSales" runat="server" Text="Sales">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False" ColSpan="4">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxTextBox ID="txtSales" runat="server" Enabled="false" Width="100%">
									</dx:ASPxTextBox>
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
						<dx:LayoutItem ShowCaption="False" ColSpan="4">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxTextBox ID="txtCustomer" runat="server" Enabled="false" Width="100%">
									</dx:ASPxTextBox>
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
				<dx:ASPxGridView ID="gvFakturDetail" runat="server" AutoGenerateColumns="False" DataSourceID="SqlFakturDetail" Width="60%">
					<SettingsPager Visible="False">
					</SettingsPager>
					<Settings ShowFooter="True" />
					<Columns>
						<dx:GridViewDataTextColumn FieldName="nama_barang" Caption="Barang" ShowInCustomizationForm="True" VisibleIndex="0" Width="35%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="jumlah" Caption="Jumlah" ShowInCustomizationForm="True" VisibleIndex="1" Width="5%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="harga" Caption="Harga (Rp)" ShowInCustomizationForm="True" VisibleIndex="2" Width="10%">
						<PropertiesTextEdit DisplayFormatString="N"></PropertiesTextEdit>
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="total" Caption="Total (Rp)" ShowInCustomizationForm="True" VisibleIndex="3" Width="10%">
						<PropertiesTextEdit DisplayFormatString="N"></PropertiesTextEdit>
						</dx:GridViewDataTextColumn>
					</Columns>
					<TotalSummary>
                        <dx:ASPxSummaryItem DisplayFormat="N" FieldName="total" ShowInColumn="Total (Rp)" SummaryType="Sum" ValueDisplayFormat="C" />
                    </TotalSummary>
				</dx:ASPxGridView>
				<br />
    <dx:ASPxFormLayout ID="ASPxFormLayout2" runat="server" ColCount="5" Width="20%">
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
				<asp:SqlDataSource ID="SqlFakturDetail" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select b.nama_barang, a.jumlah, a.harga, a.total from ms_barang b, faktur_detail a where a.id_barang = b.id_barang and id_faktur = @id_faktur order by b.nama_barang" OnSelecting="dsms_faktur_detail_Selecting">
					<SelectParameters>
						 <asp:Parameter DefaultValue="-" Name="id_faktur" />
					</SelectParameters>
				</asp:SqlDataSource>
			</dx:PanelContent>
		</PanelCollection>
	</dx:ASPxRoundPanel>
</asp:Content>
