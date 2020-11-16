package sec01.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private DataSource ds;
	private static Connection con;
	private PreparedStatement pstmt;

	
	public MemberDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			  //jdbc/board 객체를 찾아 DataSource 로 받는다.
			ds = (DataSource)envContext.lookup("jdbc/mvc");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//select 수행한 후 리소스 해제를 위한 메소드
	public void close(Connection con, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			pstmt.close();
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//insert, delete, update 후 리소스 해제를 위한 메소드
	public void close() {
		try {
			if(con !=null) {
				con.close();
				con=null;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * public void addMember(MemberDTO dto) { try { con = ds.getConnection(); String
	 * id = dto.getId(); String pwd = dto.getPwd(); String name = dto.getName();
	 * String email = dto.getEmail();
	 * 
	 * String sql = "insert into member(id, pwd, name, email) values(?,?,?,?)";
	 * pstmt =con.prepareStatement(sql); pstmt.setString(1, id); pstmt.setString(2,
	 * pwd); pstmt.setString(3, name); pstmt.setString(4, email);
	 * 
	 * pstmt.executeUpdate();
	 * 
	 * }catch(SQLException e){ e.printStackTrace(); }finally { close(); } }
	 */
	public boolean insertMember(MemberDTO dto) {
		System.out.println("5");		
		String sql = "insert into member(id, pwd, name, email) values(?,?,?,?)";
		boolean check = false;
		try {
			con = ds.getConnection();
	
			pstmt =con.prepareStatement(sql);
		
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			
			int x = pstmt.executeUpdate();	

			if(x<1) {
				System.out.println("정상적으로 저장되지 않았습니다.");
			}else {
				check=true;
			}
			pstmt.close();
		}catch(SQLException ex) {
			System.out.println("SQL insert 오류 : " + ex.getLocalizedMessage());
			check = false;
		}
		return check;
	}
}	
