package com.cet4system.domain;

/**
 * 
 * 听力材料表
 * 
 */
public class Listeningmaterial {
	private int id;
	private String material;// 听力材料
	private int testid;

	public void setTestid(int testid) {
		this.testid = testid;
	}

	public int getTestid() {
		return testid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

}
