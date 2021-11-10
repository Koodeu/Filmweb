package database;

import java.sql.*;

public class DBConnector {

    private static DBConnector instance;
    private String url = "jdbc:mysql://localhost:3306/filmweb_lite";
    private String user = "root";
    private String password = "b3d3r4htxgmx";


    //implementation of singleton design pattern
    synchronized public static DBConnector getInstance(){
        if(instance != null){
            DBConnector dbConnector = new DBConnector();
        }
        return instance;
    }

//creating a connection method
    public Connection getConnection() {


        try {
            Connection connection = DriverManager.getConnection(url, user, password);
            System.out.println("connected to database successfully");
            return connection;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }


    //method closing connection to database
    public void closeDataBaseConnection(Connection connection, PreparedStatement preparedStatement, ResultSet resultSet){

        if(connection != null){
            try {
                connection.close();
                System.out.println("connection closed");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

        if(preparedStatement != null){
            try {
                connection.close();
                System.out.println("connection closed");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

        if(resultSet != null){
            try {
                connection.close();
                System.out.println("connection closed");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }


    }



}
