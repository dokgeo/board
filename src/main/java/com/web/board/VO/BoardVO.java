package com.web.board.VO;

public class BoardVO {
	
	private int board_id;
	
	private String board_title;
	
	private String board_date;
	
	private String board_reg_user;
	
	private String board_content;

	public int getBoard_id() {
		return board_id;
	}

	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_date() {
		return board_date;
	}

	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}

	public String getBoard_reg_user() {
		return board_reg_user;
	}

	public void setBoard_reg_user(String board_reg_user) {
		this.board_reg_user = board_reg_user;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	@Override
	public String toString() {
		return "boardVO [board_id=" + board_id + ", board_title=" + board_title + ", board_date=" + board_date
				+ ", board_reg_user=" + board_reg_user + ", board_content=" + board_content + "]";
	}
	
	
}
