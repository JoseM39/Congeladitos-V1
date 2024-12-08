Descripción:
Congeladitos-V1 es una aplicación web diseñada para gestionar un inventario de productos congelados. 
Permite a los usuarios realizar operaciones como agregar productos, buscar información específica, 
visualizar el inventario completo y realizar órdenes de compra. El sistema está construido con un 
enfoque en la eficiencia, la usabilidad y la integración de tecnologías modernas para ofrecer una 
solución robusta y fácil de usar.

Problemática:
La gestión manual de inventarios puede ser ineficiente y propensa a errores, especialmente en negocios 
pequeños que no cuentan con herramientas digitales. Entre los problemas principales se encuentran:

1. Dificultad para mantener un registro actualizado de productos.
2. Falta de mecanismos para manejar solicitudes de acceso o inventarios.
3. Imposibilidad de realizar búsquedas rápidas y generar órdenes directamente desde el sistema.

Solución:
Congeladitos-V1 ofrece una solución digital completa para la gestión de inventarios. Sus características 
principales incluyen:

1. Agregar productos al inventario: Incrementar automáticamente las cantidades existentes o agregar nuevos productos.
2. Buscar productos por nombre: Permite a los usuarios encontrar información detallada sobre productos específicos.
3. Visualizar el inventario completo: Muestra todos los productos con sus cantidades disponibles (restringido por una contraseña para mayor seguridad).
4. Ordenar productos: Permite reducir las cantidades disponibles al registrar una orden de compra.
5. Gestión de accesos: Sistema de inicio de sesión para garantizar que solo usuarios autorizados puedan operar la aplicación.

Arquitecutra: 
Para ejecutar esta aplicación, se requiere el siguiente entorno:
1. Java 17: Lenguaje de programación principal.
2. Jakarta Servlet API 5.0: Para la creación de servlets que gestionan la lógica de la aplicación.
3. JSP (JavaServer Pages): Para la construcción de las vistas dinámicas.
4. GlassFish Server 7.0.0: Compatible con Jakarta EE 10, usado para ejecutar la aplicación web.
5. Apache NetBeans IDE 22: Para el desarrollo, compilación y despliegue de la aplicación.
6. Apache Ant: Usado para compilar y construir el proyecto.
7. Archivo de configuración: build.xml.
8. Git y GitHub: Repositorio para versionamiento y despliegue continuo.
9. GitHub Actions: Configurado para ejecutar un flujo CI/CD que incluye compilación y pruebas automáticas.
10. Almacenamiento en memoria: Los productos se manejan en listas estáticas durante la ejecución.
