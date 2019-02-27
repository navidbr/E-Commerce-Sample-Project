<%@ Page Title="" Language="C#" MasterPageFile="~/Header_MasterPage.master" AutoEventWireup="true" CodeFile="owner_profile.aspx.cs" Inherits="owner_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="default/css/owner_profile_style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>--%>
<nav class="navbar navbar-inverse container" role="navigation">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
          <a runat="server" id="user_name" class="dropdown-toggle" data-toggle="dropdown">سلام  خوش اومدی <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li style="align-content:center" class="well">
                <div><img class="img-responsive" style="padding:2%;" src="default/img/profile_picture.jpg"/><a class="change">Change Picture</a></div>
                <a href="#" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-lock"></span> Security</a>
                <a href="#" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
            </li>
           </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


<div class="container">

	<div class="row well">
<%------------------------------------------------------------- پنل کوچک منو سمت راست ------------------------------------------------------------%>
		<div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
    	    <ul class="nav nav-pills nav-stacked well profile_font_Adobe_Arabic profile_border_radius">
              <li class="active"><a class="  profile_border_radius" href="user_profile.aspx" runat="server" onserverclick="mainpage_ServerClick"><i class="glyphicon glyphicon-home profile_glyphicon" ></i> صفحه ی اصلی </a></li>
              <li><a href="user_profile.aspx" runat="server" onserverclick="main_diagnotice_ServerClick"><i class="profile_glyphicon glyphicon glyphicon-check"></i> مشخصات شخصی </a></li>
              <li><a href="user_profile.aspx"  runat="server" onserverclick="security_ServerClick"><i class="profile_glyphicon glyphicon glyphicon-lock "></i> امنیت و تغییر رمز </a></li>
              <li><a href="user_profile.aspx" runat="server" onserverclick="goods_ServerClick"><i class="glyphicon glyphicon-send profile_glyphicon"></i> محصولات من </a></li>
              <li><a href="user_profile.aspx" ><i class="glyphicon glyphicon-log-out profile_glyphicon"></i> خروج </a></li>
            </ul>
        </div>
<%------------------------------------------------------------- پنل بزرگ سمت چپ ------------------------------------------------------------%>
        <asp:ScriptManager runat="server" />
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <asp:MultiView ID="Multiview" runat="server">

                        <asp:View ID="View0" runat="server">
                            <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12 ">
                                            <div class="panel">
                                                <img class="pic img-circle" src="default/img/profile_picture.jpg" alt="..."/>
                                                <div class="name"><small>علی و ار,میه</small></div>
                                                <a href="#" class="btn btn-xs btn-danger pull-right profile_font_Adobe_Arabic " style="margin:10px; font-size:15px;"><span class="glyphicon glyphicon-picture"></span > تغییر پس زمینه </a>
                                            </div>
                
                                <br/><br/><br/>
                            <%-------------------------------------------------------------- منوی پایین --------------------------------------------%>
                                <ul class="nav nav-tabs" id="myTab">
                                  <li class="active"><a href="#inbox" data-toggle="tab"><i class="fa fa-envelope-o"></i> دریافتی ‍‍‍</a></li>
                                  <li><a href="#sent" data-toggle="tab"><i class="fa fa-reply-all"></i> ارسالی </a></li>
