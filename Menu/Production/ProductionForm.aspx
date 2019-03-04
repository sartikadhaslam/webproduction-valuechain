<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="ProductionForm.aspx.cs" Inherits="WebApplication.Menu.Production.ProductionForm" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

	<dx:ASPxRoundPanel ID="rpProductionForm" runat="server" CssClass="noborder" HeaderText="Form Production" Width="100%">
		<PanelCollection>
			<dx:PanelContent runat="server">
				<dx:ASPxFormLayout ID="flProductionForm" HeaderText="Form Production" runat="server" ColCount="5" Width="60%">
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
									<dx:ASPxLabel ID="lblTglPro" runat="server" Text="Tanggal Produksi" >
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxDateEdit ID="deTglPro" runat="server" EditFormat="Custom" EditFormatString="yyyy-MM-dd">
									</dx:ASPxDateEdit>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="3">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblTglSO" runat="server" Text="Tanggal Sales Order">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxDateEdit ID="deTglSO" runat="server" EditFormat="Custom" EditFormatString="yyyy-MM-dd">
									</dx:ASPxDateEdit>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="3">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxLabel ID="lblKeterangan" runat="server" Text="Keterangan">
                        </dx:ASPxLabel>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem ColSpan="4" ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxMemo ID="txtKeterangan" runat="server" Width="100%">
                        </dx:ASPxMemo>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxButton ID="btnProses" runat="server" Text="Proses" OnClick="btn_Proses" AutoPostBack="true">
									</dx:ASPxButton>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblBahanHabis" runat="server" Text="">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
					</Items>
				</dx:ASPxFormLayout>
				<br />
				<dx:ASPxGridView ID="Grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlProReqDetail" KeyFieldName="id_rec" Width="50%" style="margin-top: 0px">
					<SettingsPager Visible="False">
					</SettingsPager>
					<Columns>
						<dx:GridViewDataTextColumn FieldName="nama_barang" Caption="Nama Barang" ShowInCustomizationForm="True" VisibleIndex="0" Width="80%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="jumlah" Caption="Jumlah Produksi" ShowInCustomizationForm="True" VisibleIndex="1" Width="20%">
						</dx:GridViewDataTextColumn>
					</Columns>
				</dx:ASPxGridView>
				<asp:SqlDataSource ID="SqlProReqDetail" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="SELECT a.nama_barang , b.jumlah  FROM ms_barang a , production_detail b where  a.id_barang = b.id_barang and b.id_production = @Kode ORDER BY a.nama_barang" OnSelecting="dsms_production_detail_Selecting">
					<SelectParameters>
            <asp:Parameter DefaultValue="-" Name="Kode" />
        </SelectParameters>
				</asp:SqlDataSource>
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
			</dx:PanelContent>
		</PanelCollection>
	</dx:ASPxRoundPanel>

</asp:Content>