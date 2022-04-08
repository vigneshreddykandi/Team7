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
import team7.Candidate;
/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/showallcandidates")
public class showallcandidates extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CandidateDao dao=null;
	
	@Override
	public void init() {
		
		dao = new CandidateDao("jdbc:mysql://127.0.0.1:3306/vaalikone?user=root", "root", "password");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showallcandidates() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Candidate> list=null;
		if (dao.getConnection()) {
			list = dao.readAllCandidates();
		}
		else {
			System.out.println("No connection to database for read all candidates");
		}
		request.setAttribute("candidatelist", list);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/showallcandidates.jsp");
		rd.forward(request, response);
	}
}
