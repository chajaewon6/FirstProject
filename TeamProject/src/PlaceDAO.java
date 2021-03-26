
import java.util.*;
import java.sql.*;
public class PlaceDAO {
	private Connection conn;
	  private PreparedStatement ps;
	  private final String URL="jdbc:oracle:thin:@211.238.142.211:1521:XE";
	  public PlaceDAO()
	  {
		  try
		  {
			  Class.forName("oracle.jdbc.driver.OracleDriver");
		  }catch(Exception ex) {}
	  }
	  public void getConnection()
	  {
		  try
		  {
			  conn=DriverManager.getConnection(URL,"hr","happy");
		  }catch(Exception ex) {}
	  }
	  public void disConnection()
	  {
		  try
		  {
			  if(ps!=null) ps.close();
			  if(conn!=null) ps.close();
		  }catch(Exception ex) {}
	  }
	public void placeInsert(PlaceVO vo)
	{
		try
		{
			getConnection();
			/*
			 * 	private int no;
				private int cno;
				private String category;
				private String title;
				private String regdate;
				private String poster;
				private String content;
				private String addr;
				private String subwayinfo;
				private String tag;
				private String link;
			 */
			String sql="INSERT INTO tripdetail VALUES("
						+"attraction_no_seq.nextval,?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getCno());
			ps.setString(2, vo.getCategory());
			ps.setString(3, vo.getTitle());
			ps.setString(4, vo.getRegdate());
			ps.setString(5, vo.getPoster());
			ps.setString(6, vo.getContent());
			ps.setString(7, vo.getAddr());
			ps.setString(8, vo.getSubwayinfo());
			ps.setString(9, vo.getTag());
			
			
			ps.executeUpdate();
			
			
		}
		catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		finally
		{
			disConnection();
		}
	}
}
