package team7;

public class Candidate  {

	private int id;
	private String surname;
	private String firstname;
	private String party;
	private String location;
	private int ika;
	private String whyCommission;	
	private String whatAthesWantEdes;	
	private String professional;




	public Candidate() {
	}

	public Candidate(String id, String surname, String firstname) {
		// TODO Auto-generated constructor stub
		this.id = Integer.parseInt(id);
		this.surname=surname;
		this.firstname=firstname;
	}
	public Candidate(int id, String surname, String firstname) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.surname=surname;
		this.firstname=firstname;
	}

	public Candidate(int id, String surname, String firstname , String party,  String location, int ika, String whyCommission,
			 String whatAthesWantEdes, String professional) {
		this.id = id;
		this.firstname = firstname;
		this.ika = ika;
		this.location = location;
		this.party = party;
		this.professional = professional;
		this.surname = surname;
		this.whatAthesWantEdes = whatAthesWantEdes;
		this.whyCommission = whyCommission;
	}
	public Candidate(String id, String surname, String firstname , String party,  String location, String ika, String whyCommission,
			 String whatAthesWantEdes, String professional) {
		this.id = Integer.parseInt(id);
		this.firstname = firstname;
		this.ika = Integer.parseInt(ika);
		this.location = location;
		this.party = party;
		this.professional = professional;
		this.surname = surname;
		this.whatAthesWantEdes = whatAthesWantEdes;
		this.whyCommission = whyCommission;
	}
	public Candidate(String surname, String firstname , String party,  String location, String ika, String whyCommission,
			 String whatAthesWantEdes, String professional) {
		this.firstname = firstname;
		this.ika = Integer.parseInt(ika);
		this.location = location;
		this.party = party;
		this.professional = professional;
		this.surname = surname;
		this.whatAthesWantEdes = whatAthesWantEdes;
		this.whyCommission = whyCommission;
	}
	
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return this.firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public int getIka() {
		return this.ika;
	}

	public void setIka(int ika) {
		this.ika = ika;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getParty() {
		return this.party;
	}

	public void setParty(String party) {
		this.party = party;
	}

	public String getProfessional() {
		return this.professional;
	}

	public void setProfessional(String professional) {
		this.professional = professional;
	}

	public String getSurname() {
		return this.surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getWhatAthesWantEdes() {
		return this.whatAthesWantEdes;
	}

	public void setWhatAthesWantEdes(String whatAthesWantEdes) {
		this.whatAthesWantEdes = whatAthesWantEdes;
	}

	public String getWhyCommission() {
		return this.whyCommission;
	}

	public void setWhyCommission(String whyCommission) {
		this.whyCommission = whyCommission;
	}

}