package org.amperca.myapp.model;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Authorities {
	
	@Id
	@GeneratedValue
	private int authoritiesId;
	public int getAuthoritiesId() {
		return authoritiesId;
	}
	public void setAuthoritiesId(int authoritiesId) {
		this.authoritiesId = authoritiesId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	private String username;
	private String authority;
	
	
}
