package pl.anportfolio.web.user;

import pl.anportfolio.dao.UserDao;
import pl.anportfolio.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/delete")
public class Delete extends HttpServlet {
    private final UserDao userDao = new UserDao();
    private static int userToRemove;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        userToRemove = Integer.parseInt(request.getParameter("id"));
        User user = userDao.read(userToRemove);
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/user/delete.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String confirmDeleting = request.getParameter("options");

        if (confirmDeleting.equals("yes")) {
            userDao.delete(userToRemove);
        }
        response.sendRedirect("/user/list");
    }
}