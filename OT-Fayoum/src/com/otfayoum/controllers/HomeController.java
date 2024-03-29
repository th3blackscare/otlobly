package com.otfayoum.controllers;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
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
    private Button btnOrders;

    @FXML
    private ImageView pic;

    @FXML
    private Label lblT;

    @FXML
    private Label lblT1;

    counter c = new counter();

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        // TODO
        try {
            c.counter();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        btnName.setText(user.getName());
        pic.setImage(new Image("https://www.otlobly.me/uploads/"+user.getImage()));
        lblT.setText("الاجمالي اليوم: "+c.getTotal());
        lblT1.setText("الطلبات اليوم: "+c.getCount());
    }

    public void handleButtonAction(MouseEvent event) throws IOException {
        if(event.getSource() == btnLogout){
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                stage.close();
                Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/com/otfayoum/fxml/login.fxml")));
                stage.setScene(scene);
                stage.show();
        }
        else if(event.getSource() == btnExit){
                btnExit.setOnAction(e -> Platform.exit());
        }
        else if(event.getSource() == btnOrders ){
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                //stage.close();
                Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/com/otfayoum/fxml/Orders.fxml")));
                stage.setScene(scene);
                stage.show();
        }
        else if(event.getSource() == btnName){
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                stage.close();
                Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/com/otfayoum/fxml/profile.fxml")));
                stage.setScene(scene);
                stage.show();
        }
    }
}
