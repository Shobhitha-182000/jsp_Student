<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
        body{
    margin: 0;
    height: 1000px;
    width: 1000px;
    box-sizing: border-box;  
}
 
#first{
    border: 1px solid blueviolet;
    height: 700px;
    width: 900px;
    background-image: radial-gradient(circle,white ,rgb(63, 22, 73));
    text-align: center;
    font-size: x-large;
    margin-left: 200px;
    margin-top: 30px;
}
#in{
    border: 1px solid rgb(123, 88, 156);
    color: aliceblue;
    height: 600px;
    width: 400px;
    background-color: rgb(63, 22, 73);
    text-align: center;
    font-size: x-large;
    margin-left: 250px;
    margin-top: 30px;
    padding-top: 20px;
}
 
    </style>
</head>
<body>
    <div> 
        <br>
        <br>
        <div id="first">
            <div id="in">Login in with 
                <br>
                <br>
				<form action="login" method="post">
					<table width="200px" cellspacing="20px">
						<tbody>
						<thead>
							<tr>
								<td colspan="2" style="padding-right: 300px;"><label
									for="email">Email</label></td>
							</tr>
						</thead>
						<tr>
							<td colspan="2"><input type="email" name="email"
								placeholder="enter your email " required
								style="height: 30px; width: 350px;"></td>
						</tr>
						<tr>
							<td colspan="2" style="padding-right: 260px;"><label
								for="password">Password</label></td>
						</tr>
						<tr>
							<td colspan="2"><input type="password" name="password"
								placeholder="enter your password " required
								style="height: 30px; width: 350px;"></td>
						</tr>
						<tr>
							<td style="background-color: brown;" height="40px">
							<input type="submit" value="login"></td>
						</tr>
						</tbody>
					</table>
				</form>
			</div>
              
        </div>
    </div>
</body>
</html>