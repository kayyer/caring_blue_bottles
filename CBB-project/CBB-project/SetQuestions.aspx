<%@ Page Title="Kérdések szerkesztése" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetQuestions.aspx.cs" Inherits="CBB_project.SetQuestions" %>
<%@ MasterType virtualpath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="myPage">

        <input id="oFile" type="file" class="btn btn-success" runat="server" name="oFile" />
        <asp:Button id="btnUpload"  Text="Feltöltés" CssClass="btn btn-success" runat="server" OnClick="btnUpload_Click"></asp:button>
        <asp:Panel ID="frmConfirmation" Visible="False" Runat="server">
            <asp:Label id="lblUploadResult" Runat="server"></asp:Label>
        </asp:Panel>

    </div>
</asp:Content>