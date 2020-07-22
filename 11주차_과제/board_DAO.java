package board;

import java.sql.*;
import java.util.*;

import javax.sql.*;
import javax.naming.*;

public class board_DAO {

	private DataSource dataSource; // 커넥션 풀

	public board_DAO() {

		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/PGW");
		} catch (Exception e) {

		}
	}

	public ArrayList<board_DTO> board_Select() {

		ArrayList<board_DTO> bDtos = new ArrayList<board_DTO>();

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();
			stmt = con.prepareStatement("select * from board");
			rs = stmt.executeQuery();

			while (rs.next()) {
				int boardNum = rs.getInt("id");
				String boardSubject = rs.getString("subject");
				String boardContent = rs.getString("content");
				String boardWrite = rs.getString("writer");
				String boardRegDate = rs.getString("regdate");

				board_DTO bDto = new board_DTO(boardNum, boardSubject, boardContent, boardWrite, boardRegDate);
				bDtos.add(bDto);
			}
			rs.close();
			stmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bDtos;
	}

	public void board_insert(board_DTO board_dto) {

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();
			stmt = con.prepareStatement("INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, ?, ?, ?, SYSTIMESTAMP)");
		    stmt.setString(1, board_dto.getBoardSubject());
		    stmt.setString(2, board_dto.getBoardContent());
		    stmt.setString(3, board_dto.getBoardWrite());
		    
			stmt.executeUpdate();

			stmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void board_delete(String id) {

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();
			stmt = con.prepareStatement("DELETE FROM BOARD WHERE ID=?");
		    stmt.setString(1, id);
		    
			stmt.executeUpdate();

			stmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void board_update(board_DTO board_dto) {

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();
			stmt = con.prepareStatement("UPDATE BOARD SET SUBJECT=?, CONTENT=?, WRITER=? WHERE ID=?");
		    stmt.setString(1, board_dto.getBoardSubject());
		    stmt.setString(2, board_dto.getBoardContent());
		    stmt.setString(3, board_dto.getBoardWrite());
		    stmt.setInt(4, board_dto.getBoardNum());
		    
			stmt.executeUpdate();

			stmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
