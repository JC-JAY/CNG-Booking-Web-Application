

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Getset;
import com.connection.dbconnection;

/**
 * Servlet implementation class UserLogin
 */
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
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
		
		String uemail = request.getParameter("username");
		String upass = request.getParameter("Password");
		try
		{
			Connection con = dbconnection.connect();
			PreparedStatement ps1 = con.prepareStatement("select * from user where email = ? and password = ?");
			
			ps1.setString(1, uemail);
			ps1.setString(2, upass);
		    ResultSet rs = ps1.executeQuery();
		    
		    if(rs.next())
		    {
		    	Getset.setName(rs.getString(2));
		    	Getset.setMobile(rs.getString(3));
		    	response.sendRedirect("UserDashbord.html");
		    }
		    else
		    {
		    	response.sendRedirect("index.html");
		    }
		    
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	}


