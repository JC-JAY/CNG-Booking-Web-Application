

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.dbconnection;

/**
 * Servlet implementation class UpdateCNG
 */
public class UpdateCNG extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCNG() {
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
		String kg = request.getParameter("CNG_kg");
		System.out.println(mono);
		
		try
		{
			Connection con = dbconnection.connect();
			PreparedStatement ps1 = con.prepareStatement("update cngpump SET CNG_KG=? where mobile_number = ? and Password = ?");
			
			ps1.setString(1, mono);
			ps1.setString(2, upass);
			ps1.setString(3, kg);
			System.out.println("fgg");
			
		    int i = ps1.executeUpdate();
		    
		    if(i > 0)
		    {
		    	response.sendRedirect("PumpDashbord.html");
		    	System.out.println("rtrt");
		    }
		    else
		    {
		    	response.sendRedirect("eerr.html");
		    }
		    
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
