package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {

    // Contraseña válida para acceder a "Ver DB"
    private static final String DB_PASSWORD = "dbpass123";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener la acción enviada desde el formulario
        String action = request.getParameter("action");

        if ("viewDB".equals(action)) {
            // Manejar la acción "Ver DB"
            String enteredPassword = request.getParameter("password");
            
            if (DB_PASSWORD.equals(enteredPassword)) {
                // Contraseña correcta, redirigir a la página de visualización
                response.sendRedirect("viewDB.jsp");
            } else {
                // Contraseña incorrecta, regresar al index principal con un mensaje de error
                request.setAttribute("errorMessage", "Contraseña incorrecta para acceder a Ver DB.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("indexPrincipal.jsp");
                dispatcher.forward(request, response);
            }
        } else {
            // Manejar otras acciones como "Agregar" o "Buscar"
            response.sendRedirect("indexPrincipal.jsp"); // Placeholder para otras acciones
        }
    }
}

