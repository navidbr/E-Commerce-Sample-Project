<%@ Page Title="" Language="C#" MasterPageFile="~/Header_MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	 <link rel="stylesheet" href="default/css/mainpage_style.css"/>

</asp:Content>
<asp:Content ID="Content2" runat="Server" ContentPlaceHolderID="ContentPlaceHolder1">
	<div class="container well">
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
            <%-------------------------------------------------------  سطر اول گوشی و موبایل ----------------------------------------------------------------------------------------------%>
       
         <div class="row row_background_home">

               <div class="home_document">
                <h1 class="top_font_padding"> الکترونیکی و برقی </h1>
               </div>

<%------------------------------------------------------- لپ تاب  ---------------------------------------------------------------%>
              
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                           <div class="mainpage_firstline_set">
                                <div id="labtop" class="carousel slide" data-ride="carousel">
                              <!-- Indicators -->
                              <ol class="carousel-indicators">
                                <li data-target="#labtop" data-slide-to="0" class="active"></li>
                                <li data-target="#labtop" data-slide-to="1"></li>
                                <li data-target="#labtop" data-slide-to="2"></li>
                                <li data-target="#labtop" data-slide-to="3"></li>
                                <li data-target="#labtop" data-slide-to="4"></li>
                                <li data-target="#labtop" data-slide-to="5"></li>
                              </ol>

                              <!-- Wrapper for slides -->
                              <div class="carousel-inner" role="listbox">

                                <div class="item active">
                                  <img src="default/img/labtop1.jpg" alt="labtop1"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>

                                <div class="item">
                                  <img src="default/img/labtop2.jpg" alt="labtop2"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>

                                <div class="item">
                                  <img src="default/img/labtop3.jpg" alt="labtop3"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>

                                <div class="item">
                                  <img src="default/img/labtop4.jpg" alt="labtop4"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>

                                <div class="item">
                                  <img src="default/img/labtop5.jpg" alt="labtop5"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>


                              </div>

                              <!-- Controls -->
                              <a class="left carousel-control" href="#labtop" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_electronic" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="right carousel-control" href="#labtop" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_electronic" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                              </a>
                            </div>
                           </div> 
                   </div>

<%------------------------------------------------------- موبایل -------------------------------------------------------------------------%>
               <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                       <div class="mainpage_firstline_set">
                         <div id="mobile" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#mobile" data-slide-to="0" class="active"></li>
                            <li data-target="#mobile" data-slide-to="1"></li>
                            <li data-target="#mobile" data-slide-to="2"></li>
                            <li data-target="#mobile" data-slide-to="3"></li>
                            <li data-target="#mobile" data-slide-to="4"></li>
                            <li data-target="#mobile" data-slide-to="5"></li>
                          </ol>

                          <!-- Wrapper for slides -->
                          <div class="carousel-inner" role="listbox">

                            <div class="item active">
                              <img src="default/img/mobile1.jpg" alt="mobile1"/>
                              <div class="carousel-caption">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/mobile2.jpg" alt="mobile2"/>
                              <div class="carousel-caption">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/mobile3.jpg" alt="mobile3"/>
                              <div class="carousel-caption">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/mobile4.jpg" alt="mobile4"/>
                              <div class="carousel-caption">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/mobile5.jpg" alt="mobile5"/>
                              <div class="carousel-caption">
                              </div>
                            </div>


                          </div>

                          <!-- Controls -->
                          <a class="left carousel-control" href="#mobile" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_electronic" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#mobile" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_electronic" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                       </div>
                   </div>

