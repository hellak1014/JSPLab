package DB;

public class DTOreview {

	private String rno;
	private String rtitle;
	private String rname;
	private String rspo;
	private String rcont;
	private String rdate;
	
	public String getRno() {
		return rno;
	}
	public void setRno(String rno) {
		this.rno = rno;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRspo() {
		return rspo;
	}
	public void setRspo(String rspo) {
		this.rspo = rspo;
	}
	public String getRcont() {
		return rcont;
	}
	public void setRcont(String rcont) {
		this.rcont = rcont;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public DTOreview(String rno, String rtitle, String rname, String rspo, String rcont, String rdate) {
		super();
		this.rno = rno;
		this.rtitle = rtitle;
		this.rname = rname;
		this.rspo = rspo;
		this.rcont = rcont;
		this.rdate = rdate;
	}
	
	
	
	
	
	
}
