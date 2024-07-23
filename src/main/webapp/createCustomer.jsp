<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create Customer</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;700&family=Roboto:wght@400;500;700&display=swap');

        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #1f1c2c, #928dab);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            perspective: 1000px;
        }
        .form-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
            width: 100%;
            max-width: 500px;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.18);
            transform: rotateY(10deg);
            transition: transform 0.5s;
        }
        .form-container:hover {
            transform: rotateY(0deg);
        }
        h1 {
            font-family: 'Orbitron', sans-serif;
            color: #fff;
            text-align: center;
            margin-bottom: 2rem;
            font-size: 2rem;
            text-shadow: 0 0 10px #ff5e62, 0 0 20px #ff5e62, 0 0 30px #ff5e62;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 0.5rem;
            color: #fff;
        }
        input, select {
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 4px;
            font-size: 1rem;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
        }
        button {
            padding: 1rem;
            background-color: #ff5e62;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 15px rgba(255, 94, 98, 0.75);
        }
        button:hover {
            background-color: #e63e3e;
            box-shadow: 0 6px 20px rgba(230, 62, 62, 0.85);
        }
        input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Create New Customer</h1>
        <form action="AdminController" method="post">
            <input type="hidden" name="action" value="create">
            
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" placeholder="John Doe" required>
            
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" placeholder="1234 Main St" required>
            
            <label for="mobileNo">Mobile No:</label>
            <input type="text" id="mobileNo" name="mobileNo" placeholder="9876543210" required>
            
            <label for="emailId">Email ID:</label>
            <input type="email" id="emailId" name="emailId" placeholder="john.doe@example.com" required>
            
            <label for="accountType">Account Type:</label>
            <select id="accountType" name="accountType">
                <option value="Saving">Saving</option>
                <option value="Current">Current</option>
            </select>
            
            <label for="initialBalance">Initial Balance:</label>
            <input type="number" id="initialBalance" name="initialBalance" min="1000" placeholder="1000" required>
            
            <label for="dateOfBirth">Date of Birth:</label>
            <input type="date" id="dateOfBirth" name="dateOfBirth" required>
            
            <label for="idProof">ID Proof:</label>
            <input type="text" id="idProof" name="idProof" placeholder="ID Number" required>
            
            <button type="submit">Create Customer</button>
        </form>
    </div>
</body>
</html>
