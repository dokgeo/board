package com.web.board.VO;

public class MainVO {
	
	private String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public CreatorVO getCreateVo() {
		return CreateVo;
	}

	public void setCreateVo(CreatorVO createVo) {
		CreateVo = createVo;
	}

	private CreatorVO CreateVo;
	
}
