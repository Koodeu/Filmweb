import database.DBConnector;
import films.FilmDAO;

import java.sql.Connection;

public class Main {

    public static void main(String[] args) {

        FilmDAO filmDAO = new FilmDAO();
        System.out.println(filmDAO.getFilmsTitles());


    }
}
