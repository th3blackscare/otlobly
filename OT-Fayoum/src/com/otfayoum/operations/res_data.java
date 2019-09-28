package com.otfayoum.operations;
import com.otfayoum.utils.ConnectionUI;
import com.otfayoum.utils.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class res_data {
    Connection connection;
    PreparedStatement preparedStatement;
    ResultSet resultSet;
    private String name;
    private String phone_number;
    private String email;
    private String capacity;
    private String no_of_table;
    private String no_off_hall;
    private String image;
    private String hall_capacity;

    public void res_data() throws SQLException {connection = ConnectionUI.ConnDB(); get_data();}

    private void get_data() throws SQLException {
        String sql = "SELECT * FROM restaurant where entity_id= ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,user.getRes());
        resultSet = preparedStatement.executeQuery();
        if(resultSet.next()){
            this.name = resultSet.getString("name");
            this.phone_number = resultSet.getString("phone_number");
            this.email = resultSet.getString("email");
            this.capacity = resultSet.getString("capacity");
            this.no_of_table = resultSet.getString("no_of_table");
            this.no_off_hall = resultSet.getString("no_of_hall");
            this.hall_capacity = resultSet.getString("hall_capacity");
            this.image = resultSet.getString("image");
        }else{
        }
    }

    public String getName(){
        return name;
    }
    public String getPhone_number(){
        return phone_number;
    }
    public String getEmail(){
        return email;
    }
    public String getCapacity(){
        return capacity;
    }
    public String getNo_of_table(){
        return no_of_table;
    }
    public String getNo_off_hall(){
        return no_off_hall;
    }
    public String getImage(){
        return image;
    }
    public String getHall_capacity(){
        return hall_capacity;
    }

}
