package com.otfayoum.operations;

import com.otfayoum.utils.ConnectionUI;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class orderdata {
    Connection connection ;
    PreparedStatement preparedStatement;
    ResultSet resultSet;
    private static int order_id;
    public void setOrder_id(int Order_Id){
        this.order_id = Order_Id;
    }
    public int getOrder_Id(){
        return order_id;
    }
    public orderdata(int Order_id) throws SQLException {
        setOrder_id(Order_id);
        order_master();
    }
    private void order_master() throws SQLException {
        connection = ConnectionUI.ConnDB();
        String sql = "SELECT user_id,address_id,total_rate FROM order_master WHERE entity_id= ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1, order_id);
        resultSet = preparedStatement.executeQuery();
        try {
            if (!resultSet.next()){
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
