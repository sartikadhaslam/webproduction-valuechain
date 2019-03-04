<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Satuan.aspx.cs" Inherits="WebApplication.Menu.Master.Satuan" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxRoundPanel ID="rpSatuan" HeaderText="Master Satuan" HorizontalAlign="Left" runat="server" Width="100%"  CssClass="noborder">
        <PanelCollection>
            <dx:PanelContent runat="server">
    
                <dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
                </dx:ASPxButton>
                <br />
                <dx:ASPxGridView ID="gvSatuan" runat="server" DataSourceID="sqlsatuan" AutoGenerateColumns="False" KeyFieldName="id_satuan" Width="100%" OnCustomButtonCallback="gvSatuan_CustomButtonCallBack">
                    <ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='SatuanForm.aspx';
                delete (s.cp_redirect);
            }}" />
                    <SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="id_satuan" Caption="Kode Satuan" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nama_satuan" Caption="Nama Satuan" ShowInCustomizationForm="True" VisibleIndex="1" Width="80%">
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
                <asp:SqlDataSource ID="sqlsatuan" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select * from ms_satuan order by nama_satuan"></asp:SqlDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>

</asp:Content>

