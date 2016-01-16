package model;

public class Mieszkanie {

	private String mieszkanieid;
	private String idBloku;
	private String nrMieszkania;
	private String pietro;
	private String powierzchnia;
	private String iloscPokoi;
	private String piwnicaPow;
	private String ulica;
	private String ulicaNr;
	private String miejscowosc;
	
	public String getUlica() {
		return ulica;
	}
	public void setUlica(String ulica) {
		this.ulica = ulica;
	}
	public String getUlicaNr() {
		return ulicaNr;
	}
	public void setUlicaNr(String ulicaNr) {
		this.ulicaNr = ulicaNr;
	}
	public String getMiejscowosc() {
		return miejscowosc;
	}
	public void setMiejscowosc(String miejscowosc) {
		this.miejscowosc = miejscowosc;
	}
	public String getMieszkanieid() {
		return mieszkanieid;
	}
	public void setMieszkanieid(String mieszkanieid) {
		this.mieszkanieid = mieszkanieid;
	}
	public String getIdBloku() {
		return idBloku;
	}
	public void setIdBloku(String idBloku) {
		this.idBloku = idBloku;
	}
	public String getNrMieszkania() {
		return nrMieszkania;
	}
	public void setNrMieszkania(String nrMieszkania) {
		this.nrMieszkania = nrMieszkania;
	}
	public String getPietro() {
		return pietro;
	}
	public void setPietro(String pietro) {
		this.pietro = pietro;
	}
	public String getPowierzchnia() {
		return powierzchnia;
	}
	public void setPowierzchnia(String powierzchnia) {
		this.powierzchnia = powierzchnia;
	}
	public String getIloscPokoi() {
		return iloscPokoi;
	}
	public void setIloscPokoi(String iloscPokoi) {
		this.iloscPokoi = iloscPokoi;
	}
	public String getPiwnicaPow() {
		return piwnicaPow;
	}
	public void setPiwnicaPow(String piwnicaPow) {
		this.piwnicaPow = piwnicaPow;
	}
	@Override
	public String toString() {
		return "Mieszkanie [mieszkanieid=" + mieszkanieid + ", idBloku=" + idBloku + ", nrMieszkania=" + nrMieszkania
				+ ", pietro=" + pietro + ", powierzchnia=" + powierzchnia + ", iloscPokoi=" + iloscPokoi
				+ ", piwnicaPow=" + piwnicaPow + ", ulica=" + ulica + ", ulicaNr=" + ulicaNr + ", miejscowosc="
				+ miejscowosc + "]";
	}
	
	
	
	
	
	
	
}
