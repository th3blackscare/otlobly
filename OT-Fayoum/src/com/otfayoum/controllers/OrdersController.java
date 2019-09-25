package com.otfayoum.controllers;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.input.InputMethodEvent;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;
import javafx.util.Callback;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

import com.otfayoum.utils.ConnectionUI;
import com.otfayoum.utils.user;
import com.otfayoum.utils.tables;

import javax.swing.*;

public class OrdersController implements Initializable {


    @FXML
    private ComboBox<String> lstStatus;

    @FXML
    private ComboBox<?> lstDelivery;

    @FXML
    private Button btnExit;

    @FXML
    private TextField txtQe;

    @FXML
    private TableView<ObservableList> tblData;

    @FXML
    private TableView<ObservableList> tblItems;

    PreparedStatement preparedStatement;
    Connection connection;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        tables.fetColumnList(tblData,1,"");
        tables.fetColumnList(tblItems,2,"");
        Runnable runnable = new Runnable() {
            public void run() {
                // task to run goes here
                tblData.setItems(tables.fetRowList(1,""));
            }
        };

        ScheduledExecutorService service = Executors
                .newSingleThreadScheduledExecutor();
        service.scheduleAtFixedRate(runnable, 0, 20, TimeUnit.SECONDS);

        tblData.setRowFactory( tv -> {
            TableRow<ObservableList> row = new TableRow<>();
            row.setOnMouseClicked(event -> {
                if (event.getClickCount() == 2 && (! row.isEmpty()) ) {
                    Object selectedItem = tblData.getSelectionModel().getSelectedItem().toString();
                    String[] parts= ((String) selectedItem).split(", ");
                    String[] parts1 = parts[0].split(Pattern.quote("["));
                    tblItems.getItems().clear();
                    tblItems.setItems(tables.fetRowList(2,parts1[1]));
                    System.out.println(selectedItem);
                }
            });
            return row ;
        });
    }



    @FXML
    public void handleButtonAction(MouseEvent event) {
        if(event.getSource() == btnExit){
            try {
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                stage.close();
                Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/com/otfayoum/fxml/Dashboard.fxml")));
                stage.setScene(scene);
                stage.show();
            }catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public OrdersController(){connection = ConnectionUI.ConnDB();}

    private ObservableList<ObservableList> data;




    public void onType(KeyEvent keyEvent) {
        if(keyEvent.getSource() == txtQe) {
            lstStatus.getItems().clear();
            lstStatus.getItems().addAll(txtQe.getText());
        }
    }
}
