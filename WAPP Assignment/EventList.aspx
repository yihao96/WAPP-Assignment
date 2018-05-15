<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EventList.aspx.cs" Inherits="WAPP_Assignment.EventList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Heading -->
    <h1 class="my-4">Event List&nbsp;
      </h1>

    <!-- Project One -->
    <div class="row">
        <div class="col-md-7" style="left: 0px; top: 0px">
            <a href="#">
                <img class="img-fluid rounded mb-3 mb-md-0" src="images/chessinhouse2018.jpeg" alt="">
            </a>
        </div>
        <div class="col-md-5">
            <h3>Chess In-House Tournament 2018</h3>
            <p>Date: 18 July 2018</p>
            <p>Venue: Auditorium 2</p>
            <p>Participation Fees: RM 5</p>
            <a class="btn btn-primary" href="#">Register</a>
        </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Project Two -->
    <div class="row">
        <div class="col-md-7">
            <a href="#">
                <img class="img-fluid rounded mb-3 mb-md-0" src="images/apusportscarnival.jpg" alt="">
            </a>
        </div>
        <div class="col-md-5">
            <h3>APU Sports Carnival (Chess) 2018 </h3>
            <p>Date: 9 August 2018</p>
            <p>Venue: B - 4 - 5</p>
            <p>Participation Fees: RM 8</p>
            <a class="btn btn-primary" href="#">Register</a>
        </div>
</asp:Content>
