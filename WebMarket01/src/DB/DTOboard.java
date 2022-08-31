package DB;

public class DTOboard {
   
	private String bid;
	private String btitle;
	private String bcont;
	private String bauthor;
	private String bdate;
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcont() {
		return bcont;
	}
	public void setBcont(String bcont) {
		this.bcont = bcont;
	}
	public String getBauthor() {
		return bauthor;
	}
	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public DTOboard(String bid, String btitle, String bcont, String bauthor, String bdate) {
		super();
		this.bid = bid;
		this.btitle = btitle;
		this.bcont = bcont;
		this.bauthor = bauthor;
		this.bdate = bdate;
	}
	
	
	
}
	