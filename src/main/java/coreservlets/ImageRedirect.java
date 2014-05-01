package coreservlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/image")
public class ImageRedirect extends HttpServlet
{
  private static final long serialVersionUID = -3749128383272167295L;

  public void doGet(HttpServletRequest request,
                     HttpServletResponse response)
      throws IOException, ServletException
   {
      String imageId = request.getParameter("imageId");
      if ((imageId != null) && (imageId.equals("20")))
      {
         response.setContentType("image/jpg");
         OutputStream out = response.getOutputStream();
         InputStream in = 
            getServletContext().getResourceAsStream("/problem.jpg");
         byte[] image = new byte[100000];
         in.read(image);
         out.write(image);
         out.flush();
      }
   }

}
