<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="BarangForm.aspx.cs" Inherits="WebApplication.Menu.Master.BarangForm" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="rpBarangForm" HeaderText="Form Master Barang" HorizontalAlign="Left" runat="server" ShowCollapseButton="false" Width="100%"  CssClass="noborder">
        <PanelCollection>
<dx:PanelContent runat="server">
    <dx:ASPxFormLayout ID="flBarang" runat="server" ColCount="5" Width="50%">
        <Items>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxLabel ID="lblIdBarang" runat="server" Text="Kode Barang">
                        </dx:ASPxLabel>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="txtIdBarang" runat="server" Enabled="false">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:EmptyLayoutItem ColSpan="3">
            </dx:EmptyLayoutItem>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxLabel ID="lblNamaBarang" runat="server" Text="Nama Barang">
                        </dx:ASPxLabel>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem ColSpan="4" ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="txtNamaBarang" runat="server" Width="100%">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxLabel ID="lblBerat" runat="server" Text="Berat (KG)">
                        </dx:ASPxLabel>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem  ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="txtBerat" runat="server" Width="100%">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:EmptyLayoutItem ColSpan="3">
            </dx:EmptyLayoutItem>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxLabel ID="lblHarga" runat="server" Text="Harga">
                        </dx:ASPxLabel>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="txtHarga" runat="server" Width="100%">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:EmptyLayoutItem ColSpan="3">
            </dx:EmptyLayoutItem>
            <dx:EmptyLayoutItem ColSpan="5">
            </dx:EmptyLayoutItem>
        </Items>
    </dx:ASPxFormLayout>
    <dx:ASPxGridView ID="Grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlBahan" KeyFieldName="id_rec" ClientInstanceName="grid" Width="70%"  OnRowInserting="gvBarangHarga_RowInserting" OnRowUpdating="gvBarangHarga_RowUpdating" OnCellEditorInitialize="Grid_CellEditorInitialize">
        <SettingsPager Visible="False">
        </SettingsPager>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="5">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="id_rec" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_barang" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Jumlah" FieldName="jumlah" ShowInCustomizationForm="True" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Bahan Baku" FieldName="id_bahan" ShowInCustomizationForm="True" VisibleIndex="2" PropertiesComboBox-ValueType="System.String">
                <PropertiesComboBox DataSourceID="SqlBahanBaku" TextField="nama_bahan" ValueField="id_bahan" EnableSynchronization="False" IncrementalFilteringMode="StartsWith">
                <ClientSideEvents SelectedIndexChanged="function BahanCombo_SelectedIndexChanged(s, e) {
            grid.GetEditor(&quot;id_satuan&quot;).PerformCallback(s.GetValue());
        }" />
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Satuan" FieldName="id_satuan" ShowInCustomizationForm="True" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="SqlSatuanBahanBaku" TextField="nama_satuan" ValueField="id_satuan"  EnableSynchronization="False" IncrementalFilteringMode="StartsWith">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlBahan" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="SELECT * FROM [ms_barang_bahan] WHERE id_barang = @id_barang"  InsertCommand="INSERT INTO ms_barang_bahan (id_barang, id_bahan, id_satuan, jumlah) VALUES (@id_barang, @id_bahan, @id_satuan, @jumlah)" UpdateCommand="UPDATE ms_barang_bahan set id_bahan = @id_bahan, id_satuan = @id_satuan, jumlah = @jumlah WHERE id_barang = @id_barang and id_rec = @id_rec" DeleteCommand="DELETE FROM ms_barang_bahan WHERE id_barang=@id_barang AND id_rec = @id_rec" OnSelecting="dsms_barang_Selecting">
        <SelectParameters>
            <asp:Parameter Name="id_barang" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="id_barang" Type="String" />
            <asp:Parameter Name="id_bahan" Type="String" />
            <asp:Parameter Name="id_satuan" Type="String" />
            <asp:Parameter Name="jumlah" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_rec" Type="String" />
            <asp:Parameter Name="id_barang" Type="String" />
            <asp:Parameter Name="id_bahan" Type="String" />
            <asp:Parameter Name="id_satuan" Type="String" />
            <asp:Parameter Name="jumlah" Type="Decimal" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="id_barang" Type="String" />
            <asp:Parameter Name="id_rec" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlBahanBaku" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="SELECT * FROM [ms_bahan_baku] order by nama_bahan"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlSatuanBahanBaku" runat="server" ConnectionString="<%$ ConnectionStrings:MtoConnectionString %>" SelectCommand="SELECT a.id_satuan, b.nama_satuan FROM ms_bahan_baku a, ms_satuan b where a.id_satuan=b.id_satuan and a.id_bahan=@id_bahan">
        <SelectParameters>
            <asp:Parameter Name="id_bahan" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="5" Width="20%">
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
        <Border BorderStyle="None" />
    </dx:ASPxRoundPanel> 
</asp:Content>


