<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/video/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.css"/>
<style>

	html { 
	  background-image: url("/Project_video/resource/images/Video.jpg");
	  background-repeat: no-repeat;
	  background-origin: center;
	  -webkit-background-size: cover;
	  -moz-background-size: cover;
	  -o-background-size: cover;
	  background-size: cover;
	}
	.main{
	   position: absolute;
	   padding-top: 2%;
	   left:0px;
	   right:0px;
	   text-align: center;
	}
	.MvideoB{
	   display: inline-block;
	   margin-left: 10px;
	   width: 570px;
	   height: 250px;
	   margin-top:10px;
	   /*float: left;*/
/*	   background-color: pink;	*/
	   text-align: center;
	   background-repeat: no-repeat;
	   background-size: cover;
	}
	.videoC{
	   display: inline;
	   width: 1030px;
	   text-align: left;
	   margin: 0 auto;
	}
	.videoT{
	   color: white;
	   font-size: 30px;
	}
	.UB{
	   z-index: 100;
	   padding-top: 20%;
	
	}
	.logo{
	   margin:0 auto;
	   padding-top: 0px;
	   width: 120px;
	   height: 140px;
	   /*background-image: url("C:/ncs03/sublime_work/project/images/logo.png");*/
	}
	.pgn{
	   position: absolute;
	   width: 1000px;
	   bottom: 20px;
	}
	.Write{
       display: inline-block;
       position: absolute;
       right: 15px;
       bottom: 15px;
       width: 80px;
       height: 40px;
       font-size: 16px;
       background-color: white;
       color: black;
   }
</style>
</head>
<body>
   <div class="container">
      <div class="row main">
         <div class="logo">
            <img class="logo" src="${pageContext.request.contextPath }/resource/images/LOGO.png"/>
         </div>
         <p class="videoT">video</p>
         <div class="videoC">
         	<c:choose>
         		<c:when test="${pageNum ne endPageNum }">
	         		<c:forEach var="i" begin="0" end="3" step="1">
						<a href="detail.do?num=${list[i].num }">
							<div class="MvideoB" style="background-image: url(<c:out value="${list[i].imgSrc })"/>">
				            	<img class="UB" src="${pageContext.request.contextPath }/resource/images/UB.png"/>
				            </div>
						</a>
						<c:if test="${i%4 eq 1 }">
							<div style="width: 0px;"></div>
						</c:if>
					</c:forEach>
	         	</c:when>
				<c:otherwise>
					<c:forEach var="i" begin="0" end="${totalRow%4-1 }" step="1">
						<a href="detail.do?num=${list[i].num }">
							<div class="MvideoB" style="background-image: url(<c:out value="${list[i].imgSrc })"/>">
				            	<img class="UB" src="${pageContext.request.contextPath }/resource/images/UB.png"/>
				            </div>
						</a>
						<c:if test="${i%4 eq 1 }">
							<div style="width: 0px;"></div>
						</c:if>
					</c:forEach>
				</c:otherwise>
         	</c:choose>
         </div>
      </div>
      <div class="row pgn">
         <div class="col-sm-5">
	         <div class="dataTables_info" id="example_info" role="status" aria-live="polite">
	         </div>
         </div>
         
         <div class="col-sm-7">
            <div class="dataTables_paginate paging_simple_numbers" id="example_paginate">
               <ul class="pagination">
               
      	         <c:choose>
			         <c:when test="${startPageNum ne 1 }">
			         	<li class="paginate_button previous" id="example_previous">
	                     	<a href="list.do?pageNum=${startPageNum-1 }" aria-controls="example" data-dt-idx="0" tabindex="0">Previous</a>
	                  	</li>
			         </c:when>
			         <c:otherwise>
			            <li class="disabled paginate_button previous" id="example_previous">
		                    <a href="javascript:" aria-controls="example" data-dt-idx="0" tabindex="0">Previous</a>
		                </li>
			         </c:otherwise>
			      </c:choose>
                  
                  <c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
			         <c:choose>
			            <c:when test="${i eq pageNum }">
			            	<li class="paginate_button active">
			                    <a href="list.do?pageNum=${i }" aria-controls="example">${i }</a>
			                </li>
			            </c:when>
			            <c:otherwise>
			                <li class="paginate_button ">
		                     	<a href="list.do?pageNum=${i }" aria-controls="example">${i }</a></li>
		                	</li>
			            </c:otherwise>
			         </c:choose>
			      </c:forEach>
                  
                  <c:choose>
			         <c:when test="${endPageNum lt totalPageCount }">
			            <li class="paginate_button next" id="example_next">
		                   <a href="list.do?pageNum=${endPageNum+1 }" aria-controls="example">Next</a>
		                </li>
			         </c:when>
			         <c:otherwise>
			            <li class="disabled paginate_button next" id="example_next">
		                   <a class="muted" href="javascript:" aria-controls="example">Next</a>
		                </li>
			         </c:otherwise>
			      </c:choose>                  
               </ul>
			   
            </div>
         </div>
      </div>
   </div>

	<div class="WriteBtn">
        <button class="Write btn btn-default">
            글쓰기
        </button>
    </div>

<script src="${pageContext.request.contextPath }/resource/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resource/js/bootstrap.js"></script>
<script>
	$(".Write").click(function(){
		location.href="insertform.do";
	});
	
	$(".MvideoB").click(function(){
		
	});
</script>
</body>
</html>

