<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <div class="product-item">
            <p><strong>ID:</strong> 1</p>
            <p><strong>Nombre del Producto:</strong> Producto A</p>
            <p><strong>Cantidad Disponible:</strong> 50</p>
        </div>
        <div class="product-item">
            <p><strong>ID:</strong> 2</p>
            <p><strong>Nombre del Producto:</strong> Producto B</p>
            <p><strong>Cantidad Disponible:</strong> 30</p>
        </div>
        <div class="product-item">
            <p><strong>ID:</strong> 3</p>
            <p><strong>Nombre del Producto:</strong> Producto C</p>
            <p><strong>Cantidad Disponible:</strong> 20</p>
        </div>
    </div>
    <div class="btn-container">
        <form action="indexPrincipal.jsp" method="get">
            <button type="submit">Regresar</button>
        </form>
    </div>
</body>
</html>

