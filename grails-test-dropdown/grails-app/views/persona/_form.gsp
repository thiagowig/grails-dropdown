<%@ page import="test.Persona" %>
<g:setProvider library="jquery" />

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="persona.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${personaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'appelidoPaterno', 'error')} required">
	<label for="appelidoPaterno">
		<g:message code="persona.appelidoPaterno.label" default="Appelido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="appelidoPaterno" required="" value="${personaInstance?.appelidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'appelidoMaterno', 'error')} required">
	<label for="appelidoMaterno">
		<g:message code="persona.appelidoMaterno.label" default="Appelido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="appelidoMaterno" required="" value="${personaInstance?.appelidoMaterno}"/>

</div>

<div class="fieldcontain">
	<label for="pais">
		<g:message code="persona.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	
	<g:select id="pais" name="pais.id" from="${test.Pais.list()}" optionKey="id" required="" 
			  value="${personaInstance?.estado?.pais?.id}" 
			  class="many-to-one"
			  onchange="${remoteFunction(
				  			controller: 'estado',
							action: 'getEstados',
							params: '\'id=\' + this.value',
							update: 'estadoDiv'   
				  ) }"/>

</div>

<div id="estadoDiv">
	<g:if test="${personaInstance.estado}">
		<g:include controller="estado" action="getEstados" id="${personaInstance.estado.pais.id}" />
	</g:if>
	
</div>



