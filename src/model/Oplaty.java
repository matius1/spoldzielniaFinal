package model;

public class Oplaty {

	private String oplatyid;
	private String mieszkanieid;
	private String miesiac;
	private String rok;
	private String czynsz;
	private String prad;
	private String woda;
	private String gaz;
	private String remontowe;
	
	public String getOplatyid() {
		return oplatyid;
	}
	public void setOplatyid(String oplatyid) {
		this.oplatyid = oplatyid;
	}
	public String getMieszkanieid() {
		return mieszkanieid;
	}
	public void setMieszkanieid(String mieszkanieid) {
		this.mieszkanieid = mieszkanieid;
	}
	public String getMiesiac() {
		return miesiac;
	}
	public void setMiesiac(String miesiac) {
		this.miesiac = miesiac;
	}
	public String getRok() {
		return rok;
	}
	public void setRok(String rok) {
		this.rok = rok;
	}
	public String getCzynsz() {
		return czynsz;
	}
	public void setCzynsz(String czynsz) {
		this.czynsz = czynsz;
	}
	public String getPrad() {
		return prad;
	}
	public void setPrad(String prad) {
		this.prad = prad;
	}
	public String getWoda() {
		return woda;
	}
	public void setWoda(String woda) {
		this.woda = woda;
	}
	public String getGaz() {
		return gaz;
	}
	public void setGaz(String gaz) {
		this.gaz = gaz;
	}
	public String getRemontowe() {
		return remontowe;
	}
	public void setRemontowe(String remontowe) {
		this.remontowe = remontowe;
	}
	@Override
	public String toString() {
		return "Oplaty [oplatyid=" + oplatyid + ", mieszkanieid=" + mieszkanieid + ", miesiac=" + miesiac + ", rok="
				+ rok + ", czynsz=" + czynsz + ", prad=" + prad + ", woda=" + woda + ", gaz=" + gaz + ", remontowe="
				+ remontowe + "]";
	}
	
	
}
