package model;

public class Product {

	protected int id;
	protected String name;
	protected int price;
	protected String category;
	protected String active;
	
	public Product(int id, String name, int price, String category, String active) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.category = category;
		this.active = active;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
}
