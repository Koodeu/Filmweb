package films;

import com.mysql.cj.x.protobuf.MysqlxPrepare;
import database.DBConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FilmDAO {


    //method displaying only films titles
    public List<String> getFilmTitles() {

        DBConnector dbConnector = DBConnector.getInstance();
        Connection connection = dbConnector.getConnection();
        String sqlQuery = "select * from films";
        ResultSet resultSet = null;
        List<String> listOfTitles = new ArrayList<String>();
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

    //method displaying all films' details

    public List<FilmDTO> getFilms() {

        DBConnector dbConnector = DBConnector.getInstance();
        Connection connection = dbConnector.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        List<FilmDTO> listOfFilms = new ArrayList<FilmDTO>();
        StringBuilder sqlQueryBuilder = new StringBuilder()
                .append("select f.id as film_id, f.title as film_title, ")
                .append("f.length_in_minutes as film_length, ")
                .append("f.year_of_production as film_year_of_production, ")
                .append("f.rate as film_rate from films f;");
        String sqlQuery = sqlQueryBuilder.toString();


        try {
            preparedStatement = connection.prepareStatement(sqlQuery);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("film_id");
                String title = resultSet.getString("film_title");
                int length = resultSet.getInt("film_length");
                int yearOfProduction = resultSet.getInt("film_year_of_production");
                double rate = resultSet.getDouble("film_rate");

                FilmDTO filmDTO = FilmDTO.builder()
                        .id(id)
                        .title(title)
                        .length_in_minutes(length)
                        .year_of_production(yearOfProduction)
                        .rate(rate)
                        .build();

                listOfFilms.add(filmDTO);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            dbConnector.closeDataBaseConnection(connection, preparedStatement, resultSet);
        }
        return listOfFilms;

    }


}
