package com.otfayoum.operations;

import com.otfayoum.utils.ConnectionUI;
import com.otfayoum.utils.user;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.TableColumn;
import javafx.util.Callback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class counter {
    private static int count;
    private static double total;
    Connection connection = ConnectionUI.ConnDB(); ;
    PreparedStatement preparedStatement;
    ResultSet resultSet;

    LocalDate now = LocalDate.now();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    String formattedString = now.format(formatter);
    private static ObservableList<ObservableList> data;
    public void counter() throws SQLException {
        count();
    }
    private void count() throws SQLException {
        String sql = "SELECT subtotal,order_date from order_master where restaurant_id= ? and order_date= ?";
        data = FXCollections.observableArrayList();
        ResultSet rs;
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, user.getRes());
            preparedStatement.setString(2, formattedString);
            resultSet = preparedStatement.executeQuery();
            //rs = connection.createStatement().executeQuery(sql);

            while (resultSet.next()) {
                ObservableList row = FXCollections.observableArrayList();
                total += resultSet.getInt("subtotal");

            }
            this.total = total;
            this.count = resultSet.getMetaData().getColumnCount();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static int getCount(){
        return count;
    }
    public static double getTotal(){
        return total;
    }
}