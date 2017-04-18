package org.hacktronic.persistence.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="transaction")
public class TransactionModel extends Model {
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private UserModel user;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "cart_product", joinColumns = { @JoinColumn(name = "transactionId") }, inverseJoinColumns = {
			@JoinColumn(name = "productId") })
	private List<ProductModel> products = new ArrayList<ProductModel>();

	private int grandTotal;

	private String approval;

	public UserModel getUser() {
		return user;
	}

	public void setUser(UserModel user) {
		this.user = user;
	}

	public List<ProductModel> getCourses() {
		return products;
	}

	public void setCourses(List<ProductModel> products) {
		this.products = products;
	}

	public int getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(int grandTotal) {
		this.grandTotal = grandTotal;
	}

	public String getApproval() {
		return approval;
	}

	public void setApproval(String approval) {
		this.approval = approval;
	}
	
}
