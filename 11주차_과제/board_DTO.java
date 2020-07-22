package board;

public class board_DTO {
	
	private int boardNum;
	private String boardSubject;
	private String boardContent;
	private String boardWrite;
	private String boardRegDate;
	
	public board_DTO(int boardNum, String boardSubject, String boardContent, String boardWrite, String boardRegDate) {
		this.boardNum = boardNum;
		this.boardSubject = boardSubject;
		this.boardContent = boardContent;
		this.boardWrite = boardWrite;
		this.boardRegDate = boardRegDate;
	}
	
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getBoardSubject() {
		return boardSubject;
	}
	public void setBoardSubject(String boardSubject) {
		this.boardSubject = boardSubject;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardWrite() {
		return boardWrite;
	}
	public void setBoardWrite(String boardWrite) {
		this.boardWrite = boardWrite;
	}
	public String getBoardRegDate() {
		return boardRegDate;
	}
	public void setBoardRegDate(String boardRegDate) {
		this.boardRegDate = boardRegDate;
	}

	
	
}
