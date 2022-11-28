

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
 * Servlet implementation class UBooking
 */
public class UBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UBooking() {
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
		   String pid = Getset.getId();
		   String name = Getset.getName();
		   String mono = Getset.getmobile_number();
		   String cng_kg = request.getParameter("CNG_kg");
		   
		
			   try
				{
					Connection con = dbconnection.connect();
					
					PreparedStatement ps11 = con.prepareStatement("select * from cngpump where id=?");
					ps11.setString(1, pid);
					ResultSet rs11 = ps11.executeQuery();
					if(rs11.next())
					{
						int pcng = Integer.parseInt(rs11.getString("CNG_kg"));
						int ncng = pcng-Integer.parseInt(cng_kg);
						if(pcng>=ncng)
						{
							
					PreparedStatement ps22 = con.prepareStatement("update cngpump set CNG_kg =? where id=?");
					ps22.setInt(1, ncng);
					ps22.setString(2, pid);
					ps22.executeUpdate();
					
					PreparedStatement ps2 = con.prepareStatement("insert into bookinng values(?,?,?,?,?)");
					ps2.setInt(1, id);
					ps2.setString(2, pid);
					ps2.setString(3, name);
					ps2.setString(4, mono);
					ps2.setString(5, cng_kg);
					
					
					int i = ps2.executeUpdate();
					if(i>0)
					{
						System.out.println("Booking Successful..");
						response.sendRedirect("userView.jsp");
					}
					else
					{
						System.out.println("Booking Failed..");
						response.sendRedirect("404.html");
					}
					}
						
					}
						  
			    }
			   catch(Exception e)
				{
				   e.printStackTrace();
				}
	}

}
