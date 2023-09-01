package assignment.dto;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class AssignmentDto {
	
	private String Full_Name;
	private long Mobile_Number;
	@Id
	private String Email_Address;
	private String Password;
	
	
	public String getFull_Name() {
		return Full_Name;
	}


	public void setFull_Name(String full_Name) {
		Full_Name = full_Name;
	}


	public long getMobile_Number() {
		return Mobile_Number;
	}


	public void setMobile_Number(long mobile_Number) {
		Mobile_Number = mobile_Number;
	}


	public String getEmail_Address() {
		return Email_Address;
	}


	public void setEmail_Address(String email_Address) {
		Email_Address = email_Address;
	}


	public String getPassword() {
		return Password;
	}


	public void setPassword(String password) {
		Password = password;
	}


	@Override
	public String toString() {
		return "AssignmentDto [Full_Name=" + Full_Name + ", Mobile_Number=" + Mobile_Number + ", Emai_Address="
				+ Email_Address + ", Password=" + Password + "]";
	}
	
}