package DB;

public class DTOQboard {

	private String qno;
	private String qtitle;
	private String qname;
	private String qcont;
	private String qdate;
	
	public String getQno() {
		return qno;
	}
	public void setQno(String qno) {
		this.qno = qno;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQname() {
		return qname;
	}
	public void setQname(String qname) {
		this.qname = qname;
	}
	public String getQcont() {
		return qcont;
	}
	public void setQcont(String qcont) {
		this.qcont = qcont;
	}
	public String getQdate() {
		return qdate;
	}
	public void setQdate(String qdate) {
		this.qdate = qdate;
	}
	
	public DTOQboard(String qno, String qtitle, String qname, String qcont, String qdate) {
		super();
		this.qno = qno;
		this.qtitle = qtitle;
		this.qname = qname;
		this.qcont = qcont;
		this.qdate = qdate;
	}
	
	
	
}
