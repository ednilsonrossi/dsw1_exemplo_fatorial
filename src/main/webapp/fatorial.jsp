<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>DSW1 - Calculo Fatorial</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
	<header>
        <nav>
            <a href="#home">Home</a>
            <a href="#about">Sobre</a>
            <a href="#contact">Contato</a>
        </nav>
    </header>

	<h1>Calcular Fatorial</h1>
    <main class="content">   
        <form action="fatorial.jsp" method="get">
			<label for="number">Digite o número</label>
			<input type="number" id="number" name="text_number" required="required" \>
			<br \><br>
			<input type="submit" value="Calcular o fatorial" class="button" \>
		
		</form>
		
    
		<%
			int number = 0, fat = 0;
			String input = request.getParameter("text_number");
			if (input != null && !input.isEmpty()) {
				
				try {
					number = Integer.valueOf(input);
				} catch (NumberFormatException ex) {
					number = 0;
				}
				fat = 1;
				for (int i = 2; i <= number; i++){
					fat *= i;
				}
				out.println("<h3> " + number + "! = " + fat + "</h3>");
			}
		%>
		
	</main>

    <footer>
        <p>Desenvolvimento de Software para Web 1</p>
    </footer>
	
</body>
</html>