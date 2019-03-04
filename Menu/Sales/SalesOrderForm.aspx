<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="SalesOrderForm.aspx.cs" Inherits="WebApplication.Menu.Sales.SalesOrderForm" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="rpSalesOrderForm" runat="server" HeaderText="Form Sales Order" Width="100%" CssClass="noborder">
        <PanelCollection>
            <dx:PanelContent runat="server">
                <dx:ASPxFormLayout ID="flSalesOrder" runat="server" ColCount="5">
                    <Items>
                        <dx:LayoutItem ShowCaption="False">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxLabel ID="lblIdTransaksi" runat="server" Text="Kode Transaksi">
                                    </dx:ASPxLabel>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem ShowCaption="False">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxTextBox ID="txtIdTransaksi" runat="server" Enabled="false">
                                    </dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:EmptyLayoutItem ColSpan="3">
                        </dx:EmptyLayoutItem>
                        <dx:LayoutItem ShowCaption="False">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxLabel ID="lblTanggal" runat="server" Text="Tanggal">
                                    </dx:ASPxLabel>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem ShowCaption="False">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxDateEdit ID="deTanggal" runat="server" EditFormat="Custom" EditFormatString="yyyy-MM-dd">
                                    </dx:ASPxDateEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:EmptyLayoutItem ColSpan="3">
                        </dx:EmptyLayoutItem>
                        <dx:LayoutItem ShowCaption="False">
                            <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxLabel ID="lblSales" runat="server" Text="Sales">
                            </dx:ASPxLabel>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem ColSpan="4" ShowCaption="False">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxComboBox ID="cbxSales" runat="server" Width="100%" AutoPostBack="true" OnSelectedIndexChanged="sales_SelectedIndexChanged" ValueField="id_sales" TextField="nama_sales">
                                    </dx:ASPxComboBox>
                                    </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem ShowCaption="False">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxLabel ID="lblCustomer" runat="server" Text="Customer">
                                    </dx:ASPxLabel>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem ColSpan="4" ShowCaption="False">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxComboBox ID="cbxCustomer" runat="server" Width="100%" AutoPostBack="true"  ValueField="id_customer" TextField="nama_customer">
                                    </dx:ASPxComboBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:ASPxFormLayout>
                <br />
                <dx:ASPxGridView ID="Grid" AutoGenerateColumns="False" DataSourceID="SqlOrderDetail" KeyFieldName="id_rec" Width="70%" style="margin-top: 0px" OnRowInserting="gvSalesOrder_RowInserting" OnRowUpdating="gvSalesOrder_RowUpdating" runat="server" >
                    <SettingsPager Visible="False">
                    </SettingsPager>
                    <Settings ShowFooter="True" />
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="7" Width="10%">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Barang" FieldName="id_barang" ShowInCustomizationForm="True" VisibleIndex="2" Width="30%" PropertiesComboBox-ValueType="System.String">
                            <PropertiesComboBox DataSourceID="SqlBarang" ValueField="id_barang" TextField="nama_barang" EnableSynchronization="False" IncrementalFilteringMode="StartsWith">
							</PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataTextColumn Caption="Total (Rp)" FieldName="total" ReadOnly="true" ShowInCustomizationForm="False" VisibleIndex="6" Width="15%" PropertiesTextEdit-DisplayFormatString="C">
                            <PropertiesTextEdit DisplayFormatString="N"></PropertiesTextEdit>
                                <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Jumlah" FieldName="jumlah" ShowInCustomizationForm="True" VisibleIndex="4" Width="10%">
                            <PropertiesTextEdit NullText="0.00" NullDisplayText="0.00">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Harga (Rp)" FieldName="harga" ReadOnly="false" ShowInCustomizationForm="true" VisibleIndex="5" Width="15%">
                            <PropertiesTextEdit ClientInstanceName="hargaTextBox" DisplayFormatString="N" NullText="0.00" NullDisplayText="0.00">
                            </PropertiesTextEdit>
							<EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="id_rec" Visible="false" ReadOnly="true" FieldName="id_rec" ShowInCustomizationForm="True" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="id_tso" Visible="false" ReadOnly="true" FieldName="id_tso" ShowInCustomizationForm="True" VisibleIndex="0">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <TotalSummary>
                        <dx:ASPxSummaryItem DisplayFormat="N" FieldName="total" ShowInColumn="Total (Rp)" SummaryType="Sum" ValueDisplayFormat="C" />
                    </TotalSummary>
                </dx:ASPxGridView>
                 <br />
    <dx:ASPxFormLayout ID="ASPxFormLayout2" runat="server" ColCount="5" Width="20%">
        <Items>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="btnSimpan" runat="server" Text="Simpan" Width="100px" OnClick="btn_Save">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="btnBatal" runat="server" Text="Batal" Width="100px" OnClick="btn_Cancel">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    <asp:SqlDataSource ID="SqlBarang" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="SELECT * FROM [ms_barang] ORDER BY [nama_barang]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlOrderDetail" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="SELECT * FROM [sales_order_detail] WHERE [id_tso] = @id_tso" DeleteCommand="DELETE FROM [sales_order_detail] WHERE [id_tso] = @id_tso AND [id_rec] = @id_rec" InsertCommand="INSERT INTO [sales_order_detail] ([id_tso], [id_barang], [jumlah], [harga], [total]) select @id_tso, @id_barang, @jumlah, harga, @jumlah * harga from ms_barang where id_barang = @id_barang" UpdateCommand="UPDATE [sales_order_detail] SET [id_barang] = @id_barang, [jumlah] = @jumlah, [harga] = @harga, [total] = @jumlah * @harga WHERE [id_tso] = @id_tso and [id_rec] = @id_rec" OnSelecting="dsms_order_detail_Selecting">
        <InsertParameters>            
            <asp:Parameter Name="id_tso" Type="String" />
            <asp:Parameter Name="id_barang" Type="String" />
            <asp:Parameter Name="jumlah" Type="Decimal" />
            <asp:Parameter Name="harga" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="-" Name="id_tso" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_tso" Type="String" />
            <asp:Parameter Name="id_rec" Type="Int32" />
            <asp:Parameter Name="id_barang" Type="String" />
            <asp:Parameter Name="jumlah" Type="Decimal" />
            <asp:Parameter Name="harga" Type="Decimal" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="id_tso" Type="String" />
            <asp:Parameter Name="id_rec" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>