<%------------------------------------------------------- لوزم خانگی --------------------------------------------------------------------%>
               <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                       <div class="mainpage_firstline_set">
                         <div id="kitchen" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#kitchen" data-slide-to="0" class="active"></li>
                            <li data-target="#kitchen" data-slide-to="1"></li>
                            <li data-target="#kitchen" data-slide-to="2"></li>
                            <li data-target="#kitchen" data-slide-to="3"></li>
                            <li data-target="#kitchen" data-slide-to="4"></li>
                            <li data-target="#kitchen" data-slide-to="5"></li>
                          </ol>

                          <!-- Wrapper for slides -->
                          <div class="carousel-inner" role="listbox">

                            <div class="item active">
                              <img src="default/img/kitchen1.jpg" alt="kitchen1"/>
                              <div class="carousel-caption">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/kitchen2.jpg" alt="kitchen2"/>
                              <div class="carousel-caption">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/kitchen3.jpg" alt="kitchen3"/>
                              <div class="carousel-caption">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/kitchen4.jpg" alt="kitchen4"/>
                              <div class="carousel-caption">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/kitchen5.jpg" alt="kitchen5"/>
                              <div class="carousel-caption">
                              </div>
                            </div>


                          </div>

                          <!-- Controls -->
                          <a class="left carousel-control" href="#kitchen" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_electronic" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#kitchen" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_electronic" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                       </div>
                   </div>

        </div>

<%-------------------------------------------------------     سطر دوم عکس  3تایی لوازم التحریر ، وسایل ورزشی وکتاب  -----------------------------------------------------------------------------------------%>
                <div class="row row_background_learn post-slide">
                    <div class="learn_document">
                      <h1 class="top_font_padding"> آموزشی </h1>
                    </div>   
                       

                     <div class="mainpage_firstline_set">
                         <img class="img-rounded thumbnail col-lg-4 col-md-4 col-sm-4 col-xs-12" src="default/img/book1.jpg" alt="main_picture_1" />
                     </div>
                     <div class="mainpage_firstline_set ">
                         <img class="img-rounded thumbnail col-lg-4 col-md-4 col-sm-4 col-xs-12 " src="default/img/software1.jpg" alt="main_picture_1" />
                     </div>
                     <div class="mainpage_firstline_set ">
                           <img class="img-rounded thumbnail col-lg-4 col-md-4 col-sm-4 col-xs-12 " src="default/img/stationery1.jpg" alt="main_picture_1" />
                     </div>


                </div>

<%--------------------------------------------------------------- سطر سوم لباس جوان و بزرگسال --------------------------------------------------------------------------------------------------%>

         <div class="row row_background_clothe">
                <div class="clothe_document">
                <h1 class="top_font_padding"> پوشاک </h1>
               </div>

<%--------------------------------------------------------- پوشاک بزرگسال ----------------------------------------------------------%>

               <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                   <div class="mainpage_firstline_set">
                        <div id="adult_clothe" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                        <li data-target="#adult_clothe" data-slide-to="0" class="active"></li>
                        <li data-target="#adult_clothe" data-slide-to="1"></li>
                        <li data-target="#adult_clothe" data-slide-to="2"></li>
                        <li data-target="#adult_clothe" data-slide-to="3"></li>
                        <li data-target="#adult_clothe" data-slide-to="4"></li>
                        <li data-target="#adult_clothe" data-slide-to="5"></li>
                      </ol>

                      <!-- Wrapper for slides -->
                      <div class="carousel-inner" role="listbox">

                        <div class="item active">
                          <img src="default/img/adult1.jpg" alt="adult_clothe1"/>
                          <div class="carousel-caption">
                          </div>
                        </div>

                        <div class="item">
                          <img src="default/img/adult2.jpg" alt="adult_clothe2"/>
                          <div class="carousel-caption">
                          </div>
                        </div>

                        <div class="item">
                          <img src="default/img/adult3.jpg" alt="adult_clothe3"/>
                          <div class="carousel-caption">
                          </div>
                        </div>

                        <div class="item">
                          <img src="default/img/adult4.jpg" alt="adult_clothe4"/>
                          <div class="carousel-caption">
                          </div>
                        </div>

                        <div class="item">
                          <img src="default/img/adult5.jpg" alt="adult_clothe5"/>
                          <div class="carousel-caption">
                          </div>
                        </div>


                      </div>

                      <!-- Controls -->
                      <a class="left carousel-control" href="#adult_clothe" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_clothe" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#adult_clothe" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_clothe" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
                   </div>        
               </div>

