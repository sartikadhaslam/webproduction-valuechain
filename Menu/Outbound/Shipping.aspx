<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Shipping.aspx.cs" Inherits="WebApplication.Menu.Outbound.Shipping" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
	
	<dx:ASPxRoundPanel ID="rpShipping" runat="server" HeaderText="Shipping" Width="100%" CssClass="noborder" HorizontalAlign="Left">
		<PanelCollection>
			<dx:PanelContent runat="server">
				<dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
				</dx:ASPxButton>
				<br />
				<dx:ASPxGridView ID="gvShipping" runat="server" AutoGenerateColumns="False" DataSourceID="SqlShipping" KeyFieldName="id_sjl" Width="100%" OnCustomButtonCallback="gvShipping_CustomButtonCallback">
					<ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='ShippingForm.aspx';
                delete (s.cp_redirect);
            }
						if (s.cp_redirect2) {
                document.location.href ='RSJL.aspx';
                delete (s.cp_redirect2);
            }}" />	
					<SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
					<SettingsSearchPanel Visible="True" />
					<Columns>
						<dx:GridViewDataTextColumn FieldName="id_sjl" Caption="Kode Transaksi" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="15%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataDateColumn FieldName="tanggal" Caption="Tanggal Kirim" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
						</dx:GridViewDataDateColumn>
						<dx:GridViewDataTextColumn FieldName="id_faktur" Caption="No. Faktur" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2" Width="15%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="nama_customer" Caption="Nama Customer" ShowInCustomizationForm="True" VisibleIndex="3" Width="25%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="nama_sales" Caption="Nama Sales" ShowInCustomizationForm="True" VisibleIndex="4" Width="25%">
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
								<dx:GridViewCommandColumnCustomButton ID="btnPrint" Text="Print" Visibility="AllDataRows">
                                    <Image Url="~/Content/Images/Icons/print.png">
                                    </Image>
                                </dx:GridViewCommandColumnCustomButton>
                            </CustomButtons>
                        </dx:GridViewCommandColumn>
					</Columns>
				</dx:ASPxGridView>
				<asp:SqlDataSource ID="SqlShipping" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select a.id_sjl, a.tanggal, a.id_faktur, b.nama_customer, c.nama_sales from pengiriman_header a, ms_customer b , ms_sales c , faktur_header d, sales_order_header e where a.id_faktur = d.id_faktur and d.id_tso = e.id_tso and e.id_customer = b.id_customer  and b.id_sales = c.id_sales order by tanggal"></asp:SqlDataSource>
			</dx:PanelContent>
		</PanelCollection>
	</dx:ASPxRoundPanel>
	
</asp:content>
