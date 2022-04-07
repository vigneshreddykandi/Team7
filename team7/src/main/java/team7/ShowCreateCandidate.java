package team7;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CandidateDao;
import dao.Dao;
import team7.Question;
/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/showcreatecandidate")
public class ShowCreateCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CandidateDao dao=null;
	
	@Override
	public void init() {
		
		dao = new CandidateDao("jdbc:mysql://127.0.0.1:3306/vaalikone?user=root", "root", "password");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowCreateCandidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Question> list=null;
		if (dao.getConnection()) {
			list = dao.readAllQuestion();
		}
		else {
			System.out.println("No connection to database for read all questions");
		}
		request.setAttribute("questionlist", list);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/candidate/showcreatecandidate.jsp");
		rd.forward(request, response);
	}
}
