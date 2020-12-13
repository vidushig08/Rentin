<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
    </head>
    <body>
        <h1>You Entered:</h1>
        <%
            String name = request.getParameter("name");
            String regno = request.getParameter("regno");
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            %>
        <table border="0">
                
                <tbody>
                    <tr>
                        <td>Name: </td>
                        <td><%= name%></td>
                    </tr>
                    <tr>
                        <td>Registration Number: </td>
                        <td><%= regno%></td>
                    </tr>
               
                    <tr>
                        <td>Email Address: </td>
                        <td><%= email%></td>
                    </tr>
		    <tr>
                        <td>Password: </td>
                        <td><%= password%></td>
                    </tr>
                </tbody>
            </table>
                    <form name="Back" action="index.jsp">
                        <input type="submit" value="Back" name="Back" />
                    </form>
    </body>
</html>