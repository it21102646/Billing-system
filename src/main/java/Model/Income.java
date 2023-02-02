package Model;

public class Income {
	private int id;
	private String invoiceId;
	private String name;
	private String discount;
	private float total;

	public Income(int id, String invoiceId, String name, String discount, float total) {
		super();
		this.id = id;
		this.invoiceId = invoiceId;
		this.name = name;
		this.discount = discount;
		this.total = total;

	}

	public int getId() {
		return id;
	}

	public String getInvoiceId() {
		return invoiceId;
	}

	public void setInvoiceId(String invoiceId) {
		this.invoiceId = invoiceId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public float getTotal() {
		return total;
	}

}
