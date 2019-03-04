<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Main.master" CodeBehind="Production.aspx.cs" Inherits="WebApplication.Menu.Production.Production" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

	<dx:ASPxRoundPanel ID="rpProduction" runat="server" HeaderText="Production" HorizontalAlign="Left" ShowCollapseButton="false" Width="100%"  CssClass="noborder">
		<PanelCollection>
			<dx:PanelContent runat="server">
				<dx:ASPxButton ID="btnTambah" runat="server" Text="Add" OnClick="add_button">
				</dx:ASPxButton>
				<br />
				<dx:ASPxGridView ID="gvProduction" runat="server" AutoGenerateColumns="False" DataSourceID="SqlProReq" KeyFieldName="id_production" Width="100%" OnCustomButtonCallback="gvProduction_CustomButtonCallback">
				    <ClientSideEvents EndCallback="function(s, e) {
if (s.cp_redirect) {
                document.location.href ='ProductionForm.aspx';
                delete (s.cp_redirect);
            }
						if (s.cp_redirect2) {
                document.location.href ='RProduction.aspx';
                delete (s.cp_redirect2);
            }}" />	
					<SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
					<SettingsSearchPanel Visible="True" />
					<Columns>
						<dx:GridViewDataTextColumn FieldName="id_production" Caption="Kode Produksi" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="15%">
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="tanggal" Caption="Tanggal Produksi" ShowInCustomizationForm="True" VisibleIndex="1" Width="15%">
						   <PropertiesTextEdit DisplayFormatString="yyyy-mM-dd">
                            </PropertiesTextEdit>
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="tanggal_so" Caption="Tanggal SO" ShowInCustomizationForm="True" VisibleIndex="2" Width="15%">
						    <PropertiesTextEdit DisplayFormatString="yyyy-mM-dd">
                            </PropertiesTextEdit>
						</dx:GridViewDataTextColumn>
						<dx:GridViewDataTextColumn FieldName="keterangan" Caption="Keterangan" ShowInCustomizationForm="True" VisibleIndex="3" Width="45%">
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
				<asp:SqlDataSource ID="SqlProReq" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="SELECT * FROM [production_header]"></asp:SqlDataSource>
			</dx:PanelContent>
		</PanelCollection>
	</dx:ASPxRoundPanel>

</asp:Content>