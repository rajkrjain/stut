package com.test.model;

import com.test.ApplicationParser;


public class HelpLayout {
	
	String dataKey;
	
	public String getDataKey() {
		return dataKey;
	}
	public void setDataKey(String dataKey) {
		this.dataKey = dataKey;
	}
	public String getPayLoadHtml() {
		payLoadHtml = ApplicationParser.readFile(payLoadHtml);
		return payLoadHtml;
	}
	public void setPayLoadHtml(String payLoadHtml) {
		
		
		this.payLoadHtml = payLoadHtml;
	}
	String payLoadHtml;
	
	private String header;
	private String logo;

	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
}
