<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!--   -->
<!-- 页数
<div class="message">
	共<i class="blue">${pagehelper.total}</i>条记录，当前显示第&nbsp;<i
		class="blue">${pagehelper.pageNum}/${pagehelper.pages}</i>&nbsp;页
</div> -->
<div style="text-align:center;">
	<ul class="pagination am-pagination am-fr">
		<!-- <li><a href="#">&laquo;</a></li> -->
		<c:if test="${!pagehelper.isFirstPage}">
			<li><a href="javascript:queryAllPerson(${pagehelper.firstPage}, ${pagehelper.pageSize});">&lt;&lt;</a></li>
			<li><a href="javascript:queryAllPerson(${pagehelper.prePage}, ${pagehelper.pageSize});">&lt;</a></li>
		</c:if>
		<c:forEach items="${pagehelper.navigatepageNums}" var="navigatepageNum">
		
			<c:if test="${navigatepageNum==pagehelper.pageNum}">
				<li class="active"><a href="javascript:queryAllPerson(${navigatepageNum}, ${pagehelper.pageSize});">${navigatepageNum}</a></li>
			</c:if>
			<c:if test="${navigatepageNum!=pagehelper.pageNum}">
				<li><a href="javascript:queryAllPerson(${navigatepageNum}, ${pagehelper.pageSize});">${navigatepageNum}</a></li>
			</c:if>
		</c:forEach>
		<c:if test="${!pagehelper.isLastPage}">
			<li><a href="javascript:queryAllPerson(${pagehelper.nextPage}, ${pagehelper.pageSize});">&gt;</a></li>
			<li><a href="javascript:queryAllPerson(${pagehelper.lastPage}, ${pagehelper.pageSize});">&gt;&gt;</a></li>
		</c:if>
		<!-- <li><a href="#">&raquo;</a></li> -->
	</ul>
</div>
