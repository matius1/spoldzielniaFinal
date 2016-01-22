package model;

public class Pracownik {

	private String pracownikid;
	private String imie;
	private String nazwisko;
	private String pesel;
	private String ulica;
	private String miejscowosc;
	private String stanowisko;
	private String nrKonta;
	private String nrTel;

	


	public String getPracownikid() {
		return pracownikid;
	}

	public void setPracownikid(String pracownikid) {
		this.pracownikid = pracownikid;
	}

	public String getImie() {
		return imie;
	}
	public void setImie(String imie) {
		this.imie = imie;
	}
	public String getNazwisko() {
		return nazwisko;
	}
	public void setNazwisko(String nazwisko) {
		this.nazwisko = nazwisko;
	}
	public String getPesel() {
		return pesel;
	}
	public void setPesel(String pesel) {
		this.pesel = pesel;
	}
	public String getUlica() {
		return ulica;
	}
	public void setUlica(String ulica) {
		this.ulica = ulica;
	}
	public String getMiejscowosc() {
		return miejscowosc;
	}
	public void setMiejscowosc(String miejscowosc) {
		this.miejscowosc = miejscowosc;
	}
	public String getStanowisko() {
		return stanowisko;
	}
	public void setStanowisko(String stanowisko) {
		this.stanowisko = stanowisko;
	}
	public String getNrKonta() {
		return nrKonta;
	}
	public void setNrKonta(String nrKonta) {
		this.nrKonta = nrKonta;
	}
	public String getNrTel() {
		return nrTel;
	}
	public void setNrTel(String nrTel) {
		this.nrTel = nrTel;
	}

	@Override
	public String toString() {
		return "Pracownik [pracownikid=" + pracownikid + ", imie=" + imie + ", nazwisko=" + nazwisko + ", pesel="
				+ pesel + ", ulica=" + ulica + ", miejscowosc=" + miejscowosc + ", stanowisko=" + stanowisko
				+ ", nrKonta=" + nrKonta + ", nrTel=" + nrTel + "]";
	}


	
	
}
