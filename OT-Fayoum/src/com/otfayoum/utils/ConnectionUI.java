package com.otfayoum.utils;
import javafx.scene.control.Alert;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionUI {
    static Connection con ;
    /* Main Constructor - Connection Initializer ( usable in Main class only)
    *  If used in more than one place will lead to overload
    */
    public void ConnectionUI() {
        ConnDB();
    }
    /*
     * non-static JDBC method - will connect to mysql server
     */
    private void ConnDB(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://41.41.94.230/otlobly?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "omar", "Reem*01019965508");
            ConnectionUI.con = con;
        } catch (SQLException | ClassNotFoundException e) {
            Alert a = new Alert(Alert.AlertType.NONE);
            a.setAlertType(Alert.AlertType.ERROR);
            a.setContentText(e.getMessage());
            a.show();
            System.err.println("ConnectionUtil : "+e.getMessage());
        }
    }
    /*
     * static method - will return the connection info and open it once to reduce the connection's on server
     */
    public static Connection getCon(){
        return con;
    }
}
