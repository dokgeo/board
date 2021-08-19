package com.web.board.VO;

public class BoardVO {
	
	private int boardId;
	
	private String boardTitle;
	
	private String boardDate;
	
	private String boardRegUser;
	
	private String boardContent;

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public String getBoardRegUser() {
		return boardRegUser;
	}

	public void setBoardRegUser(String boardRegUser) {
		this.boardRegUser = boardRegUser;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	@Override
	public String toString() {
		return "BoardVO [boardId=" + boardId + ", boardTitle=" + boardTitle + ", boardDate=" + boardDate
				+ ", boardRegUser=" + boardRegUser + ", boardContent=" + boardContent + "]";
	}

	
}
