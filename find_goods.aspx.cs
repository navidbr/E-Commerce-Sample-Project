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

public partial class find_goods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    HtmlAnchor ha = (HtmlAnchor)sender;
        //    string sssss=ha.InnerText.ToString();
        //}
        //catch (Exception)
        //{

        //}
        #region read first menu from DB and set it
        DataSet ds_first_menu = new DataSet();
        SqlDataAdapter da_first_menu = new SqlDataAdapter();
        SqlCommand command = new SqlCommand();
        command.CommandText = "SELECT Menu_ID, Menu_Name FROM Find_Goods_Menu_1";
        command.Connection = SQLConnection_Class.sqlconn;
        ds_first_menu.Clear();
        da_first_menu.SelectCommand = command;
        da_first_menu.Fill(ds_first_menu);
        foreach (DataRow dr in ds_first_menu.Tables[0].Rows)
        {
            HtmlGenericControl li = new HtmlGenericControl("li");
            li.ID = "first_goods_menu_" + dr["Menu_ID"].ToString();
            li.InnerHtml = dr["Menu_Name"].ToString();
            li.Attributes.Add("onmousemove","visible_second_menu("+dr["Menu_ID"].ToString()+")");
            goods_menu_1.Controls.Add(li);
        }
        ds_first_menu.Dispose();
        da_first_menu.Dispose();
        #endregion

        #region read second menu from DB and set it

        DataSet ds_second_menu_count = new DataSet();
        SqlDataAdapter da_second_menu_count = new SqlDataAdapter();
        command.CommandText = "SELECT DISTINCT Parent_Menu_ID FROM Find_Goods_Menu_2";  // baraye be dast avardane tedade menu ye pedar
        da_second_menu_count.SelectCommand = command;
        ds_second_menu_count.Clear();
        da_second_menu_count.Fill(ds_second_menu_count);

        DataSet ds_second_menu = new DataSet();
        SqlDataAdapter da_second_menu = new SqlDataAdapter();
        command.CommandText = "SELECT Menu_ID, Menu_Name, Parent_Menu_ID FROM Find_Goods_Menu_2";
        da_second_menu.SelectCommand = command;
        ds_first_menu.Clear();
        da_second_menu.SelectCommand = command;
        da_second_menu.Fill(ds_second_menu);

        int j =ds_second_menu.Tables[0].Rows.Count;

        for (int i = 1; i <= ds_second_menu_count.Tables[0].Rows.Count; i++)
        {
            HtmlGenericControl div = new HtmlGenericControl("div");
            HtmlGenericControl ul = new HtmlGenericControl("ul");

            div.Attributes.Add("hidden", "hidden");
            div.Attributes.Add("class", "hidden-menu");
            div.Attributes.Add("runat", "server");
            div.ID = "second_goods_menu_" + ds_second_menu_count.Tables[0].Rows[i - 1]["Parent_Menu_ID"].ToString();
            ul.Attributes.Add("class", "nav");

            foreach (DataRow dr in ds_second_menu.Tables[0].Rows)
            {

                //string s1=dr["Parent_Menu_ID"].ToString();
                //string s2=ds_second_menu_count.Tables[0].Rows[i - 1]["Parent_Menu_ID"].ToString();
                if (dr["Parent_Menu_ID"].ToString() == ds_second_menu_count.Tables[0].Rows[i - 1]["Parent_Menu_ID"].ToString())
                {
                    HtmlGenericControl li = new HtmlGenericControl("li");
                    HtmlAnchor a = new HtmlAnchor();
                    a.Attributes.Add("runat", "server");
                    a.InnerText = dr["Menu_Name"].ToString();
                    a.Attributes.Add("type_id", dr["Menu_ID"].ToString());
                    a.ServerClick += second_goods_menu_click;
                    li.Controls.Add(a);
                    ul.Controls.Add(li);
                }
            }
            div.Controls.Add(ul);
            goods_menu_2.Controls.Add(div);
        }
        
        #endregion

    }

    protected void second_goods_menu_click(object sender, EventArgs e)
    {
        #region read third menu from DB and set it by menu click

        HtmlAnchor a = (HtmlAnchor)sender;
        int id = Convert.ToInt32(a.Attributes["type_id"]);
        HtmlGenericControl divv = (HtmlGenericControl)a.Parent.Parent.Parent;
        divv.Attributes.Remove("hidden");                                   // baraye hidden nashodane second menu bad az click kardan

        DataSet ds_third_menu = new DataSet();
        SqlDataAdapter da_third_menu = new SqlDataAdapter();
        SqlCommand command = new SqlCommand();
        command.Connection = SQLConnection_Class.sqlconn;
        command.CommandText = "SELECT Menu_ID, Menu_Name FROM Find_Goods_Menu_3 WHERE Parent_Menu_ID=" + id.ToString();
        da_third_menu.SelectCommand = command;
        ds_third_menu.Clear();
        da_third_menu.Fill(ds_third_menu);
        Repeater1.DataSource = ds_third_menu.Tables[0];
        Repeater1.DataBind();
        //foreach (DataRow dr in ds_third_menu.Tables[0].Rows)
        //{
            //HtmlGenericControl div1 = new HtmlGenericControl("div");
            //HtmlGenericControl div2 = new HtmlGenericControl("div");
            ////HtmlAnchor a1 = new HtmlAnchor();
            ////a1.Attributes.Add("class", "no-decor");
            ////a1.Attributes.Add("role", "button");
            
            ////a1.Attributes.Add("runat", "server");
            ////a1.Attributes.Add("good_type_id", dr["Menu_ID"].ToString());
            ////a1.InnerText = dr["Menu_Name"].ToString();
            ////a1.Attributes.Add("onserverclick", "");
            ////a1.ServerClick += third_menu_click;

            ////a1.Attributes.Add("href", "javascript:__doPostBack('ctl00$ContentPlaceHolder1$ctl03','')");

            ////LinkButton lb = new LinkButton();
            ////lb.Click += third_menu_click;
            ////lb.Text = dr["Menu_Name"].ToString();
            ////lb.CssClass = "no-decor";
            ////lb.Attributes.Add("good_type_id", dr["Menu_ID"].ToString());
            ////div2.Controls.Add(lb);
           
            //div2.Attributes.Add("class", "goods-type-list");
            //div2.Controls.Add(a1);
            //div1.Attributes.Add("class", "col-lg-4 col-md-4 col-sm-4 col-xs-4");
            //div1.Controls.Add(div2);
            //goods_menu_3.Controls.Add(div1);
        //}
        #endregion
    }



    protected void third_menu_click(object sender, EventArgs e)
    {
        HtmlAnchor a = (HtmlAnchor)sender;
        string selected_good_id = a.Attributes["good_type_id"].ToString();
        Response.Redirect("~/list_goods.aspx?good_type_id=" + selected_good_id.ToString());
    }
}