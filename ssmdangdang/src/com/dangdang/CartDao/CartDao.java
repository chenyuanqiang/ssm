package com.dangdang.CartDao;

import java.util.List;

import com.dangdang.entery.Cart;

public interface CartDao {
	public void AddToCart(Cart cart);
	public Cart FindCartByBookId(Cart cart);
	public List<Cart> getallcartbyid(int userid);
	public void  changenumberbybookid(Cart cart);
	public void DeleteCartBookById(int id);
	public int cartbookcount( Cart cart);
	public void ClearCart(Cart cart);
}
