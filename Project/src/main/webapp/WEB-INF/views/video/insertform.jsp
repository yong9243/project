<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/video/insertform.jsp</title>
<style>
	body{
		background-color: LightPink;
		width: 100%;
		background-image: url("/Project_video/resource/images/Video.jpg");
		
		color: white;
	}
	#headline{
		color: white;
	}
	label{
		color: white;
	}
	.container{
		margin-top: 10%;
		width: 1400px;
	}
	.text{
		color: white;
		font-size: 30px;
		font-weight: bold;
		line-height: 100%;
		margin: 0;
	}
	.T{
		position: fixed;
		display: block;
		text-align: center;
		left: 44%;
		top: 0%;
		padding-top: 20px;
	}
</style>
<link rel="stylesheet" href="/Project_video/resource/css/font-awesome.css" />
<link rel="stylesheet" href="/Project_video/resource/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<div class="row">
		    <div class="text">
		        <p class="text T"><a href="/Project_video/index.do"><img src="/Project_video/resource/images/LOGO.png" alt="" /></a></p>
		    </div>
		</div>
		<form action="insert.do" method="post" enctype="multipart/form-data">
		
		    <div class="form-group">
		        <h3 id="headline">지난 축제 업로드</h3>
		        <label for="admin_id">관리자ID</label>
		        <input type="text" class="form-control" name="admin_id" id="admin_id" value="admin"/>
		    </div>
		    
		    <div class="form-group">
		        <label for="title">제목</label>
		        <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요"/>
		    </div>
		    
		    <div class="form-group ">
		        <label for="content">소개</label>
		        <textarea class="form-control" rows="10" name="content" id="content" placeholder="내용을 입력하세요"></textarea>
		    </div>
		    
		    <div class="form-group ">
		        <label for="videoUrl">동영상 URL 경로</label>
		        <input type="text" class="form-control" name="videoUrl" id="videoUrl" placeholder="url 경로를 입력하세요"/>
		    </div>
		    
	 		<div class="form-group">
			    <label for="file_path">이미지 썸네일</label><br/>
			    <input type="file" class="filestyle" data-icon="false" id="myFile" name="myFile"><br/>
				<button type="submit" class="btn btn-default" id="subBtn">글 게시</button>
			</div>
	
		</form>
	</div>
<script src="/Project_video/resource/js/jquery-3.2.0.js"></script>
<script src="/Project_video/resource/js/bootstrap.js"></script>
<script type="text/javascript" src="/Project_video/resource/js/bootstrap-filestyle.min.js"></script>
</body>
</html>