<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Base de Datos de Productos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .product-list {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .product-item {
            margin-bottom: 20px;
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }
        .product-item:last-child {
            border-bottom: none;
        }
        .product-item p {
            margin: 5px 0;
        }
        .btn-container {
            text-align: center;
            margin-top: 20px;
        }
        .btn-container button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Base de Datos de Productos</h1>
    <div class="product-list">
        <c:forEach var="producto" items="${productos}">
            <div class="product-item">
                <p><strong>Nombre del Producto:</strong> ${producto.nombre}</p>
                <p><strong>Cantidad Disponible:</strong> ${producto.cantidad}</p>
            </div>
        </c:forEach>
    </div>
    <div class="btn-container">
        <form action="indexPrincipal.jsp" method="get">
            <button type="submit">Regresar</button>
        </form>
    </div>
</body>
</html>
