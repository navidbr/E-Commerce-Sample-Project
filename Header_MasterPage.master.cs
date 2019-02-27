using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Web.UI.HtmlControls;

public partial class Header_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        #region read main menu from DB and set it

        DataSet ds_main_menu = new DataSet();
        SqlDataAdapter da_main_menu = new SqlDataAdapter();

        SqlCommand command = new SqlCommand();
        command.CommandText = "SELECT Menu_ID, Menu_Name, Page_Address FROM Menu where Menu_Type='main_menu' and  Enable_Show='show' ORDER BY Priority";
        command.Connection = SQLConnection_Class.sqlconn; 
        ds_main_menu.Clear();
        da_main_menu.SelectCommand = command;
        da_main_menu.Fill(ds_main_menu);
        foreach(DataRow dr in ds_main_menu.Tables[0].Rows)
        {
            HtmlGenericControl li = new HtmlGenericControl("li");
            HtmlAnchor a = new HtmlAnchor();
            a.InnerHtml = dr["Menu_Name"].ToString();
            a.Attributes.Add("role", "button");
            //a.ServerClick += main_menu_click;
            a.Attributes.Add("href", dr["Page_Address"].ToString());
            li.Controls.Add(a);
            main_menu_ul.Controls.Add(li);
        }

        #endregion
    }



    protected void search_click(object sender, EventArgs e)
    {
        string search_about = search_about_dropdown.Value.ToString();
        if(search_about == "فروشگاه")
        {
            Response.Redirect("~/find_shop.aspx?shop_name=" + txt_header_search.Value.ToString());
        }
        if (search_about == "فروشنده")
        {
            Response.Redirect("~/find_shop.aspx?shop_boss_name=" + txt_header_search.Value.ToString());
        }
        if (search_about == "کالا")
        {
            //Response.Redirect("~/list_goods.aspx);   //TODO
        }
    }
}
