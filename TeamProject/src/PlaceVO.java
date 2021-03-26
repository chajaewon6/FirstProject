

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
/*	
 * 	NO         NOT NULL NUMBER(6)      
	CNO        NOT NULL NUMBER(4)      
	CATEGOTY   NOT NULL VARCHAR2(50)   
	TITLE      NOT NULL VARCHAR2(200)  
	REGDATE    NOT NULL VARCHAR2(200)  
	POSTER     NOT NULL VARCHAR2(3000) 
	CONTENT             CLOB           
	ADDR       NOT NULL VARCHAR2(300)  
	SUBWAYINFO NOT NULL VARCHAR2(200)  
	TAG        NOT NULL VARCHAR2(500)  
	LINK       NOT NULL VARCHAR2(3000) 
 * 
 */
public class PlaceVO {
	private int no;
	private int cno;
	private String category;
	private String title;
	private String regdate;
	private String poster;
	private String content;
	private String addr;
	private String subwayinfo;
	private String tag;

}
