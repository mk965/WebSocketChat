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
							<th class="table-title">用户昵称</th>
							<th class="table-type">用户类型</th>
							<th class="table-author am-hide-sm-only">注册邮箱</th>
							<th class="table-date am-hide-sm-only">注册时间</th>
							<th class="table-date am-hide-sm-only">总发言次数</th>
							<th width="130px" class="table-set">操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" /></td>
							<td>00000</td>
							<td id="roomName">admin</td>
							<td>站长</td>
							<td class="am-hide-sm-only">mencre@163.com</i></td>
							<td class="am-hide-sm-only">2017年9月23日 7:28:47</td>
							<td>42</td>
							<td>
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs">
										<button disabled="disabled" class="am-btn am-btn-default am-btn-xs am-round btn_editRoom" title="编辑" data-id="1"><span class="am-icon-pencil-square-o"></span></button>
										<button disabled="disabled" class="am-btn am-btn-default am-btn-xs am-round" title="禁止发言" data-id="1"><span class="am-icon-comments"></span></button>
										<button disabled="disabled" class="am-btn am-btn-default am-btn-xs am-round" title="删除" data-id="1"><span class="am-icon-trash-o"></span></button>
									</div>
								</div>
							</td>
						</tr>
						
						
						<c:forEach var="ani" items="${pagehelper.list}" varStatus="status" >
						
							<tr>
							<td><input type="checkbox" /></td>
							<td>${ani.id }</td>
							<td id="roomName">${ani.user_name }</td>
							<td>普通用户</td>
							<td class="am-hide-sm-only">${ani.user_mail }</i></td>
							<td class="am-hide-sm-only">${ani.re_time }</td>
							<td>${ani.user_msgnum }</td>
							<td>
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs">
										<button class="am-btn am-btn-default am-btn-xs am-text-secondary am-round btn_editRoom" title="编辑" data-id="1"><span class="am-icon-pencil-square-o"></span></button>
										<button class="am-btn am-btn-default am-btn-xs am-text-warning  am-round" title="禁止发言" data-id="1"><span class="am-icon-comments"></span></button>
										<a href="deleteUser?id=${ani.id }" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除" data-id="1"><span class="am-icon-trash-o"></span></a>
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
					<button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
				</div>
				<%@ include file="/WEB-INF/jsp/common/pagehelper.jsp"%>
				</div>