<%--                              <li><a href="#assignment" data-toggle="tab"><i class="fa fa-file-text-o"></i> Assignment</a></li>--%>
                                  <li><a href="#event" data-toggle="tab"><i class="fa fa-clock-o"></i> اخبار </a></li>
                                </ul>
    
                                <div class="tab-content">
                                  <div class="tab-pane active" id="inbox">
                                    <a href="" type="button" data-toggle="collapse" data-target="#a1">
                                        <div class="btn-toolbar well well-sm" role="toolbar"  style="margin:0px;">
                                          <div class="btn-group"><input type="checkbox"/></div>
                                          <div class="btn-group col-md-3">Admin Kumar</div>
                                          <div class="btn-group col-md-8"><b>Hi Check this new Bootstrap plugin</b> <div class="pull-right"><i class="glyphicon glyphicon-time"></i> 12:10 PM <button class="btn btn-primary btn-xs" data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-share-square-o"> Reply</i></button></div> </div>
                                        </div>
                                    </a>
                                    <div id="a1" class="collapse out well">This is the message body1</div>
                                    <br/>
                                    <button class="btn btn-primary btn-xs"><i class="fa fa-check-square-o"></i> Delete Checked Item's</button>
                                  </div>
     
       
                                  <div class="tab-pane" id="sent">
                                        <a type="button" data-toggle="collapse" data-target="#s1">
                                        <div class="btn-toolbar well well-sm" role="toolbar"  style="margin:0px;">
                                          <div class="btn-group"><input type="checkbox"/></div>
                                          <div class="btn-group col-md-3"> amir </div>
                                          <div class="btn-group col-md-8" style="color:#ff0000"><b>پیغام جدید </b> <div class="pull-right"><i class="glyphicon glyphicon-time"></i> 12:30 AM</div> </div>
                                        </div>
                                    </a>
                                    <div id="s1" class="collapse out well">This is the message body1</div>
                                    <br/>
                                    <button class="btn btn-primary btn-xs"><i class="fa fa-check-square-o"></i> Delete Checked Item's</button>
                                  </div>
      
      
                                 <div class="tab-pane" id="assignment">
                                    <a><div class="well well-sm" style="margin:0px;">Open GL Assignments <span class="pull-right"><i class="glyphicon glyphicon-time"></i> 12:20 AM 20 Dec 2014 </span></div></a>        
                                 </div>
     
                                 <div class="tab-pane" id="event">
                                   <div class="media">
                                              <a class="pull-left" href="#">
                                                <img class="media-object img-thumbnail" width="100" src="default/img/profile_picture.jpg" alt="..."/>
                                              </a>
                                              <div class="media-body">
                                                <h4 class="media-heading">Animation Workshop</h4>
                                                2Days animation workshop to be conducted
                                              </div>
                                        </div>
                                </div>
    
    
        
                                </div>

                                 </div>
                        </asp:View>
<%---------------------------------------------------------- نشان دادن مشخصات --------------------------------------------------------------%>

                        <asp:View ID="View1" runat="server">
                            <div class="row">
<%---------------------------------------------------------- مشخصات -----------------------------------------------------------------------------%>
                                    <div class="well col-lg-8 col-md-7 col-sm-12 col-xs-12">
                                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="profile_font_Adobe_Arabic2">
                                    <label class="profile_margin_updown font_color_blue">نام</label>
                                    <panel  name="first_name" class="form-group profile_margin_side">name</panel>
                                </div>

                                <div class="profile_font_Adobe_Arabic2">
                                    <label class="profile_margin_updown font_color_blue" > نام خانوادگی</label>
                                    <panel  name="lastname" class="form-group profile_margin_side">lastname</panel>
                                </div>

                                <div class="profile_font_Adobe_Arabic2">
                                    <label  class="profile_margin_updown font_color_blue"> نام کاربری </label>
                                    <panel  name="username" class="form-group profile_margin_side">username</panel>
                                </div>

                                <div class="profile_font_Adobe_Arabic2">
                                    <label class="profile_margin_updown font_color_blue" > پست الکترونیکی </label>
                                    <panel  name="Email" class="form-group profile_margin_side">Email</panel>
                                </div>

                                <div class="profile_font_Adobe_Arabic2">
                                    <label class="profile_margin_updown font_color_blue" > تلفن همراه </label>
                                    <panel  name="phone" class="form-group profile_margin_side">phone</panel>
                                </div>
                                </div>

                                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="profile_font_Adobe_Arabic2">
                                    <label  class="profile_margin_updown font_color_blue"> استان </label>
                                    <panel  name="region" class="form-group profile_margin_side">region</panel>
                                </div>

                                <div class="profile_font_Adobe_Arabic2">
                                    <label  class="profile_margin_updown font_color_blue"> شهر </label>
                                    <panel  name="city" class="form-group profile_margin_side">city</panel>
                                </div>

                                <div class="profile_font_Adobe_Arabic2">
                                    <label  class="profile_margin_updown font_color_blue"> جنسیت </label>
                                    <panel  name="sexuality" class="form-group profile_margin_side">sexuality</panel>
                                </div>

                                <div class="profile_font_Adobe_Arabic2">
                                    <label  class="profile_margin_updown font_color_blue"> آدرس </label>
                                    <panel  name="address" class="form-group profile_margin_side">address</panel>
                                </div>
                                </div>
                                    </div>
                                    <div class="well col-lg-8 col-md-7 col-sm-12 col-xs-12 ">

