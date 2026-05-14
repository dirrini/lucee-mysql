<cftry>
    <cfquery name="firstMessage" datasource="mydb" result="queryResult">
        SELECT *
        FROM mensagens
        ORDER BY id ASC
    </cfquery>

    <html>
    <head>
        <title>Mensagem</title>
        <meta charset="UTF-8">
    </head>
    <body>
        <h1>MySQL!</h1>
        <cfif firstMessage.recordcount gt 0>
            <cfoutput query="firstMessage">
                <p>
                    <strong>#firstMessage.autor#</strong>
                    #firstMessage.mensagem#
                </p>
            </cfoutput>
            <!--- <cfdump var="#firstMessage#"> --->
        <cfelse>
            <p>Nenhuma mensagem encontrada</p>
        </cfif>

        <cfquery datasource="mydb">
            INSERT INTO mensagens (mensagem, autor) VALUES ('Teste Acentuação Lucee', 'Usuário via Código')
        </cfquery>

        <cfquery name="teste" datasource="mydb">
            SELECT * FROM mensagens WHERE autor LIKE '%Código%'
        </cfquery>

        <cfdump var="#teste#">

    </body>
    </html>

    <cfcatch type="any">
        <h1>ERRO:</h1>
        <p><cfoutput>#cfcatch.type#: #cfcatch.message#</cfoutput></p>
        <p><cfoutput>#cfcatch.detail#</cfoutput></p>
        <cfdump var="#cfcatch#">
    </cfcatch>
</cftry>
