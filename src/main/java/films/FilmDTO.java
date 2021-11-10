package films;

import lombok.Builder;
import lombok.Data;


@Builder
@Data
public class FilmDTO {

    private int id;
    private String title;
    private int length_in_minutes;
    private int category_id;
    private int year_of_production;
    private int director_id;
    private double rate;



}
