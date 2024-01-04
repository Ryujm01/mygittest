<%--@page import="java.util.Date"--%>
<%--@page import="java.text.SimpleDateFormat"--%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	info="JSP/서블릿 테스트용 페이지"
    pageEncoding="UTF-8" import="java.util.Date,java.text.SimpleDateFormat"%>

<%

	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dateString = String.format("<kbd>%s</kbd>",dateFormat.format(new Date()));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>HelloWorld.jsp</title>
<style>
	 /*점보트론 세로폭 및 마진바툼 줄이기*/
	 .jumbotron{
	     padding-top:1rem;
	     padding-bottom:1rem;            
	     margin-bottom: .5rem;
	     
	     border-top-left-radius:0;
	     border-top-right-radius:0;
	 }
</style>

</head>
<body>
	<div class="container">
        <div class="jumbotron bg-info">
            <h1>JSP 및 Servlet 테스트(CHOI CHEOL HWAN)</h1>            
        </div><!--jumbotron-->
        
        <fieldset class="form-group border p-3">
        	<legend class="w-auto px-3">JSP 테스트</legend>
        	<h3>오늘은 <%=dateString %>  입니다</h3>
        	
        </fieldset>
        
        <fieldset class="form-group border p-3">
	    	<legend class="w-auto px-3">Servlet 테스트</legend>
	    	<a href="HelloServlet.do" class="btn btn-primary">HELLO SERVLET</a>			
			<span class="font-weight-bold text-danger" style="font-size:1.2em">${message}</span>
			<h2>계산기</h2>
			<form action="Calculator.ict" method="post">
				<div class="form-group">
					<input type="number" class="form-control form-control-sm w-50" name="firstNum"  />
				</div>
				<div class="form-group">
					<select	name="operator" class="form-control form-control-sm w-50">
						<option value="+">더하기</option>
						<option value="-">빼기</option>
						<option value="*">곱하기</option>
						<option value="/">나누기</option>
					</select>
				</div>
				<div class="form-group">
					<input class="form-control form-control-sm w-50" type="number" name="secondNum"/>
				</div>
				<input class="btn btn-success"	type="submit" value="결과는" />
				<span class="font-weight-bold text-danger" style="font-size:1.4em">${result}</span>
			</form>
	    </fieldset>
        
    </div><!--container-->
</body>
</html>