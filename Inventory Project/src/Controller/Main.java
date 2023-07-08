package Controller;

import java.sql.SQLException;
import java.util.Scanner;
import Model.Login;
import Model.Product;
import DAO.LoginDAO;
import DAO.ProductDAO;

public class Main {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Scanner in = new Scanner(System.in);
        Product product = new Product();
        Login login = new Login();
        int choice,option;
        LoginDAO logindao = new LoginDAO();
        ProductDAO productdao = new ProductDAO();
        do {
            System.out.println("1. Admin");
            System.out.println("2. Agent");
            System.out.println("3. Exit");
            System.out.println("*******************************************");
            System.out.println("Enter Your Choice :");
            choice = in.nextInt();
            switch (choice)
            {
                case 1:
                    System.out.println("Admin login");
                    in.nextLine();
                    System.out.println("Enter your Username: ");
                    String username = in.nextLine();
                    System.out.println("Enter your Password: ");
                    String password = in.nextLine();

                    // Setter for Login

                    login.setUsername(username);
                    login.setPassword(password);

                    if(logindao.validate(login))
                    {
                        System.out.println("Login Success !!!");
                        do {
                            System.out.println("******************");
                            System.out.println("1. Add Product");
                            System.out.println("2. Display Product");
                            System.out.println("3. Logout");
                            System.out.println("******************");
                            System.out.println("Enter Your Option");
                            option = in.nextInt();

                            switch (option)
                            {
                                case 1:
                                    System.out.println("Add Product");
                                    System.out.println("Enter the Product_ID");
                                    int productid = in.nextInt();
                                    in.nextLine();
                                    System.out.println("Enter the Product_Name");
                                    String productname = in.nextLine();
                                    System.out.println("Enter the Minimum Sell Quantity");
                                    int minsellquantity = in.nextInt();
                                    System.out.println("Enter the Prize ");
                                    int price = in.nextInt();
                                    System.out.println("Enter the Quantity");
                                    int quantity = in.nextInt();

                                    // Setter for Product

                                    product.setProductId(productid);
                                    product.setProductName(productname);
                                    product.setMinSellQuantity(minsellquantity);
                                    product.setPrize(price);
                                    product.setQuantity(quantity);
                                    productdao.addProduct(product);
                                    break;
                                case 2:
                                    System.out.println("Display Product");
                                    productdao.display();
                                    break;
                                case 3:
                                    System.out.println("Logout");break;
                            }
                        }while (option!=3);
                    }
                    else
                    {
                        System.out.println("Login Failure");break;
                    }break;
                case 2:
                    System.out.println("Agent Login");
                    in.nextLine();
                    System.out.println("Enter your Username: ");
                    String username1 = in.nextLine();
                    System.out.println("Enter your Password: ");
                    String password1 = in.nextLine();
                    login.setUsername(username1);
                    login.setPassword(password1);
                    if(logindao.validate(login))
                    {
                        System.out.println("Login Success !!!");
                        do {
                            System.out.println("******************");
                            System.out.println("1. Display Product");
                            System.out.println("2. Logout");
                            System.out.println("******************");
                            System.out.println("Enter Your Option");
                            option = in.nextInt();

                            switch (option)
                            {
                                case 1:
                                    System.out.println("Display Product");
                                    productdao.display();
                                    break;
                                case 2:
                                    System.out.println("Logout");break;
                            }
                        }while (option!=2);
                    }
                    else
                    {
                        System.out.println("Login Failure");
                    }break;
                case 3:
                    System.out.println("Exit");break;
            }
        }while (choice!=3);
    }
}
