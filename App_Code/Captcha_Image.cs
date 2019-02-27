using System;
using System.Data;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;

/// <summary>
/// Summary description for View_Secert_Image
/// </summary>
public class Captcha_Image : System.Web.UI.Page
{


    public Captcha_Image()
	{

	}

    public string create_captcha_image()
    {
        string abc = "qTRwert@78a*sUY3#dfgzxc$vi69o@phjk3nmP&O45LKJH#byuG1MNBVC@FDSAEWQX$Z012";//71
        Random rand = new Random();
        object strindex1 = rand.Next(0, 70);
        object strindex2 = rand.Next(0, 70);
        object strindex3 = rand.Next(0, 70);
        object strindex4 = rand.Next(0, 70);
        object strindex5 = rand.Next(0, 70);
        object strindex6 = rand.Next(0, 70);
        // for Show
        string strcode = abc.Substring(Convert.ToInt32(strindex1),1);
        strcode += abc.Substring(Convert.ToInt32(strindex2), 1);
        strcode += abc.Substring(Convert.ToInt32(strindex3), 1);
        strcode += abc.Substring(Convert.ToInt32(strindex4), 1);
        strcode += abc.Substring(Convert.ToInt32(strindex5), 1);
        strcode += abc.Substring(Convert.ToInt32(strindex6), 1);
        Session["captcha_image_text"] = strcode;
        //   create image
        Bitmap picbitmap = new Bitmap(Server.MapPath("~/CaptchaFiles/PicSecurity1.jpg"));
        if (System.IO.File.Exists(Server.MapPath("~/CaptchaFiles/PicSecurity.jpg")))
            System.IO.File.Delete(Server.MapPath("~/CaptchaFiles/PicSecurity.jpg"));
        Graphics graph = Graphics.FromImage(picbitmap);
        graph.DrawString(strcode, new Font("Times New Roman", 22, FontStyle.Italic), SystemBrushes.WindowText, new PointF(30, 6));
        picbitmap.Save(Server.MapPath("~/CaptchaFiles/PicSecurity.jpg"));
        return ("~/CaptchaFiles/PicSecurity.jpg");
    }
}