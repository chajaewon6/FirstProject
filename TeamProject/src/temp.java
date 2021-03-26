

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class temp {
   public void placeData()
   {
      
      try
      {
         String u="https://korean.visitseoul.net/attractions";
         // actions : 명소
         for(int i=1; i<=5; i++)
         {
            String url="https://korean.visitseoul.net/attractions?curPage="+i;
            
            int cno=1;
            Document doc=Jsoup.connect(url).get();
            //System.out.println(doc);
            
            /*
             *    <div class="article-list-slide">
               <ul class="article-list">
                  <li class="item">
                        <!-- 2020 웹접근성 -->
                        <a href="/attractions/양화진외국인선교사묘원_/1153" target="_self"  title="페이지 이동">
                        
                           <div class="thumb" style="background-image:url(/comm/getImage?srvcId=POST&amp;parentSn=1153&amp;fileTy=POSTTHUMB&amp;fileNo=2&amp;thumbTy=M)">
                              </div>
                           <div class="infor-element">
                              <div class="infor-element-inner">
                                 <span class="title">양화진외국인선교사묘원</span>
                                 <span class="small-text text-dot-d">
                                    양화진외국인선교사묘원은 서울 마포구 합정동에 위치한 외국인 선교사들의 공동묘지이다.</span>
                                 <span class="trip-ico">
                                    <img src="https://www.tripadvisor.co.kr/img/cdsi/img2/ratings/traveler/5.0-20215-5.svg" alt="평점:5.0">
                                    <span class="trip-text">14 reviews</span>
                                 </span>
                                 <span class="view"></span>
                              </div>
                           </div>
                        </a>
                     </li>
             */
            Elements link=doc.select("ul.article-list li.item a");
            /*
             *    <div class="thumb" style="background-image:url(/comm/getImage?srvcId=POST&amp;parentSn=1153&amp;fileTy=POSTTHUMB&amp;fileNo=2&amp;thumbTy=M)">
                              </div>
             */
            
            /*
             *    !-- location  -->

                       <section class="infor-element">
                           <div class="text-type"> 
                        홍대</div>
                           <h3 class="h3 textcenter">양화진외국인선교사묘원</h3>
    
                           <script type="text/javascript">
             */
            /*Elements place=doc.select("div.text-type");*/
            for(int j=0; j<link.size(); j++)
            {
               //System.out.println("링크:"+link.get(j).attr("href"));
               // /attractions/양화진외국인선교사묘원_/1153
               try
               {
                  PlaceVO vo = new PlaceVO();
                  Document doc2=Jsoup.connect("https://korean.visitseoul.net"+link.get(j).attr("href")).get();
                  Elements place=doc2.select("section.infor-element div.text-type"); // 홍대
                  Elements title=doc2.select("h3.textcenter");
                  Elements regdate=doc2.select("div.post-element");
                  Elements content=doc2.select("div.text-area");
                  /*
                   *    <div class="wide-slide-element">
                       <!-- sub-detail-slide -->
                   <div class="wide-slide owl-carousel"><!-- 20200615 owl-carousel -->
                        <!-- 2020 웹접근성 -->
                           <div class="item">
                           <img src="/comm/getImage?srvcId=MEDIA&amp;parentSn=3124&amp;fileTy=MEDIA&amp;fileNo=1&amp;thumbTy=L" alt="호림박물관 신사분관의 외관입니다. 건물 벽면에 '박물관, 도서관을 만나다. The Librarium.'이라고 적혀져 있습니다. " />
                           </div>
                           
                        <!-- 2020 웹접근성 -->
                           <div class="item">
                           <img src="/comm/getImage?srvcId=MEDIA&amp;parentSn=3125&amp;fileTy=MEDIA&amp;fileNo=1&amp;thumbTy=L" alt="호림2" />
                           </div>
                           
                        <!-- 2020 웹접근성 -->
                           <div class="item">
                           <img src="/comm/getImage?srvcId=MEDIA&amp;parentSn=3126&amp;fileTy=MEDIA&amp;fileNo=1&amp;thumbTy=L" alt="호림3" />
                           </div>
                           
                        </div><!--// sub-detail-slide -->
                  </div>
                   */
                  Element poster=doc2.selectFirst("div.item img");
                  String p=poster.attr("src");
                  
                  
                  System.out.println("장소:"+place.text());
                  System.out.println("제목:"+title.text());
                  System.out.println("작성일:"+regdate.text());
                  System.out.println("설명:"+content.text());
                  System.out.println("사진:https://korean.visitseoul.net/"+p);
               
                  
                  
                  Elements info1=doc2.select("div.detail-map-wrap div.detail-map-infor dl dt");
                  Elements info2=doc2.select("div.detail-map-wrap div.detail-map-infor dl dd");
                  
                  
                  
                  for(int k=0; k<info1.size(); k++)
                  {
                     try
                     {
                        String str=info1.get(k).text();
                        if(str.equals("주소"))
                        {
                           System.out.println("주소:"+info2.get(k).text());
                        }
                        
                        else if(str.equals("교통 정보"))
                        { 
                           System.out.println("교통 정보:"+info2.get(k).text());
                        }
                         
                        
                     } catch (Exception ex) {}
                  }
                  
               } 
               catch (Exception ex)
               {
                  ex.printStackTrace();
               }
            }
            
         }
         
         
         
         
         
      } catch (Exception ex)
      {
         ex.printStackTrace();
      }
      
   }
   
   public static void main(String[] args) {
      placeManager pm=new placeManager();
      pm.placeData();
}

}