<%------------------------------------------------------------- پوشاک کودک ---------------------------------------------------------%>
               <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                   <div class="mainpage_firstline_set">
                        <div id="teenage_clothe" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                        <li data-target="#teenage_clothe" data-slide-to="0" class="active"></li>
                        <li data-target="#teenage_clothe" data-slide-to="1"></li>
                        <li data-target="#teenage_clothe" data-slide-to="2"></li>
                        <li data-target="#teenage_clothe" data-slide-to="3"></li>
                        <li data-target="#teenage_clothe" data-slide-to="4"></li>
                        <li data-target="#teenage_clothe" data-slide-to="5"></li>
                      </ol>

                      <!-- Wrapper for slides -->
                      <div class="carousel-inner " role="listbox">

                        <div class="item active ">
                          <img src="default/img/teenage1.jpg" alt="teenage_clothe1"/>
                          <div class="carousel-caption">
                          </div>
                        </div>

                        <div class="item">
                          <img src="default/img/teenage2.jpg" alt="teenage_clothe2"/>
                          <div class="carousel-caption">
                          </div>
                        </div>

                        <div class="item">
                          <img src="default/img/teenage3.jpg" alt="teenage_clothe3"/>
                          <div class="carousel-caption">
                          </div>
                        </div>

                        <div class="item">
                          <img src="default/img/teenage4.jpg" alt="teenage_clothe4"/>
                          <div class="carousel-caption">
                          </div>
                        </div>

                        <div class="item">
                          <img src="default/img/teenage5.jpg" alt="teenage_clothe5"/>
                          <div class="carousel-caption">
                          </div>
                        </div>


                      </div>

                      <!-- Controls -->
                      <a class="left carousel-control" href="#teenage_clothe" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_clothe" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#teenage_clothe" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_clothe" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
                   </div>        
               </div>
            </div>

<%--------------------------------------------------------------سطر چهارم سیسمونی کودک و لباس کودک   ------------------------------------------------------------------------------------------%>
        
         <div class="row row_background_sismoni">

               <div class="sismoni_document">
                <h1 class="top_font_padding"> سیسمونی کودک </h1>
               </div>

<%------------------------------------------------------- لباس کودک ----------------------------------------------------------------%>
               
             <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                           <div class="mainpage_firstline_set">
                                <div id="child_clothe" class="carousel slide" data-ride="carousel">
                              <!-- Indicators -->
                              <ol class="carousel-indicators">
                                <li data-target="#child_clothe" data-slide-to="0" class="active"></li>
                                <li data-target="#child_clothe" data-slide-to="1"></li>
                                <li data-target="#child_clothe" data-slide-to="2"></li>
                                <li data-target="#child_clothe" data-slide-to="3"></li>
                                <li data-target="#child_clothe" data-slide-to="4"></li>
                                <li data-target="#child_clothe" data-slide-to="5"></li>
                              </ol>

                              <!-- Wrapper for slides -->
                              <div class="carousel-inner" role="listbox">

                                <div class="item active">
                                  <img src="default/img/child1.jpg" alt="child_clothe1"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>

                                <div class="item">
                                  <img src="default/img/child2.jpg" alt="child_clothe2"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>

                                <div class="item">
                                  <img src="default/img/child3.jpg" alt="child_clothe3"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>

                                <div class="item">
                                  <img src="default/img/child4.jpg" alt="child_clothe4"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>

                                <div class="item">
                                  <img src="default/img/child5.jpg" alt="child_clothe5"/>
                                  <div class="carousel-caption">
                                  </div>
                                </div>


                              </div>

                              <!-- Controls -->
                              <a class="left carousel-control" href="#child_clothe" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_sismoni" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="right carousel-control" href="#child_clothe" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_sismoni" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                              </a>
                            </div>
                           </div> 
                   </div>

