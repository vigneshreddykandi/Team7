package questionss;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import questionss.questionDao;

/**
 * Servlet implementation class AddQuestion
 */
@WebServlet("/AddQuestion")
public class AddQuestion extends HttpServlet {
 private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  
  
  // Read parameters to Model
  Questionss question=readQuestion(request);
 
  // Create connection
  QuestionssDao dao=new QuestionssDao();
  
  // Save value and query total list
  dao.saveQuestion(question);
  ArrayList<Questionss> list=dao.readAllQuestions();
  
  
  dao.close();
  
  
  
  response.sendRedirect("/index.jsp");
 }


 private Questionss readQuestion(HttpServletRequest request) {
  // TODO Auto-generated method stub
  Questionss question=new Questionss();
  question.setQuestion(request.getParameter("Question"));
  
  return question;
 }
 
 

 

 /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  doGet(request, response);
 }

}