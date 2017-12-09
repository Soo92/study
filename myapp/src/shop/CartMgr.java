package shop;

import java.util.Hashtable;

public class CartMgr {
	
	private Hashtable<Integer, OrderBean> hCart = 
			new Hashtable<>();
	
	//Cart Add
	public void addCart(OrderBean order/*���ο� ��ٱ���*/) {
		int productNo = order.getProductNo();
		int quantity = order.getQuantity();
		if(quantity>0) {
			if(hCart.containsKey(productNo)) {
				//������ ����� ���� �ִٸ�
				OrderBean temp = hCart.get(productNo);
				quantity+=temp.getQuantity();
				order.setQuantity(quantity);
				hCart.put(productNo, order);
			}else {
				//������ ������ ���ٸ�
				hCart.put(productNo, order);
			}
		}
	}
	
	//Cart Update
	public void updateCart(OrderBean order) {
		int productNo = order.getProductNo();
		//������ key���� �����
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








