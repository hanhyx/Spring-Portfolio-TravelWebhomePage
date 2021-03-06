<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>

<style type="text/css">
body {
	background: url('img/bg.jpg');
	padding: 50px;
}
/* #joinForm { */
/* 	margin: auto; */
/* 	width: 75%; */
/* 	text-align: center; */
/* } */
</style>
<!-- Bootstrap -->
<link href="webapp/resources/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<link href="webapp/resources/image/icon/HalfLife.ico" rel="shortcuticon">
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
<script src="//code.jquery.com/jquery.js"></script>
<!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
<script src="webapp/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond) -->
<script src="webapp/resources/bootstrap/js/respond.js"></script>
<!-- 버튼 폰트 -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
	function chkDupId() {
		var id = $('#joinId').val();

		if ($("#joinId").val() == '') {
			alert('ID를 입력해주세요.');
			return;
		}
		var param = "id="+id;

		$.ajax({
			type : "post",
			url : "chkDupId.do",
			data : param,
			dataType : 'text',
			success : function(result) {
				var chkIdR = result;
				if (chkIdR == "true") {
					alert("등록 가능한 ID입니다.");
					$("#idChkBtm").val('Y');
				} else {
					alert("중복된 ID입니다.");
					$("#idChkBtm").val('N');
				}
			},
			error : function() {
				alert("ajax 에러");
			}
		});
	};
</script>
</head>
<%@include file="header21.jsp"%>
<body>

	<div class="container">
		<!-- 좌우측의 공간 확보 -->
		<!-- 헤더 들어가는 부분 -->


	</div>
	<!--// 헤더 들어가는 부분 -->
	<!-- 모달창 -->
	<div class="modal fade" id="defaultModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">알림</h4>
				</div>
				<div class="modal-body">
					<p class="modal-contents"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!--// 모달창 -->
	<hr />
	<!-- 본문 들어가는 부분 -->

	<!-- 머리 부분 -->
	<!-- 		<div class="jumbotron"> -->
	<!-- 			<h1> -->
	<!-- 				<span -->
	<!-- 					style="color: inherit; line-height: 1.4; font-family: 돋움, Dotum, Helvetica, sans-serif; font-size: 21px;"> 여행의 즐거움 travel Maker 회원가입 화면 입니다.</span> -->
	<!-- 			</h1> -->
	<!-- 		</div> -->
	<!-- 머리부분 끝 -->

	<div class="join-agree-area">
		<div class="panel panel-default">
			<div class="panel-body row" style="padding-top: 25px;">
				<div class="form-group col-md-6" style="margin-bottom: 0;">
					<div class="form-group-item">
						<!-- 				<div class="form-group"> -->
						<label for="provision" class="control-label">회원가입약관</label>
					</div>
					<div class="form-group-item" id="provision">
						<textarea class="form-control" readonly rows="10" cols="100">
약관동의

제 1 장 : 총칙 
제 2 장 : 서비스 이용계약 
제 3 장 : 계약당사자의 의무 
제 4 장 : 서비스 이용 
제 5 장 : 계약해지 및 이용제한 
제 6 장 : 기타 

제 1 장 : 
잘 알아서 이용해 ...

제 2 장 : 
프로젝트니까...

제 3 장 : 

동의만 해....

                    </textarea>
					</div>
					<div class="form-group-item">
						<div class="radio pull-right">
							<label> <input type="radio" id="provisionYn"
								name="provisionYn" value="Y" autofocus="autofocus" checked>
								동의합니다.
							</label> <label> <input type="radio" id="provisionYn"
								name="provisionYn" value="N"> 동의하지 않습니다.
							</label>
						</div>

					</div>
				</div>
				<div class="clearfix visible-sm visible-xs"></div>
				<div class="form-group col-md-6" style="margin-bottom: 0;">
					<div class="form-group-item">
						<label for="memberInfo" class="control-label">개인정보취급방침</label>
					</div>
					<div class="form-group-item" id="memberInfo">
						<textarea class="form-control" readonly rows="10" cols="100">
