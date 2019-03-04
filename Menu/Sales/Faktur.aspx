<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Faktur.aspx.cs" Inherits="WebApplication.Menu.Sales.Faktur" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

	<dx:ASPxRoundPanel ID="rpFaktur"  HorizontalAlign="Left" runat="server" HeaderText="Faktur" Width="100%" CssClass="noborder">
		<PanelCollection>
			<dx:PanelContent runat="server">
				<dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
				</dx:ASPxButton>
				<br />
				<dx:ASPxGridView ID="gvFaktur" runat="server" AutoGenerateColumns="False" DataSourceID="SqlFaktur" KeyFieldName="id_faktur" Width="100%" OnCustomButtonCallback="gvFaktur_CustomButtonCallback">
					<ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='FakturForm.aspx';
                delete (s.cp_redirect);
            }
						if (s.cp_redirect2) {
                document.location.href ='RFaktur.aspx';
                delete (s.cp_redirect2);
            }}" />
					<SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
					<SettingsSearchPanel Visible="True" />
					<Columns>
						<dx:GridViewDataTextColumn FieldName="id_faktur" Caption="Kode Faktur" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="15%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="tanggal" Caption="Tanggal" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
						<PropertiesTextEdit DisplayFormatString="yyy-mM-dd">
                            </PropertiesTextEdit>
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="nama_sales" Caption="Sales" ShowInCustomizationForm="True" VisibleIndex="2" Width="25%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="nama_customer" Caption="Customer" ShowInCustomizationForm="True" VisibleIndex="3" Width="25%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="total" Caption="Total Faktur (Rp)" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4" Width="15%">
						<PropertiesTextEdit DisplayFormatString="N">
                            </PropertiesTextEdit>
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
				<asp:SqlDataSource ID="SqlFaktur" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select a.id_faktur, a.tanggal, b.nama_sales, c.nama_customer, sum (d.total) as total from faktur_header a, ms_sales b, ms_customer c, faktur_detail d, sales_order_header e where a.id_tso = e.id_tso and e.id_sales = b.id_sales and e.id_customer = c.id_customer and a.id_faktur = d.id_faktur group by a.id_faktur, a.tanggal, b.nama_sales, c.nama_customer order by a.id_faktur, a.tanggal, b.nama_sales, c.nama_customer"></asp:SqlDataSource>
			</dx:PanelContent>
		</PanelCollection>
	</dx:ASPxRoundPanel>

</asp:Content>
