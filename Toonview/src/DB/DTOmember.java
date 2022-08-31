package DB;

public class DTOmember {

	private String mno;
	private String mid;
	private String mpass;
	private String memail;
	private String mage;
	private String mbd;
	private String mtel;
	private String mgender;
	private String mlevel;
	private String mimage;
	private String mdate;
	
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMage() {
		return mage;
	}
	public void setMage(String mage) {
		this.mage = mage;
	}
	public String getMbd() {
		return mbd;
	}
	public void setMbd(String mbd) {
		this.mbd = mbd;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMgender() {
		return mgender;
	}
	public void setMgender(String mgender) {
		this.mgender = mgender;
	}
	public String getMlevel() {
		return mlevel;
	}
	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}
	public String getMimage() {
		return mimage;
	}
	public void setMimage(String mimage) {
		this.mimage = mimage;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public DTOmember(String mno, String mid, String mpass, String memail, String mage, String mbd, String mtel,
			String mgender, String mlevel, String mimage, String mdate) {
		super();
		this.mno = mno;
		this.mid = mid;
		this.mpass = mpass;
		this.memail = memail;
		this.mage = mage;
		this.mbd = mbd;
		this.mtel = mtel;
		this.mgender = mgender;
		this.mlevel = mlevel;
		this.mimage = mimage;
		this.mdate = mdate;
	}
	
	
	
	
}
