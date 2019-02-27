<%@ Page Title="" Language="C#" MasterPageFile="~/Header_MasterPage.master" AutoEventWireup="true" CodeFile="sign_up.aspx.cs" Inherits="sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="default/css/signup_style.css"/>
    <script src="default/js/bootstrapvalidator.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



                <div class="container well">  
                    <div class=" col-lg-9 col-md-9 col-sm-12 col-xs-12">
                    <div class="well form-horizontal"  id="contact_form">
                         <div class="signup_background_color">
                <fieldset>

                <!-- Form Name -->

                <legend class="put_in_center"><span class="glyphicon glyphicon-cloud  signup_cloud_set" aria-hidden="true"></span> حساب کاربری خود را بسازید </legend>

                <!-- نام -->

                <div class="signup_input_margin">
                    <div class="form-group">
                      <label class="col-md-2 control-label font_Bkoodak" > نام </label>  
                      <div class="col-md-6 inputGroupContainer">
                      <div class="input-group">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      <input id="txt_first_name" name="first_name" placeholder=" نام " class="form-control font_Comic" runat="server" type="text" required="required"/>
                        </div>
                      </div>
                    </div>
                </div>

                <!-- نام خانوادگی -->
                
               <div class="signup_input_margin">
                <div class="form-group">
                  <label class="col-md-2 control-label font_Georgia" > نام خانوادگی </label> 
                    <div class="col-md-6 inputGroupContainer">
                    <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                  <input name="last_name" placeholder=" نام خانوادگی " class="form-control font_Comic" id="txt_last_name" runat="server" type="text"/>
                    </div>
                  </div>
                </div>
               </div>


                <!-- پست الکترونیکی -->
                    <div class="signup_input_margin">
                    <div class="form-group">
                      <label class="col-md-2 control-label font_Georgia"> پست الکترونیکی </label>  
                        <div class="col-md-6 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                      <input name="email" placeholder=" آدرس پست الکترونیکی " class="form-control font_Comic" id="txt_email" runat="server" type="text"/>
                        </div>
                      </div>
                    </div>                   
                    </div>



                <!-- تلفن همراه -->
                <div class="signup_input_margin">
                    <div class="form-group">
                      <label class="col-md-2 control-label font_Georgia"> تلفن همراه </label>  
                        <div class="col-md-6 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                      <input name="phone" placeholder="9xxxxxxxx" class="form-control font_Comic" type="text" id="txt_phone" runat="server"/>
                        </div>
                      </div>
                    </div>
                </div>


                <!-- آدرس -->
                <div class="signup_input_margin">
                    <div class="form-group">
                      <label class="col-md-2 control-label font_Georgia"> آدرس </label>  
                        <div class="col-md-6 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                      <input name="address" placeholder=" آدرس " class="form-control font_Comic" type="text" id="txt_address" runat="server"/>
                        </div>
                      </div>
                    </div>
                </div>    



                <!-- استان  -->
                <div class="signup_input_margin">
                    <div class="form-group"> 
                      <label class="col-md-2 control-label font_Georgia"> استان </label>
                        <div class="col-md-6 selectContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                        <select name="state" class="form-control selectpicker font_Comic" id="sel_state" runat="server">
                          <option> لطفا استان خود را انتخاب کنید</option>
                          <option> آذربایجن غربی </option>
                          <option> آذربایجن شرقی </option>
                        </select>
                      </div>
                    </div>
                    </div>
                </div> 

                
                 <!-- شهر  -->
                <div class="signup_input_margin">
                    <div class="form-group">
                      <label class="col-md-2 control-label font_Georgia"> شهر </label>  
                        <div class="col-md-6 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                        <select name="city" class="form-control selectpicker font_Comic" id="sel_city" runat="server">
                          <option value=" " > لطفا شهر خود را انتخاب کنید</option>
                          <option> ارومیه </option>
                          <option> تبریز </option>
                        </select>
                        </div>
                      </div>
                    </div>
                </div>


                <!-- نوع ثبت نام -->
                <div class="signup_input_margin">
                    <div class="form-group">
                      <label class="col-md-2 control-label font_Georgia"> نوع ثبت نام </label>  
                        <div class="col-md-6 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-wrench"></i></span>
                        <select name="signuptype" class="form-control selectpicker font_Comic" id="sel_sign_up_type" runat="server">
                          <option value=" " > لطفا نوع ثبت نام خود را انتخاب کنید</option>
                          <option> کاربر </option>
                          <option> فروشنده </option>
                        </select>
                        </div>
                      </div>
                    </div>
                </div>


                <!-- آدرس فروشگاه -->
                <div class="signup_input_margin">
                    <div class="form-group">
                      <label class="col-md-2 control-label font_Georgia"> آدرس فروشگاه </label>  
                        <div class="col-md-6 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                      <input name="address" placeholder=" آدرس فروشگاه " class="form-control font_Comic" type="text" id="txt_store_address" runat="server"/>
                        </div>
                    </div>
                    </div>
                </div>


                <!-- نام فروشگاه -->
                <div class="signup_input_margin">
                    <div class="form-group">
                      <label class="col-md-2 control-label font_Georgia"> نام فروشگاه </label>  
                        <div class="col-md-6 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-fire"></i></span>
                      <input name="store_name" placeholder=" نام فروشگاه " class="form-control font_Comic" type="text" id="txt_store_name" runat="server"/>
                        </div>
                    </div>
                    </div>
                </div>


                <!-- جنسیت -->
                    <div class="signup_input_margin">
                     <div class="form-group form-inline">
                         <label class="col-md-2 control-label font_Georgia"> جنسیت </label>
                            <div class="col-md-6">
                             <div class="radio">
                          <label>
                          <input class="radio_checkbox_margin font_Comic" type="radio" name="hosting" value="man" id="chb_man" runat="server"/> مرد 
                          </label>
                             </div>
                             <div class="radio">
                                 <label>
                                    <input class="radio_checkbox_margin font_Comic" type="radio" name="hosting" value="woman" id="chb_woman" runat="server"/> زن 
                                  </label>
                             </div>
                           </div>
                      </div>
                    </div>


                <!-- توضیحات اضافی  -->
                <div class="signup_input_margin">
                    <div class="form-group">
                        <label class="col-md-2 control-label font_Georgia"> توضیحات اضافی </label>
                            <div class="col-md-6 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        	                            <textarea class="form-control font_Comic" name="comment" placeholder=" توضیحات خودرا وارد کنید" id="txt_describe" runat="server"></textarea>
                                </div>
                            </div>
                    </div>
                </div>


                <!-- پیام اعلام ثبت نام موفق -->
                <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up "></i> باتشکر از ثبت نام شما </div>

                <!-- کلید ثبت نام -->
                <div class="form-group">
                  <label class="col-md-4 control-label"></label>
                  <div class="col-md-4">
                    <button onclick="" type="submit" class="btn btn-warning font_Comic" id="btn_submit" runat="server" onserverclick="btn_submit_ServerClick"> ثبت نام <span class="glyphicon glyphicon-send"></span></button>
                  </div>
                </div>

                </fieldset>
                  </div>
                   </div>
                    </div>
                    <div class=" col-lg-3 col-md-3 hidden-sm hidden-xs">
                        <div class="icon_user_signup signup_first_picture">
                          <span class="login_icon"></span>
                          <h1> OfferEshop </h1>
                        </div> 
                    </div>

                    
                    
               </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#contact_form').bootstrapValidator({
                // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    first_name: {
                        validators: {
                            stringLength: {
                                min: 2,
                            },
                            notEmpty: {
                                message: 'لطفا نام خود را وارد کنید '
                            }
                        }
                    },
                    last_name: {
                        validators: {
                            stringLength: {
                                min: 2,
                            },
                            notEmpty: {
                                message: 'لطفا نام خانوادگی خود را وارد کنید'
                            }
                        }
                    },
                    email: {
                        validators: {
                            notEmpty: {
                                message: 'لطفا پست الکترونیکی خود را وارد کنید'
                            },
                            emailAddress: {
                                message: 'لطفا پست الکترونیکی معتبر وارد کنید '
                            }
                        }
                    },
                    phone: {
                        validators: {
                            notEmpty: {
                                message: ' لطفا شماره ی تلفن همراه خود را وارد کنید'
                            },
                            phone: {
                                message: 'لطفا شماره ی همراه خود را بدون 0(کد ایران) یا کد کشور های دیگر وارد کنید'
                            }
                        }
                    },
                    address: {
                        validators: {
                            stringLength: {
                                min: 8,
                            },
                            notEmpty: {
                                message: ' لطفا آدرس خود را وارد کنید'
                            }
                        }
                    },
                    city: {
                        validators: {
                            notEmpty: {
                                message: 'لطفا شهر خود را وارد کنید'
                            }
                        }
                    },
                    state: {
                        validators: {
                            notEmpty: {
                                message: 'لطفا استان خود را وارد کنید'
                            }
                        }
                    },
                    signuptype: {
                        validators: {
                            notEmpty: {
                                message: ' لطفا نوع ثبت نام را مشخص کنید '
                            }
                        }
                    },
                    store_name: {
                        validators: {
                            stringLength: {
                                min: 2,
                            },
                            notEmpty: {
                                message: 'نام خود را وارد کنید '
                            }
                        }
                    },
                    //comment: {
                    //    validators: {
                    //        stringLength: {
                    //            min: 10,
                    //            max: 200,
                    //            message: ' لطفا درصورت نیاز به ثبت حداقل 10 کاراکتر و حداکثر 200 کاراکتر وارد نمایید '
                    //        },
                    //        notEmpty: {
                    //            message: 'Please supply a description of your project'
                    //        }
                    //    }
                    //}
                }
            })
                .on('success.form.bv', function (e) {
                    $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                    $('#contact_form').data('bootstrapValidator').resetForm();

                    // Prevent form submission
                    e.preventDefault();

                    // Get the form instance
                    var $form = $(e.target);

                    // Get the BootstrapValidator instance
                    var bv = $form.data('bootstrapValidator');

                    // Use Ajax to submit form data
                    $.post($form.attr('action'), $form.serialize(), function (result) {
                        console.log(result);
                    }, 'json');
                });
        });
        function openfunction(){
            get
        }

    </script>
</asp:Content>


