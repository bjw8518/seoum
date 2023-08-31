package com.bongsa.biz.user;

//VO(Value Object)
public class UserVO {
	private int mem_select;
	private String mem_name;
	private String mem_id;
	private String mem_pw;
	private String mem_pwck;
	private String mem_post;
	private String mem_addrs;
	private String mem_dtaddrs;
	
	private String mem_email;
	private String mem_phone;
	private String mem_gender;
	private String mem_role;
	private String mem_bday;
	
	private String[] rolelist;
	
	
	
	public String[] getRolelist() {
		return rolelist;
	}
	public void setRolelist(String[] rolelist) {
		this.rolelist = rolelist;
	}
	public int getMem_select() {
		return mem_select;
	}
	public void setMem_select(int mem_select) {
		this.mem_select = mem_select;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_pwck() {
		return mem_pwck;
	}
	public void setMem_pwck(String mem_pwck) {
		this.mem_pwck = mem_pwck;
	}
	public String getMem_addrs() {
		return mem_addrs;
	}
	public void setMem_addrs(String mem_addrs) {
		this.mem_addrs = mem_addrs;
	}
	public String getMem_dtaddrs() {
		return mem_dtaddrs;
	}
	public void setMem_dtaddrs(String mem_dtaddrs) {
		this.mem_dtaddrs = mem_dtaddrs;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getMem_role() {
		return mem_role;
	}
	public void setMem_role(String mem_role) {
		this.mem_role = mem_role;
	}
	public String getMem_bday() {
		return mem_bday;
	}
	public void setMem_bday(String mem_bday) {
		this.mem_bday = mem_bday;
	}
	
	
	
	public String getMem_post() {
		return mem_post;
	}
	public void setMem_post(String mem_post) {
		this.mem_post = mem_post;
	}
	@Override
	public String toString() {
		return mem_select + ", " +mem_name+ ", " + mem_id+ ", " + mem_pw + ", " + mem_pwck+ ", " + mem_addrs + ", " + mem_dtaddrs
				+ ", " + mem_email+ ", " + mem_phone +", " + mem_gender+ ", " + mem_role+ ", " + mem_bday;
	}

	
	
	
}