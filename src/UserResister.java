

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.dbconnection;

/**
 * Servlet implementation class UserResister
 */
public class UserResister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserResister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		int id = 0;
		String name = request.getParameter("uname");
		String mo_num = request.getParameter("mono");
		String em = request.getParameter("email");
		String pass = request.getParameter("Password");
		String ct = request.getParameter("city");
		 
		 
			try
			{
				Connection con = dbconnection.connect();
			    PreparedStatement ps1 = con.prepareStatement("insert into user values(?,?,?,?,?,?)");
			    ps1.setInt(1, id);
			    ps1.setString(2, name);
			    ps1.setString(3, mo_num);
			    ps1.setString(4, em);
			    ps1.setString(5, pass);
			    ps1.setString(6, ct);
			   
 			    int i = ps1.executeUpdate();
			    if (i == 0)
			    	
			    {
			    	response.sendRedirect("uerror.html");
			    	System.out.println("Registration is Failed.......!");
	 		    }
			    else
			    {
			    	response.sendRedirect("userLogin.html");
			    	System.out.println("Registration is successful.......!");
			    	
			    }
			    
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
	}

	}