<%------------------------------------------------------- سیسمونی کودک -------------------------------------------------------------%>
              
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                       <div class="mainpage_firstline_set">
                         <div id="sismoni" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#sismoni" data-slide-to="0" class="active"></li>
                            <li data-target="#sismoni" data-slide-to="1"></li>
                            <li data-target="#sismoni" data-slide-to="2"></li>
                            <li data-target="#sismoni" data-slide-to="3"></li>
                            <li data-target="#sismoni" data-slide-to="4"></li>
                            <li data-target="#sismoni" data-slide-to="5"></li>
                          </ol>

                          <!-- Wrapper for slides -->
                          <div class="carousel-inner" role="listbox">

                            <div class="item active">
                              <img src="default/img/sismoni1.jpg"  alt="sismoni1"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/sismoni2.jpg" alt="sismoni2"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/sismoni3.jpg" alt="sismoni3"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/sismoni4.jpg" alt="sismoni4"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/sismoni5.jpg" alt="sismoni5"/>
                              <div class="carousel-inner">
                              </div>
                            </div>


                          </div>

                          <!-- Controls -->
                          <a class="left carousel-control" href="#sismoni" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_sismoni" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#sismoni" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_sismoni" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                       </div>
               </div>

        </div>

<%--------------------------------------------------------------------سطر پنجم  مبلمان---------------------------------------------------------------------------------%>
                <div class="row row_background_furniture">

                    <div class="furniture_document">
                      <h1 class="top_font_padding"> مبلمان </h1>
                   </div>

                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                       <div class="mainpage_firstline_set">
                         <div id="furniture" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#furniture" data-slide-to="0" class="active"></li>
                            <li data-target="#furniture" data-slide-to="1"></li>
                            <li data-target="#furniture" data-slide-to="2"></li>
                            <li data-target="#furniture" data-slide-to="3"></li>
                            <li data-target="#furniture" data-slide-to="4"></li>
                            <li data-target="#furniture" data-slide-to="5"></li>
                          </ol>

                          <!-- Wrapper for slides -->
                          <div class="carousel-inner" role="listbox">

                            <div class="item active">
                              <img src="default/img/furniture1.jpg"  alt="furniture1"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/furniture2.jpg" alt="furniture2"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/furniture3.jpg" alt="furniture3"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/furniture4.jpg" alt="furniture4"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/furniture5.jpg" alt="furniture5"/>
                              <div class="carousel-inner">
                              </div>
                            </div>


                          </div>

                          <!-- Controls -->
                          <a class="left carousel-control" href="#furniture" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_furniture" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#furniture" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_furniture" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                       </div>
                  </div>
                </div> 


<%--------------------------------------------------------------------سطر پنجم  ماشین ---------------------------------------------------------------------------------%>
         <div class="row row_background_car">

                    <div class="car_document">
                      <h1 class="top_font_padding"> خودرو </h1>
                   </div>

                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                       <div class="mainpage_firstline_set">
                         <div id="car" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#car" data-slide-to="0" class="active"></li>
                            <li data-target="#car" data-slide-to="1"></li>
                            <li data-target="#car" data-slide-to="2"></li>
                            <li data-target="#car" data-slide-to="3"></li>
                            <li data-target="#car" data-slide-to="4"></li>
                            <li data-target="#car" data-slide-to="5"></li>
                          </ol>

                          <!-- Wrapper for slides -->
                          <div class="carousel-inner" role="listbox">

                            <div class="item active">
                              <img src="default/img/car1.jpg"  alt="car1"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/car2.jpg" alt="car2"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/car3.jpg" alt="car3"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/car4.jpg" alt="car4"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/car5.jpg" alt="car5"/>
                              <div class="carousel-inner">
                              </div>
                            </div>


                          </div>

                          <!-- Controls -->
                          <a class="left carousel-control" href="#car" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_car" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#car" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_car" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                       </div>
                  </div>
                </div> 


