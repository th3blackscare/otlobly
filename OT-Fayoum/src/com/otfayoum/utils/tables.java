package com.otfayoum.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.util.Callback;

import com.otfayoum.utils.user;

public class tables {


    private static String SQL ;
    public static Connection connection = ConnectionUI.getCon();
    private static ObservableList<ObservableList> data;
    PreparedStatement preparedStatement;
    public tables(){connection = ConnectionUI.getCon();}




    public static TableColumn fetColumnList(TableView<ObservableList> tblData, int ig,String str) {
        //connection = ConnectionUI.ConnDB();
        if(ig == 1){
            SQL = "SELECT entity_id,order_status,order_date from order_master";
        }
        else if(ig == 2){
            SQL = "SELECT item_name,qty_no,rate from order_item";
        }
        try {
            ResultSet rs = ConnectionUI.getCon().createStatement().executeQuery(SQL);

            //SQL FOR SELECTING ALL OF CUSTOMER
            for (int i = 0; i < rs.getMetaData().getColumnCount(); i++) {
                //We are using non property style for making dynamic table
                final int j = i;
                TableColumn col = new TableColumn(rs.getMetaData().getColumnName(i + 1).toUpperCase());
                col.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<ObservableList, String>, ObservableValue<String>>() {
                    public ObservableValue<String> call(TableColumn.CellDataFeatures<ObservableList, String> param) {
                        return new SimpleStringProperty(param.getValue().get(j).toString());
                    }
                });

                //System.out.println("Column [" + i + "] ");
                tblData.getColumns().removeAll(col);
                tblData.getColumns().addAll(col);
            }

        } catch (Exception e) {
            System.out.println("Error " + e.getMessage());

        }
        return null;
    }
    public static ObservableList<ObservableList> fetRowList(int ig, String str) {
        if(ig == 1){
            SQL = "SELECT entity_id,order_status,order_date from order_master where restaurant_id="+"\'"+user.getRes()+"\'"+" and (order_status='placed' OR order_status='preparing' OR order_status='onGoing')";
        }
        else if(ig == 2){
            SQL = "SELECT item_name,qty_no,rate from order_item where "+"order_id="+"\'"+str+"\'";
        }
        data = FXCollections.observableArrayList();
        ResultSet rs;
        try {
            rs = ConnectionUI.getCon().createStatement().executeQuery(SQL);

            while (rs.next()) {
                //Iterate Row
                ObservableList row = FXCollections.observableArrayList();
                for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
                    //Iterate Column
                    row.add(rs.getString(i));
                }
                //System.out.println("Row [1] added " + row);
                data.add(row);

            }

            return data;
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
            return null;
        }
    }

}
