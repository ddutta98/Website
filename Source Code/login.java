import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
@WebServlet("/login")
public class login extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println(1);
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String c1=request.getParameter("c1");
		if(email.equalsIgnoreCase("yash.agrawal@st.niituniversity.in")&&pass.equals("nupass#123"))
		{
			if(c1!=null&&c1.equalsIgnoreCase("remember-me"))
			{
				Cookie emailcookie = new Cookie("email", email);
				emailcookie.setMaxAge(365*24*60*60);
				Cookie passcookie = new Cookie("pass", pass);
			    passcookie.setMaxAge(365*24*60*60);
			    response.addCookie(emailcookie);
			    response.addCookie(passcookie);
			}
			HttpSession hs=request.getSession();
			response.sendRedirect("Admin.jsp");
		}
		else
		{
			PrintWriter pw=response.getWriter();
			pw.println("<script>alert('Wrong credentials');location.replace('AdminLogin.jsp');</script>");
		}
	}
}