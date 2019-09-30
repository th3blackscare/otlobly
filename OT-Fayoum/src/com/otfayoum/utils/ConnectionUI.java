package com.otfayoum.utils;
import javafx.scene.control.Alert;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionUI {
    static Connection con ;
    public void ConnectionUI() {
        ConnDB();
    }
    private Connection ConnDB(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://41.41.94.230/otlobly?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "omar", "Reem*01019965508");
            this.con= con;
            return con;
        } catch (SQLException | ClassNotFoundException e) {
            Alert a = new Alert(Alert.AlertType.NONE);
            a.setAlertType(Alert.AlertType.ERROR);
            a.setContentText(e.getMessage());
            a.show();
            System.err.println("ConnectionUtil : "+e.getMessage());
            return null;
        }
    }
    public static Connection getCon(){
        return con;
    }
}
