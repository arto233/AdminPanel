package pl.anportfolio.web.user;

import pl.anportfolio.dao.UserDao;
import pl.anportfolio.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/show")
public class Show extends HttpServlet {

    private static final UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = userDao.read(userId);
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/user/show.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
