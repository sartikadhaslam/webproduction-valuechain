<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="BahanBaku.aspx.cs" Inherits="WebApplication.Menu.Master.BahanBaku" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxRoundPanel ID="rpBahanBaku" HeaderText="Master Bahan Baku" HorizontalAlign="Left" runat="server" Width="100%"  CssClass="noborder">
        <PanelCollection>
            <dx:PanelContent runat="server">
    
                <dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
                </dx:ASPxButton>
                <br />
                <dx:ASPxGridView ID="gvBahanBaku" runat="server" DataSourceID="sqlbahanbaku" AutoGenerateColumns="False" KeyFieldName="id_bahan" Width="100%" OnCustomButtonCallback="gvBahanBaku_CustomButtonCallBack">
                    <ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='BahanBakuform.aspx';
                delete (s.cp_redirect);
            }}" />
                    <SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="id_bahan" Caption="Kode Bahan" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nama_bahan" Caption="Nama Bahan" ShowInCustomizationForm="True" VisibleIndex="1" Width="40%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nama_satuan" Caption="Satuan" ShowInCustomizationForm="True" VisibleIndex="2" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="max_stock" Caption="Max Stock" ShowInCustomizationForm="True" VisibleIndex="3" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="min_stock" Caption="Min Stock" ShowInCustomizationForm="True" VisibleIndex="4" Width="10%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewCommandColumn ButtonType="Image" ShowInCustomizationForm="True" VisibleIndex="7" Caption="Action" Width="10%">
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
                <asp:SqlDataSource ID="sqlbahanbaku" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="select a.id_bahan, a.nama_bahan, b.nama_satuan, a.max_stock, a.min_stock from ms_bahan_baku a, ms_satuan b where a.id_satuan=b.id_satuan order by nama_bahan"></asp:SqlDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>

</asp:Content>

