<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<style type="text/css">
h3 {
	text-align: center;
}

#canvas1 {
	position: absolute;
}

#canvas2 {
	position: absolute;
	right: 50px;
}
#canvas3 {
	position: absolute;
	right: 150px;
}

#can {
	position: relative;
	padding-left: 0;
	padding-right: 0;
	margin-left: auto;
	margin-right: 200px;
	display: block;
	width: 40px;
	height:100px;
}

#c {
	position: absolute;
	background-color: transparent;
	width: 70px;
	height: 70px;
}

#c2 {
	position: absolute;
	background-color: transparent;
	width: 70px;
	height: 70px;
	right: 50px;
}

#c3 {
	position: absolute;
	right: -130px;
	width: 70px;
	height: 70px;
}
table{
	margin: 0 auto;
}
th{
	background-color: #ccc;

}

</style>

<script type="text/javascript">
	window.onload = function() {
		loaded();
	}
	function loaded() {
		var canvas = document.getElementById("canvas1");
		var context = canvas.getContext('2d');
		var canvas2 = document.getElementById("canvas2");
		var context2 = canvas2.getContext('2d');

		var canvas3 = document.getElementById("canvas3");
		var context3 = canvas3.getContext('2d');
		
		console.log(context)
		context.beginPath();
		context.moveTo(0, 0);
		context.lineTo(70, 70);
		context.stroke();
		context.moveTo(70, 0);
		context.lineTo(0, 70);
		context.stroke();

		context2.beginPath();
		context2.moveTo(0, 0);
		context2.lineTo(70, 70);
		context2.stroke();
		context2.moveTo(70, 0);
		context2.lineTo(0, 70);
		context2.stroke();
		
		
		context3.beginPath();
		context3.moveTo(0, 0);
		context3.lineTo(70, 70);
		context3.stroke();
		context3.moveTo(70, 0);
		context3.lineTo(0, 70);
		context3.stroke();
	}
</script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js">
	
</script>

</head>
<body>

	<div class="container">
		<jsp:include page="/views/common/topMenu.jsp"></jsp:include>
		<jsp:include page="/views/common/sideMenu.jsp"></jsp:include>

		<main>

			<h3>연차 휴가계</h3>
			<form action="/approval/approvalWrite" method="post">

				<select id="dimension" onchange="location.href=this.value">
					<option value="" selected disabled hidden>결재계 선택</option>
					<option value="/approval/approvalWrite">휴가계</option>
					<option value="/approval/approvalWriteWork">업무일지</option>
				</select>
				<div id="can">
					<canvas id="canvas1" width="70" height="70"
						style="border: 1px solid #000;"></canvas>
					<button id="c">btn</button>
					<canvas id="canvas2" width="70" height="70"
						style="border: 1px solid #000;"></canvas>
					<canvas id="canvas3" width="70" height="70"
						style="border: 1px solid #000;"></canvas>
					<button id="c2">btn</button>
					<button id="c3" type="button" value="button">결재권자 추가</button>
					
				</div>
				<div>

					<table>
						<tr>
							<th>휴가종류</th>
							<td> 
								<label for="one">
									<input type="radio" name="r"   checked="checked" value="연차휴가" id="one"/>연차휴가
								</label>
								<label for="two">
									<input type="radio" name="r" value="조퇴" id="two"/>조퇴
								</label>
								<label for="three">
								<input type="radio" name="r" value="반차" id="three"/>반차
								</label>
							</td>
						</tr>
						<tr>
							<th>기간</th>
							<td> <input type='date' name='startday'/> <input type='date' name='endday'/></td>
						</tr>
						<tr>
							<th>사유</th>
							<td><textarea rows="20" cols="100"></textarea></td>
						</tr>
					</table>

				</div>
			<input type='submit' value='전송'>
			</form>
		</main>

		<jsp:include page="/views/common/footer.jsp"></jsp:include>
	</div>

</body>
</html>