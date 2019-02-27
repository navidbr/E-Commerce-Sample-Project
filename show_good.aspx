<%@ Page Title="" Language="C#" MasterPageFile="~/Header_MasterPage.master" AutoEventWireup="true" CodeFile="show_good.aspx.cs" Inherits="show_good" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link rel="stylesheet" href="default/css/show-good_style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >


    <div class="container">
        <div>
            

            <h1 id="good_name" runat="server">Blog Post Title</h1>
            <p class="lead">
                by <a id="store_link" runat="server" onserverclick="store_link_ServerClick">Start Bootstrap</a>
            </p>
            <hr />
            <button class="active btn btn-default" runat="server" onserverclick="add_to_favorit_ServerClick" id="btn_add_to_favori" good_id=""> افزودن به لیست مورد علاقه ها </button>
            <hr/>
            <div><span class="glyphicon glyphicon-time"></span><div id="post_date" runat="server">Posted on August 24, 2013 at 9:00 PM</div> </div>
            <hr/>

            <div class="row carousel-holder">
                    <div class="col-lg-2 col-md-1 hidden-sm hidden-xs">

                    </div>
                    <div class="col-lg-8 col-md-10 col-sm-12 col-xs-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <li data-target="#carousel-example-generic" data-slide-to="<%# Eval("number") %>" class="<%# Eval("_class") %>"></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ol>

                            <div class="carousel-inner">
                                <asp:Repeater ID="Image_Repeater" runat="server">
                                    <ItemTemplate>
                                        <div class="item <%# Eval("_class") %>">
                                            <img class="slide-image" src="<%# Eval("url") %>" alt=""/>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-1 hidden-sm hidden-xs">

                    </div>

                </div>
            <hr />
            <p>
                a little describe
            </p>
            <hr/>
             <div class="store-name"><label> نام فروشگاه : </label> <button class="btn" id="good_store_name" runat="server" onserverclick="store_link_ServerClick">فروشگاه 1</button> <%--<a id="good_store_name">فروشگاه 1</a>--%></div>
            <hr/>
            <h3>مشخصات محصول</h3>
            <div class="specification-list">

                <asp:Repeater ID="Repeater_spec" runat="server">
                    <ItemTemplate>
                        <div class="row">
                            <div class="<%# Eval("css_class") %>">
                                <div class="col-lg-4 col-md-4 col-sm-5 col-xs-6 ">
                                    <span class="label"><%# Eval("title") %></span>
                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-6 ">
                                    <span class="label"><%# Eval("text") %></span>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>      

           <hr />
            <button class="active btn btn-success" runat="server" onserverclick="btn_map_show_ServerClick" id="btn_map_show" Location_Lat="" Location_Lng="">نمایش فروشگاه کالا روی نقشه</button>
            <hr/>


            <%--<asp:ScriptManager ID="ScriptManager1" runat="server"/>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>--%>
                    <div class="well">
                        <h4>Leave a Comment:</h4>
                        
                        <div class="form-group">
                            <textarea runat="server" id="txt_comment" class="form-control" rows="3"></textarea>
                        </div>
                        <button runat="server" id="btn_submit_comment" onserverclick="btn_submit_comment_ServerClick" type="submit" good_id="" class="btn btn-primary">Submit</button>
                    </div>

                    <hr/>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <div class="media">
                                <img class="pull-left" src="<%# Eval("Profile_Picture_URL") %>" alt=""/>
                                    <%--<%# Eval("User_Name") %>--%>
                                    
                                
                                <div class="media-body">
                                    <h4 class="media-heading"><%# Eval("User_Name") %> 
                                        <small><%# Eval("Product_Date") %> at <%# Eval("Product_Time") %></small>
                                    </h4>
                                    <%# Eval("Review") %>
                                </div>
                            </div>
                            <hr />
                        </ItemTemplate>
                    </asp:Repeater>
                <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
                

                    
                    

                    <%--<div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object" src="http://placehold.it/64x64" alt=""//>
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">Start Bootstrap
                                <small>August 25, 2014 at 9:30 PM</small>
                            </h4>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.

                            <div class="media">
                                <a class="pull-left" href="#">
                                    <img class="media-object" src="http://placehold.it/64x64" alt=""/>
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">Nested Start Bootstrap
                                        <small>August 25, 2014 at 9:30 PM</small>
                                    </h4>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                            </div>
                            
                        </div>
                    </div>--%>
                </div>
    </div>
</asp:Content>

