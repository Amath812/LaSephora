package model;

public class CartModel {
	private int id;
	private String name;
	private String color;
	private String size;
	private String quantity;
	private String price;
	
	//constructor 
	public CartModel(int id, String name, String color, String size, String quantity, String price) {
		super();
		this.id = id;
		this.name = name;
		this.color = color;
		this.size = size;
		this.quantity = quantity;
		this.price = price;
	}
	
	//getters and setters
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

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
}
