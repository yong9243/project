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
body{
	background-image: url("/Project_video/resource/images/Video.jpg");
	background-repeat: no-repeat;
	background-origin: center;
	-webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
	color: white;
}
.main{
   height: 310px;
   
}
.main h4{
   margin:0;
   color: white;
   display: inline;
   
}
.main p{
   color:white;

}

.PTitle{
   margin-top: 150px;
   font-weight: bold;
   color:white;
   font-size: 25px;
   margin-left: 60px;
   margin-bottom: 30px;
}
/*
.V1{
   background-image: url("C:/ncs03/sublime_work/project/images/V1.jpg");
}
*/
.MvideoB{
   display: inline-block;
   width: 620px;
   height: 310px;
   padding:0;
}
.UB{
   z-index: 100;
   padding-top:20%;
}
.videoPlay{
   text-align: center;
}
.DG{
   margin-top: 20px;
   border:1px solid white;
   
   margin-left: 60px;
   height: 200px;
}
.DGT{
   display: inline;
}
.DG p {
   color:white;
   font-size: 14px;
   z-index: 1000;
}   
.DGcontent{
   opacity: 0.6;
}
.heart{
   color:white;
}
.DGtime{
   margin-left: 150px;
}
.DGC{
   margin-left: 10px;
   margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container">
	   <div class="row">
	      <div class="col-xs-4">
	         <p class="PTitle">${dto.title }</p>
	      </div>
	   </div>
	   <div class="row">
	      <div class="col-xs-8 videoPlay">
	         <div class="MvideoB V1">
	            <iframe width="560" height="315" src='${dto.videoUrl }' frameborder="0" allowfullscreen></iframe>
	         </div>
	      </div>
	      <div class="col-xs-4">
	         <div class="main">
	            <h4>${dto.title }</h4> 
	            <br>
	            <br>
	            <div class="heart"> 좋아요 : 
	            	${dto.viewCount }
	            </div>
	            <br>
	            <p>${dto.content }</p>
	         </div>
	      </div>
	   </div>
	   <div class="row">
	      <div class="col-xs-12">
	         <div class="DG">
	            <div class="DGC">
	               <p class="DGT DGid">아이디 : </p>
	               <p class="DGT DGtime">작성시간 : </p>
	               <br>
	               <p class="DGT DGcontent">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem officia non totam dolore architecto, distinctio modi consequatur. <br> 
	               Repudiandae quisquam qui, quo, possimus neque dolores provident sed sunt error, amet vel?</p>
	               <br>
	               <br>
	               <p class="DGT DGid">아이디 :</p>
	               <p class="DGT DGtime">작성시간 : </p>
	               <br>
	               <p class="DGT DGcontent">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem officia non totam dolore architecto, distinctio modi consequatur. <br> 
	               Repudiandae quisquam qui, quo, possimus neque dolores provident sed sunt error, amet vel?</p></div>
	            </div>
	         </div>
	      </div>
	   </div>
	</div>
<script src="${pageContext.request.contextPath }/resource/js/jquery-3.2.0.js"></script>
<script src="${pageContext.request.contextPath }/resource/js/bootstrap.js"></script>  

</body>
</html>