개인정보의 항목 및 수집방법
보존 이유 : 부정 이용 방지
보존 기간 : 1년

개발 테스트 용입니다.
이용하고 싶으신가요 ?
그럼 동의해 주세요
개인 정보 수집 및 이용에 동의합니다.

개인 정보 잘 보호해야된다고 생각합니다.
ㅇㄻㅇㄹ
ㅁㄴㅇㄹ
ㅁㅇㄹ
ㅁㄴㅇㄹ
ㅁㄴㅇ
ㄻ
ㄴㅇㄹ
                    </textarea>
					</div>
					<div class="form-group-item">
						<div class="radio pull-right">
							<label> <input type="radio" id="memberInfoYn"
								name="memberInfoYn" value="Y" checked> 동의합니다.
							</label> <label> <input type="radio" id="memberInfoYn"
								name="memberInfoYn" value="N"> 동의하지 않습니다.
							</label>
						</div>
					</div>

				</div>
			</div>
			<div class="panel-footer">
				<div style="overflow: hidden" class="row">
					<div class="col-sm-offset-10 col-sm-2">
						<button class="btn btn-lg btn-default btn-block" type="button"
							id="join_agree_next">
							다음 <i class="fa fa-angle-double-right"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 	</div> -->
	<!-- 	콘테이너영역 -->



	<form class="form-horizontal" id="joinForm" role="form" method="post"
		action="join.do" enctype="multipart/form-data" style="display: none;">
		<div class="panel panel-default">
			<div class="panel-heading">Create Account</div>
			<!-- panel heading -->

			<div class="panel-body">
				<div class="form-group" id="divId">

					<!-- 		아이디 -->
					<label for="inputId" class="col-sm-4 control-label"> 아이디 <br>
						<small class="text-danger">(필수입력)</small>
					</label>
					<div class="col-sm-6">
						<div class="input-group">
							
							<input type="text" class="form-control onlyAlphabetAndNumber"
								id="joinId" name="id" data-rule-required="true"
								placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
							<span class="input-group-btn">
								<input type="hidden" id="idChkBtm" value="N">
								<input type="button" onclick="chkDupId();" class="btn btn-default id2_btn" value="중복확인"/>
							</span>
						</div>
						<input id="joinId2" name="joinId2" type="text" class="hidden" />
					</div>
				</div>

				<!-- 	비밀번호 -->
				<div class="form-group" id="divPassword">
					<label for="inputPassword" class="col-sm-4 control-label">
						비밀번호 <br> <small class="text-danger">(필수입력)</small>
					</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="joinPassword"
							name="password" data-rule-required="true" placeholder="패스워드"
							maxlength="30">
					</div>
				</div>

				<!-- 	비밀번호확인-->
				<div class="form-group" id="divPasswordCheck">
					<label for="inputPasswordCheck" class="col-sm-4 control-label">비밀번호
						확인 <br> <small class="text-danger">(필수입력)</small>
					</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="passwordCheck"
							data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
					</div>
				</div>

				<!-- 	이름 -->
				<div class="form-group" id="divName">
					<label for="inputName" class="col-sm-4 control-label">이름 <br>
						<small class="text-danger">(필수입력)</small></label>
					<div class="col-sm-6">
						<input type="text" class="form-control onlyHangul" id="name"
							name="name" data-rule-required="true" placeholder="한글만 입력 가능합니다."
							maxlength="15">
					</div>
				</div>

				<!-- 					<div class="form-group" id="divNickname"> -->
				<!-- 						<label for="inputNickname" class="col-sm-4 control-label">별명</label> -->
				<!-- 						<div class="col-sm-6"> -->
				<!-- 							<input type="text" class="form-control" id="nickname" -->
				<!-- 								data-rule-required="true" placeholder="별명" maxlength="15"> -->
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 	이메일 -->
				<div class="form-group" id="divEmail">
					<label for="inputEmail" class="col-sm-4 control-label">이메일
						<br> <small class="text-danger">(필수입력)</small>
					</label>
					<div class="col-sm-6">
						<input type="email" class="form-control" id="email" name="email"
							data-rule-required="true" placeholder="이메일" maxlength="40">
					</div>
				</div>

				<!-- 	폰번호-->
				<div class="form-group" id="divPhoneNumber">
					<label for="inputPhoneNumber" class="col-sm-4 control-label">휴대폰
						번호 <br> <small class="text-danger">(필수입력)</small>
					</label>
					<div class="col-sm-6">
						<input type="tel" class="form-control onlyNumber" id="phoneNumber"
							name="phone" data-rule-required="true"
							placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
					</div>
				</div>

				<!-- 	프로필 사진 -->
				<div class="form-group" id="divProfilePic">
					<label for="inputProfile" class="col-sm-4 control-label">프로필
						사진 <small class="text-danger">(미입력시기본사진)</small></label>
					<div class="col-sm-6">
						<input type="file" name="profilepic"><br>
					</div>
				</div>
				
				<!-- 	질문 -->
				<div class="form-group" id="divQuestion">
					<label for="inputQuestion" class="col-sm-4 control-label">질문 <br>
						<small class="text-danger">(필수입력)</small></label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="question"
							name="question" data-rule-required="true" placeholder="비밀번호 찾기에 사용하는 질문입니다."
							maxlength="40">
					</div>
				</div>
				
				<!-- 	답변 -->
				<div class="form-group" id="divAnswer">
					<label for="inputAnswer" class="col-sm-4 control-label">답변 <br>
						<small class="text-danger">(필수입력)</small></label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="answer"
							name="answer" data-rule-required="true" placeholder="비밀번호 찾기에 사용하는 답변입니다."
							maxlength="25">
					</div>
				</div>

				<!-- 	성별 -->
				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="inputPhoneNumber" class="col-sm-4 control-label">성별</label> -->
				<!-- 						<div class="col-sm-6"> -->
				<!-- 							<select class="form-control" id="gender" name="gender"> -->

				<!-- 							</select> -->
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 		우편번호 -->
				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="zip" class="col-sm-4 control-label"> 우편번호 </label> -->
				<!-- 						<div class="col-sm-3"> -->
				<!-- 							<div class="input-group"> -->
				<!-- 								<input id="zipcode" name="zip_code" type="text" -->
				<!-- 									class="form-control zip_btn postcodify_postcode5" -->
				<!-- 									placeholder="00000" readonly style="cursor: pointer;"> -->
				<!-- 								<span class="input-group-btn"> -->
				<!-- 									<button type="button" class="btn btn-default zip_btn">검색</button> -->
				<!-- 								</span> -->
				<!-- 							</div> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 		우편번호 끝 -->

				<!-- 주소 -->
				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="addr" class="col-sm-4 control-label"> 주소 </label> -->
				<!-- 						<div class="col-sm-6"> -->
				<!-- 							<input -->
				<!-- 								id="addr2" name="addr2" type="text" -->
				<!-- 								class="form-control postcodify_details" placeholder=""> -->
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 	이메일 수신여부 -->
<!-- 				<div class="form-group"> -->
<!-- 					<label for="inputEmailReceiveYn" class="col-sm-4 control-label">이메일 -->
<!-- 						수신여부</label> -->
<!-- 					<div class="col-sm-6"> -->
<!-- 						<p class="text-left"> -->
<!-- 							<label class="radio-inline"> <input type="radio" -->
<!-- 								id="emailReceiveYn" name="email_check" value="Y" checked> -->
<!-- 								동의합니다.  -->
<!-- 						</p> -->
<!-- 						<p class="text-left"> -->
<!-- 						</label> <label class="radio-inline"> <input type="radio" -->
<!-- 							id="emailReceiveYn" name="email_check" value="N"> 동의하지 -->
<!-- 							않습니다. -->
<!-- 						</label> -->
<!-- 						</p> -->
<!-- 					</div> -->
<!-- 				</div> -->

			</div>
			<div class="panel-footer">
				<div class="form-group" style="padding-top: 10px">
					<div class="col-sm-2">
						<button class="btn btn-lg btn-default btn-block" type="button"
							onclick="join_agree_prev();">
							<i class="fa fa-angle-double-left fa-fw"></i> 이전
						</button>
					</div>
					<div class="col-sm-offset-8 col-sm-2">
						<button class="btn btn-lg btn-success btn-block" type="submit">
							<i class="fa fa-check fa-fw"></i> 확인
						</button>
						<input type="hidden" name="do" value="user_add"> <input
							type="hidden" name="join_priv_agree" value="" /> <input
							type="hidden" name="join_user_agree" value="" />
					</div>
				</div>
			</div>
		</div>

	</form>

	<script>
		// 		function join_agree_next() {
		// 			var modalContents = $(".modal-contents");
		// 			var modal = $("#defaultModal");

		// 			if (!$('#provisionYn').prop("checked")) {
		// 				modalContents.text("회원가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
		// 				modal.modal('show'); //모달 띄우기

		// 				provision.removeClass("has-success");
		// 				provision.addClass("has-error");
		// 				$('#provisionYn').focus();
		// 				return false;
		// 			} else if (!$('#memberInfoYn').prop("checked")) {
		// 				modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
		// 				modal.modal('show');

		// 				memberInfo.removeClass("has-success");
		// 				memberInfo.addClass("has-error");
		// 				$('#memberInfoYn').focus();
		// 				return false;
		// 			} else {
		// 				$('.join-agree-area').hide();
		// 				$('#joinForm').show();
		// 			}

		// 		}

		function join_agree_prev() {
			$('.join-agree-area').show();
			$('#joinForm').hide();
		}

		$(function() {
			//모달을 전역변수로 선언
			var modalContents = $(".modal-contents");
			var modal = $("#defaultModal");
			var provision = $('#provision');
			var memberInfo = $('#memberInfo');

			$("#join_agree_next").on("click", function(event) {
				if ($('#provisionYn:checked').val() == "N") {
					modalContents.text("회원가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
					modal.modal('show'); //모달 띄우기

					provision.removeClass("has-success");
					provision.addClass("has-error");
					$('#provisionYn').focus();
					return false;
				} else {
					provision.removeClass("has-error");
					provision.addClass("has-success");
				}

				//개인정보취급방침
				if ($('#memberInfoYn:checked').val() == "N") {
					modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
					modal.modal('show');

					memberInfo.removeClass("has-success");
					memberInfo.addClass("has-error");
					$('#memberInfoYn').focus();
					return false;
				} else {
					memberInfo.removeClass("has-error");
					memberInfo.addClass("has-success");
				}
				$('.join-agree-area').hide();
				$('#joinForm').show();

			});

			$('.onlyAlphabetAndNumber').keyup(function(event) {
				if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
					var inputVal = $(this).val();
					$(this).val($(this).val().replace(/[^_a-z0-9]/gi, '')); //_(underscore), 영어, 숫자만 가능
				}
			});

			$(".onlyHangul").keyup(function(event) {
				if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
					var inputVal = $(this).val();
					$(this).val(inputVal.replace(/[a-z0-9]/gi, ''));
				}
			});

			$(".onlyNumber").keyup(function(event) {
				if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
					var inputVal = $(this).val();
					$(this).val(inputVal.replace(/[^0-9]/gi, ''));
				}
			});

			//------- 검사하여 상태를 class에 적용
			$('#joinId').keyup(function(event) {

				var divId = $('#divId');

				if ($('#joinId').val() == "") {
					divId.removeClass("has-success");
					divId.addClass("has-error");
				} else {
					divId.removeClass("has-error");
					divId.addClass("has-success");
				}
			});
			

			$('#joinPassword').keyup(function(event) {

				var divPassword = $('#divPassword');

				if ($('#joinPassword').val() == "") {
					divPassword.removeClass("has-success");
					divPassword.addClass("has-error");
				} else {
					divPassword.removeClass("has-error");
					divPassword.addClass("has-success");
				}
			});

			$('#passwordCheck').keyup(function(event) {

				var passwordCheck = $('#passwordCheck').val();
				var password = $('#joinPassword').val();
				var divPasswordCheck = $('#divPasswordCheck');

				if ((passwordCheck == "") || (password != passwordCheck)) {
					divPasswordCheck.removeClass("has-success");
					divPasswordCheck.addClass("has-error");
				} else {
					divPasswordCheck.removeClass("has-error");
					divPasswordCheck.addClass("has-success");
				}
			});

			$('#name').keyup(function(event) {

				var divName = $('#divName');

				if ($.trim($('#name').val()) == "") {
					divName.removeClass("has-success");
					divName.addClass("has-error");
				} else {
					divName.removeClass("has-error");
					divName.addClass("has-success");
				}
			});

			$('#nickname').keyup(function(event) {

				var divNickname = $('#divNickname');

				if ($.trim($('#nickname').val()) == "") {
					divNickname.removeClass("has-success");
					divNickname.addClass("has-error");
				} else {
					divNickname.removeClass("has-error");
					divNickname.addClass("has-success");
				}
			});

			$('#email').keyup(function(event) {

				var divEmail = $('#divEmail');

				if ($.trim($('#email').val()) == "") {
					divEmail.removeClass("has-success");
					divEmail.addClass("has-error");
				} else {
					divEmail.removeClass("has-error");
					divEmail.addClass("has-success");
				}
			});

			$('#phoneNumber').keyup(function(event) {

				var divPhoneNumber = $('#divPhoneNumber');

				if ($.trim($('#phoneNumber').val()) == "") {
					divPhoneNumber.removeClass("has-success");
					divPhoneNumber.addClass("has-error");
				} else {
					divPhoneNumber.removeClass("has-error");
					divPhoneNumber.addClass("has-success");
				}
			});
			
			$('#question').keyup(function(event) {

				var divEmail = $('#divQuestion');

				if ($.trim($('#question').val()) == "") {
					divEmail.removeClass("has-success");
					divEmail.addClass("has-error");
				} else {
					divEmail.removeClass("has-error");
					divEmail.addClass("has-success");
				}
			});
			
			$('#answer').keyup(function(event) {

				var divEmail = $('#divAnswer');

				if ($.trim($('#answer').val()) == "") {
					divEmail.removeClass("has-success");
					divEmail.addClass("has-error");
				} else {
					divEmail.removeClass("has-error");
					divEmail.addClass("has-success");
				}
			});

			//------- validation 검사
			$("form").submit(
					function(event) {

						var provision = $('#provision');
						var memberInfo = $('#memberInfo');
						var divId = $('#divId');
						var divPassword = $('#divPassword');
						var divPasswordCheck = $('#divPasswordCheck');
						var divName = $('#divName');
						var divNickname = $('#divNickname');
						var divEmail = $('#divEmail');
						var divPhoneNumber = $('#divPhoneNumber');

						//아이디 검사
						if ($('#joinId').val() == "") {
							modalContents.text("아이디를 입력하여 주시기 바랍니다.");
							modalContents.css("color", "red");
							modal.modal('show');

							divId.removeClass("has-success");
							divId.addClass("has-error");
							$('#joinId').focus();
							return false;
						} else {
							divId.removeClass("has-error");
							divId.addClass("has-success");
						}
						
						//아이디 중복검사
						if($("#idChkBtm").val() == "N"){
							modalContents.text("아이디를 중복 검사 시도를 바랍니다.");
							modalContents.css("color", "red");
							modal.modal('show');

							divId.removeClass("has-success");
							divId.addClass("has-error");
							$('#idChkBtm').focus();
							return false;
						} else {
							divId.removeClass("has-error");
							divId.addClass("has-success");
						}

						//패스워드 검사
						if ($('#joinPassword').val() == "") {
							modalContents.text("비밀번호를 입력하여 주시기 바랍니다.");

							modal.modal('show');

							divPassword.removeClass("has-success");
							divPassword.addClass("has-error");
							$('#joinPassword').focus();
							return false;
						} else {
							divPassword.removeClass("has-error");
							divPassword.addClass("has-success");
						}

						//패스워드 확인
						if ($('#passwordCheck').val() == "") {
							modalContents.text(" 비밀번호 확인을 입력하여 주시기 바랍니다.");
							modal.modal('show');

							divPasswordCheck.removeClass("has-success");
							divPasswordCheck.addClass("has-error");
							$('#passwordCheck').focus();
							return false;
						} else {
							divPasswordCheck.removeClass("has-error");
							divPasswordCheck.addClass("has-success");
						}

						//패스워드 비교
						if ($('#joinPassword').val() != $('#passwordCheck').val()
								|| $('#passwordCheck').val() == "") {
							modalContents.text("비밀번호가 일치하지 않습니다.");
							modal.modal('show');

							divPasswordCheck.removeClass("has-success");
							divPasswordCheck.addClass("has-error");
							$('#passwordCheck').focus();
							return false;
						} else {
							divPasswordCheck.removeClass("has-error");
							divPasswordCheck.addClass("has-success");
						}

						//이름
						if ($('#name').val() == "") {
							modalContents.text("이름을 입력하여 주시기 바랍니다.");
							modal.modal('show');

							divName.removeClass("has-success");
							divName.addClass("has-error");
							$('#name').focus();
							return false;
						} else {
							divName.removeClass("has-error");
							divName.addClass("has-success");
						}

						//별명
						// 						if ($('#nickname').val() == "") {
						// 							modalContents.text("별명을 입력하여 주시기 바랍니다.");
						// 							modal.modal('show');

						// 							divNickname.removeClass("has-success");
						// 							divNickname.addClass("has-error");
						// 							$('#nickname').focus();
						// 							return false;
						// 						} else {
						// 							divNickname.removeClass("has-error");
						// 							divNickname.addClass("has-success");
						// 						}

						//이메일
						if ($('#email').val() == "") {
							modalContents.text("이메일을 입력하여 주시기 바랍니다.");
							modal.modal('show');

							divEmail.removeClass("has-success");
							divEmail.addClass("has-error");
							$('#email').focus();
							return false;
						} else {
							divEmail.removeClass("has-error");
							divEmail.addClass("has-success");
						}

						//휴대폰 번호
						if ($('#phoneNumber').val() == "") {
							modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
							modal.modal('show');

							divPhoneNumber.removeClass("has-success");
							divPhoneNumber.addClass("has-error");
							$('#phoneNumber').focus();
							return false;
						} else {
							divPhoneNumber.removeClass("has-error");
							divPhoneNumber.addClass("has-success");
						}
						
						//질문 
						if ($('#question').val() == "") {
							modalContents.text("질문을 입력하여 주시기 바랍니다.");
							modal.modal('show');

							divName.removeClass("has-success");
							divName.addClass("has-error");
							$('#question').focus();
							return false;
						} else {
							divName.removeClass("has-error");
							divName.addClass("has-success");
						}
						
						//답변
						if ($('#answer').val() == "") {
							modalContents.text("답변을 입력하여 주시기 바랍니다.");
							modal.modal('show');

							divName.removeClass("has-success");
							divName.addClass("has-error");
							$('#answer').focus();
							return false;
						} else {
							divName.removeClass("has-error");
							divName.addClass("has-success");
						}

					});

		});
	</script>
	<!--// 본문 들어가는 부분 -->
	<hr />
	<!-- 푸터 들어가는 부분 -->


</body>
<%@include file="footer.jsp"%>
</html>