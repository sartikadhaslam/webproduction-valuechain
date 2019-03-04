<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="SalesOrder.aspx.cs" Inherits="WebApplication.Menu.Sales.SalesOrder" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxRoundPanel ID="rpSalesOrder" HeaderText="Sales Order" HorizontalAlign="Left" runat="server" ShowCollapseButton="false" Width="100%"  CssClass="noborder">
        <PanelCollection>
            <dx:PanelContent runat="server">
                <dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
                </dx:ASPxButton>
                <br />
                <dx:ASPxGridView ID="gvSalesOrder" runat="server" DataSourceID="sqlsalesorder" AutoGenerateColumns="False" KeyFieldName="id_tso" Width="100%" OnCustomButtonCallback="gvSalesOrder_CustomButtonCallback">
                    <ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='SalesOrderForm.aspx';
                delete (s.cp_redirect);
            }}" />
                    <SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="id_tso" Caption="Kode Transaksi" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="tanggal" Caption="Tanggal" ShowInCustomizationForm="True" VisibleIndex="1" Width="20%">
                            <PropertiesTextEdit DisplayFormatString="yyy-mM-dd">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nama_sales" Caption="Sales" ShowInCustomizationForm="True" VisibleIndex="2" Width="25%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nama_customer" Caption="Customer" ShowInCustomizationForm="True" VisibleIndex="3" Width="25%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="total" Caption="Total (Rp)" ShowInCustomizationForm="True" VisibleIndex="4" Width="10%">
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
                            </CustomButtons>
                        </dx:GridViewCommandColumn>
                    </Columns>
                </dx:ASPxGridView>  
                <asp:SqlDataSource ID="sqlsalesorder" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString%>" SelectCommand="select a.id_tso, a.tanggal, b.nama_customer, c.nama_sales, sum(d.total) as total from sales_order_header a, ms_customer b, ms_sales c, sales_order_detail d where a.id_customer=b.id_customer and b.id_sales=c.id_sales and a.id_tso=d.id_tso group by a.id_tso,  a.tanggal, b.nama_customer, c.nama_sales order by a.id_tso, a.tanggal, c.nama_sales, b.nama_customer"></asp:SqlDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>

</asp:Content>
