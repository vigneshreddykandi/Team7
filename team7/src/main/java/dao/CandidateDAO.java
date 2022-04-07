package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.google.api.services.discovery.Discovery.Apis.List;

public class CandidateDAO {

	private String jdbcURL = "jdbc:mysql://localhost:3306/vaalikone?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "password";

	private static final String INSERT_CANDIDATES_SQL = "INSERT INTO EHDOKKAAT"
			+ "  (SUKUNIMI,ETUNIMI,PUOLUE,KOTIPAIKKAKUNTA,IKA,MIKSI_EDUSKUNTAAN,MITA_ASIOITA_HALUAT_EDISTAA,AMMATTI) VALUES "
			+ " (?, ?, ?,?, ?,?, ?,?);";

	private static final String SELECT_CANDIDATE_BY_ID = "select EHDOKAS_ID,SUKUNIMI,ETUNIMI,PUOLUE,KOTIPAIKKAKUNTA,IKA,MIKSI_EDUSKUNTAAN,MITA_ASIOITA_HALUAT_EDISTAA,AMMATTI from EHDOKKAAT where EHDOKAS_ID =?";
	private static final String SELECT_ALL_CANDIDATES = "select * from EHDOKKAAT";
	private static final String DELETE_CANDIDATES_SQL = "delete from EHDOKKAAT where EHDOKAS_ID = ?;";
	private static final String UPDATE_CANDIDATES_SQL = "update EHDOKKAAT set SUKUNIMI = ?,ETUNIMI= ?, PUOLUE =?,KOTIPAIKKAKUNTA= ?, IKA =?,MIKSI_EDUSKUNTAAN= ?, MITA_ASIOITA_HALUAT_EDISTAA =?,AMMATTI =? where EHDOKAS_ID = ?;";

	public CandidateDAO() {

	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbcDriver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	// insert candidate

	public void insertCandidate(Candidate EHDOKKAAT) {

		System.out.println(INSERT_CANDIDATES_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CANDIDATES_SQL)) {
			preparedStatement.setString(1, EHDOKKAAT.getSUKUNIMI());
			preparedStatement.setString(2, EHDOKKAAT.getETUNIMI());
			preparedStatement.setString(3, EHDOKKAAT.getPUOLUE());
			preparedStatement.setString(4, EHDOKKAAT.getKOTIPAIKKAKUNTA());
			preparedStatement.setInt(5, EHDOKKAAT.getIKA());
			preparedStatement.setString(6, EHDOKKAAT.getMIKSI_EDUSKUNTAAN());
			preparedStatement.setString(7, EHDOKKAAT.getMITA_ASIOITA_HALUAT_EDISTAA());
			preparedStatement.setString(8, EHDOKKAAT.getAMMATTI());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}
	
	public Candidate selectCandidate(int EHDOKAS_ID) {
		
		Candidate EHDOKKAAT = null;
		
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CANDIDATE_BY_ID);) {
			preparedStatement.setInt(1, EHDOKAS_ID);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				String SUKUNIMI = rs.getString("SUKUNIMI ");
				String ETUNIMI = rs.getString("ETUNIMI");
				String PUOLUE = rs.getString("PUOLUE");
				String KOTIPAIKKAKUNTA = rs.getString("KOTIPAIKKAKUNTA");
				Integer IKA = rs.getInt("IKA");
				String MIKSI_EDUSKUNTAAN = rs.getString("MIKSI_EDUSKUNTAAN");
				String MITA_ASIOITA_HALUAT_EDISTAA = rs.getString("MITA_ASIOITA_HALUAT_EDISTAA");
				String AMMATTI = rs.getString("AMMATTI");
				EHDOKKAAT = new EHDOKKAAT(EHDOKAS_ID,SUKUNIMI,ETUNIMI,PUOLUE,KOTIPAIKKAKUNTA,IKA,MIKSI_EDUSKUNTAAN,MITA_ASIOITA_HALUAT_EDISTAA,AMMATTI);

			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return EHDOKKAAT;
	}
	
	public List<Candidate> selectAllCandidates() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Candidate> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CANDIDATES);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				Integer EHDOKAS_ID = rs.getInt("EHDOKAS_ID");
				String SUKUNIMI = rs.getString("SUKUNIMI ");
				String ETUNIMI = rs.getString("ETUNIMI");
				String PUOLUE = rs.getString("PUOLUE");
				String KOTIPAIKKAKUNTA = rs.getString("KOTIPAIKKAKUNTA");
				Integer IKA = rs.getInt("IKA");
				String MIKSI_EDUSKUNTAAN = rs.getString("MIKSI_EDUSKUNTAAN");
				String MITA_ASIOITA_HALUAT_EDISTAA = rs.getString("MITA_ASIOITA_HALUAT_EDISTAA");
				String AMMATTI = rs.getString("AMMATTI");
				EHDOKKAAT.add(new EHDOKKAAT(EHDOKAS_ID,SUKUNIMI,ETUNIMI,PUOLUE,KOTIPAIKKAKUNTA,IKA,MIKSI_EDUSKUNTAAN,MITA_ASIOITA_HALUAT_EDISTAA,AMMATTI));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
	}

	
	
	
	
	
	
	
	
	
	
	
	private void printSQLException(SQLException e) {
		// TODO Auto-generated method stub
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}

			}

		}

	}

}
