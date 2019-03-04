<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Sales.aspx.cs" Inherits="WebApplication.Menu.Relasi.Sales" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxRoundPanel ID="rpSales" HeaderText="Master Sales" HorizontalAlign="Left" runat="server" ShowCollapseButton="false" Width="100%" CssClass="noborder">
        <PanelCollection>
            <dx:PanelContent runat="server">
    
                <dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
                </dx:ASPxButton>
                <br />
                <dx:ASPxGridView ID="gvSales" runat="server" DataSourceID="sqlsales" AutoGenerateColumns="False" KeyFieldName="id_customer" Width="100%" OnCustomButtonCallback="gvSales_CustomButtonCallBack">
                    <ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='SalesForm.aspx';
                delete (s.cp_redirect);
            }}" />
                    <SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="id_sales" Caption="Kode Sales" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nama_sales" Caption="Nama Sales" ShowInCustomizationForm="True" VisibleIndex="1" Width="60%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="no_hp" Caption="No HP" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="email" Caption="E-mail" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
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
                <asp:SqlDataSource ID="sqlsales" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select * from ms_sales order by nama_sales"></asp:SqlDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>

</asp:Content>

