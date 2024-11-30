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
        .btn-container {
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
    <div class="details-container">
        <h1>Detalles del Producto</h1>
        <p><strong>Nombre:</strong> ${producto.nombre}</p>
        <p><strong>Cantidad Disponible:</strong> ${producto.cantidad}</p>
        <div class="btn-container">
            <form action="indexPrincipal.jsp" method="get">
                <button type="submit">Regresar</button>
            </form>
        </div>
    </div>
</body>
</html>