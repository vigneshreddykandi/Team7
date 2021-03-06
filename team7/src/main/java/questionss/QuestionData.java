package questionss;
/**
 * @author vigneshkandi,wafa faquir,nazanin fallah
 *From here we can add question  using servlet technology
 *
 * Questionss question=readQuestion(request); -it reads paramenters
 *  dao.saveQuestion(question); - // Save value and query total list
 */

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class QuestionData
 */

 
@WebServlet("/QuestionData")
public class QuestionData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		QuestionssDao  dao =  new QuestionssDao ();
		ArrayList<Questionss> list = dao.readAllQuestions();
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
	RequestDispatcher rd = request.getRequestDispatcher("/jsp/showallquestions.jsp");
	rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
