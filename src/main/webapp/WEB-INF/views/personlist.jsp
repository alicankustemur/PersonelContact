<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-lg-3">
	<table class="table table-striped table-hover table-bordered">
		
		<thead>
		<thead><th colspan="5">Kişi Listesi</th></thead>
			<th>ID</th>
			<th>Ad</th>
			<th>Soyad</th>
			<th>Sil</th>
			<th>Güncelle</th>
		</thead>
		<c:forEach items="${persons}" var="person" varStatus="i">
			<tr id="${person.id}">
			<td>${person.id}</td>
			<td><c:out value="${person.name}"></c:out></td>
			<td><c:out value="${person.surname}"></c:out></td>
			<td>
				<form:form method="POST" action="deleteUser">
					<button type="submit" class="btn btn-danger" >Sil</button>
				</form:form>
			</td>
			</tr>
		</c:forEach>

	</table>
</div>