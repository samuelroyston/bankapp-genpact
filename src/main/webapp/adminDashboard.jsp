<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.CustomerDao"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Customer"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(120deg, #0f2027, #203a43, #2c5364);
            color: #fff;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            width: 90%;
            max-width: 1200px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
        h1 {
            color: #fff;
            text-align: center;
            margin-bottom: 2rem;
            font-weight: 500;
            letter-spacing: 2px;
        }
        .action-buttons {
            display: flex;
            justify-content: space-around;
            margin-bottom: 2rem;
        }
        .btn {
            padding: 0.8rem 1.5rem;
            border: none;
            border-radius: 25px;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .btn-primary { background-color: #1e90ff; }
        .btn-primary:hover { background-color: #1c86ee; }
        .btn-danger { background-color: #ff4c4c; }
        .btn-danger:hover { background-color: #e63e3e; }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            color: #fff;
        }
        th {
            background-color: #1e90ff;
        }
        tr {
            background-color: rgba(255, 255, 255, 0.1);
        }
        tr:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }
        form {
            display: inline;
        }
        .neon-text {
            color: #fff;
            text-shadow:
                0 0 5px #fff,
                0 0 10px #fff,
                0 0 15px #ff1177,
                0 0 20px #ff1177,
                0 0 25px #ff1177,
                0 0 30px #ff1177,
                0 0 35px #ff1177;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="neon-text">Admin Dashboard</h1>
        
        <div class="action-buttons">
            <a href="createCustomer.jsp" class="btn btn-primary">Create Customer</a>
            <a href="deleteCustomer.jsp" class="btn btn-primary">Delete Customer</a>
            <form action="LogoutController" method="post" style="display:inline;">
                <button type="submit" class="btn btn-danger">Logout</button>
            </form>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Account No</th>
                    <th>Full Name</th>
                    <th>Email ID</th>
                    <th>Account Type</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                CustomerDao customerDao = new CustomerDao();
                List<Customer> customers = customerDao.getAllCustomers();
                for (Customer customer : customers) {
                %>
                <tr>
                    <td><%= customer.getAccountNo() %></td>
                    <td><%= customer.getFullName() %></td>
                    <td><%= customer.getEmailId() %></td>
                    <td><%= customer.getAccountType() %></td>
                    <td>
                        <form action="AdminController" method="post" style="display:inline;">
                            <input type="hidden" name="action" value="edit">
                            <input type="hidden" name="accountNo" value="<%= customer.getAccountNo() %>">
                            <button type="submit" class="btn btn-primary">Edit</button>
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