<%---------------------------------------------------------- عکس -----------------------------------------------------------------------------%>
                                         <div class="well col-lg-6 col-md-6 col-sm-6 col-xs-12 diagnotic_background_color_blue">
                                           <img class="img-responsive profile_image" src="default/img/teenage4.jpg"/>

                                         </div>
<%---------------------------------------------------------- دکمه های تغییر عکس و مشخصات و پس زمینه ---------------------------------------%>
                                        <div class="well col-lg-6 col-md-6 col-sm-6 col-xs-12 put_in_center">
                                         <button type="button" class="active btn btn-info profile_font_Adobe_Arabic diagnotic_button" > <span class="glyphicon glyphicon-camera profile_glyphicon"></span> تغییر عکس پروفایل</button>
                                         <button  type="button"class="active btn btn-success profile_font_Adobe_Arabic diagnotic_button " > <span class="glyphicon glyphicon-picture profile_glyphicon"></span> تغییر عکس زمینه </button>
                                         <button  type="button" runat="server" onserverclick="diagnotic_change_ServerClick" class="active btn btn-warning profile_font_Adobe_Arabic diagnotic_button" > <span class="glyphicon glyphicon-edit profile_glyphicon"></span> تغییر مشخصات </button>
                                       </div>
                                     </div>
                             </div>
                        </asp:View>

<%----------------------------------------------------------  تغییر مشخصات  -------------------------------------------------------------------%>

                        <asp:View ID="View2" runat="server">
                            <div class="row">
<%---------------------------------------------------------- مشخصات -----------------------------------------------------------------------------%>
                                    <div class="well col-lg-8 col-md-7 col-sm-12 col-xs-12 ">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="profile_font_Adobe_Arabic2">
                                                <label class="profile_margin_updown font_color_blue">نام</label>
                                                <input  name="first_name" class="form-group profile_margin_side" required="required" />
                                            </div>

                                            <div class="profile_font_Adobe_Arabic2">
                                                <label class="profile_margin_updown font_color_blue" > نام خانوادگی</label>
                                                <input  name="lastname" class="form-group profile_margin_side " required="required" />
                                            </div>

                                            <div class="profile_font_Adobe_Arabic2">
                                                <label  class="profile_margin_updown font_color_blue"> نام کاربری </label>
                                                <input  name="username" class="form-group profile_margin_side"  required="required" />
                                            </div>

                                            <div class="profile_font_Adobe_Arabic2">
                                                <label class="profile_margin_updown font_color_blue" > پست الکترونیکی </label>
                                                <input  name="Email" class="form-group profile_margin_side"  required="required" />
                                            </div>

                                            <div class="profile_font_Adobe_Arabic2">
                                    <label class="profile_margin_updown font_color_blue" > تلفن همراه </label>
                                    <input  name="phone" class="form-group profile_margin_side"  required="required" />
                                </div>
                                       </div>

                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="profile_font_Adobe_Arabic2">
                                            <label  class="profile_margin_updown font_color_blue"> استان </label>
                                            <input  name="region" class="form-group profile_margin_side"  required="required" />
                                        </div>

                                        <div class="profile_font_Adobe_Arabic2">
                                            <label  class="profile_margin_updown font_color_blue"> شهر </label>
                                            <input  name="city" class="form-group profile_margin_side"  required="required" />
                                        </div>

                                        <div class="profile_font_Adobe_Arabic2">
                                            <label  class="profile_margin_updown font_color_blue"> جنسیت </label>
                                            <input  name="sexuality" class="form-group profile_margin_side"  required="required" />
                                        </div>

                                        <div class="profile_font_Adobe_Arabic2">
                                    <label  class="profile_margin_updown font_color_blue"> آدرس </label>
                                    <input  name="address" class="form-group profile_margin_side"  required="required" />
                                </div>
                                      </div>
                                    </div>

                                    <div class="well col-lg-8 col-md-7 col-sm-12 col-xs-12 ">

