<%@ Page Title="Fiók beállítások" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetUser.aspx.cs" Inherits="CBB_project.SetUser" %>
<%@ MasterType virtualpath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="myPage">
        <div class="row">
            <div class="col-sm-6 form-group">
                <asp:TextBox ID="usernameTb" CssClass="form-control" Placeholder="Felhasználónév" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-6 form-group">
                <asp:TextBox ID="fullnameTb" CssClass="form-control" Placeholder="Teljes név" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 form-group">
                <asp:TextBox ID="pswTb" TextMode="Password" CssClass="form-control" Placeholder="Jelszó" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-6 form-group">
                <asp:TextBox ID="repswTb" TextMode="Password" CssClass="form-control" Placeholder="Jelszó újra" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 form-group">
                <asp:TextBox TextMode="Date" ID="birthdateCal" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-6 form-group">
                <asp:TextBox ID="descTb" CssClass="form-control" Placeholder="Rövid leírás magadról" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row" style="margin-top:40px">
            <div class="col-md-12 pl-auto form-group">
                <asp:Button ID="saveBut" CssClass="btn btn-success" Text="Mentés" OnClick="saveBut_Click" runat="server"/>
            </div>
        </div>
    </div>
</asp:Content>
