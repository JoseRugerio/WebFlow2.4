<html>
<head>
    <meta http-equiv="Content-Type"
          content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>Nombres</title>
</head>
<body>
<div class="body">
    <h1>Nombre de la Persona</h1>
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
                        <label for="primeNombre">Primer nombre:</label>
                    </td>
                    <td valign="top">
                        <input type="text" id="primeNombre" name="primeNombre" value="${persona.primeNombre}" />
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="apellido">Apellido:</label>
                    </td>
                    <td valign="top">
                        <input type="text" id="apellido" name="apellido" value="${persona.apellido}" />
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button">
                <g:submitButton class="next" name="next" value="Next" />
                <g:submitButton class="cancel" name="cancel" value="Cancel" />
            </span>
        </div>
    </g:form>
</div>
</body>
</html>