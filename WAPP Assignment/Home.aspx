<%@ Page Title="Home - APU Chess Club" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WAPP_Assignment.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Content -->
    <div class="container">

        <!-- Jumbotron Header -->
        <header class="jumbotron my-4">
            <h1 class="display-3">A Warm Welcome!</h1>
            <p class="lead">We are open to everyone. Do not feel left out and join us right here right now!</p>
            <a href="Registration.aspx" class="btn btn-primary btn-lg ">Join Us!</a>
        </header>

        <!-- Page Features -->
        <div class="row text-center">

            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card">
                    <img class="card-img-top" alt="" src=".../images/clubmeeting.jpg">
                    <div class="card-body">
                        <h4 class="card-title">Weekly Club Meetings</h4>
                        <p class="card-text">Checkout where do we meet every week!</p>
                    </div>
                    <div class="card-footer">
                        <a href="ClubMeeting.aspx" class="btn btn-primary">Find Out More!</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card">
                    <img class="card-img-top" src="D:\WAPP Assignment\APUChessClub\images\chessevent.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Events</h4>
                        <p class="card-text">Checkout any incomming chess tournaments or events!</p>
                    </div>
                    <div class="card-footer">
                        <a href="EventList.aspx" class="btn btn-primary">Find Out More!</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card">
                    <img class="card-img-top" src=".../images/clubmeeting.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Rent</h4>
                        <p class="card-text">Don't have chess set but wants to play? Borrow one!</p>
                    </div>
                    <div class="card-footer">
                        <a href="SearchProduct.aspx" class="btn btn-primary">Find Out More!</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card">
                    <img class="card-img-top" src=".../images/clubmeeting.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Committee Team</h4>
                        <p class="card-text">Get to know the team who manages the club!</p>
                    </div>
                    <div class="card-footer">
                        <a href="AboutUs.aspx" class="btn btn-primary">Find Out More!</a>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->

    </div>

</asp:Content>
