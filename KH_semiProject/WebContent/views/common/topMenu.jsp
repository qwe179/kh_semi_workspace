<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
			<div>
				<ul class="navi">
					<li><a href="#">home버튼</a></li>
					<li><a href="/note/send" name="message">쪽지</a>
						<ul>
							<li><a href="/note/send" name="message">받은쪽지함</a></li>
							<li><a href="/note/send" name="message">보낸쪽지함</a></li>
							<li><a href="/note/send" name="message">쪽지쓰기</a></li>
						</ul></li>
					<li>
					<a href="/address/view" name = "address">주소록</a>
						<ul>
							<li><a href="/address/view">사원 목록</a></li>
							<li><a href="/address/mine">내 주소록</a></li>
						</ul>
					</li>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">커뮤니티</a></li>
					<li><a href="/approval/approvalmy" name="rufwo">전자결재</a>
						<ul>
						<li><a href="/approval/approvalWrite" name="rufwo">결재 작성</a></li>
						<li><a href="/approval/approvalmy" name="rufwo">기안함</a></li>
						<li><a href="/approval/DoApproval" name="rufwo">결재함</a></li>
						<li><a href="/approval/deptApproval" name="rufwo">부서결재함</a></li>
							

						</ul></li>

				</ul>
			</div>
			<div>
				<button>채팅</button>
				<button>다크모드</button>
			</div>

		</header>

</body>
</html>