<%---------------------------------------------------------- عکس -----------------------------------------------------------------------------%>
                                         <div class="well col-lg-6 col-md-6 col-sm-6 col-xs-12 diagnotic_background_color_blue">
                                           <img class="img-responsive profile_image" src="default/img/teenage4.jpg"/>

                                         </div>

                                        <div class="well col-lg-6 col-md-6 col-sm-6 col-xs-12 put_in_center">
<%------------------------------------------------------- دکمه زخیره مشخصات ---------------------------------------------------------%>
                                             <button onclick="" type="submit" class="active btn btn-danger profile_font_Adobe_Arabic diagnotic_button" > <span class="glyphicon glyphicon-floppy-saved profile_glyphicon"></span> زخیره مشخصات </button>

<%------------------------------------------------- دکمه های تغییر عکس و مشخصات و پس زمینه , زخیره ---------------------%>

                                             <button type="button" class="active btn btn-info profile_font_Adobe_Arabic diagnotic_button" > <span class="glyphicon glyphicon-camera profile_glyphicon"></span> تغییر عکس پروفایل</button>
                                             <button  type="button"class="active btn btn-success profile_font_Adobe_Arabic diagnotic_button " > <span class="glyphicon glyphicon-picture profile_glyphicon"></span> تغییر عکس زمینه </button>
                                             <button  type="button" runat="server" onserverclick="diagnotic_change_ServerClick" class="active btn btn-warning profile_font_Adobe_Arabic diagnotic_button" > <span class="glyphicon glyphicon-edit profile_glyphicon"></span> تغییر مشخصات </button>


                                        </div>
                                     </div>
                             </div>
                        </asp:View>

<%---------------------------------------------------------- نمایش امنیت -------------------------------------------------------------------%>
                        <asp:View ID="View3" runat="server">
                            <div class="row">
                                <div class="well col-lg-8 col-md-7 col-sm-12 col-xs-12 ">
<%---------------------------------------------------------- نمایش نام کاربری و رمز عبور -------------------------------------------------------------------%>
                                    <div class="well col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                          <div class="profile_font_Adobe_Arabic2">
                                              <label class="profile_margin_updown font_color_blue">نام کاربری </label>
                                              <panel  name="username" class="form-group profile_margin_side">username</panel>
                                          </div>

                                          <div class="profile_font_Adobe_Arabic2">
                                             <label class="profile_margin_updown font_color_blue" > نوع کاربر </label>
                                             <panel  name="usertype" class="form-group profile_margin_side">usertype</panel>
                                         </div>
                                    </div>
<%---------------------------------------------------------- دکمه ی تغییر مشخصات نام کاربری و رمز عبور ----------------------------------------------------%>

                                    <div class="well col-lg-4 col-md-4 col-sm-4 col-xs-12 put_in_center">
                                        <button runat="server" onserverclick="change_security_ServerClick"  type="button" class="active btn btn-warning profile_font_Adobe_Arabic diagnotic_button" > <span class="glyphicon glyphicon-edit profile_glyphicon"></span>تغییر رمز عبور و نام کاربری </button>
                                    </div>

                                </div>

                            </div>

                        </asp:View>

