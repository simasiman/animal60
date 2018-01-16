package animal_60;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UranaiDAO {

  private Connection conn;

  public UranaiDAO() throws ClassNotFoundException, SQLException {

    Class.forName("com.mysql.jdbc.Driver");
    String strConn = "jdbc:mysql://localhost/animal_ft"
        + "?user=Mulder&password=TrustNo1"
        + "&useUnicode=true&characterEncoding=MS932";
    conn = DriverManager.getConnection(strConn);
  }

  public void close() {
    try {
      conn.close();
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public UranaiDTO getUranaiDetailById(int id, String sex) throws SQLException {
    UranaiDTO ent = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
      stmt = conn.createStatement();
      String strSql = "select * "
          + "from 60animals join details on 60animals.60id = details.60id "
          + "join 12animals as animal "
          + "on 60animals.12id = animal.12id "
          + "join 12animals as lover "
          + "on details.lover_12id = lover.12id "
          + "join 12animals as friend "
          + "on details.friend_12id = friend.12id "
          + "join 12animals as work "
          + "on details.work_12id = work.12id "
          + "where 60animals.60id = " + id + " AND sex = '" + sex + "'";

      //System.out.println(strSql); //Šm”F—p
      //System.out.println(strSql);
      rs = stmt.executeQuery(strSql);
      if (rs.next()) {
        ent = new UranaiDTO(rs.getString("detail"), rs.getString("60animals.name"), rs.getString("animal.picture"),
            rs.getString("lover_detail"), rs.getString("lover.name"), rs.getString("lover.picture"),
            rs.getString("friend_detail"), rs.getString("friend.name"), rs.getString("friend.picture"),
            rs.getString("work_detail"), rs.getString("work.name"), rs.getString("work.picture"));
      }
    } finally {
      try {
        rs.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      try {
        stmt.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return ent;
  }

}
