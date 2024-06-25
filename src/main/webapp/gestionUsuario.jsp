<%@ page import="mx.edu.utez.practica3e.dao.UsuarioDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.practica3e.model.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>id</th>
                <th>nombre</th>
                <th>contraseña</th>
                <th>correo</th>
                <th>tipo</th>
                <th>estado</th>
                <th>actualizar</th>
                <th>eliminar</th>
            </tr>
        </thead>
        <tbody>
        <%
            UsuarioDao dao = new UsuarioDao();
            ArrayList<Usuario> lista = dao.getAll();
            for(Usuario u : lista){%>
            <tr>
                <td><%=u.getId()%></td>
                <td><%=u.getNombre_usuario()%></td>
                <td><%=u.getContra()%></td>
                <td><%=u.getCorreo()%></td>
                <td><%=u.getTipo_usuario()%></td>
                <td><%=u.isEstado()%></td>
                <td><a>Actualizar</a></td>
                <td><a>Eliminar</a></td>
            </tr>
        <% } %>
        </tbody>
    </table>
</body>
</html>
