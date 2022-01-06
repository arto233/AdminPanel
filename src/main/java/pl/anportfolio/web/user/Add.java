package pl.anportfolio.web.user;

import pl.anportfolio.dao.UserDao;
import pl.anportfolio.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/add")
public class Add extends HttpServlet {

    private final UserDao userDao = new UserDao();
    private final String EMAIL_REGEX = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/user/add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPassword = request.getParameter("userPassword");
        if (userName != null && !userName.isEmpty() && userEmail.matches(EMAIL_REGEX) &&
        userPassword != null && !userPassword.isEmpty()) {
            User user = new User(userName, userEmail, userPassword);
            userDao.create(user);
            response.sendRedirect("/user/list");
        } else {
            response.sendRedirect("/user/add");
        }
    }
}
