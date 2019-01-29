<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
		<div class="page-content-area">	
				<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
					<thead>
						<tr class="am-success">
							<th class="table-check"><input type="checkbox" /></th>
							<th class="table-id">ID</th>
							<th class="table-title">标题</th>
							<th class="table-type">类别</th>
							<th class="table-author am-hide-sm-only">允许发言</th>
							<th class="table-date am-hide-sm-only">创建日期</th>
							<th width="125px" class="table-set">操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="ani" items="${pagehelper.list}" varStatus="status"  >
						<tr>
							<td><input type="checkbox" /></td>
							<td>1</td>
							<td id="roomName">${ani.chatroom }</td>
							<td>各省校友</td>
							<td class="am-hide-sm-only"><i class="am-icon-check am-text-warning"></i></td>
							<td class="am-hide-sm-only">${ani.room_time }</td>
							<td>
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs">
										<button class="am-btn am-btn-default am-btn-xs am-text-secondary am-round btn_editRoom" title="编辑" data-id="1"><span class="am-icon-pencil-square-o"></span></button>
										<button class="am-btn am-btn-default am-btn-xs am-text-warning  am-round" title="禁止发言" data-id="1"><span class="am-icon-comments"></span></button>
										<button class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除" data-id="1"><span class="am-icon-trash-o"></span></button>
									</div>
								</div>
							</td>
						</tr>
						</c:forEach>
						
					</tbody>
				</table>
		
				<div class="am-btn-group am-btn-group-xs">
					<button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 允许发言</button>
					<button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 禁止发言</button>
					<a href="deleteRoom?chatname=${ani.chatname }" type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</a>
				</div>
		
				<%@ include file="/WEB-INF/jsp/common/pagehelper.jsp"%>
			</div>