<%@ Page Title="" Language="C#" MasterPageFile="~/Header_MasterPage.master" AutoEventWireup="true" CodeFile="find_shop.aspx.cs" Inherits="find_shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="stylesheet" href="default/css/find-shop_style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">

        <div class="form-group">
            <label >نام فروشگاه</label>
            <input type="text" class="form-control" id="input_shop_name" placeholder="نام فروشگاه" runat="server" autocomplete="off"  onkeypress="if(event.keyCode==13) {__doPostBack('ctl00$ContentPlaceHolder1$ctl00',''); return false;}" />
        </div>
        <div class="form-group">
            <label >نام مسئول</label>
            <input type="text" class="form-control" id="input_shop_keeper_name" placeholder="نام مسئول" runat="server" autocomplete="off" onkeypress="if(event.keyCode==13) {__doPostBack('ctl00$ContentPlaceHolder1$ctl00',''); return false;}"/>
        </div>
        <div>
            <label >نوع فروشگاه</label>
            <select class="form-control" runat="server" id="select_shop_type">
                <option value="all">همه</option>

            </select>
        </div>
        <br />
            
        <button class="btn btn-success" runat="server" onserverclick="btn_search_Click">جستجو</button>

        <hr />

        <div class="shop-list">

        <div class="row" runat="server" id="panel_header" visible="false">
            <div class="col-lg-12">
                <h1 class="page-header">Page Heading</h1>
            </div>
        </div>



        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div runat="server" id="panel1">





                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <div class="col-md-4 portfolio-item">
                                <div class="item-border">
                                    <a href="#" runat="server">
                                        <img class="img-responsive" src="<%# Eval("Profile_Picture_URL") %>" alt=""/>
                                    </a>
                                    <h3>
                                        <a  ><%# Eval("Name") %></a>
                                    </h3>
                                    <label class="label label-info" style="font-size:larger">نوع فروشگاه : <%# Eval("Store_Type_Name") %></label>
                                    <br />
                                    <br />
                                    <label class="label label-success" style="font-size:larger">نام فروشنده : <%# Eval("Owner_First_Name") %> <%# Eval("Owner_Last_Name") %></label>
                                    <br />
                                    <br />
                                    <label class="label label-default" style="font-size:larger">شماره تلفن : <%# Eval("Tel1") %></label>
                                    <p></p>
                                </div>
                            </div>        
                        </ItemTemplate>
                    </asp:Repeater>         
                                    
                                
                                

                <hr/>

                <!-- Pagination -->

                </div>
            



        <div class="row text-center" runat="server" id="panel_footer" visible="false">
            <div class="col-lg-12">
                <ul class="pagination" id="paging_ul" runat="server">
                    <li>
                        <a runat="server" onserverclick="pervious_page_click" id="pervious_page_button">&laquo;</a>
                    </li>

                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li class="<%# Eval("class") %>">
                                <a runat="server" onserverclick="page_number_click"><%# Eval("name") %></a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    <%--<li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>--%>
                    <li>
                        <a runat="server" onserverclick="next_page_click" id="next_page_button">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>



        </ContentTemplate>
        </asp:UpdatePanel>

        </div>
            

    </div>
</asp:Content>

