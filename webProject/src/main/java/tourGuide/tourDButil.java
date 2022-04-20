package tourGuide;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class tourDButil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean boo;
	
	public static boolean Validate(String name,String password){
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql ="select * from admin where username ='"+name+"' and password ='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				boo = true;
			}else {
				boo = false;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return boo;
	}
	
	public static List<Package> GetPackages(){
		
		ArrayList<Package> pack = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql ="select * from packages";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
			int pid = rs.getInt(1);
			String pname = rs.getString(2);
			String pdu = rs.getString(3);
			String ppro = rs.getString(4);
			String pdes = rs.getString(5);
			
			Package p1 = new Package(pid,pname,pdu,ppro,pdes);
			pack.add(p1);
			}
			}catch(Exception e){
				e.printStackTrace();
			}
			return pack;
	}
	
	public static boolean CreatePackage(String name,String duration,String province,String destinations) {
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql ="insert into packages values (0,'"+name+"','"+duration+"','"+province+"','"+destinations+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				boo = true;
			}else {
				boo = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return boo;
	}
	
	public static boolean UpdatePackage(String num,String name,String duration,String province,String destinations) {
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql ="update packages set name='"+name+"',duration='"+duration+"',province='"+province+"',destinations='"+destinations+"' where packageNumber='"+num+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				boo = true;
			}else {
				boo = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return boo;
	}
	
	public static boolean DeletePackage(String num) {
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql ="delete from packages where packageNumber='"+num+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				boo = true;
			}else {
				boo = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return boo;
	}
}