<%---------------------------------------------------------- تغییر امنیت -------------------------------------------------------------------%>

                        <asp:View ID="View4" runat="server">
                            <div class="row">
                                <div class="well col-lg-8 col-md-7 col-sm-12 col-xs-12 ">
<%---------------------------------- نام کاربری جدید و رمز عبور جدید -------------------------------------------------------------------%>
                                    <div class="well col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                          <div class="profile_font_Adobe_Arabic2">
                                              <label class="profile_margin_updown font_color_blue"> نام کاربری قبلی </label>
                                              <input  name="old_username" class="form-group profile_margin_side" required="required"/>
                                          </div>

                                          <div class="profile_font_Adobe_Arabic2">
                                              <label class="profile_margin_updown font_color_blue"> نام کاربری جدید </label>
                                              <input  name="new_username" class="form-group profile_margin_side" required="required"/>
                                          </div>

                                          <div class="profile_font_Adobe_Arabic2">
                                             <label class="profile_margin_updown font_color_blue" > رمز عبور قبلی</label>
                                             <input  name="new_password" class="form-group profile_margin_side" required="required"/>
                                             <label class="font_color_blue"><input type="checkbox" value=""> نمایش </label>
                                         </div>

                                          <div class="profile_font_Adobe_Arabic2">
                                             <label class="profile_margin_updown font_color_blue" > رمز عبور جدید</label>
                                             <input  name="new_password" class="form-group profile_margin_side" required="required"/>
                                             <label class="font_color_blue"><input type="checkbox" value=""> نمایش </label>
                                         </div>

                                         <div class="profile_font_Adobe_Arabic2">
                                             <label class="profile_margin_updown font_color_blue" > تکرار رمز عبور جدید</label>
                                             <input  name="renew_password" class="form-group profile_margin_side" required="required"/>
                                             <label class="font_color_blue"><input type="checkbox" value=""> نمایش </label>
                                         </div>
                                    </div>
<%----------------  دکمه ی تغییر مشخصات نام کاربری و رمز عبور و دکمه ی زخیره سازی ----------------------------------------------------%>

                                    <div class="well col-lg-4 col-md-4 col-sm-4 col-xs-12 put_in_center">
                                        <button runat="server" onserverclick="change_security_ServerClick"  type="button" class="active btn btn-warning profile_font_Adobe_Arabic diagnotic_button" > <span class="glyphicon glyphicon-edit profile_glyphicon"></span>تغییر رمز عبور و نام کاربری </button>
                                        <button onclick="" type="submit" class="active btn btn-danger profile_font_Adobe_Arabic diagnotic_button" > <span class="glyphicon glyphicon-edit profile_glyphicon"></span> زخیره تغییرات </button>
                                  
                                          </div>

                                </div>

                            </div>
                        </asp:View>

                    </asp:MultiView>
        


                </ContentTemplate>
            </asp:UpdatePanel>

	</div>
    
    
</div>




<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content"><br/><br/>
            <div class="form-horizontal">
            <fieldset>
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="body">Body :</label>  
              <div class="col-md-8">
              <input id="body" name="body" type="text" placeholder="Message Body" class="form-control input-md"/>
                
              </div>
            </div>
            
            <!-- Textarea -->
            <div class="form-group">
              <label class="col-md-2 control-label" for="message">Message :</label>
              <div class="col-md-8">                     
                <textarea class="form-control" id="message" name="message"></textarea>
              </div>
            </div>
            
            <!-- Button -->
            <div class="form-group">
              <label class="col-md-2 control-label" for="send"></label>
              <div class="col-md-8">
                <button id="send" name="send" class="btn btn-primary">Send</button>
              </div>
            </div>
            
            </fieldset>
            </div>

    </div>
  </div>
</div>


    <script>
        $(function () {
            $('#myTab a:last').tab('show')
        })
    </script>
</asp:Content>

