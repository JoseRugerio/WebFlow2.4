<html>
<head>
    <meta http-equiv="Content-Type"
          content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>Dirección</title>
</head>
<body>
<div class="body">
    <h1>Dirección</h1>
    <g:if test="${message}">
        <div class="message">${message}</div>
    </g:if>
    <g:hasErrors bean="${command}">
        <div class="errors">
            <g:renderErrors bean="${command}" as="list" />
        </div>
    </g:hasErrors>
    <g:form action="capturaPersona">
        <div class="dialog">
            <table>
                <tbody>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="direccion1">Direccion 1:</label>
                    </td>
                    <td valign="top">
                        <input type="text" id="direccion1" name="direccion1" value="${persona.direccion1}" />
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="direccion2">Direccion 2:</label>
                    </td>
                    <td valign="top">
                        <input type="text" id="direccion2" name="direccion2" value="${persona.direccion2}" />
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="ciudad">Ciudad:</label>
                    </td>
                    <td valign="top">
                        <input type="text" id="ciudad" name="ciudad" value="${persona.ciudad}" />
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="estado">Estado:</label>
                    </td>
                    <td valign="top">
                        <input type="text" id="estado" name="estado" value="${persona.estado}" />
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="zip">
                        <label for="codigoPostal">codigoPostal:</label>
                    </td>
                    <td valign="top">
                        <input type="text" id="codigoPostal" name="codigoPostal" value="${persona.codigoPostal}" />
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button">
                <g:submitButton class="previous" name="previous" value="Previous" />
                <g:submitButton class="next" name="next" value="Next" />
                <g:submitButton class="cancel" name="cancel" value="Cancel" />
            </span>
        </div>
    </g:form>
</div>
</body>
</html>