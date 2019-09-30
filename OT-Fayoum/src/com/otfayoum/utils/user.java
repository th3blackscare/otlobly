package com.otfayoum.utils;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class user {
    private static String name;
    private static int res_id;
    private static String pic;
    //Connection connection = ConnectionUI.ConnDB(); ;
    PreparedStatement preparedStatement;
    ResultSet resultSet;
    PreparedStatement p ;

    //public user(){  }
    //Login Method

    public static String getName(){
        return name;
    }

    public static int getRes(){
        return res_id;
    }

    public static String getImage(){
        return pic;
    }

    public String login(String username, String password){
        String sql = "SELECT * FROM users Where email = ? and password = ? AND (user_type='Admin' OR user_type='MasterAdmin')";
        try {
            preparedStatement = ConnectionUI.getCon().prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();
            if (!resultSet.next()) {
                return "Error";
            } else {
                name = resultSet.getString("first_name");
                res_id = resultSet.getInt("res_id");
                pic = resultSet.getString("image");

                return "Success";
            }

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
            return "Exception";
        }
    }
}

