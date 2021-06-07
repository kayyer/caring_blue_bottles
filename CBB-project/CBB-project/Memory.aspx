<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Memory.aspx.cs" Inherits="CBB_project.Memory" %>
<%@ MasterType virtualpath="~/Site.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%: Scripts.Render("~/bundles/memory") %>
    <div class="myPage">
    <!--HTML-->



    <div style="margin-top:100px;">
        <asp:TextBox ID="tb" runat="server"></asp:TextBox>
        <%= coderMaker() %>
    </div>




    <!-- HTML vége -->
    </div>
</asp:Content>
