package com.otfayoum.operations;

import com.otfayoum.utils.ConnectionUI;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class orderdata {
    Connection connection = ConnectionUI.ConnDB(); ;
    PreparedStatement preparedStatement;
    ResultSet resultSet;

    private String order_id;
    private int user_id;
    private int address_id;
    private String total_rate;
    private String name;
    private String phone;
    private String address;

    private void setOrder_id(String Order_Id){
        this.order_id = Order_Id;
    }
    public String getOrder_Id(){
        return order_id;
    }
    public void orderdata(String Order_id) throws SQLException {
        setOrder_id(Order_id);
        order_master();
        getUserData();
        getUserAddress();

    }
    private void order_master() throws SQLException {
        String sql = "SELECT user_id,address_id,total_rate FROM order_master WHERE entity_id= ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, order_id);
        resultSet = preparedStatement.executeQuery();
        try {
            if (resultSet.next()){
                this.user_id= resultSet.getInt("user_id");
                this.address_id= resultSet.getInt("address_id");
                this.total_rate= resultSet.getString("total_rate");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void getUserData() throws SQLException {
        String sql = "SELECT first_name,mobile_number FROM users WHERE entity_id= ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1, user_id);
        resultSet = preparedStatement.executeQuery();
        try {
            if (resultSet.next()){
                this.name= resultSet.getString("first_name");
                this.phone= resultSet.getString("mobile_number");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void getUserAddress() throws SQLException {
        String sql = "SELECT address FROM user_address WHERE entity_id= ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1, address_id);
        resultSet = preparedStatement.executeQuery();
        try {
            if (resultSet.next()){
                this.address= resultSet.getString("address");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getTotal_rate(){
        return total_rate;
    }

    public String getName(){
        return name;
    }

    public String getPhone(){
        return "0"+phone;
    }

    public String getAddress(){
        return address;
    }
}
