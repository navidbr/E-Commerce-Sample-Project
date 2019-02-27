<%@ Page Title="" Language="C#" MasterPageFile="~/Header_MasterPage.master" AutoEventWireup="true" CodeFile="list_goods.aspx.cs" Inherits="list_goods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="default/css/list-goods_style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">

                <div class="well">
                    <h4>جستجو بین این محصولات</h4>
                    <div class="input-group">
                        <input type="text" class="form-control"/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                        </span>
                    </div>
                </div>

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            سازنده
                                        </div>
                                        <div class="panel-body">

                                            <div class="productFeaturesInnerDIV" id="ppBrand">
                                                <table id="ctl00_cphTop_chklistBrand" border="0">
			                                        <tbody><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_0" name="ctl00$cphTop$chklistBrand$0" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_0">اپل Apple</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_1" name="ctl00$cphTop$chklistBrand$1" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_1">اچ آی اس HIS</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_2" name="ctl00$cphTop$chklistBrand$2" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_2">اچ پی HP</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_3" name="ctl00$cphTop$chklistBrand$3" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_3">ال جی LG</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_4" name="ctl00$cphTop$chklistBrand$4" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_4">ام اس آی MSI</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_5" name="ctl00$cphTop$chklistBrand$5" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_5">ایسر Acer</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_6" name="ctl00$cphTop$chklistBrand$6" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_6">ایسوس Asus</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_7" name="ctl00$cphTop$chklistBrand$7" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_7">بنکیو BenQ</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_8" name="ctl00$cphTop$chklistBrand$8" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_8">پاکارد بل Packard Bell</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_9" name="ctl00$cphTop$chklistBrand$9" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_9">پرولینک PROLiNK</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_10" name="ctl00$cphTop$chklistBrand$10" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_10">توشیبا TOSHIBA</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_11" name="ctl00$cphTop$chklistBrand$11" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_11">دل Dell</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_12" name="ctl00$cphTop$chklistBrand$12" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_12">ریزر Razer</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_13" name="ctl00$cphTop$chklistBrand$13" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_13">سامسونگ SAMSUNG</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_14" name="ctl00$cphTop$chklistBrand$14" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_14">سوزوکی آی تی Suzuki</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_15" name="ctl00$cphTop$chklistBrand$15" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_15">سونی SONY</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_16" name="ctl00$cphTop$chklistBrand$16" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_16">فوجیتسو FUJITSU</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_17" name="ctl00$cphTop$chklistBrand$17" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_17">فوجیتسو زیمنس Fujitsu Siemens</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_18" name="ctl00$cphTop$chklistBrand$18" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_18">گیت وی Gateway</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_19" name="ctl00$cphTop$chklistBrand$19" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_19">گیگابایت Gigabyte</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_20" name="ctl00$cphTop$chklistBrand$20" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_20">لنوو Lenovo</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_21" name="ctl00$cphTop$chklistBrand$21" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_21">مایکروسافت Microsoft</label></td>
			                                        </tr><tr>
				                                        <td><input id="ctl00_cphTop_chklistBrand_22" name="ctl00$cphTop$chklistBrand$22" type="checkbox"/> <label for="ctl00_cphTop_chklistBrand_22">کامپک COMPAQ</label></td>
			                                        </tr>
		                                        </tbody></table>
                                            </div>

                                        </div>
                                    </div>








                <%--<div id="ctl00_cphTop_pProject1" class="modal-body">--%>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">میانگین قیمت (ریال)</div>
                                    <div class="panel-body">
                                        <div class="productFeaturesInnerDIV" id="ppPrice">
                                            <table id="ctl00_cphTop_chklistPriceBound" border="0">
			                                    <tbody><tr>
				                                    <td><input id="ctl00_cphTop_chklistPriceBound_0" name="ctl00$cphTop$chklistPriceBound$0" type="checkbox"/> <label for="ctl00_cphTop_chklistPriceBound_0">کمتر از 12,000,000</label></td>
			                                    </tr><tr>
				                                    <td><input id="ctl00_cphTop_chklistPriceBound_1" name="ctl00$cphTop$chklistPriceBound$1" type="checkbox"/> <label for="ctl00_cphTop_chklistPriceBound_1">12,000,000 تا 15,000,000</label></td>
			                                    </tr><tr>
				                                    <td><input id="ctl00_cphTop_chklistPriceBound_2" name="ctl00$cphTop$chklistPriceBound$2" type="checkbox"/> <label for="ctl00_cphTop_chklistPriceBound_2">15,000,000 تا 20,000,000</label></td>
			                                    </tr><tr>
				                                    <td><input id="ctl00_cphTop_chklistPriceBound_3" name="ctl00$cphTop$chklistPriceBound$3" type="checkbox"/> <label for="ctl00_cphTop_chklistPriceBound_3">20,000,000 تا 26,000,000</label></td>
			                                    </tr><tr>
				                                    <td><input id="ctl00_cphTop_chklistPriceBound_4" name="ctl00$cphTop$chklistPriceBound$4" type="checkbox"/> <label for="ctl00_cphTop_chklistPriceBound_4">بیشتر از 26,000,000</label></td>
			                                    </tr>
		                                    </tbody></table>
                                        </div>
                                    </div>
                                </div>
                            <%--</div>--%>

                <div class="panel panel-default">
				<div class="panel-heading">
					Memory Capacity - Gb
				</div><div class="panel-body">
					<div id="ctl00_cphTop_pc132" class="productFeaturesInnerDIV">
						<table id="ctl00_cphTop_chklist_132" border="0">
							<tbody><tr>
								<td><input id="ctl00_cphTop_chklist_132_0" name="ctl00$cphTop$chklist_132$0" type="checkbox"/> <label for="ctl00_cphTop_chklist_132_0">4</label></td>
							</tr><tr>
								<td><input id="ctl00_cphTop_chklist_132_1" name="ctl00$cphTop$chklist_132$1" type="checkbox"/> <label for="ctl00_cphTop_chklist_132_1">6</label></td>
							</tr><tr>
								<td><input id="ctl00_cphTop_chklist_132_2" name="ctl00$cphTop$chklist_132$2" type="checkbox"/> <label for="ctl00_cphTop_chklist_132_2">8</label></td>
							</tr><tr>
								<td><input id="ctl00_cphTop_chklist_132_3" name="ctl00$cphTop$chklist_132$3" type="checkbox"/> <label for="ctl00_cphTop_chklist_132_3">12</label></td>
							</tr><tr>
								<td><input id="ctl00_cphTop_chklist_132_4" name="ctl00$cphTop$chklist_132$4" type="checkbox"/> <label for="ctl00_cphTop_chklist_132_4">16</label></td>
							</tr><tr>
								<td><input id="ctl00_cphTop_chklist_132_5" name="ctl00$cphTop$chklist_132$5" type="checkbox"/> <label for="ctl00_cphTop_chklist_132_5">24</label></td>
							</tr><tr>
								<td><input id="ctl00_cphTop_chklist_132_6" name="ctl00$cphTop$chklist_132$6" type="checkbox"/> <label for="ctl00_cphTop_chklist_132_6">32</label></td>
							</tr>
						</tbody></table>
					</div>
				</div>
			</div>











            </div>
            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                <div class="row">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="thumbnail">
                                    <img  src="<%# Eval("Picture_Url") %>" alt=""/>
                                    <div class="caption">
                                        
                                        <h4><a runat="server" onserverclick="product_serverclick"  product_id='<%# Eval("Product_ID") %>'><%# Eval("Name") %></a>
                                        </h4>
                                        <h5><%# Eval("Exist") %></h5>
                                        <p> تاریخ ثبت آگهی : <%# Eval("Product_Insert_Date") %> </p>
                                    </div>
                                    <div class="ratings">
                                        <p class="pull-right"> <%# " " +Eval("Review_Count")+ " دیدگاه " %>     </p>
                                        <p class="pull-left">$<%# Eval("Price") %></p>
                                        <p class="text-center"> 

                                            <%# (Convert.ToInt32(Eval("Product_Score").ToString()) == 0)? "تا کنون امتیازی داده نشده است":"" %>
                                            <%# (Convert.ToInt32(Eval("Product_Score").ToString()) >= 1)? "<span class="+'"'+"glyphicon glyphicon-star"+'"'+"></span>":"" %>
                                            <%# (Convert.ToInt32(Eval("Product_Score").ToString()) >= 2)? "<span class="+'"'+"glyphicon glyphicon-star"+'"'+"></span>":"" %>
                                            <%# (Convert.ToInt32(Eval("Product_Score").ToString()) >= 3)? "<span class="+'"'+"glyphicon glyphicon-star"+'"'+"></span>":"" %>
                                            <%# (Convert.ToInt32(Eval("Product_Score").ToString()) >= 4)? "<span class="+'"'+"glyphicon glyphicon-star"+'"'+"></span>":"" %>
                                            <%# (Convert.ToInt32(Eval("Product_Score").ToString()) >= 5)? "<span class="+'"'+"glyphicon glyphicon-star"+'"'+"></span>":"" %>
                                            
                                        </p>
                                        
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

