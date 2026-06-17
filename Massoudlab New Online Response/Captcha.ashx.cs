using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Web;
using System.Web.SessionState;

namespace Massoudlab_New_Online_Response
{

    public class Captcha :

        IHttpHandler,

        IRequiresSessionState

    {

        public void ProcessRequest(HttpContext context)
        {

            Random rnd = new Random();

            string chars =

            "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";

            string code = "";


            for (int i = 0; i < 5; i++)
            {

                code += chars[rnd.Next(chars.Length)];

            }


            context.Session["Captcha"] = code;


            Bitmap bmp = new Bitmap(170, 55);

            Graphics g = Graphics.FromImage(bmp);

            g.Clear(Color.White);


            Font font = new Font(

                "Arial",

                24,

                FontStyle.Bold

                );


            Brush brush =

                new SolidBrush(

                    Color.FromArgb(

                        0,

                        157,

                        255

                        ));

            g.DrawString(

                code,

                font,

                brush,

                20,

                10

                );


            Pen pen = new Pen(

                Color.LightGray

                );


            for (int i = 0; i < 6; i++)
            {

                g.DrawLine(

                    pen,

                    rnd.Next(170),

                    rnd.Next(55),

                    rnd.Next(170),

                    rnd.Next(55)

                    );

            }


            context.Response.ContentType =

                "image/png";

            bmp.Save(

                context.Response.OutputStream,

                ImageFormat.Png

                );


            g.Dispose();

            bmp.Dispose();

        }


        public bool IsReusable
        {

            get

            {

                return false;

            }

        }

    }

}