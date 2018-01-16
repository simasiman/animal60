package animal_60;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class UranaiCalc {

  int id;

  public int calcId(String date) {
    final LocalDate date1 = LocalDate.of(1985, 1, 1);
    LocalDate date2 = LocalDate.parse(date);

    int remainder = (int) (ChronoUnit.DAYS.between(date1, date2));
    int id = Math.floorMod(remainder + 36, 60) + 1;
    return id;
  }
}
