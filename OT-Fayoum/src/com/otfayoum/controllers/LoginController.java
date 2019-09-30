package com.otfayoum.controllers;

import com.otfayoum.utils.md5;
import com.otfayoum.utils.user;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class LoginController implements Initializable {

    @FXML
    public TextField txtUsername;
    @FXML
    private PasswordField txtPassword;
    @FXML
    private Button btnSignin;

    public LoginController() {


    }

    public void handleButtonAction(MouseEvent event) {
        if (event.getSource() == btnSignin) {
            if (new user().login(txtUsername.getText(), md5.getMd5(txtPassword.getText())).equals("Success")) {
                try {
                    Node node = (Node) event.getSource();
                    Stage stage = (Stage) node.getScene().getWindow();
                    stage.close();
                    Scene scene = new Scene(FXMLLoader.load(getClass().getResource("/com/otfayoum/fxml/Dashboard.fxml")));
                    stage.setScene(scene);
                    stage.show();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else if (new user().login(txtUsername.getText(), txtPassword.getText()).equals("Error")) {
                Alert a = new Alert(AlertType.NONE);
                a.setAlertType(AlertType.ERROR);
                a.setContentText("Username or Password is not correct!");
                a.show();
                txtUsername.getStyleClass().add("wrong-credentials");
                txtPassword.getStyleClass().add("wrong-credentials");
            }
        }
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {

        // TODO
       /* if (con == null) {
            lblErrors.setTextFill(Color.TOMATO);
            lblErrors.setText("Connection Error: Check Internet Connection or Server ");
        } else {
            lblErrors.setTextFill(Color.DARKGREEN);
            lblErrors.setText("Connection initiated");
        }*/
    }
}