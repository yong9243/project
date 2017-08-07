<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>modal.html</title>
<link rel="stylesheet" href="/Project_video/resource/css/bootstrap.css"/>
<style>
  .modal.modal-center {
  text-align: center;
}

@media screen and (min-width: 768px) { 
  .modal.modal-center:before {
    display: inline-block;
    vertical-align: middle;
    content: " ";
    height: 100%;
  }
}

.modal-dialog.modal-center {
  display: inline-block;
  text-align: left;
  vertical-align: middle; 
}
.btn {
  background: #ffffff;
  background-image: -webkit-linear-gradient(top, #ffffff, #ffffff);
  background-image: -moz-linear-gradient(top, #ffffff, #ffffff);
  background-image: -ms-linear-gradient(top, #ffffff, #ffffff);
  background-image: -o-linear-gradient(top, #ffffff, #ffffff);
  background-image: linear-gradient(to bottom, #ffffff, #ffffff);
  -webkit-border-radius: 60;
  -moz-border-radius: 60;
  border-radius: 60px;
  font-family: Arial;
  color: #6b1aad;
  font-size: 14px;
  padding: 10px 20px 10px 20px;
  border: solid #5100ad 2px;
  text-decoration: none;
}

.btn:hover {
  text-decoration: none;
}
#CLeft{
  position: relative;
  display: inline-block;
}
#CRight{

  margin-top:10px;
}
#BBtn{
  margin-top: 10px;
  display: block;
}
</style>
</head>
<body>
<div class="container" style="margin-top: 50px; margin-left:50px;">
   <button class="btn" id="showBtn">modal text</button>
</div>
<div class="modal modal-center fade" id="myCenterModal" tabindex="-1" role="dialog" aria-labelledby="myCenterModalLabel">
  <div class="modal-dialog modal-center" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span>&times;</span><span class="sr-only">모달 닫기</span></button>
        <h4 class="modal-title">Calendar</h4>
      </div>
      <div class="modal-body">
        
        <div class="row">
          <div class="col-xs-4">
            <span class="img" id="CLeft">
             <img src="C:/ncs03/sublime_work/project/images/download.jpg"/>
            </span>
          </div>
          <div class="col-xs-8">
            <span id="CRight">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam dolorem iusto laboriosam accusamus culpa, nam similique sunt assumenda vel maiores nemo eligendi, recusandae quod quae. Atque facilis quibusdam ex, magni.</span>
            <button type="button" class="btn" id="BBtn"><a href="#">ShowFestival</a></button>
          </div>
        </div>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal --> 
<script src="/Project_video/resource/js/jquery-3.2.0.js"></script>
<script src="/Project_video/resource/js/bootstrap.js"></script>   
<script>
   $("#showBtn").click(function(){
      //modal 띄우기
      $("#myCenterModal").modal("show");
   });

   //모달에 옵션 전달하기
   $("myCenterModal").modal({
       show:false, //이 javascript가 실행될때 modal 안뜨게
       backdrop:false
   });
</script>
</body>
</html>