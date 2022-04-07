package team7;

public class CandidateAnswers {
	private int id;
	private int candidateid;
	private int question;
	private int candidateans;
	private String comment;





	public CandidateAnswers() {
	}
	
	public CandidateAnswers(int id, int candidateid, int question, int candidateans, String comment) {
		super();
		this.id = id;
		this.candidateid = candidateid;
		this.question = question;
		this.candidateans = candidateans;
		this.comment = comment;
	}
	public CandidateAnswers(String id, String candidateid, String question, String candidateans, String comment) {
		super();
		this.id = Integer.parseInt(id);
		this.candidateid = Integer.parseInt(candidateid);
		this.question = Integer.parseInt(question);
		this.candidateans = Integer.parseInt(candidateans);
		this.comment = comment;
	}
	public CandidateAnswers(String candidateid, String question, String candidateans) {
		super();
		this.candidateid = Integer.parseInt(candidateid);
		this.question = Integer.parseInt(question);
		this.candidateans = Integer.parseInt(candidateans);
	}
	public CandidateAnswers(String candidateid, int question, String candidateans) {
		super();
		this.candidateid = Integer.parseInt(candidateid);
		this.question =question;
		this.candidateans = Integer.parseInt(candidateans);
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public void setId(String id) {
		this.id = Integer.parseInt(id);
	}

	public int getCandidateid() {
		return candidateid;
	}

	public void setCandidateid(int candidateid) {
		this.candidateid = candidateid;
	}
	public void setCandidateid(String candidateid) {
		this.candidateid = Integer.parseInt(candidateid);
	}
	
	public int getQuestion() {
		return question;
	}

	public void setQuestion(int question) {
		this.question = question;
	}
	public void setQuestion(String question) {
		this.question = Integer.parseInt(question);
	}
	
	public int getCandidateans() {
		return candidateans;
	}
	public void setCandidateans(int candidateans) {
		this.candidateans = candidateans;
	}
	public void setCandidateans(String candidateans) {
		this.candidateans = Integer.parseInt(candidateans);
	}
	
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}


}
