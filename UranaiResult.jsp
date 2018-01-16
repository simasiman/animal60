<%@ page contentType="text/html; charset=Windows-31J"%>
<%@ page import="animal_60.UranaiDTO" %>

<jsp:useBean class="animal_60.UranaiDAO" id="dao" scope="session"/>
<jsp:useBean class="animal_60.UranaiCalc" id="calc" scope="session"/>

<%
request.setCharacterEncoding("Windows-31J");

String strUserName = request.getParameter("userName");
if (strUserName.equals("")) {
	strUserName = "�Q�X�g";
}
String strBirthDay = request.getParameter("birthDay");
String[] BirthArray = strBirthDay.split("-");
int year = Integer.parseInt(BirthArray[0]);
int month = Integer.parseInt(BirthArray[1]);
int date = Integer.parseInt(BirthArray[2]);
String strSex = request.getParameter("sex");
String sex;
if (strSex.equals("m")) {
	sex = "�j��";
} else { // strSex.equals("f")
	sex = "����";
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
<title>���j���瓮���肢 - ����</title>
</head>
<body>
<div class="page">
	<div class="wapper">

		<h1><div>���j����<br>
		<img src="img/logo.png"  alt="���j���瓮���肢�i���j">�̌���</div></h1>

		<div class="uranai_result">
			<div class="uranai_main">
				<div class="uranai_main_img">
				<img src="img/photo/<%=dto.getAnimalPicture() %>"  alt="�肢���ʂ̓���">
				</div><!--uranai_main_img �����܂�-->

				<div class="uranai_main_right">
					<div class="uranai_main_profile">
						<span><%=year %>�N<%=month %>��<%=date %>��</span>���܂� ��<br>
						<span><%=sex %></span> ��
						<span><%=strUserName %></span>����
					</div><!--uranai_main_profile �����܂�-->

					<div class="uranai_main_name">
						���Ȃ���<br>
						<span><%=dto.getAnimalName() %></span>�@�ł�
					</div><!--uranai_main_name �����܂�-->
				</div><!--uranai_main_right �����܂�-->

				<div class="clearfix"></div>

				<div class="uranai_main_detail">
					<%=dto.getAnimalDetail() %>
				</div><!--uranai_main_detail �����܂�-->

			</div><!-- uranai_main �����܂�-->

		<hr class="hr_main">

		<div class="uranai_sub">
			<div class="uranai_sub_img1">
				<img src="img/illust/<%=dto.getLoverPicture()%>" alt="�����ΏۂƂ��đ����̗ǂ�����">
			</div><!--uranai_sub_img1 �����܂�-->

			<div class="uranai_sub_right">
				���Ȃ��ƁA�����ΏۂƂ��đ����̗ǂ�������<br>
				<span><%=dto.getLoverName()%></span>�@�ł�
				<div class="uranai_sub_detail">
					<%=dto.getLoverDetail()%>
				</div><!--uranai_sub_detail�����܂�-->
			</div><!--uranai_sub_right�����܂�-->
			<div class="clearfix"></div>
		</div><!--uranai_sub �����܂�-->

		<hr class="hr_sub">

		<div class="uranai_sub">
			<div class="uranai_sub_img2">
				<img src="img/illust/<%=dto.getFriendPicture()%>" alt="�F�l�Ƃ��đ����̗ǂ�����">
			</div>
			<div class="uranai_sub_left">
				���Ȃ��ƁA�F�l�Ƃ��đ����̗ǂ�������<br>
				<span><%=dto.getFriendName()%></span>�@�ł�
				<div class="uranai_sub_detail">
					<%=dto.getFriendDetail()%>
				</div><!--uranai_sub_detail�����܂�-->
			</div><!--uranai_sub_left�����܂�-->
			<div class="clearfix"></div>
		</div><!--uranai_sub �����܂�-->

		<hr class="hr_sub">

		<div class="uranai_sub">
			<div class="uranai_sub_img1">
				<img src="img/illust/<%=dto.getWorkPicture()%>" alt="�d�����ԂƂ��đ����̂�������">
			</div><!--uranai_sub_img1 �����܂�-->

			<div class="uranai_sub_right">
				���Ȃ��ƁA�d�����ԂƂ��đ����̂���������<br>
				<span><%=dto.getWorkName()%></span>�@�ł�
				<div class="uranai_sub_detail">
					<%=dto.getWorkDetail()%>
				</div><!--uranai_sub_detail �����܂�-->
			</div><!--uranai_sub_right �����܂�-->
			<div class="clearfix"></div>
		</div><!--uranai_sub �����܂�-->

		<hr class="hr_main">

		</div><!--uranai_result �����܂�-->
		<div class="footer"><a href="javascript:history.back()">���̓y�[�W�ɖ߂�</a></div>
	</div><!--wapper �����܂�-->
</div><!--page �����܂�-->
</body>
</html>
