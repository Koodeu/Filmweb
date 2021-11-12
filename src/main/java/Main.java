import database.DBConnector;
import films.FilmDAO;

import java.sql.Connection;

public class Main {

    public static void main(String[] args) {

        FilmDAO filmDAO = new FilmDAO();

//        System.out.println(filmDAO.getFilmTitles());
//        System.out.println(filmDAO.getFilms());
//        System.out.println(filmDAO.findByTitle("Karate Kid 2"));

        filmDAO.addFilmToDataBase("Star Wars: A new hope", 130, 1, 1978, 1, 9.9);


    }
}
