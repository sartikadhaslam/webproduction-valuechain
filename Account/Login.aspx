    <%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Login.master" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxPanel ID="ASPxPanel1" runat="server">
        <PanelCollection>
            <dx:PanelContent runat="server">
                <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" HeaderText="" PopupHorizontalAlign="WindowCenter" CloseAction="None" ShowCloseButton="False" ShowOnPageLoad="True" Width="350px" PopupVerticalAlign="WindowCenter" FooterText="2018 © Copyright by Sartika Daslam" ShowFooter="True">
                    <HeaderImage Url="~/Content/Images/logo.png" Width="30%">
                    </HeaderImage>
                    <FooterStyle HorizontalAlign="Center" />
                    <HeaderStyle>
                    <Paddings PaddingLeft="25px" PaddingRight="30px" />
                    </HeaderStyle>
                    <ContentStyle>
                    <Paddings PaddingLeft="30px" PaddingRight="30px"/>
                    </ContentStyle> 
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxLabel ID="lblSignIn" runat="server" Text="Sign In" CssClass="SignInTulisan">
                            </dx:ASPxLabel>
                            <br />
                            <br />
                            <dx:ASPxTextBox ID="tbUserName" runat="server" Width="100%" NullText="User Name" ClientInstanceName="tbUserName">
                            <ValidationSettings ValidationGroup="LoginUserValidationGroup" ErrorTextPosition="Bottom" Display="Dynamic">
                            <RequiredField ErrorText="User Name is required." IsRequired="true" />
                            </ValidationSettings>
                            </dx:ASPxTextBox>
                            <br />
                            <dx:ASPxTextBox ID="tbPassword" runat="server" Width="100%" Password="True" NullText="Password">
                            <ValidationSettings ValidationGroup="LoginUserValidationGroup" ErrorTextPosition="Bottom" Display="Dynamic">
                            <RequiredField ErrorText="Password is required." IsRequired="true"/>
                            </ValidationSettings>
                            </dx:ASPxTextBox>
                            <br />
							<dx:ASPxLabel ID="lblError" runat="server">
                            </dx:ASPxLabel>
							<br />
							<br />
                            <dx:ASPxButton ID="btnLogin" runat="server" Text="Sign In" HorizontalAlign="Right" ValidationGroup="LoginUserValidationGroup" OnClick="btnLogin_Click">
                            </dx:ASPxButton>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxPanel>

</asp:Content>