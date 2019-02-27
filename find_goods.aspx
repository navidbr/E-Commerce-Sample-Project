<%@ Page Title="" Language="C#" MasterPageFile="~/Header_MasterPage.master" AutoEventWireup="true" CodeFile="find_goods.aspx.cs" Inherits="find_goods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="default/css/find-goods_style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="goods-menu">
                    <ul class="nav" id="goods_menu_1" runat="server">

                        <%-- first menu place --%>

                    </ul>
                </div>
                
            </div>

            <asp:ScriptManager runat="server"/>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="goods-menu" runat="server" id="goods_menu_2">

                            <%-- second menu place --%>

                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div>
                           <div class="row">
                               <div id="goods_menu_3" runat="server">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <%-- third menu place --%>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <div class="goods-type-list" >
                                                    <a good_type_id='<%# Eval("Menu_ID") %>' class="no-decor" role="button" runat="server" onserverclick="third_menu_click">
                                                        <%# Eval("Menu_Name") %>
                                                    </a>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                   </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>


    <script type="text/javascript">
        function visible_second_menu(m_number)
        {
            var list, index;
            list = document.getElementsByClassName("hidden-menu");
            for (index = 0; index < list.length; ++index) {
                list[index].setAttribute('hidden', 'hidden');
            }
            document.getElementById("ContentPlaceHolder1_second_goods_menu_" + m_number).hidden = "";
        }
    </script>
</asp:Content>

