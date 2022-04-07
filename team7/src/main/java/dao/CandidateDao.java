package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import data.Candidate;
import data.CandidateAnswers;
import data.Question;
import data.Result;
import data.UserId;


public class CandidateDao {
	private String url;
	private String user;
	private String pass;
	private Connection conn;
	
	public CandidateDao(String url, String user, String pass) {
		this.url=url;
		this.user=user;
		this.pass=pass;
	}
	
	// create getconnection method - create a connection to database 
		
	public boolean getConnection() {
		try {
	        if (conn == null || conn.isClosed()) {
	            try {
	                Class.forName("com.mysql.jdbc.Driver").newInstance();
	            } catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
	                throw new SQLException(e);
	            }
	            conn = DriverManager.getConnection(url, user, pass);
	            //for test
	            //System.out.println("conn is created!!");
	        }
	        return true;
		}
		catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	
	// readAllCandidate() method
	public ArrayList<Candidate> readAllCandidate() {
		ArrayList<Candidate> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM CANDIDATE";
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Candidate c=new Candidate();
				c.setId(RS.getInt("ID"));
				c.setFirstname(RS.getString("FIRSTNAME"));
				c.setSurname(RS.getString("SURNAME"));
				c.setIka(RS.getInt("IKA"));
				c.setParty(RS.getString("PARTY"));
				c.setLocation(RS.getString("LOCATION"));
				c.setWhatAthesWantEdes(RS.getString("WHAT_ATHES_WANT_EDES"));
				c.setWhyCommission(RS.getString("WHY_COMMISSION"));
				c.setProfessional(RS.getString("PROFESSIONAL"));
				list.add(c);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// readCandidate() method
	public ArrayList<Candidate> readCandidate(Candidate c) {
		ArrayList<Candidate> singleCandidate=new ArrayList<>();
		try {
			String sql="SELECT * FROM CANDIDATE WHERE ID=?";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, c.getId());
			ResultSet RS=pstmt.executeQuery(sql);

			c.setId(RS.getInt("ID"));
			c.setFirstname(RS.getString("FIRSTNAME"));
			c.setSurname(RS.getString("SURNAME"));
			c.setIka(RS.getInt("IKA"));
			c.setParty(RS.getString("PARTY"));
			c.setLocation(RS.getString("LOCATION"));
			c.setWhatAthesWantEdes(RS.getString("WHAT_ATHES_WANT_EDES"));
			c.setWhyCommission(RS.getString("WHY_COMMISSION"));
			c.setProfessional(RS.getString("PROFESSIONAL"));

			singleCandidate.add(c);
			return singleCandidate;

		}
		catch(SQLException e) {
			return null;
		}
	}
	
	
	// update candidate text with updateCandidate(Candidate c) method
	public ArrayList<Candidate> updateCandidate(Candidate c) {
		try {
			String sql="UPDATE CANDIDATE SET SURNAME= ?, FIRSTNAME=?, PARTY=?, LOCATION=?,"
					+ " IKA=?, WHY_COMMISSION=?, WHAT_ATHES_WANT_EDES=?, PROFESSIONAL=?  WHERE ID=?";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, c.getSurname());
			pstmt.setString(2, c.getFirstname());
			pstmt.setString(3, c.getParty());
			pstmt.setString(4, c.getLocation());
			pstmt.setInt(5, c.getIka());
			pstmt.setString(6, c.getWhyCommission());
			pstmt.setString(7, c.getWhatAthesWantEdes());
			pstmt.setString(8, c.getProfessional());
			pstmt.setInt(9, c.getId());
			pstmt.executeUpdate();
			return readAllCandidate();
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// deleteCandidate() method
	public ArrayList<Candidate> deleteCandidate(String id) {
		try {
			String sql="delete from CANDIDATE where ID=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			return readAllCandidate();
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// readCandidate method
	public Candidate readCandidate(String id) {
		Candidate c=null;
		try {
			String sql="select * from CANDIDATE where ID=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet RS=pstmt.executeQuery();
			while (RS.next()){
				c=new Candidate();
				c.setId(RS.getInt("ID"));
				c.setFirstname(RS.getString("FIRSTNAME"));
				c.setSurname(RS.getString("SURNAME"));
				c.setIka(RS.getInt("IKA"));
				c.setParty(RS.getString("PARTY"));
				c.setLocation(RS.getString("LOCATION"));
				c.setWhatAthesWantEdes(RS.getString("WHAT_ATHES_WANT_EDES"));
				c.setWhyCommission(RS.getString("WHY_COMMISSION"));
				c.setProfessional(RS.getString("PROFESSIONAL"));
			}
			return c;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// insertCandidate() method which add candidate information to database
	public ArrayList<Candidate>  insertCandidate(Candidate c) {
		try {
			String sql = "INSERT INTO CANDIDATE (SURNAME, FIRSTNAME, PARTY, LOCATION, IKA, WHY_COMMISSION, WHAT_ATHES_WANT_EDES, PROFESSIONAL, ID) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, c.getSurname());
			pstmt.setString(2, c.getFirstname());
			pstmt.setString(3, c.getParty());
			pstmt.setString(4, c.getLocation());
			pstmt.setInt(5, c.getIka());
			pstmt.setString(6, c.getWhyCommission());
			pstmt.setString(7, c.getWhatAthesWantEdes());
			pstmt.setString(8, c.getProfessional());
			pstmt.setInt(9, c.getId());
			pstmt.executeUpdate();
			return readAllCandidates();
		}
		catch(SQLException e) {
			return null;
		}
	}
	// readCandidateAnswers() method which read all answers of specific candidate
	public ArrayList<CandidateAnswers> readCandidateAnswers(int candidateId) {
		ArrayList<CandidateAnswers> cAnswersList=new ArrayList<>();
		try {
			String sql = "SELECT * FROM CANDIDATEANSWERS WHERE CANDIDATEID="+candidateId;
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				CandidateAnswers c=new CandidateAnswers();
				c.setId(RS.getInt("ID"));
				c.setCandidateid(candidateId);
				c.setQuestion(RS.getString("QUESTION"));
				c.setCandidateans(RS.getInt("CANDIDATEANS"));
				c.setComment(RS.getString("COMMENT"));
				
				cAnswersList.add(c);
			}
			return cAnswersList;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// insertCandidateAns() method which add answers of new candidate to database
	public void insertCandidateAns(CandidateAnswers ca) {
		try {
			String sql = "INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (?, ?, ?,'')";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ca.getCandidateid());
			pstmt.setInt(2, ca.getQuestion());
			pstmt.setInt(3, ca.getCandidateans());

			pstmt.executeUpdate();
			return;
		}
		catch(SQLException e) {
			return;
		}
	}
	
	
	
	public ArrayList<Question> readAllQuestion() {
		ArrayList<Question> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM QUESTION";
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Question q=new Question();
				q.setId(RS.getInt("ID"));
				q.setQuestion(RS.getString("QUESTION"));
				q.setAnswer(RS.getInt("ANSWER"));
				list.add(q);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	
	// insert result of comparison into database
	public void insertResult(Result r) {
		try {
			String sql="INSERT INTO RESULT (CANDIDATEID, CUSTOMERID, RESULT) VALUES (?,?,?);";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, r.getCandidateid());
			pstmt.setInt(2, r.getCustomerid());
			pstmt.setDouble(3, r.getResult());

			pstmt.executeUpdate();
			return;
		}
		catch(SQLException e) {
			return;
		}
	}
	
	// readAllResult() method for bring all result
	public ArrayList<Result> readAllResult() {
		ArrayList<Result> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM RESULT";
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Result r=new Result();
				r.setCandidateid(RS.getInt("CANDIDATEID"));
				r.setCustomerid(RS.getString("CUSTOMERID"));
				r.setResult(RS.getString("RESULT"));

				list.add(r);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// readSuggestions() method for bring 3 suggestions with best result
	public ArrayList<Result> readSuggestions() {
		ArrayList<Result> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM RESULT WHERE CUSTOMERID="+UserId.getUserId()+" ORDER BY RESULT DESC LIMIT 3 ;";
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Result r=new Result();
				r.setCandidateid(RS.getInt("CANDIDATEID"));
				r.setCustomerid(RS.getString("CUSTOMERID"));
				r.setResult(RS.getString("RESULT"));

				list.add(r);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	// readSuggestions() method for bring 3 suggestions with best result
	public ArrayList<Candidate> readSuggCandidate(int id1,int id2,int id3) {
		Candidate c=new Candidate();
		ArrayList<Candidate> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM CANDIDATE WHERE ID in(?,?,?)";
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id1);
			pstmt.setInt(2, id2);
			pstmt.setInt(3, id3);
			ResultSet RS=pstmt.executeQuery();

			while (RS.next()){
				c=new Candidate();
				c.setId(RS.getInt("ID"));
				c.setFirstname(RS.getString("FIRSTNAME"));
				c.setSurname(RS.getString("SURNAME"));
				c.setIka(RS.getInt("IKA"));
				c.setParty(RS.getString("PARTY"));
				c.setLocation(RS.getString("LOCATION"));
				c.setWhatAthesWantEdes(RS.getString("WHAT_ATHES_WANT_EDES"));
				c.setWhyCommission(RS.getString("WHY_COMMISSION"));
				c.setProfessional(RS.getString("PROFESSIONAL"));

				list.add(c);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	
	// readAllCandidates() method
	public ArrayList<Candidate> readAllCandidates() {
		ArrayList<Candidate> list=new ArrayList<>();
		try {
			String sql = "SELECT * FROM CANDIDATE";
			getConnection();
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery(sql);
			while (RS.next()){
				Candidate c=new Candidate();
				c.setId(RS.getInt("ID"));
				c.setFirstname(RS.getString("FIRSTNAME"));
				c.setSurname(RS.getString("SURNAME"));
				c.setIka(RS.getInt("IKA"));
				c.setParty(RS.getString("PARTY"));
				c.setLocation(RS.getString("LOCATION"));
				c.setWhatAthesWantEdes(RS.getString("WHAT_ATHES_WANT_EDES"));
				c.setWhyCommission(RS.getString("WHY_COMMISSION"));
				c.setProfessional(RS.getString("PROFESSIONAL"));
				list.add(c);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	// delete answers of deleted candidate
	public void deleteCandidateAns(String id) {
		try {
			String sql="delete from CANDIDATEANSWERS where CANDIDATEID=?";;
			getConnection();
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			return;
		}
		catch(SQLException e) {
			return;
		}
	}
}
