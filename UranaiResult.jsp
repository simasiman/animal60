<%@ page contentType="text/html; charset=Windows-31J"%>
<%@ page import="animal_60.UranaiDTO" %>

<jsp:useBean class="animal_60.UranaiDAO" id="dao" scope="session"/>
<jsp:useBean class="animal_60.UranaiCalc" id="calc" scope="session"/>

<%
request.setCharacterEncoding("Windows-31J");

String strUserName = request.getParameter("userName");
if (strUserName.equals("")) {
	strUserName = "ゲスト";
}
String strBirthDay = request.getParameter("birthDay");
String[] BirthArray = strBirthDay.split("-");
int year = Integer.parseInt(BirthArray[0]);
int month = Integer.parseInt(BirthArray[1]);
int date = Integer.parseInt(BirthArray[2]);
String strSex = request.getParameter("sex");
String sex;
if (strSex.equals("m")) {
	sex = "男性";
} else { // strSex.equals("f")
	sex = "女性";
}
int id = calc.calcId(strBirthDay);
UranaiDTO dto = dao.getUranaiDetailById(id, strSex);
%>

<!DOCTYPE html>
<html>
<head>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=Windows-31J">
<LINK REL="stylesheet" TYPE="text/css" HREF="css/reset.css">
<LINK REL="stylesheet" TYPE="text/css" HREF="css/style2.css">
<title>月曜から動物占い - 結果</title>
</head>
<body>
<div class="page">
	<div class="wapper">

		<h1><div>月曜から<br>
		<img src="img/logo.png"  alt="月曜から動物占い（仮）">の結果</div></h1>

		<div class="uranai_result">
			<div class="uranai_main">
				<div class="uranai_main_img">
				<img src="img/photo/<%=dto.getAnimalPicture() %>"  alt="占い結果の動物">
				</div><!--uranai_main_img ここまで-->

				<div class="uranai_main_right">
					<div class="uranai_main_profile">
						<span><%=year %>年<%=month %>月<%=date %>日</span>生まれ の<br>
						<span><%=sex %></span> の
						<span><%=strUserName %></span>さん
					</div><!--uranai_main_profile ここまで-->

					<div class="uranai_main_name">
						あなたは<br>
						<span><%=dto.getAnimalName() %></span>　です
					</div><!--uranai_main_name ここまで-->
				</div><!--uranai_main_right ここまで-->

				<div class="clearfix"></div>

				<div class="uranai_main_detail">
					<%=dto.getAnimalDetail() %>
				</div><!--uranai_main_detail ここまで-->

			</div><!-- uranai_main ここまで-->

		<hr class="hr_main">

		<div class="uranai_sub">
			<div class="uranai_sub_img1">
				<img src="img/illust/<%=dto.getLoverPicture()%>" alt="恋愛対象として相性の良い動物">
			</div><!--uranai_sub_img1 ここまで-->

			<div class="uranai_sub_right">
				あなたと、恋愛対象として相性の良い動物は<br>
				<span><%=dto.getLoverName()%></span>　です
				<div class="uranai_sub_detail">
					<%=dto.getLoverDetail()%>
				</div><!--uranai_sub_detailここまで-->
			</div><!--uranai_sub_rightここまで-->
			<div class="clearfix"></div>
		</div><!--uranai_sub ここまで-->

		<hr class="hr_sub">

		<div class="uranai_sub">
			<div class="uranai_sub_img2">
				<img src="img/illust/<%=dto.getFriendPicture()%>" alt="友人として相性の良い動物">
			</div>
			<div class="uranai_sub_left">
				あなたと、友人として相性の良い動物は<br>
				<span><%=dto.getFriendName()%></span>　です
				<div class="uranai_sub_detail">
					<%=dto.getFriendDetail()%>
				</div><!--uranai_sub_detailここまで-->
			</div><!--uranai_sub_leftここまで-->
			<div class="clearfix"></div>
		</div><!--uranai_sub ここまで-->

		<hr class="hr_sub">

		<div class="uranai_sub">
			<div class="uranai_sub_img1">
				<img src="img/illust/<%=dto.getWorkPicture()%>" alt="仕事仲間として相性のいい動物">
			</div><!--uranai_sub_img1 ここまで-->

			<div class="uranai_sub_right">
				あなたと、仕事仲間として相性のいい動物は<br>
				<span><%=dto.getWorkName()%></span>　です
				<div class="uranai_sub_detail">
					<%=dto.getWorkDetail()%>
				</div><!--uranai_sub_detail ここまで-->
			</div><!--uranai_sub_right ここまで-->
			<div class="clearfix"></div>
		</div><!--uranai_sub ここまで-->

		<hr class="hr_main">

		</div><!--uranai_result ここまで-->
		<div class="footer"><a href="javascript:history.back()">入力ページに戻る</a></div>
	</div><!--wapper ここまで-->
</div><!--page ここまで-->
</body>
</html>
