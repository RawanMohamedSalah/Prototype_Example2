<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="prototype.ex2.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shapes Demo</title>
</head>
<body>
    <h1>Shapes Demo</h1>
    <%-- Create a list to hold shapes --%>
    <% List<Shape> shapes = new ArrayList<>(); %>

    <%-- Create instances of shapes and add them to the list --%>
    <% Circle circle = new Circle(); %>
    <% circle.x = 10; %>
    <% circle.y = 20; %>
    <% circle.radius = 15; %>
    <% circle.color = "red"; %>
    <% shapes.add(circle); %>

    <% Circle anotherCircle = (Circle) circle.clone(); %>
    <% shapes.add(anotherCircle); %>

    <% Rectangle rectangle = new Rectangle(); %>
    <% rectangle.width = 10; %>
    <% rectangle.height = 20; %>
    <% rectangle.color = "blue"; %>
    <% shapes.add(rectangle); %>

    <%-- Display shapes and their properties --%>
    <% for (Shape shape : shapes) { %>
        <div style="border: 1px solid black; padding: 10px; margin-bottom: 10px;">
            <% if (shape instanceof Circle) { %>
                <h2>Circle</h2>
                <p>X: <%= ((Circle) shape).x %></p>
                <p>Y: <%= ((Circle) shape).y %></p>
                <p>Radius: <%= ((Circle) shape).radius %></p>
                <p>Color: <%= shape.color %></p>
            <% } else if (shape instanceof Rectangle) { %>
                <h2>Rectangle</h2>
                <p>X: <%= ((Rectangle) shape).x %></p>
                <p>Y: <%= ((Rectangle) shape).y %></p>
                <p>Width: <%= ((Rectangle) shape).width %></p>
                <p>Height: <%= ((Rectangle) shape).height %></p>
                <p>Color: <%= shape.color %></p>
            <% } %>
        </div>
    <% } %>
</body>
</html>
