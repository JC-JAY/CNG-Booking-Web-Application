

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.dbconnection;

/**
 * Servlet implementation class PUMPlogin
 */
public class PUMPlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PUMPlogin() {
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
		
		String mono = request.getParameter("mobile");
		String upass = request.getParameter("password");
		try
		{
			Connection con = dbconnection.connect();
			PreparedStatement ps1 = con.prepareStatement("select * from cngpump where mobile_number	 = ? and Password = ?");
			
			ps1.setString(1, mono);
			ps1.setString(2, upass);
		    ResultSet rs = ps1.executeQuery();
		    
		    if(rs.next())
		    {
		    	response.sendRedirect("PumpDashbord.html");
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


