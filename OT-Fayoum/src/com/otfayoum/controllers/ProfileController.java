package com.otfayoum.controllers;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

import com.otfayoum.operations.res_data;
import javafx.stage.Stage;

public class ProfileController implements Initializable {

    @FXML
    private Button btnExit;

    @FXML
    private Button btnUpdate;

    @FXML
    private TextField txtName;

    @FXML
    private ImageView image;

    @FXML
    private TextField txtPhone;

    @FXML
    private TextField txtEmail;

    @FXML
    private TextField txtCapacity;

    @FXML
    private TextField txtTables;

    @FXML
    private TextField txtHalls;

    @FXML
    private TextField txtHallCap;

    res_data Res = new res_data();

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            Res.res_data();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        txtName.setText(Res.getName());
        txtPhone.setText(Res.getPhone_number());
        txtEmail.setText(Res.getEmail());
        txtCapacity.setText(Res.getCapacity());
        txtTables.setText(Res.getNo_of_table());
        txtHalls.setText(Res.getNo_off_hall());
        txtHallCap.setText(Res.getHall_capacity());
        image.setImage(new Image("https://www.otlobly.me/uploads/"+Res.getImage()));
    }

    public void handleButtonAction(MouseEvent event) throws IOException {
        if(event.getSource() == btnExit){
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                stage.close();
                Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/com/otfayoum/fxml/Dashboard.fxml")));
                stage.setScene(scene);
                stage.show();
        }
    }
}