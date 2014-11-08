<html>
<head>
    <meta http-equiv="Content-Type"
          content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>Datos fin</title>
</head>
<body>
<div class="body">
    <h1>Datos fin</h1>
    <g:if test="${message}">
        <div class="message">${message}</div>
    </g:if>
    <g:form action="capturaPersona">
        <div class="dialog">
            <table>
                <tbody>
                <tr class="prop">
                    <td valign="top" class="name">Prmer nombre:</td>
                    <td valign="top" class="value">${persona.primeNombre}</td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">Apellido:</td>
                    <td valign="top" class="value">${persona.apellido}</td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">Direccion 1:</td>
                    <td valign="top" class="value">${persona.direccion1}</td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">Direccion 2:</td>
                    <td valign="top" class="value">${persona.direccion1}</td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">Ciudad:</td>
                    <td valign="top" class="value">${persona.ciudad}</td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">Estado:</td>
                    <td valign="top" class="value">${persona.estado}</td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">Codigo Postal:</td>
                    <td valign="top" class="value">${persona.codigoPostal}</td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">Telefono:</td>
                    <td valign="top" class="value">${persona.telefono}</td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">Email:</td>
                    <td valign="top" class="value">${persona.email}</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button">
                <g:submitButton class="previous" name="previous" value="Previous" />
                <g:submitButton class="next" name="next" value="Finish" />
                <g:submitButton class="cancel" name="cancel" value="Cancel" />
            </span>
        </div>
    </g:form>
</div>
</body>
</html>