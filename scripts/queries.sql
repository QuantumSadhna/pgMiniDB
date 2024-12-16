import java.sql.*; //-

public class MovieDataInsert {
    public static void main(String[] args) {
        // JDBC URL and credentials for PostgreSQL database
        String url = "jdbc:postgresql://localhost:5432/dbname";
        String user = "ur_username";
        String password = "ur_passwd";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            // Insert into Director
            String insertDirectorSql = "INSERT INTO public.\"Director\" (first_name, surname, year_of_birth, \"id_BirthLocation\", \"id_Movie\", \"id_University\") VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertDirectorSql, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setString(1, "Steven");
                stmt.setString(2, "Spielberg");
                stmt.setInt(3, 1946);
                stmt.setInt(4, 2);  // id_BirthLocation
                stmt.setInt(5, 2);  // id_Movie
                stmt.setInt(6, 2);  // id_University
                stmt.executeUpdate();

                // Get the generated Director ID 
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int directorId = generatedKeys.getInt(1);
                        System.out.println("Director inserted with ID: " + directorId);
                    }
                }
            }

            // Insert into Actor 
            String insertActorSql = "INSERT INTO public.\"Actor\" (first_name, surname, year_of_birth, \"id_BirthLocation\", eye_color) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertActorSql, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setString(1, "Harrison");
                stmt.setString(2, "Ford");
                stmt.setInt(3, 1942);
                stmt.setInt(4, 2);  
                stmt.setString(5, "Brown");
                stmt.executeUpdate();

                // Get the generated Actor ID 
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int actorId = generatedKeys.getInt(1);
                        System.out.println("Actor inserted with ID: " + actorId);
                    }
                }
            }

            // Insert into Movie
            String insertMovieSql = "INSERT INTO public.\"Movie\" (title, release_time, date, rating, budget, gross) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertMovieSql, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setString(1, "Jurassic Park");
                stmt.setTime(2, Time.valueOf("16:00:00"));
                stmt.setDate(3, Date.valueOf("1993-06-11"));
                stmt.setInt(4, 8);
                stmt.setDouble(5, 63000000.0);
                stmt.setDouble(6, 1070000000.0);
                stmt.executeUpdate();

                // Get the generated Movie ID 
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int movieId = generatedKeys.getInt(1);
                        System.out.println("Movie inserted with ID: " + movieId);
                    }
                }
            }

            // Insert into Genre 
            String insertGenreSql = "INSERT INTO public.\"Genre\" (type) VALUES (?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertGenreSql, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setString(1, "Adventure");
                stmt.executeUpdate();

                // Get the generated Genre ID 
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int genreId = generatedKeys.getInt(1);
                        System.out.println("Genre inserted with ID: " + genreId);
                    }
                }
            }

            // Insert into Cinema 
            String insertCinemaSql = "INSERT INTO public.\"Cinema\" (cinema_name, location, type) VALUES (?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertCinemaSql, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setString(1, "Cineplex");
                stmt.setString(2, "New York");
                stmt.setString(3, "IMAX");
                stmt.executeUpdate();

                // Get the generated Cinema ID 
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int cinemaId = generatedKeys.getInt(1);
                        System.out.println("Cinema inserted with ID: " + cinemaId);
                    }
                }
            }

            // Insert into Ticket 
            String insertTicketSql = "INSERT INTO public.\"Ticket\" (price, \"id_Cinema\") VALUES (?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertTicketSql, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setDouble(1, 18.99);
                stmt.setInt(2, 2);  // id_Cinema 
                stmt.executeUpdate();

                // Get the generated Ticket ID 
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int ticketId = generatedKeys.getInt(1);
                        System.out.println("Ticket inserted with ID: " + ticketId);
                    }
                }
            }

            // Insert into ShowTime 
            String insertShowTimeSql = "INSERT INTO public.\"ShowTime\" (show_name, show_time, show_duration, \"id_Cinema_Ticket\", \"id_Movie\") VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertShowTimeSql, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setString(1, "Jurassic Park");
                stmt.setTime(2, Time.valueOf("20:00:00"));
                stmt.setInt(3, 127);  
                stmt.setInt(4, 2);  
                stmt.setInt(5, 2);  
                stmt.executeUpdate();

                // Get the generated ShowTime ID 
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int showTimeId = generatedKeys.getInt(1);
                        System.out.println("ShowTime inserted with ID: " + showTimeId);
                    }
                }
            }

            // Insert into Award 
            String insertAwardSql = "INSERT INTO public.\"Award\" (award_name, \"id_Movie\") VALUES (?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertAwardSql, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setString(1, "Golden Globe");
                stmt.setInt(2, 2);  // id_Movie 
                stmt.executeUpdate();

                // Get the generated Award ID 
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int awardId = generatedKeys.getInt(1);
                        System.out.println("Award inserted with ID: " + awardId);
                    }
                }
            }

            // Insert into Category 
            String insertCategorySql = "INSERT INTO public.\"Category\" (category_name, \"award_id_Award\", \"id_Movie_Award\") VALUES (?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertCategorySql)) {
                stmt.setString(1, "Best Picture");
                stmt.setInt(2, 2);  
                stmt.setInt(3, 2);  
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
