<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="VoteBean.Result"%>

<%
	request.setCharacterEncoding("UTF-8");
	//list 불러오기
	ArrayList<Result> list = new ArrayList<Result>();
	list = (ArrayList<Result>) request.getAttribute("list"); // 확인사항
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>voteResult</title>
</head>
<body>
	<%@ include file="topmenu.jsp"%>
	<section>
		<h2>후보자 등수</h2>
		<div class="table">
			<!--m_no
		m_name
		v_total 
	 -->

			<table>
				<tr>
					<th>후보번호</th>
					<th>성명</th>
					<th>총투표건수</th>
				</tr>
				<%
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td><%=list.get(i).getM_no()%></td>
					<td><%=list.get(i).getM_name()%></td>
					<td><%=list.get(i).getV_total()%></td>
				</tr>
				<%
					}
				%>
			</table>



		</div>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>