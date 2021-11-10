package films;

import database.DBConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FilmDAO {

    public List<String> getFilmsTitles() {

        DBConnector dbConnector = DBConnector.getInstance();
        Connection connection = dbConnector.getConnection();
        List<String> listOfTitles = new ArrayList<String>();
        String sqlQuery = "select * from films";
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        String title = null;

        try {
            preparedStatement = connection.prepareStatement(sqlQuery);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                title = resultSet.getString("title");
                listOfTitles.add(title);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            dbConnector.closeDataBaseConnection(connection, preparedStatement, resultSet);
        }
        return listOfTitles;
    }


}
