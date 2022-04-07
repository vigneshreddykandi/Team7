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
import team7.Candidate;
/**
 * Servlet implementation class ShowFish
 */
@WebServlet("/updatecandidate")
public class UpdateCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CandidateDao dao=null;
	
	@Override
	public void init() {
		
		dao = new CandidateDao("jdbc:mysql://127.0.0.1:3306/electionmachine?user=root", "root", "password");

	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCandidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Candidate> list=null;
		Candidate c=new Candidate(request.getParameter("id"), request.getParameter("surname"),request.getParameter("firstname"),
				 request.getParameter("party"),request.getParameter("location"), request.getParameter("ika"), 
				 request.getParameter("whyCommission"), request.getParameter("whatAthesWantEdes") , request.getParameter("professional"));

		if (dao.getConnection()) {
			dao.CandidateDao(c);
		}else {
			response.getWriter().print("no connection for add candidate");
		}
		//read the candidate again in new object to bring the id from table auto increment
		list = dao.readAllCandidate();

		request.setAttribute("candidatelist", list);
		RequestDispatcher rd=request.getRequestDispatcher("/editallcandidates");
		rd.forward(request, response);
	}
}
