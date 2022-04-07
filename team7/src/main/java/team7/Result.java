package team7;

public class Result {
	private int id;
	private int candidateid;
	private int customerid;
	private double result;
	
	
	public Result() {

	}
	
	public Result(int candidateid, int customerid, double result) {
		super();
		this.candidateid = candidateid;
		this.customerid = customerid;
		this.result = result;
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
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public void setCustomerid(String customerid) {
		this.customerid = Integer.parseInt(customerid);
	}
	public double getResult() {
		return result;
	}
	public void setResult(double result) {
		this.result = result;
	}
	public void setResult(String result) {
		this.result = Double.parseDouble(result);
	}
	

	@Override
	public String toString() {
		return "Result [id=" + id + ", candidateid=" + candidateid + ", customerid=" + customerid + ", result=" + result
				+ "]";
	}
	

}





