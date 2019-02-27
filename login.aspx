<%@ Page Title="" Language="C#" MasterPageFile="~/Header_MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" href="default/css/login_style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="container">


        <div class="icon_user_signup">
            <span class="login_icon animation"></span>
            <h1> OfferEshop </h1>
        </div>   


        <div class="form-group  icon_user_signup ">
            <div class="row" >
                    <div class="form-inline padding">
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                           <div class="btn-group put_in_center">
                               <select name=" انتخاب نوع کاربر " class="btn btn-danger" id="sel_sign_in_type" runat="server">
                                   <option selected="selected"> انتخاب نوع کاربر </option>
                                   <option>فروشنده</option>
                                   <option>کاربر</option>
                               </select>
                              <%--<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  انتخاب نوع کاربر <span class="caret"></span>                      
                               </button>
                               <ul class="dropdown-menu">
                                 <li><a href="#">فروشنده</a></li>
                                 <li role="separator" class="divider"></li>
                                 <li><a href="#">کاربر</a></li>
                               </ul>--%>
                             </div>
                          </div>



                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">


                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                               <div class="padding put_in_center font_Georgia">
                                 <label for="txt"> نام کاربری </label>
                                 <input type="text" class="form-control font_Comic" id="txt_username" placeholder="نام کاربری" runat="server"/>
                                   <div class="font_tahoma">
                                       <span id="username_report" class="erromsg" > نام کاربری را وارد کنید </span>
                                   </div>
                               </div>
                            </div>



                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                               <div class="padding  put_in_center font_Georgia">
                                    <label for="pwd"> رمز عبور </label>
                                    <input type="password" class="form-control font_Comic" id="txt_password" placeholder=" رمز عبور " runat="server"/>
                                   <div class="font_tahoma">
                                       <span id="password_report" class="erromsg" >رمز عبور را وارد نمایید</span>
                                   </div>
                               </div>
                            </div>


                           </div>
                          


                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">


                                <div class=" form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class=" padding put_in_center font_Georgia">
                                        <img src="" alt="متن تصویر" id="captcha" runat="server"/>
                                        <br />
                                        <br />
                                        <input type="text" class="form-control font_Comic" placeholder="متن تصویر" id="txt_captcha_code" runat="server"/>
                                        <div class="font_tahoma">
                                           <span id="txt_img_report" class="erromsg" runat="server">متن تصویر را وارد نمایید</span>
                                       </div>
                                    </div>
                                </div>


                               <%-- <div class=" checkbox form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                   <div class=" padding font_Comic">
					                <label>
						                <input class="radio_checkbox_margin" type="checkbox"/>  مرا به یاد داشته باش 
					                </label>
				                   </div>
                                </div>--%>


                            </div>


                    </div>

           </div>

            <div class="row">
                <div class="put_in_center">
                    <button type="submit" class="btn btn-warning font_Comic" runat="server" onserverclick="enter_click" > ورود به سایت <span class="glyphicon glyphicon-send"></span></button>
                    <button type="submit" class="btn btn-info font_Comic" runat="server" onserverclick="btn_register_ServerClick"> ثبت نام <span class="glyphicon glyphicon-send"></span></button>
                </div>
            </div>
      </div>
    </div>
    <%--<script type="text/javascript" >alert('نوع ورود خود را انتخاب کنید');</script>--%>
</asp:Content>

