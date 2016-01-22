package model;

public class Wlasciciel {
	
	private String wlascicielid;
	private String imie;
	private String nazwisko;
	private String pesel;
	private String ulica;
	private String miejscowosc;
	private String nrTel;
	
	public String getWlascicielid() {
		return wlascicielid;
	}
	public void setWlascicielid(String wlascicielid) {
		this.wlascicielid = wlascicielid;
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
	public String getNrTel() {
		return nrTel;
	}
	public void setNrTel(String nrTel) {
		this.nrTel = nrTel;
	}
	@Override
	public String toString() {
		return "Wlasciciel [wlascicielid=" + wlascicielid + ", imie=" + imie + ", nazwisko=" + nazwisko + ", pesel="
				+ pesel + ", ulica=" + ulica + ", miejscowosc=" + miejscowosc + ", nrTel=" + nrTel + "]";
	}
	
	
	

}
