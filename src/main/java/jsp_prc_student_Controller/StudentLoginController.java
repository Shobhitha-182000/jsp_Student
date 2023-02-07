package jsp_prc_student_Controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.Entity;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_prc_student_dao.StudentDao;
import jsp_prc_student_dto.Student;

@WebServlet("/login")
public class StudentLoginController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String email=req.getParameter("email");
		 String password=req.getParameter("password");
		 
		 Student student=new Student();
		 student.setEmail(email);
		 student.setPassword(password);
		 
		 StudentDao studentDao=new StudentDao();
		 Student student2=studentDao.getDtailsByEmail(email);
		 if(student2.getPassword().equals(password)) {
			 List<Student> list=studentDao.getAll();
			 req.setAttribute("list", list);
			 RequestDispatcher dispatcher=req.getRequestDispatcher("display.jsp");
			 dispatcher.forward(req, resp);
		 }
		 else {
			 req.setAttribute("message", "invalid password");
			 RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
			 dispatcher.include(req, resp);
		 }
	}
}
