package com.bongsa.biz.apply;

//VO(Value Object)


public class ApplyVO {
	private int ap_id ;
	private int ap_pid ;
	private String ap_ptitle ;
	private String ap_pdate ;
	private String ap_ptime ;
	private String ap_ptarget ;
	
	private String ap_aid ;
	
	private String ap_aname ;
	private String ap_mid ;
	private String ap_mname  ;
	private String ap_mphone ;
	private String ap_mrole ;
	
	private String ap_applyDate ;
	private String ap_state ;
	private String ap_rejec ;
	private String ap_rv  ;
	
	
	
	public int getAp_id() {
		return ap_id;
	}
	public void setAp_id(int ap_id) {
		this.ap_id = ap_id;
	}
	public int getAp_pid() {
		return ap_pid;
	}
	public void setAp_pid(int ap_pid) {
		this.ap_pid = ap_pid;
	}
	public String getAp_ptitle() {
		return ap_ptitle;
	}
	public void setAp_ptitle(String ap_ptitle) {
		this.ap_ptitle = ap_ptitle;
	}
	public String getAp_pdate() {
		return ap_pdate;
	}
	public void setAp_pdate(String ap_pdate) {
		this.ap_pdate = ap_pdate;
	}
	public String getAp_ptime() {
		return ap_ptime;
	}
	public void setAp_ptime(String ap_ptime) {
		this.ap_ptime = ap_ptime;
	}
	public String getAp_ptarget() {
		return ap_ptarget;
	}
	public void setAp_ptarget(String ap_ptarget) {
		this.ap_ptarget = ap_ptarget;
	}
	public String getAp_aid() {
		return ap_aid;
	}
	public void setAp_aid(String ap_aid) {
		this.ap_aid = ap_aid;
	}
	public String getAp_aname() {
		return ap_aname;
	}
	public void setAp_aname(String ap_aname) {
		this.ap_aname = ap_aname;
	}
	public String getAp_mid() {
		return ap_mid;
	}
	public void setAp_mid(String ap_mid) {
		this.ap_mid = ap_mid;
	}
	public String getAp_mname() {
		return ap_mname;
	}
	public void setAp_mname(String ap_mname) {
		this.ap_mname = ap_mname;
	}
	public String getAp_mphone() {
		return ap_mphone;
	}
	public void setAp_mphone(String ap_mphone) {
		this.ap_mphone = ap_mphone;
	}
	public String getAp_mrole() {
		return ap_mrole;
	}
	public void setAp_mrole(String ap_mrole) {
		this.ap_mrole = ap_mrole;
	}
	public String getAp_applyDate() {
		return ap_applyDate;
	}
	public void setAp_applyDate(String ap_applyDate) {
		this.ap_applyDate = ap_applyDate;
	}
	public String getAp_state() {
		return ap_state;
	}
	public void setAp_state(String ap_state) {
		this.ap_state = ap_state;
	}
	public String getAp_rejec() {
		return ap_rejec;
	}
	public void setAp_rejec(String ap_rejec) {
		this.ap_rejec = ap_rejec;
	}
	public String getAp_rv() {
		return ap_rv;
	}
	public void setAp_rv(String ap_rv) {
		this.ap_rv = ap_rv;
	}
	
	
	@Override
	public String toString() {
		return "ApplyVO [ap_id=" + ap_id + ", ap_pid=" + ap_pid + ", ap_ptitle=" + ap_ptitle + ", ap_pdate=" + ap_pdate
				+ ", ap_ptime=" + ap_ptime + ", ap_ptarget=" + ap_ptarget + ", ap_aid=" + ap_aid + ", ap_aname="
				+ ap_aname + ", ap_mid=" + ap_mid + ", ap_mname=" + ap_mname + ", ap_mphone=" + ap_mphone
				+ ", ap_mrole=" + ap_mrole + ", ap_applyDate=" + ap_applyDate + ", ap_state=" + ap_state + ", ap_rejec="
				+ ap_rejec + ", ap_rv=" + ap_rv + "]";
	}

	
	

	
}