<%@ Page Title="Főoldal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainSite.aspx.cs" Inherits="CBB_project.MainSite" %>
<%@ MasterType virtualpath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" style="background-image: url('/Pictures/hatter.png');" runat="server">

    <div class="row menuClass" style="margin-top:50px;">
        <div class="col-sm-3 col-md-6" style="width: 20rem;">
            <img src="/Pictures/amigos2.png" class="myImg" />
        </div>
        <div class="col-sm-9 col-md-6" style="text-align: right;">
            <div class="row myrow">
                <img src="/Pictures/task.png" class="myImg" style="width: 8rem;"/>
            </div>
            <div class="row myrow">
                <img src="/Pictures/event.png" class="myImg" style="width: 8rem;"/>
            </div>
            <!--<div class="row myrow">
                <img src="/Pictures/controller.png" class="myImg" style="width: 8rem;"/>
            </div>-->
            <div class="row myrow">
                <img src="/Pictures/question.png" class="myImg" style="width: 8rem;"/>
            </div>
            <asp:Button ID="id" Text="Gomb" runat="server" OnClick="clickEvent" />
        </div>
    </div>

</asp:Content>
