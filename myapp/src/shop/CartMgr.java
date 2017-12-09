package shop;

import java.util.Hashtable;

public class CartMgr {
	
	private Hashtable<Integer, OrderBean> hCart = 
			new Hashtable<>();
	
	//Cart Add
	public void addCart(OrderBean order/*새로운 장바구니*/) {
		int productNo = order.getProductNo();
		int quantity = order.getQuantity();
		if(quantity>0) {
			if(hCart.containsKey(productNo)) {
				//기존에 저장된 것이 있다면
				OrderBean temp = hCart.get(productNo);
				quantity+=temp.getQuantity();
				order.setQuantity(quantity);
				hCart.put(productNo, order);
			}else {
				//기존에 저장이 없다면
				hCart.put(productNo, order);
			}
		}
	}
	
	//Cart Update
	public void updateCart(OrderBean order) {
		int productNo = order.getProductNo();
		//동일한 key값은 덮어쓰기
		hCart.put(productNo, order);
	}
	
	//Cart Delete
	public void deleteCart(OrderBean order) {
		int productNo = order.getProductNo();
		hCart.remove(productNo);//auto boxing
	}
	
	//Cart List
	public Hashtable<Integer, OrderBean> getCartList(){
		return hCart;
	}
}








