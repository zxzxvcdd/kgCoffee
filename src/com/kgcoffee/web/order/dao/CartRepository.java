package com.kgcoffee.web.order.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.kgcoffee.web.common.DBConn;
import com.kgcoffee.web.order.domain.CartVO;


public class CartRepository {

	
	
	private Connection con;
	private PreparedStatement pst = null;
	private ResultSet rs = null;
	String sql;

	public CartRepository() {
		// TODO Auto-generated constructor stub
	
		this.con= DBConn.getInstance().getCon();
	
	}
	
	

    public boolean save(CartVO cart){
        
     
    	boolean result=false;

        sql = "INSERT INTO cart(cart_id, user_id, menu_id, menu_amount)"
        		+ " values(cart_seq.nextVal(), ?, ?, ?)";
        try {
            
            pst = con.prepareStatement(sql);
            pst.setString(1, cart.getUserId());
            pst.setInt(2, cart.getMenuId());
            pst.setInt(3, cart.getMenuAmount());
            
            
            if(pst.executeUpdate()>=1) {
            	result=true;
            }
            
            
        } catch (SQLException e ) {
            e.printStackTrace();
        } finally {
            close( pst, rs);
        }
        return result;
    }

    public boolean delete(int Cart_id){
    	
    	boolean result=false;
        sql = "DELETE FROM Cart WHERE Cart_ID = ?";
        try {
            
            pst = con.prepareStatement(sql);
            pst.setInt(1, Cart_id);
        
            if(pst.executeUpdate()>=1) {
            	result=true;
            }
        } catch (SQLException e ) {
            e.printStackTrace();
        } finally {
        
        	close(pst, rs);	
        }
        
        return result;
    }
    
    public int findCartByMenuId(String userId, int menuId) {
   
    	int cartId=0;

        sql = "SELECT cart_id FROM Cart WHERE user_id = ? and menu_id = ?";
        
       try {
            
            pst = con.prepareStatement(sql);
            pst.setString(1, userId);
            pst.setInt(1, menuId);
          
            rs = pst.executeQuery();
            while(rs.next()){
       
            	cartId= rs.getInt("cart_id");

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(pst, rs);
        }
        return cartId;
    	
    	
    }

    public boolean update(int cartId, int addAmount){
 
    	
    	boolean result=false;
    	
    	
        sql = "UPDATE Cart SET menu_amount = ? WHERE Cart_ID = ?";
        try {
            
            pst = con.prepareStatement(sql);
            pst.setInt(1, addAmount);
            pst.setInt(2, cartId);
            if(pst.executeUpdate()>=1) {
            	result=true;
            }
            
            
        } catch (SQLException e ) {
            e.printStackTrace();
        } finally {
            close(pst, rs);
        }
        return result;
        
        
    }



    public ArrayList<CartVO> findAllCartsByUserId(String userId){
       

        sql = "SELECT * FROM Cart INNER JOIN MENU ON cart.menu_id = menu.menu_id WHERE cart.USER_ID=?";
        
        ArrayList<CartVO> arrayList = new ArrayList<>();
        try {
            
            pst = con.prepareStatement(sql);
            pst.setString(1, userId);
       
            rs = pst.executeQuery();
            while(rs.next()){
                CartVO cart = new CartVO();
                
                cart.setCartId(rs.getInt("cart_id"));
                cart.setUserId(rs.getString("user_id"));
                cart.setMenuAmount(rs.getInt("menu_amount"));
                cart.setMenuId(rs.getInt("menu_id"));
                cart.setFileName(rs.getString("imgurl"));
                cart.setCaffeineType(rs.getString("caffeineType"));
                cart.setMenuName(rs.getString("menuName"));
                cart.setMenuPrice(rs.getInt("menuPrice"));
                cart.setMenuType(rs.getString("menuExplain"));
                cart.setMenuExplain(rs.getString("menuType"));
                
             
                arrayList.add(cart);

            
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(pst, rs);
        }
        return arrayList;
    }
    


    private void close( Statement stmt, ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }



}