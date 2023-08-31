package com.bongsa.biz.program;

import java.time.LocalDateTime;

import com.bongsa.biz.user.UserVO;

//VO(Value Object)
public class ProgramVO {
	private long p_id;
	private String p_agencyid;
	private String p_title;
	private String p_startdate;
	private String p_enddate;
	private String p_open;
	private String p_close;
	private int p_demand;
	private String p_target;
	private String p_dayweek;
	private String p_onoff;
	private String p_content;
	private String p_starttime;
	private String p_endtime;
	private String p_manager;
	private String p_state;

	private String p_agname;
	private String p_agaddrs;

	private LocalDateTime p_createDate;

	public String getP_state() {
		return p_state;
	}

	public void setP_state(String p_state) {
		this.p_state = p_state;
	}

	public String getP_manager() {
		return p_manager;
	}

	public void setP_manager(String p_manager) {
		this.p_manager = p_manager;
	}

	public String getP_agname() {
		return p_agname;
	}

	public void setP_agname(String p_agname) {
		this.p_agname = p_agname;
	}

	public String getP_agaddrs() {
		return p_agaddrs;
	}

	public void setP_agaddrs(String p_agaddrs) {
		this.p_agaddrs = p_agaddrs;
	}

	public long getP_id() {
		return p_id;
	}

	public void setP_id(long p_id) {
		this.p_id = p_id;
	}

	public String getP_agencyid() {
		return p_agencyid;
	}

	public void setP_agencyid(String p_agencyid) {
		this.p_agencyid = p_agencyid;
	}

	public String getP_title() {
		return p_title;
	}

	public void setP_title(String p_title) {
		this.p_title = p_title;
	}

	public String getP_startdate() {
		return p_startdate;
	}

	public void setP_startdate(String p_startdate) {
		this.p_startdate = p_startdate;
	}

	public String getP_enddate() {
		return p_enddate;
	}

	public void setP_enddate(String p_enddate) {
		this.p_enddate = p_enddate;
	}

	public String getP_starttime() {
		return p_starttime;
	}

	public void setP_starttime(String p_starttime) {
		this.p_starttime = p_starttime;
	}

	public String getP_endtime() {
		return p_endtime;
	}

	public void setP_endtime(String p_endtime) {
		this.p_endtime = p_endtime;
	}

	public String getP_open() {
		return p_open;
	}

	public void setP_open(String p_open) {
		this.p_open = p_open;
	}

	public String getP_close() {
		return p_close;
	}

	public void setP_close(String p_close) {
		this.p_close = p_close;
	}

	public int getP_demand() {
		return p_demand;
	}

	public void setP_demand(int p_demand) {
		this.p_demand = p_demand;
	}

	public String getP_target() {
		return p_target;
	}

	public void setP_target(String p_target) {
		this.p_target = p_target;
	}

	public String getP_dayweek() {
		return p_dayweek;
	}

	public void setP_dayweek(String p_dayweek) {
		this.p_dayweek = p_dayweek;
	}

	public String getP_onoff() {
		return p_onoff;
	}

	public void setP_onoff(String p_onoff) {
		this.p_onoff = p_onoff;
	}

	public String getP_content() {
		return p_content;
	}

	public void setP_content(String p_content) {
		this.p_content = p_content;
	}

	public LocalDateTime getP_createDate() {
		return p_createDate;
	}

	public void setP_createDate(LocalDateTime p_createDate) {
		this.p_createDate = p_createDate;
	}

	@Override
	public String toString() {
		return 
				"봉사정보 ["+
				p_title+", " +p_startdate+", " +p_enddate+", " +p_open+", " +p_close+", " +p_demand+", " +p_target+", " + p_dayweek+", " +
				p_onoff+", " + p_content+", " +p_starttime+", " + p_endtime+", " + p_manager+", " + p_state+", " + p_agname+", " + p_agaddrs+", " + p_createDate+"]";
	}

}