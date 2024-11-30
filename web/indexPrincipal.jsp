<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Inventario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        .container h1 {
            margin-bottom: 20px;
            font-size: 22px;
            color: #333;
        }
        .container input[type="text"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }
        .container button {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .container button:hover {
            background-color: #0056b3;
        }
        .container .view-db {
            background-color: #28a745;
        }
        .container .view-db:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Gestión de Productos</h1>
        <!-- Formulario para las acciones principales -->
        <form action="ControllerServlet" method="post">
            <!-- Campo de texto para ingresar el nombre del producto -->
            <input type="text" name="productName" placeholder="Nombre del producto">

            <!-- Botones de acción -->
            <button type="submit" name="action" value="add">Agregar</button>
            <button type="submit" name="action" value="search">Buscar</button>
            
            <c:if test="${not empty errorMessage}">
    <div class="error-message">${errorMessage}</div>
</c:if>

            
            <!-- Contraseña para Ver DB -->
            <input type="password" name="password" placeholder="Contraseña para Ver DB">
            <button type="submit" name="action" value="viewDB" class="view-db">Ver DB</button>
        </form>
    </div>
</body>
</html>