package controller;

import jakarta.servlet.RequestDispatcher;
import java.util.ArrayList;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Product;

@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {

    // Contraseña válida para acceder a "Ver DB"
    private static final String DB_PASSWORD = "dbpass123";
    
    // Lista estática para almacenar los productos en memoria
    private static final List<Product> productos = new ArrayList<>();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener la acción enviada desde el formulario
        String action = request.getParameter("action");
        
        if ("add".equals(action)) {
            // Lógica para "Agregar"
            String productName = request.getParameter("productName");
            if (productName != null && !productName.trim().isEmpty()) {
                agregarProducto(productName.trim());
                // Redirigir al index principal
                RequestDispatcher dispatcher = request.getRequestDispatcher("indexPrincipal.jsp");
                dispatcher.forward(request, response);
            }
        } else if ("search".equals(action)) {
            // Lógica para "Buscar"
            String productName = request.getParameter("productName");
            if (productName != null && !productName.trim().isEmpty()) {
                buscarProducto(productName.trim(), request, response);
            } else {
                request.setAttribute("errorMessage", "Debe ingresar un nombre de producto.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("indexPrincipal.jsp");
                dispatcher.forward(request, response);
            }
        } else if ("viewDB".equals(action)) {
            // Pasar la lista de productos a la vista
            request.setAttribute("productos", productos);
            request.getRequestDispatcher("viewDB.jsp").forward(request, response);
        }else if ("order".equals(action)) {
    // Lógica para "Ordenar"
    String productName = request.getParameter("productName");
    String orderQuantityStr = request.getParameter("orderQuantity");

    if (productName != null && orderQuantityStr != null) {
        int orderQuantity = Integer.parseInt(orderQuantityStr);
        for (Product producto : productos) {
            if (producto.getNombre().equalsIgnoreCase(productName)) {
                if (producto.getCantidad() >= orderQuantity) {
                    // Restar la cantidad ordenada
                    producto.setCantidad(producto.getCantidad() - orderQuantity);
                    request.setAttribute("successMessage", "La orden se realizó exitosamente.");
                } else {
                    // Cantidad insuficiente
                    request.setAttribute("errorMessage", "Cantidad insuficiente para completar la orden.");
                }
                request.setAttribute("producto", producto);
                request.getRequestDispatcher("productoDetalles.jsp").forward(request, response);
                return;
            }
        }
    }
    response.sendRedirect("indexPrincipal.jsp");
}
        
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
    private void agregarProducto(String productName) {
        // Verificar si el producto ya existe en la lista
        for (Product producto : productos) {
            if (producto.getNombre().equalsIgnoreCase(productName)) {
                // Incrementar cantidad si existe
                producto.setCantidad(producto.getCantidad() + 1);
                return;
            }
        }
        // Agregar nuevo producto si no existe
        productos.add(new Product(productName, 1));
    }
    private void buscarProducto(String productName, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        for (Product producto : productos) {
            if (producto.getNombre().equalsIgnoreCase(productName)) {
                // Producto encontrado, redirigir a la página de detalles
                request.setAttribute("producto", producto);
                RequestDispatcher dispatcher = request.getRequestDispatcher("productoDetalles.jsp");
                dispatcher.forward(request, response);
                return;
            }
        }
        // Producto no encontrado, mostrar error
        request.setAttribute("errorMessage", "El producto no existe o el nombre es incorrecto.");
        RequestDispatcher dispatcher = request.getRequestDispatcher("indexPrincipal.jsp");
        dispatcher.forward(request, response);
    }
}

