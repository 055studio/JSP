package cs.dit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.MemberDTO;

public class MemberDAO {
	private DataSource ds;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
//생성자에서 jdbc/mvc 객체를 찾아 DataSource 로 받는다.
	public MemberDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/HMKIM");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
//Connection 해제를 위한 메소드
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
	
// 전체 멤버 목록보기	
	public ArrayList<MemberDTO> list(){
		String sql = "SELECT * FROM MEMBER";
		
		ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();	//DB처리 결과를 MemberDTO에 담아 ArrayList로 만들기 위해
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {		//DB결과를 ResultSet에서 한행씩 추출하여 MemberDTO로 만든다.
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("ID"));
				dto.setPwd(rs.getString("PWD"));
				dto.setName(rs.getString("NAME"));
				dto.setEmail(rs.getString("EMAIL"));
				dto.setJoinDate(rs.getDate("JOINDATE"));
				dtos.add(dto);		//MemberDTO객체를 ArrayList에 추가한다.
			}
			rs.close(); pstmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dtos;
	}

//멤버 상세 보기	
	public MemberDTO view(String id) {
		String sql ="select pwd, name,email,joinDate from member where id=?";
		MemberDTO dto = new MemberDTO();
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {		//상세보기를 위한 한 레코드셋을 DTO에 저장
				dto.setId(id);
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setJoinDate(rs.getDate("joinDate"));
			}
			
			rs.close();
			pstmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;	//DTO객체에 데이터를 담아서 반환
	}
	
// 멤버 추가하기
	public boolean insert(MemberDTO dto) {	//DB에 저장이 잘되면 true, 잘안되었으면  false를 반환
		String sql = "insert into member(id, pwd, name, email, joinDate) values(?,?,?,?, SYSDATE)"; 
		boolean check = false;
		try {  
			con = ds.getConnection();  //Connection객체 CP에서 얻어오기
			pstmt =con.prepareStatement(sql);  	//Connection객체를 통해 SQL문 준비
			pstmt.setString(1, dto.getId());	//SQL문과 데이터 바인팅
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			
			int x = pstmt.executeUpdate();	//SQL을 수행하고 결과 반환 : 결과는 입력이 된 행 갯수

			if(x<1) {	//1보다 적으면
				System.out.println("정상적으로 저장되지 않았습니다.");
			}else {		//1이상인 경우는 저장이 된 경우
				check=true;
			}
			pstmt.close();
		}catch(SQLException ex) {
			System.out.println("SQL insert 오류 : " + ex.getLocalizedMessage());
			check = false;
		}
		return check;
	}
// 멤버 정보 수정하기	
	public boolean update(MemberDTO dto) {
		String sql = "update member set name=?, pwd=?, email=?, joinDate=? where id=?";
		boolean check = false;
		try {
			con = ds.getConnection();
			pstmt =con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getEmail());
			pstmt.setDate(4, dto.getJoinDate());
			pstmt.setString(5, dto.getId());
			
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
// 멤버 삭제 하기		
	public boolean delete(String id) {
		String sql = "delete from member where id=?";
		boolean check = false;
		try {
			con = ds.getConnection();
			pstmt =con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			int x = pstmt.executeUpdate();	

			if(x<1) {
				System.out.println("정상적으로 삭제되지 않았습니다.");
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
