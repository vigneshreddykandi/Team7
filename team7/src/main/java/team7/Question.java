package team7;

public class Question {
	private int id;
	private String question;
	private int answer;
	
	public Question(String id, String question) {
		// TODO Auto-generated constructor stub
		setId(id);
		this.question = question;
	}
	public Question(String id, String question, int answer) {
		// TODO Auto-generated constructor stub
		setId(id);
		this.question = question;
		this.answer = answer;
	}
	public Question(String question) {
		this.question = question;
	}
	public Question(String id, String question, String answer) {
		// TODO Auto-generated constructor stub
		setId(id);
		this.question = question;
		this.answer = Integer.parseInt(answer);
	}
	
	public Question() {
		// TODO Auto-generated constructor stub
	}
	
	// getter and setter for question ID (id)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setId(String id) {
		try {
			this.id = Integer.parseInt(id);
		}
		catch(NumberFormatException | NullPointerException e) {
			//Do nothing - the value of id won't be changed
		}
	}
	
	// getter and setter for answer (means customer answers)

	public int getAnswer() {
		return answer;
	}

	public void setAnswer(int answer) {
		this.answer = answer;
	}
	public void setAnswer(String answer) {
		try {
			this.answer = Integer.parseInt(answer);
		}
		catch(NumberFormatException | NullPointerException e) {
			//Do nothing - the value of id won't be changed
		}
	}
	
	// getter and setter for question text (question)
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}


}





