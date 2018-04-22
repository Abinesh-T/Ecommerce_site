package com.niit.Ecommerce_backend.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity	
@Table(name="CARTMODEL")
public class CartModel implements Serializable
{

	
		
		private static final long serialVersionUID = 1L;
		@Id
	    private int cartid;
		private ProductModel productid;
		private int prices;
		private int quantity;
		@Id
		@GeneratedValue
		@Column(name="cartid")//defining the database column
		public int getCartid() {
			return cartid;
		}
		public void setCartid(int cartid) {
			this.cartid = cartid;
		}
		//In One productid display in cart
			@OneToOne
			@JoinColumn(name="productid")
			public ProductModel getProductid() {
				return productid;
			}
			public void setProductid(ProductModel productid) {
				this.productid = productid;
			}
		@Column(name="prices")
		public int getPrices() {
			return prices;
		}
		public void setPrices(int prices) {
			this.prices = prices;
		}
		@Column(name="quantity")
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		
		
		

}

