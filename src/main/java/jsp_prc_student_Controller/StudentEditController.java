package jsp_prc_student_Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_prc_student_dao.StudentDao;
import jsp_prc_student_dto.Student;

@WebServlet("/edit")
public class StudentEditController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String fname = req.getParameter("fname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		long phone = Long.parseLong(req.getParameter("phone"));

		ServletContext context = getServletContext();
		String fees = context.getInitParameter("fees");

		Student student = new Student();
		student.setId(id);
		student.setName(name);
		student.setFname(fname);
		student.setPhone(phone);
		student.setEmail(email);
		student.setPassword(password);
		student.setFees(fees);
		
		StudentDao studentDao=new StudentDao();
		Student student2=studentDao.updateStudent(student);
		if(student2!=null) {
			List<Student>list=studentDao.getAll();
			req.setAttribute("list", list);
			RequestDispatcher dispatcher=req.getRequestDispatcher("display.jsp");
			dispatcher.forward(req, resp);
		}
		else {
			RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);
		}
	}

}
