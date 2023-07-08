package DAO;

import ConnectionManager.ConnectionManager;
import Model.Login;

import java.sql.*;

public class LoginDAO {


    public boolean validate(Login login) throws SQLException, ClassNotFoundException {

        String username = login.getUsername();
        String password = login.getPassword();

        ConnectionManager conm = new ConnectionManager();
        Connection con = conm.establishConnection();

        // Statement Class for implementation of Query in Java
        Statement st = con.createStatement();

        ResultSet rt = st.executeQuery("select * from login");

        while (rt.next())
        {
            if (username.equals(rt.getString("username")) && password.equals(rt.getString("password"))) {
                conm.closeConnection();
                return true;
            }
        }
        conm.closeConnection();
        return false;
    }

}
