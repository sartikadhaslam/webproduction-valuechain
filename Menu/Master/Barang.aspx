<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Barang.aspx.cs" Inherits="WebApplication.Menu.Master.Barang" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxRoundPanel ID="rpBarang" HeaderText="Master Barang" HorizontalAlign="Left" runat="server" Width="100%"  CssClass="noborder">
        <PanelCollection>
            <dx:PanelContent runat="server">
    
                <dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
                </dx:ASPxButton>
                <br />
                <dx:ASPxGridView ID="gvBarang" runat="server" DataSourceID="sqlbarang" AutoGenerateColumns="False" KeyFieldName="id_barang" Width="100%" OnCustomButtonCallback="gvBarang_CustomButtonCallback">
                     <ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='Barangform.aspx';
                delete (s.cp_redirect);
            }}" />
                    
                    <SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="id_barang" Caption="Kode Barang" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nama_barang" Caption="Nama Barang" ShowInCustomizationForm="True" VisibleIndex="2" Width="40%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="berat" Caption="Berat (KG)" ShowInCustomizationForm="True" VisibleIndex="3" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="harga" Caption="Harga (Rp)" ShowInCustomizationForm="True" VisibleIndex="5" Width="10%">
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
                <asp:SqlDataSource ID="sqlbarang" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select * from ms_barang order by nama_barang"></asp:SqlDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>

</asp:Content>
