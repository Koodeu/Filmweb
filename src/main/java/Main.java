import database.DBConnector;
import films.FilmDAO;

import java.sql.Connection;

public class Main {

    public static void main(String[] args) {

        FilmDAO filmDAO = new FilmDAO();

//        System.out.println(filmDAO.getFilmTitles());
//        System.out.println(filmDAO.getFilms());
//        System.out.println(filmDAO.findByTitle("Karate Kid 2"));

//        filmDAO.addFilmToDataBase("Star Wars: Return of the Jedi", 138, 1, 1987, 2, 9.1);
//        filmDAO.deleteFilmFromDataBaseByGivenTitle("Karate Kid");
        filmDAO.updateFilmByGivenId(1, "Dzieciak Karate", 124, 2, 2001, 6, 6.8);

    }
}
