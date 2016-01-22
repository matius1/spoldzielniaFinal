package model;

public class Blok {

	private String blokid;
	private String ulica;
	private String ulica_nr;
	private String miejscowosc;
	
	public String getBlokid() {
		return blokid;
	}
	public void setBlokid(String blokid) {
		this.blokid = blokid;
	}
	public String getUlica() {
		return ulica;
	}
	public void setUlica(String ulica) {
		this.ulica = ulica;
	}
	public String getUlica_nr() {
		return ulica_nr;
	}
	public void setUlica_nr(String ulica_nr) {
		this.ulica_nr = ulica_nr;
	}
	public String getMiejscowosc() {
		return miejscowosc;
	}
	public void setMiejscowosc(String miejscowosc) {
		this.miejscowosc = miejscowosc;
	}
	@Override
	public String toString() {
		return "Blok [blokid=" + blokid + ", ulica=" + ulica + ", ulica_nr=" + ulica_nr + ", miejscowosc=" + miejscowosc
				+ "]";
	}
	
	
	
}
