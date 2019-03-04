<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Customer.aspx.cs" Inherits="WebApplication.Menu.Relasi.Customer" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxRoundPanel ID="rpCustomer" HeaderText="Master Customer" HorizontalAlign="Left" runat="server" ShowCollapseButton="false" Width="100%" CssClass="noborder">
        <PanelCollection>
            <dx:PanelContent runat="server">
    
                <dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
                </dx:ASPxButton>
                <br />
                <dx:ASPxGridView ID="gvCustomer" runat="server" DataSourceID="sqlcustomer" AutoGenerateColumns="False" KeyFieldName="id_customer" Width="100%" OnCustomButtonCallback="gvCustomer_CustomButtonCallBack">
                    <ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='CustomerForm.aspx';
                delete (s.cp_redirect);
            }}" />
                    <SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="id_customer" Caption="Kode Customer" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nama_customer" Caption="Nama Customr" ShowInCustomizationForm="True" VisibleIndex="1" Width="30%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="no_hp" Caption="No HP" ShowInCustomizationForm="True" VisibleIndex="2" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nama_sales" Caption="Nama Sales" ShowInCustomizationForm="True" VisibleIndex="4" Width="30%">
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
                <asp:SqlDataSource ID="sqlcustomer" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select a.id_customer, a.nama_customer , a.no_hp , b.nama_sales from ms_customer a, ms_sales b where a.id_sales=b.id_sales order by nama_sales, nama_customer"></asp:SqlDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>

</asp:Content>