<%--------------------------------------------------------------------  سطر پنجم  جواهرات و عتیقه جات و لوازم لوکس  ---------------------------------------------------------------------------------%>

                <div class="row row_background_lux">

                     <div class="lux_document">
                      <h1 class="top_font_padding"> لوازم لوکس </h1>
                   </div>

                     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                       <div class="mainpage_firstline_set">
                         <div id="antique" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#antique" data-slide-to="0" class="active"></li>
                            <li data-target="#antique" data-slide-to="1"></li>
                            <li data-target="#antique" data-slide-to="2"></li>
                            <li data-target="#antique" data-slide-to="3"></li>
                            <li data-target="#antique" data-slide-to="4"></li>
                            <li data-target="#antique" data-slide-to="5"></li>
                          </ol>

                          <!-- Wrapper for slides -->
                          <div class="carousel-inner" role="listbox">

                            <div class="item active">
                              <img src="default/img/antique1.jpg"  alt="antique1"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/antique2.jpg" alt="antique2"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/antique3.jpg" alt="antique3"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/antique4.jpg" alt="antique4"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/antique5.jpg" alt="antique5"/>
                              <div class="carousel-inner">
                              </div>
                            </div>


                          </div>

                          <!-- Controls -->
                          <a class="left carousel-control" href="#antique" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_lux" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#antique" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_lux" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                       </div>
                  </div>

                     <div class="mainpage_firstline_set post-slide pic">
                         <img class=" img-rounded thumbnail col-lg-4 col-md-4 col-sm-4 col-xs-12" src="default/img/luxe1.jpg" alt="main_picture_1" />
                     </div>

                     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                       <div class="mainpage_firstline_set">
                         <div id="jewelry" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#jewelry" data-slide-to="0" class="active"></li>
                            <li data-target="#jewelry" data-slide-to="1"></li>
                            <li data-target="#jewelry" data-slide-to="2"></li>
                            <li data-target="#jewelry" data-slide-to="3"></li>
                            <li data-target="#jewelry" data-slide-to="4"></li>
                            <li data-target="#jewelry" data-slide-to="5"></li>
                          </ol>

                          <!-- Wrapper for slides -->
                          <div class="carousel-inner" role="listbox">

                            <div class="item active">
                              <img src="default/img/jewelry1.jpg"  alt="jewelry1"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/jewelry2.jpg" alt="jewelry2"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/jewelry3.jpg" alt="jewelry3"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/jewelry4.jpg" alt="jewelry4"/>
                              <div class="carousel-inner">
                              </div>
                            </div>

                            <div class="item">
                              <img src="default/img/jewelry5.jpg" alt="jewelry5"/>
                              <div class="carousel-inner">
                              </div>
                            </div>


                          </div>

                          <!-- Controls -->
                          <a class="left carousel-control" href="#jewelry" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left glyphicon-chevron_color_lux" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#jewelry" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right glyphicon-chevron_color_lux" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                       </div>
                  </div>

                </div> 

<%---------------------------------------------  عکس میانی سوم عکس دوربین ---------------------------------------------------------------%>
            <div class="row row_background_camera">    
                 
                <div class="mainpage_firstline_set">
                <img class="img-rounded thumbnail  col-lg-12 col-md-12 col-sm-12 col-xs-12" src="default/img/camera1.jpg" alt="main_picture_2" />
               </div>

             </div>
        </div>

<%--------------------------------------------------------------------- لگوی سمت چپ سایت -------------------------------------------------------%>

        <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
            <div class="icon_user_signup signup_first_picture">
                <span class="login_icon"></span>
                <h1 class="mainpage_font_Gill_Sans"      style="text-shadow: 2px 2px 2px #00989e;"   > P O S </h1>
                <h2 class="mainpage_font_Gill_Sans" style="text-emphasis-color:azure"> Persian Offer Shop </h2>
                <h3 class="mainpage_font_Bkoodak">فروشگاهی برای بهترین ها</h3>
            </div> 
        </div>



        </div>
</asp:Content>

