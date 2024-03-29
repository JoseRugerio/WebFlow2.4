<html>
<head>
    <meta http-equiv="Content-Type"
          content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>Teléfono</title>
</head>
<body>
<div class="body">
    <h1>Teléfono</h1>
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
                        <label for="telefono">Telefono:</label>
                    </td>
                    <td valign="top">
                        <input type="text" id="telefono" name="telefono" value="${persona.telefono}" />
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="email">Email:</label>
                    </td>
                    <td valign="top">
                        <input type="text" id="email" name="email" value="${persona.email}" />
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