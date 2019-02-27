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


public partial class find_shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        #region read shop types from DB and set it to html select
        if (!IsPostBack)
        {
            SqlDataAdapter da_shop_type_names = new SqlDataAdapter();
            DataSet ds_shop_type_names = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = SQLConnection_Class.sqlconn;
            cmd.CommandText = "SELECT Store_Type_ID, Store_Type_Name FROM Store_Type";
            ds_shop_type_names.Clear();
            da_shop_type_names.SelectCommand = cmd;
            da_shop_type_names.Fill(ds_shop_type_names);
            foreach(DataRow dr in ds_shop_type_names.Tables[0].Rows)
            {
                ListItem li = new ListItem();
                li.Attributes.Add("type_id", dr["Store_Type_ID"].ToString());
                li.Value = dr["Store_Type_ID"].ToString();
                li.Text= dr["Store_Type_Name"].ToString();
                select_shop_type.Items.Add(li);
            }
        }
        #endregion

        #region notice if the page should show the result of search from other pages and call it function
        string shop_name = "";
        string shop_boss_name = "";

        try
        {
            shop_name = Request["shop_name"].ToString();
        }
        catch
        {

        }
        try
        {
            shop_boss_name = Request["shop_boss_name"].ToString();
        }
        catch 
        {

        }
        if (shop_name != "")
        {
            database_query(shop_name, "", "all");
        }
        else if (shop_boss_name != "")
        {
            database_query("", shop_boss_name, "all");
        }
        #endregion
    }

    private void database_query(string shop_name , string shop_keeper_name , string shop_type_id)
    {
        #region read shops from DB and list them on page

        Session["shop_name"] = shop_name;                   // be khatere pagging dar session minevisim
        Session["shop_keeper_name"] = shop_keeper_name;     // be khatere pagging dar session minevisim
        Session["shop_type_id"] = shop_type_id;             // be khatere pagging dar session minevisim

        #region SQL Query
        SqlDataAdapter da_shops = new SqlDataAdapter();
        DataSet ds_shops = new DataSet();
        SqlCommand cmd = new SqlCommand();
        string command;
        command = "SELECT  Store_Type.Store_Type_Name, Store.Store_ID, Store.Name, Store.Owner_First_Name, Store.Owner_Last_Name, Store.Store_Address, Store.Tel1, Store.Profile_Picture_URL FROM Store_Type INNER JOIN Store ON Store_Type.Store_Type_ID = Store.Store_Type_ID  WHERE ";
        bool gablan_shart_darad = false;
        if (shop_name != "")
        {
            command += "Store.Name LIKE " + "'%" + shop_name + "%'";
            gablan_shart_darad = true;
        }

        if (shop_keeper_name != "")
        {
            string[] names = new string[10];
            names = shop_keeper_name.Split(' ', ',');
            if (gablan_shart_darad)
            {
                command += " AND ";
            }
            if (names[0]!="")
            {
                command += "(";
                command += "Store.Owner_First_Name LIKE " + "'%" + names[0] + "%'";
                command += " OR ";
                command += "Store.Owner_Last_Name LIKE " + "'%" + names[0] + "%'";
                gablan_shart_darad = true;
            }
            for (int k = 1; k < names.Length; k++)
            {
                if (names[k] != "")
                {
                    command += " OR ";
                    command += "Store.Owner_First_Name LIKE " + "'%" + names[k] + "%'";
                    command += " OR ";
                    command += "Store.Owner_Last_Name LIKE " + "'%" + names[k] + "%'";
                }
            }
            command += ")";
        }

        if (shop_type_id != "all")
        {
            if (gablan_shart_darad)
            {
                command += " AND ";
            }
            command += "Store_Type.Store_Type_ID = " + shop_type_id;
        }
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = command;
        cmd.Connection = SQLConnection_Class.sqlconn;
        da_shops.SelectCommand = cmd;
        ds_shops.Clear();
        da_shops.Fill(ds_shops);

        if(ds_shops.Tables[0].Rows.Count>0)
        {
            panel_header.Visible = true;
            panel_footer.Visible = true;
        }
        else
        {
            panel_header.Visible = false;
            panel_footer.Visible = false;
        }
        #endregion

        #region create page numbers
        DataSet ds_paging = new DataSet();
        ds_paging.Tables.Add();
        int j; //this page shops count to show
        int pages_count;
        if (ds_shops.Tables[0].Rows.Count>12)
        {
            j = 12;
            pages_count =(int) Math.Ceiling(ds_shops.Tables[0].Rows.Count / (double)12);  //rond kardan be bala 
        }
        else
        {
            j = ds_shops.Tables[0].Rows.Count;
            pages_count = 1;
        }

        ds_paging = ds_shops.Clone();
        for (int i = 0; i < j; i++)
        {
            ds_paging.Tables[0].ImportRow(ds_shops.Tables[0].Rows[i]);    
        }
       
        #endregion

        #region set page numbers
        DataTable dt_pages = new DataTable();
        DataColumn dc;
        dc = new DataColumn();
        DataColumn dc2 = new DataColumn();
        dc.DataType = System.Type.GetType("System.String");
        dc2.DataType = System.Type.GetType("System.String");
        dc.ColumnName = "name";
        dc2.ColumnName = "class";
        dt_pages.Columns.Add(dc);
        dt_pages.Columns.Add(dc2);
        for (int i=0;i<pages_count;i++)
        {
            DataRow dr = dt_pages.NewRow();
            dr["name"] = (i + 1).ToString();
            if (i == 0)
                dr["class"] = "active";
            else
                dr["class"] = "";
            dt_pages.Rows.Add(dr);
        }
        pervious_page_button.Attributes.Add("this_page", "1");
        next_page_button.Attributes.Add("this_page", "1");
        next_page_button.Attributes.Add("max_page", pages_count.ToString());
        Repeater1.DataSource = dt_pages;
        Repeater1.DataBind();
        #endregion

        #region list first page shops
        Repeater2.Controls.Clear();
        Repeater2.DataSource = ds_paging.Tables[0];
        Repeater2.DataBind();
        #endregion


        //#region create dynamic html panel
        //int i = 0;
        //int count = ds_shops.Tables[0].Rows.Count;
        //while (i < count)
        //{
        //    HtmlGenericControl div1 = new HtmlGenericControl("div");
        //    div1.Attributes.Add("class", "row");
        //    for(int j=0;j<3;j++)
        //    {
        //        if (i < count)
        //        {
        //            HtmlGenericControl div2 = new HtmlGenericControl("div");
        //            div2.Attributes.Add("class", "col-md-4 portfolio-item");
        //            HtmlAnchor a = new HtmlAnchor();
        //            a.Attributes.Add("runat", "server");
        //            a.Attributes.Add("store_id", ds_shops.Tables[0].Rows[i]["Store_ID"].ToString());
        //            a.ServerClick += shop_panel_click;
        //            HtmlImage img = new HtmlImage();
        //            img.Attributes.Add("class", "img-responsive");
        //            img.Attributes.Add("src", ds_shops.Tables[0].Rows[i]["Profile_Picture_URL"].ToString());
        //            img.Attributes.Add("alt", "Image");
        //            a.Controls.Add(img);
        //            div2.Controls.Add(a);
        //            HtmlGenericControl h3 = new HtmlGenericControl("h3");
        //            HtmlGenericControl h4 = new HtmlGenericControl("h4");
        //            HtmlAnchor a2 = new HtmlAnchor();
        //            a2.Attributes.Add("runat", "server");
        //            a2.InnerHtml = ds_shops.Tables[0].Rows[i]["Name"].ToString();
        //            a2.Attributes.Add("store_id", ds_shops.Tables[0].Rows[i]["Store_ID"].ToString());
        //            a2.ServerClick += shop_panel_click;
        //            h3.Controls.Add(a2);
        //            h4.InnerText = ds_shops.Tables[0].Rows[i]["Store_Type_Name"].ToString();
        //            div2.Controls.Add(h3);
        //            div2.Controls.Add(h4);
        //            //HtmlGenericControl p = new HtmlGenericControl("p");
        //            //p.InnerHtml=
        //            //div2.Controls.Add(p);
        //            div1.Controls.Add(div2);
        //            i++;
        //        }
        //    }
        //    panel1.Controls.Add(div1);
        //}
        //#endregion

        #endregion
    }

    private void shop_panel_click(object sender, EventArgs e)
    {
        HtmlAnchor a = (HtmlAnchor)sender;
        string store_id = a.Attributes["store_id"].ToString();
        //Response.Redirect(); //TODO
    }

    protected void btn_search_Click(object sender, EventArgs e)
    {
        #region read search values from inputs
        string shop_name = "";
        string shop_keeper_name = "";
        string shop_type_id = "all";
        if (input_shop_name.Value.ToString() !=null & input_shop_name.Value.ToString() != "")
        {
            shop_name = input_shop_name.Value.ToString();
        }
        if (input_shop_keeper_name.Value.ToString() != null & input_shop_keeper_name.Value.ToString() != "")
        {
            shop_keeper_name = input_shop_keeper_name.Value.ToString();
        }
        shop_type_id = select_shop_type.Value.ToString();
        if(shop_name!="" | shop_keeper_name!="" | shop_type_id!="all")  // if baraye in ast ke agar har 3 input khali bashad amal nakonad
        {
            database_query(shop_name, shop_keeper_name, shop_type_id);
        }
        #endregion
    }

    protected void pervious_page_click(object sender, EventArgs e)
    {
        HtmlAnchor a = (HtmlAnchor)sender;
        if(Convert.ToInt32(a.Attributes["this_page"].ToString()) > 1)
        {
            list_shops(Convert.ToInt32(a.Attributes["this_page"].ToString())-1);
        }
        
    }

    protected void next_page_click(object sender, EventArgs e)
    {
        HtmlAnchor a = (HtmlAnchor)sender;
        if (Convert.ToInt32(a.Attributes["this_page"].ToString()) < Convert.ToInt32(a.Attributes["max_page"].ToString()))
        {
            list_shops(Convert.ToInt32(a.Attributes["this_page"].ToString()) + 1);
        }
    }

    protected void page_number_click(object sender, EventArgs e)
    {
        HtmlAnchor a = (HtmlAnchor)sender;
        list_shops(Convert.ToInt32(a.InnerHtml.ToString()));
    }

    protected void list_shops(int page_number)
    {
        #region read shops from DB and list them on page

        string shop_name = Session["shop_name"].ToString();
        string shop_keeper_name = Session["shop_keeper_name"].ToString();
        string shop_type_id = Session["shop_type_id"].ToString();


        #region SQL Query
        SqlDataAdapter da_shops = new SqlDataAdapter();
        DataSet ds_shops = new DataSet();
        SqlCommand cmd = new SqlCommand();
        string command;
        command = "SELECT  Store_Type.Store_Type_Name, Store.Store_ID, Store.Name, Store.Owner_First_Name, Store.Owner_Last_Name, Store.Store_Address, Store.Tel1, Store.Profile_Picture_URL FROM Store_Type INNER JOIN Store ON Store_Type.Store_Type_ID = Store.Store_Type_ID  WHERE ";
        bool gablan_shart_darad = false;
        if (shop_name != "")
        {
            command += "Store.Name LIKE " + "'%" + shop_name + "%'";
            gablan_shart_darad = true;
        }

        if (shop_keeper_name != "")
        {
            string[] names = new string[10];
            names = shop_keeper_name.Split(' ', ',');
            if (gablan_shart_darad)
            {
                command += " AND ";
            }
            if (names[0] != "")
            {
                command += "Store.Owner_First_Name LIKE " + "'%" + names[0] + "%'";
                command += " OR ";
                command += "Store.Owner_Last_Name LIKE " + "'%" + names[0] + "%'";
                gablan_shart_darad = true;
            }
            for (int k = 1; k < names.Length; k++)
            {
                if (names[k] != "")
                {
                    command += " OR ";
                    command += "Store.Owner_First_Name LIKE " + "'%" + names[k] + "%'";
                    command += " OR ";
                    command += "Store.Owner_Last_Name LIKE " + "'%" + names[k] + "%'";
                }
            }
        }

        if (shop_type_id != "all")
        {
            if (gablan_shart_darad)
            {
                command += " AND ";
            }
            command += "Store_Type.Store_Type_ID = " + shop_type_id;
        }
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = command;
        cmd.Connection = SQLConnection_Class.sqlconn;
        da_shops.SelectCommand = cmd;
        ds_shops.Clear();
        da_shops.Fill(ds_shops);

        if (ds_shops.Tables[0].Rows.Count > 0)
        {
            panel_header.Visible = true;
            panel_footer.Visible = true;
        }
        else
        {
            panel_header.Visible = false;
            panel_footer.Visible = false;
        }
        #endregion

        #region list the shops

        Repeater2.Controls.Clear();
        int start_row_num = (page_number - 1) * 12;
        DataSet ds_paging = new DataSet();
        ds_paging.Tables.Add();
        try
        {
            ds_paging = ds_shops.Clone();
            for (int i = start_row_num; i< start_row_num + 12; i++)
            {
                ds_paging.Tables[0].ImportRow(ds_shops.Tables[0].Rows[i]);
            }
            
        }catch(Exception e)
        {

        }

        Repeater2.DataSource = ds_paging.Tables[0];
        Repeater2.DataBind();

        #endregion

        #region create page numbers
        int pages_count;
        if (ds_shops.Tables[0].Rows.Count > 12)
        {
            pages_count = (int)Math.Ceiling((ds_shops.Tables[0].Rows.Count / (double)12));
        }
        else
        {
            pages_count = 1;
        }
        DataTable dt_pages = new DataTable();
        DataColumn dc;
        dc = new DataColumn();
        DataColumn dc2 = new DataColumn();
        dc.DataType = System.Type.GetType("System.String");
        dc2.DataType = System.Type.GetType("System.String");
        dc.ColumnName = "name";
        dc2.ColumnName = "class";
        dt_pages.Columns.Add(dc);
        dt_pages.Columns.Add(dc2);
        for (int i = 0; i < pages_count; i++)
        {
            DataRow dr = dt_pages.NewRow();
            dr["name"] = (i + 1).ToString();
            if (i == (page_number-1))
                dr["class"] = "active";
            else
                dr["class"] = "";
            dt_pages.Rows.Add(dr);
        }
        pervious_page_button.Attributes.Add("this_page", page_number.ToString());
        next_page_button.Attributes.Add("this_page", page_number.ToString());
        next_page_button.Attributes.Add("max_page", pages_count.ToString());
        Repeater1.DataSource = dt_pages;
        Repeater1.DataBind();
        #endregion

        #endregion
    }
}