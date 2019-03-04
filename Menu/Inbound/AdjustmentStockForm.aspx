<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="AdjustmentStockForm.aspx.cs" Inherits="WebApplication.Menu.Inbound.AdjustmentStockForm" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
	<dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="Form Adjustment Stock" HorizontalAlign="Left" Width="100%"  CssClass="noborder">
		<PanelCollection>
			<dx:PanelContent runat="server">
				<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="5" Width="50%">
					<Items>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblIdTransaksi" runat="server" Text="Jumlah">
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
									<dx:ASPxLabel ID="lblTgl" runat="server" Text="Tanggal"></dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxDateEdit ID="txtTgl" runat="server" EditFormat="Custom" EditFormatString="yyyy-MM-dd">
									</dx:ASPxDateEdit>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="3">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblIdBahan" runat="server" Text="Nama Bahan">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False" ColSpan="4">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxComboBox ID="cbxIdBahan" runat="server" Width="100%" TextField="nama_bahan" ValueField="id_bahan" AutoPostBack="true" OnSelectedIndexChanged="bahan_SelectedIndexChanged">
									</dx:ASPxComboBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblJumlah" runat="server" Text="Jumlah">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxTextBox ID="txtJumlah" runat="server">
									</dx:ASPxTextBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="lblSatuan" runat="server" display="static">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:EmptyLayoutItem ColSpan="2">
						</dx:EmptyLayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxLabel ID="txtKeterangan" runat="server" Text="Keterangan">
									</dx:ASPxLabel>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False" ColSpan="4">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxTextBox ID="lblKeterangan" runat="server" Width="100%">
									</dx:ASPxTextBox>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxButton ID="btnSave" runat="server" Text="Simpan" Width="100px" OnClick="btn_Save">
									</dx:ASPxButton>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
						<dx:LayoutItem ShowCaption="False">
							<LayoutItemNestedControlCollection>
								<dx:LayoutItemNestedControlContainer runat="server">
									<dx:ASPxButton ID="btnCancel" runat="server" Text="Batal" Width="100px" OnClick="btn_Cancel">
									</dx:ASPxButton>
								</dx:LayoutItemNestedControlContainer>
							</LayoutItemNestedControlCollection>
						</dx:LayoutItem>
					</Items>
				</dx:ASPxFormLayout>
			</dx:PanelContent>
		</PanelCollection>
	</dx:ASPxRoundPanel>
</asp:Content>