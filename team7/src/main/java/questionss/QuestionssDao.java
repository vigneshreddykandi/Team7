package questionss;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import questionss.Questionss;

public class QuestionssDao {
	
	private Connection conn;
	
	public QuestionssDao() {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/vaalikone", "root", "password");
		} catch (SQLException | InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void close() {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int saveQuestion(Questionss question) {
		Statement stmt=null;
		int count=0;
		try {
			stmt = conn.createStatement();
			count=stmt.executeUpdate("insert into questions(Question) values('"+question.getQuestion()+"')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	public ArrayList<Questionss> readAllQuestions() {
		ArrayList<Questionss> list=new ArrayList<>();
		Statement stmt=null;
		int count=0;
		try {
			stmt = conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from questions");
			while (rs.next()) {
				Questionss question=new Questionss();
				question.setID(rs.getInt("ID"));
				question.setQuestion(rs.getString("Question"));
				
				list.add(question);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public int updateQuestion(Questionss question) {
		int count = 0;
		String sql = "update questions set Question = ? where ID = ?";
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, question.getQuestion());
			
			
			stmt.setInt(3, question.getID());
			
			count = stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	public Questionss getQuestionInfo(int ID) {
		Questionss result = null;
		String sql = "select * from questions where ID = ?";
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
						
			stmt.setInt(1, ID);
			
			ResultSet resultset = stmt.executeQuery();
			
			if (resultset.next()) {
				result = new Questionss();
				result.setID(resultset.getInt("ID"));
				result.setQuestion(resultset.getString("Question"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
