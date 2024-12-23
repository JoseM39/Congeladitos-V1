<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles del Producto</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .details-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .details-container h1 {
            margin-bottom: 20px;
            font-size: 22px;
            color: #333;
        }
        .details-container p {
            margin: 10px 0;
            font-size: 18px;
            color: #555;
        }
        .details-container input[type="number"] {
            width: 90%;
            padding: 10px;
            margin: 15px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        .btn-container {
            margin-top: 20px;
        }
        .btn-container button {
            padding: 10px 20px;
            font-size: 16px;
            margin: 5px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-container button:hover {
            background-color: #0056b3;
        }
        .btn-container .regresar {
            background-color: #6c757d;
        }
        .btn-container .regresar:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <div class="details-container">
        <h1>Detalles del Producto</h1>
        <p><strong>Nombre:</strong> ${producto.nombre}</p>
        <p><strong>Cantidad Disponible:</strong> ${producto.cantidad}</p>

        <!-- Campo para ingresar la cantidad a ordenar -->
        <form action="ControllerServlet" method="post">
            <input type="hidden" name="productName" value="${producto.nombre}">
            <input type="number" name="orderQuantity" placeholder="Cantidad a ordenar" required min="1">
            <div class="btn-container">
                <button type="submit" name="action" value="order">Ordenar</button>
                <button type="button" onclick="location.href='indexPrincipal.jsp'" class="regresar">Regresar</button>
            </div>
            
            <!-- Mostrar mensajes de éxito o error -->
<c:if test="${not empty successMessage}">
    <div style="color: green; margin-bottom: 10px;">${successMessage}</div>
</c:if>
<c:if test="${not empty errorMessage}">
    <div style="color: red; margin-bottom: 10px;">${errorMessage}</div>
</c:if>

        </form>
    </div>
</body>
</html>
