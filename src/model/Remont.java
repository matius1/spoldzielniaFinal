package model;

public class Remont {

	private String remontid;
	private String opis;
	private String kwota;
	private String blokid;
	public String getRemontid() {
		return remontid;
	}
	public void setRemontid(String remontid) {
		this.remontid = remontid;
	}
	public String getOpis() {
		return opis;
	}
	public void setOpis(String opis) {
		this.opis = opis;
	}
	public String getKwota() {
		return kwota;
	}
	public void setKwota(String kwota) {
		this.kwota = kwota;
	}
	public String getBlokid() {
		return blokid;
	}
	public void setBlokid(String blokid) {
		this.blokid = blokid;
	}
	@Override
	public String toString() {
		return "Remont [remontid=" + remontid + ", opis=" + opis + ", kwota=" + kwota + ", blokid=" + blokid + "]";
	}
	
	
	
}
