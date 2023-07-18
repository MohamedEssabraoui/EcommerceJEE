package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import project.ConnectionProvider;

public class Users {
	protected String email;
	protected String name;
	protected int mobileNumber;
	protected String password;
	protected String address;
	protected String city;
	protected String state;
	protected String country;
	
	
	public Users(String email, String name, int mobileNumber, String password, String address, String city,
			String state, String country) {
		super();
		this.email = email;
		this.name = name;
		this.mobileNumber = mobileNumber;
		this.password = password;
		this.address = address;
		this.city = city;
		this.state = state;
		this.country = country;
	}
	public Users() {
		// TODO Auto-generated constructor stub
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(int mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	public void adduser(String email, String name, String mobileNumber, String password, String address, String city,
			String state, String country) {
		try{
			ConnectionProvider conProvider =new ConnectionProvider();
			Connection con=conProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, mobileNumber);
			ps.setString(4, password);
			ps.setString(5, address);
			ps.setString(6, city);
			ps.setString(7, state);
			ps.setString(8, country);
			ps.executeUpdate();
		}
		catch(Exception e){
			
			System.out.println(e);
			
		}
	}
	
	public void edituser(String email, String name, String mobileNumber, String password, String address, String city,
			String state, String country,String oldEmail) {
		try{
			ConnectionProvider conProvider =new ConnectionProvider();
			Connection con=conProvider.getCon();
			PreparedStatement ps=con.prepareStatement("update users set name=?,email=?,mobileNumber=?,password=?,address=?,city=?,state=?,country=? where email=?");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, mobileNumber);
			ps.setString(4, password);
			ps.setString(5, address);
			ps.setString(6, city);
			ps.setString(7, state);
			ps.setString(8, country);
			ps.setString(9, oldEmail);
			ps.executeUpdate();
		}catch(Exception e){
			System.out.println(e);
		}
	}
}
