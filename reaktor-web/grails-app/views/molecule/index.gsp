
<%@ page import="reaktor.Molecule" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="core-admin">
		<g:set var="entityName" value="${message(code: 'molecule.label', default: 'Molecule')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-molecule" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-molecule" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="elementMap" title="${message(code: 'molecule.elementMap.label', default: 'Element Map')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'molecule.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${moleculeInstanceList}" status="i" var="moleculeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${moleculeInstance.id}">${fieldValue(bean: moleculeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: moleculeInstance, field: "elementMap")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${moleculeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
