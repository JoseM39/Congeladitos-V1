package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    // Contraseña válida para acceder al sistema
    private static final String VALID_PASSWORD = "admin123";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener la contraseña ingresada por el usuario
        String password = request.getParameter("password");

        // Verificar si la contraseña es válida
        if (VALID_PASSWORD.equals(password)) {
            // Redirigir al index principal
            response.sendRedirect("indexPrincipal.jsp");
        } else {
            // Si la contraseña es incorrecta, regresar al index.jsp con un mensaje de error
            request.setAttribute("errorMessage", "Contraseña incorrecta, intente de nuevo.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        }
    }
}
