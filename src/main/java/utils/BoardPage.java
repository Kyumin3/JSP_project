package utils;

public class BoardPage {
    public static String pagingStr(int totalCount, int pageSize, int blockPage,
            int pageNum, String reqUrl) {
        String pagingStr = "";
        System.out.println("들어온값 PageNum: "+ pageNum);
        System.out.println("들어온값 blockPage: " + blockPage);
        
        int totalPages = (int) (Math.ceil(((double) totalCount / pageSize)));

        int pageTemp =(((pageNum-1)/blockPage)*blockPage)+1;
        System.out.println("계산된 PageTemp: " + pageTemp);
        System.out.println("==============================");
        

        
            pagingStr += "<div class=\"text-center\">";
            pagingStr += "<ul class=\"pagination pg-blue\">";
        if (pageTemp != 1) {
            pagingStr += "<li class=\"page-item\">";
            pagingStr += "<a href="+reqUrl+"?pageNum=1 class=\"page-link\" aria-label=\"first\"><span aria-hidden=\"true\"><strong>&lt;&lt;</strong></span></a>";
            pagingStr += "</li>";
            pagingStr += "<li class=\"page-item\">";
            pagingStr += "<a href="+reqUrl+"?pageNum="+(pageTemp-1)+" aria-label=\"Previous\"><span aria-hidden=\"true\"><strong>&lt;</strong></span></a>";
            pagingStr += "</li>";
        }else {
            pagingStr += "<li class=\"page-item\">";
            pagingStr += "<a href=\"#\" class=\"page-link\" aria-label=\"first\" class=\"nolink\"><span aria-hidden=\"true\">&lt;&lt;</span></a>";
            pagingStr += "</li>";
            pagingStr += "<li class=\"page-item\">";
            pagingStr += "<a href=\"#\" aria-label=\"Previous\" class=\"nolink\"><span aria-hidden=\"true\">&lt;</span></a>";
            pagingStr += "</li>";
        	
        	
        	
        }
        
        int blockCount = 1;
        while (blockCount <= blockPage && pageTemp <= totalPages) {
            if (pageTemp == pageNum) {
                pagingStr += "<li class=\"page-item active\"><a href=\"#\" class=\"page-link\">"+pageTemp+"</a></li>";
            } else {
                pagingStr += "<li class=\"page-item\"><a href="+reqUrl+"?pageNum="+pageTemp+" class=\"page-lin\">"+pageTemp+"</a></li>";
            }
            pageTemp++;
            blockCount++;
        }

        if (pageTemp <= totalPages) {
        	
            pagingStr += "<li class=\"page-item\">";
            pagingStr += "<a href="+reqUrl+"?pageNum="+pageTemp+" class=\"page-link\" aria-label=\"first\"><span aria-hidden=\"true\"><strong>&gt;</strong></span></a>";
            pagingStr += "</li>";
            pagingStr += "<li class=\"page-item\">";
            pagingStr += "<a href="+reqUrl+"?pageNum="+totalPages+" aria-label=\"Previous\"><span aria-hidden=\"true\"><strong>&gt;&gt;</strong></span></a>";
            pagingStr += "</li>";
            pagingStr += "</ul>";
            pagingStr += "</div>";
        }else {
        	
            pagingStr += "<li class=\"page-item\">";
            pagingStr += "<a href=\"#\" aria-label=\"first\" class=\"nolink\"><span aria-hidden=\"true\">&gt;</span></a>";
            pagingStr += "</li>";
            pagingStr += "<li class=\"page-item\">";
            pagingStr += "<a href=\"#\" aria-label=\"Previous\" class=\"nolink\"><span aria-hidden=\"true\">&gt;&gt;</span></a>";
            pagingStr += "</li>";
            pagingStr += "</ul>";
            pagingStr += "</div>";
        	
        }
        

        return pagingStr;
    }
}
