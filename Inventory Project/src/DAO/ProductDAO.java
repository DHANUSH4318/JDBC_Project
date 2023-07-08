package DAO;

import ConnectionManager.ConnectionManager;
import Model.Product;
import java.sql.*;

public class ProductDAO {

    public void addProduct(Product product) throws SQLException, ClassNotFoundException {

        // Java and JDBC Connect
        ConnectionManager conm = new ConnectionManager();
        Connection con = conm.establishConnection();

        String sql_query = "insert into product(productId,productName,minSellQuantity,prize,quantity) values(?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(sql_query);
        ps.setInt(1,product.getProductId());    // 1st ? -> Product ID is assigned
        ps.setString(2,product.getProductName());
        ps.setInt(3,product.getMinSellQuantity());
        ps.setInt(4,product.getPrize());
        ps.setInt(5,product.getQuantity());


        ps.executeUpdate();
        conm.closeConnection();

    }

    public void display() throws SQLException, ClassNotFoundException {
        // Java and JDBC Connect
        ConnectionManager conm = new ConnectionManager();
        Connection con = conm.establishConnection();

        Statement st = con.createStatement();

        ResultSet rt = st.executeQuery("select * from product");

        while (rt.next())
        {
            System.out.println(rt.getInt("productId")+" | "+rt.getString("productName")+" | "+rt.getInt("minSellQuantity")+" | "+rt.getInt("prize")+" | "+rt.getInt("quantity"));
        }

    }

}
