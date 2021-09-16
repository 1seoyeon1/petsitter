<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>write petinfo form</title>
</head> 
<script type="text/javascript">

$(document).ready(function(){

	$(".cencle").on("click" , function(){

		     location.href = "home";
		})
    
	$("#submit").on("click" , function(){

		     if($("#pet_type").val() == "")
			     {
                    alert("품종을 입력해주세요.");
                    $("#pet_type").focus();
                    return false;
			     }
		     
		     if($("#pet_gender").val() == "")
			     {
                    alert("애완동물의 입력해주세요.");
                    $("#pet_gender").focus();
                    return false;
			     }
		     
		     if($("#pet_detail").val() == "")
			     {
                    alert("한줄이여도 좋아요 ㅠ.ㅠ 특이사항을 적어주세요");
                    $("#pet_detail").focus();
                    return false;
			     }
		     
		     if($("#pet_name").val() == "")
			     {
                    alert("이름을 입력해주세요.");
                    $("#pet_name").focus();
                    return false;
			     }
		     
		     if($("#pet_image").val() == "")
			     {
                    alert("사진을 등록해주세요!!");
                    $("#pet_image").focus();
                    return false;
			     }
		     
		     if($("#user_email").val() == "")
			     {
                    alert("주인님의 이메일을 등록해주세요!!");
                    $("#user_email").focus();
                    return false;
			     }
		});
})
</script>

<body>
 <section id="container">
 
    <form action="/petinfo/infowrite" method="post">
       
       <div class="form-group has-feedback">
          <label class="control-label" for="userId">품종</label>
          <input class="form-control" type="text" id="pet_type" name="pet_type"/>
       </div>
       
       <div class="form-group has-feedback">
          <label class="control-label" for="userId">성별</label>
          <div>
          <label><input  type="radio" id="infoWrite" name="pet_gender" value="남자" checked="checked"/>남자</label>
          <label><input  type="radio" id="infoWrite" name="pet_gender" value="여자"/>여자</label>
          </div>
       </div>
       
       <div class="form-group has-feedback">
          <label class="control-label" for="userId">특이사항</label>
          <textarea class="form-control" id="infoWrite" name="pet_detail" maxlength="200"></textarea>
       </div>
       
       <div class="form-group has-feedback">
          <label class="control-label" for="userId">이름</label>
          <input class="form-control" type="text" id="infoWrite" name="pet_name"/>
       </div>
       
       <div class="form-group has-feedback">
          <label class="control-label" for="userId">사진</label>
          <input class="form-control" type="file" id="infoWrite" name="pet_image"/>
       </div>
       
       <div class="form-group has-feedback">
          <label class="control-label" for="userId">이메일</label>
          <input class="form-control" type="email" id="infoWrite" name="user_email"/>
       </div>
       
       <div class="form-group has-feedback">
          <button  type="submit" id="submit">회원가입</button>
          <button class="cencle btn btn-danger" type="button">목록으로 이동</button>       
       </div>
 </form>
</section>
</body>
</html>