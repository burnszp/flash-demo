<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib prefix="z" uri="http://taglib.enilu.cn"%>

<z:breadcrumb breadcrumb="${breadcrumb}"/>
<div class="row-fluid">
<form:form action="/logss" method="GET"
	modelAttribute="qf" cssClass="basic-form form-horizontal">
	<div class="row">
		<div class="col-md-6">
	<div class="control-group">
		<label class="control-label" for="operator">操作人</label>
		<div class="controls">
			<input type="text" name="operator" value="${ qf.get("operator") }" class="" placeholder="操作人" />
		</div>
	</div>
			</div>
		<div class="col-md-6">
	<div class="control-group">
		<label class="control-label" for="action">操作类型</label>
		<div class="controls">
			<input type="text" name="action" value="${ qf.get("action") }" class="" placeholder="操作类型" />
		</div>
	</div>
			</div>
		</div>
	<div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-primary">查询</button>
		</div>
	</div>
</form:form>
</div>
<display:table name="logss.data" id="logs_" class="table table-striped table-bordered">
	<display:column title="ID">
		<a href="/logss/${logs_.id}">${logs_.id}</a>
	</display:column>
	<display:column property="orderNo" title="订单编号" />
	<display:column property="operator" title="操作人" />
	<display:column property="action" title="操作类型" />
</display:table>
<z:pagination name="logss" />

<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
