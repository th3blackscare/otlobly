package com.otfayoum.controllers;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ResourceBundle;

import com.otfayoum.utils.user;
import com.otfayoum.operations.counter;

import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

public class HomeController implements Initializable {

    @FXML
    private Button btnName;

    @FXML
    private Button btnExit;

    @FXML
    private Button btnLogout;

    @FXML
    private Button btnDash;

    @FXML
    private Button btnOrders;

    @FXML
    private ImageView pic;

    @FXML
    private Label lblT;

    @FXML
    private Label lblT1;



    @Override
    public void initialize(URL location, ResourceBundle resources) {
        // TODO
        btnName.setText(user.getName());
        pic.setImage(new Image("https://www.otlobly.me/uploads/"+user.getImage()));
        lblT.setText("الاجمالي اليوم: "+counter.getTotal());
        lblT1.setText("الطلبات اليوم: "+counter.getCount());
    }

    public void handleButtonAction(MouseEvent event) throws IOException {
        if(event.getSource() == btnLogout){
            try {
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                stage.close();
                Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/com/otfayoum/fxml/login.fxml")));
                stage.setScene(scene);
                stage.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else if(event.getSource() == btnExit){
            try{
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                stage.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        else if(event.getSource() == btnOrders ){
            try {
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                //stage.close();
                Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/com/otfayoum/fxml/Orders.fxml")));
                stage.setScene(scene);
                stage.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else if(event.getSource() == btnName){
            try {
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                stage.close();
                Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/com/otfayoum/fxml/profile.fxml")));
                stage.setScene(scene);
                stage.show();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
