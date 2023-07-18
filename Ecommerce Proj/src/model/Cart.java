package model;

import java.util.Date;

public class Cart {
	protected String email;
	protected int product_id;
	protected int quantity;
	protected int price;
	protected int total;
	protected String address;
	protected String city;
	protected String state;
	protected String country;
	protected int mobileNumber;
	protected Date orderDate;
	protected Date deliveryDate;
	protected String paymentMethod;
	protected String transactionId;
	protected String status;
	
	public Cart(String email, int product_id, int quantity, int price, int total, String address, String city,
			String state, String country, int mobileNumber, Date orderDate, Date deliveryDate, String paymentMethod,
			String transactionId, String status) {
		super();
		this.email = email;
		this.product_id = product_id;
		this.quantity = quantity;
		this.price = price;
		this.total = total;
		this.address = address;
		this.city = city;
		this.state = state;
		this.country = country;
		this.mobileNumber = mobileNumber;
		this.orderDate = orderDate;
		this.deliveryDate = deliveryDate;
		this.paymentMethod = paymentMethod;
		this.transactionId = transactionId;
		this.status = status;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
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
	public int getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(int mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
