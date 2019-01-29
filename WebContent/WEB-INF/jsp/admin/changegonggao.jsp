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
							<th class="table-neirong">内容</th>
							<th class="table-author">发布者</th>
							<th class="table-time">发布时间</th>
							<th width="88px" class="table-set">操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="ani" items="${pagehelper.list}" varStatus="status"  >
						<tr>
							<td><input type="checkbox" /></td>
							<td class="ggid">${ani.notice_id }</td>
							<td class="ggtitle">${ani.title }</td>
							<td class="ggneirong">
								<p style="width: 400px;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">${ani.content }</p>
							</td>
							<td class=ggauthor>${ani.notice_author }</td>
							<td>${ani.notice_time }</td>
							<td>
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs">
										<button class="am-btn am-btn-default am-btn-xs am-text-secondary am-round btn_editRoom" title="编辑" data-id="1"><span class="am-icon-pencil-square-o"></span></button>
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
					<button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
				</div>
		
				<%@ include file="/WEB-INF/jsp/common/pagehelper.jsp"%>
			</div>