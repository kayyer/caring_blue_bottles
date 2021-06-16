<%@ Page Title="Főoldal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainSite.aspx.cs" Inherits="CBB_project.MainSite" %>
<%@ MasterType virtualpath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" style="background-image: url('/Pictures/hatter.png');" runat="server">
        <%: Scripts.Render("~/bundles/text2speech") %>


    <% if (Master.myuser.isAdmin)
    { %>

        <div class="row menuClass myPage">
            <div class="col-sm-6 col-md-6">
                <div class="row myrow">
                    <a href="/SetQuestions"  class="ml-auto"><img src="/Pictures/gears.png" class="myImg" style="width: 8rem;"/></a>
                </div>
                <div class="row myrow">
                    <a href="/SetUsergroups" class="ml-auto"><img src="/Pictures/groups.png" class="myImg" style="width: 8rem;"/></a>
                </div>
                <div class="row myrow">
                    <a href="/ListUsers" class="ml-auto"><img src="/Pictures/users.png" class="myImg" style="width: 8rem;"/></a>
                </div>
            </div>
        </div>
        
    <%}
    else
    { %>
        <div class="row menuClass myPage">
            <div class="col-sm-3 col-md-2 mr-auto" style="width: 10rem;">
                <img src="/Pictures/amigos2.png" class="myImg" />
            </div>
            <div class="col-sm-9 col-md-10">
                <div class="row myrow">
                    <a href="/Tasks" class="ml-auto"><img src="/Pictures/task.png" class="myImg" style="width: 8rem;"/></a>
                </div>
                <div class="row myrow">
                    <a href="/Events" class="ml-auto"><img src="/Pictures/event.png" class="myImg" style="width: 8rem;"/></a>
                </div>
                <div class="row myrow">
                    <a href="/Tetris" class="ml-auto"><img src="/Pictures/controller.png" class="myImg" style="width: 8rem;"/></a>
                </div>
                <div class="row myrow">
                    <a href="/FAQ" class="ml-auto"><img src="/Pictures/question.png" class="myImg" style="width: 8rem;"/></a>
                </div>
                 <!--onclick="return readST('linkToUser', 'hu-HU')"--> 
            </div>
        </div>
    <%} %>

</asp:Content>
