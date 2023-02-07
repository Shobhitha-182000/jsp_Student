package jsp_prc_student_Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_prc_student_dao.StudentDao;
import jsp_prc_student_dto.Student;

@WebServlet("/update")
public class StudentUpdateController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 int id=Integer.parseInt(req.getParameter("id"));
		 
		 StudentDao studentDao=new StudentDao();
		 Student student=studentDao.getStudentById(id);
		 if(student!=null) {
			 req.setAttribute("student", student);
			 RequestDispatcher requestDispatcher=req.getRequestDispatcher("edit.jsp");
			 requestDispatcher.forward(req, resp);
		 }
		 
	}

}