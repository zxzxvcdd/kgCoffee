package com.kgcoffee.web.order.controller.cart;

import java.util.ArrayList;
import java.util.Map;

import com.kgcoffee.web.order.Controller;
import com.kgcoffee.web.order.dao.CartRepository;
import com.kgcoffee.web.order.domain.CartVO;

public class CartUpdateController implements Controller {

	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model) {
		int cartId = Integer.parseInt(paramMap.get("cart_id"));
		int menuId = Integer.parseInt(paramMap.get("menu_id"));
		String userId = paramMap.get("user_id");
		int menuAmount = Integer.parseInt(paramMap.get("menu_amount"));
		CartRepository CartRepository = new CartRepository();
		if (CartRepository.findCartByMenuId(userId, menuId) >= 1) {
			CartRepository.update(cartId, menuAmount);
			ArrayList<CartVO> CartList = CartRepository.findAllCartsByUserId(userId);
			model.put("carts", CartList);

		}else {
			
			CartVO cart = new CartVO(menuId,userId,menuAmount);
			CartRepository.save(cart);
			
			
			
		}
		return "Cart-form";
	}
}