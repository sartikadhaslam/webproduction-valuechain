<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Main.master"  CodeBehind="AdjustmentStock.aspx.cs" Inherits="WebApplication.Menu.Inbound.AdjustmentStock" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
	<dx:ASPxRoundPanel ID="ASPxRoundPanel1" HeaderText="Adjustment Stock" HorizontalAlign="Left" runat="server" ShowCollapseButton="false" Width="100%" CssClass="noborder">
		<PanelCollection>
<dx:PanelContent runat="server">
	<dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
	</dx:ASPxButton>
	<br />
	<dx:ASPxGridView ID="gvAdjustment" runat="server" AutoGenerateColumns="False" DataSourceID="SqlAdjustment" KeyFieldName="id_adj" Width="100%" OnCustomButtonCallback="gvAdjustment_CustomButtonCallback">
		<ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='AdjustmentStockForm.aspx';
                delete (s.cp_redirect);
            }}" />
		<SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
		<SettingsSearchPanel Visible="True" />
		<Columns>
			<dx:GridViewDataTextColumn FieldName="id_adj" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Caption="Kode Transaksi" Width="15%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="tanggal" ShowInCustomizationForm="True" VisibleIndex="1" Caption="Tanggal" Width="10%">
		    <PropertiesTextEdit DisplayFormatString="yyy-mM-dd">
            </PropertiesTextEdit>
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="nama_bahan" ShowInCustomizationForm="True" VisibleIndex="2" Caption="Nama Bahan" Width="35%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="jumlah" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Jumlah" Width="5%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="nama_satuan" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Satuan" Width="5%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="keterangan" ShowInCustomizationForm="True" VisibleIndex="4" Caption="Keterangan" Width="20%">
			</dx:GridViewDataTextColumn>
			<dx:GridViewCommandColumn ButtonType="Image" ShowInCustomizationForm="True" VisibleIndex="5" Caption="Action" Width="10%">
                            <CustomButtons>
                                <dx:GridViewCommandColumnCustomButton ID="btnEdit" Text="Edit" Visibility="AllDataRows">
                                    <Image Url="~/Content/Images/Icons/ubah.png">
                                    </Image>
                                </dx:GridViewCommandColumnCustomButton>
                                <dx:GridViewCommandColumnCustomButton ID="btnDelete" Text="Delete" Visibility="AllDataRows">
                                    <Image Url="~/Content/Images/Icons/hapus.png">
                                    </Image>
                                </dx:GridViewCommandColumnCustomButton>
                            </CustomButtons>
                        </dx:GridViewCommandColumn>
		</Columns>
	</dx:ASPxGridView>
	<asp:SqlDataSource ID="SqlAdjustment" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="SELECT a.id_adj, a.tanggal, b.nama_bahan, a.jumlah, c.nama_satuan, a.keterangan FROM adjustment a, ms_bahan_baku b, ms_satuan c where a.id_bahan = b.id_bahan and b.id_satuan = c.id_satuan order by id_adj"></asp:SqlDataSource>
			</dx:PanelContent>
</PanelCollection>
	</dx:ASPxRoundPanel>
</asp:Content>
