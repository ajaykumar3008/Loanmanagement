<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,loanmanagement.*" %>
<% List<Application> appList = (List<Application>) request.getAttribute("applications"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body, ul {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Apply a background color to the entire page */
        body {
            background-color: #f0f0f0;
        }

        /* Styling for the menu */
        .menu {
            background-color: #333;
            color: white;
            width: 200px; /* Adjust the width as needed */
            height: 100%; /* Full height menu */
            position: fixed;
            top: 0;
            left: 0;
        }

        .menu ul {
            list-style-type: none;
            padding: 20px;
        }

        .menu ul li {
            margin-bottom: 10px;
        }

        .menu a {
            color: white;
            text-decoration: none;
        }

        /* Styling for the content area */
        .content {
        	margin-top:30px;
            margin-left: 220px; 
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .content h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Styling for the table */
        table {
        margin-top:30px;
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        /* Style odd rows with a light gray background */
        tr:nth-child(odd) {
            background-color: #f2f2f2;
        }

        /* Style even rows with a white background */
        tr:nth-child(even) {
            background-color: #ffffff;
        }

        /* Styling for the table header */
        th {
            background-color: #333;
            color: white;
        }

        /* Add some space for the last column with the button */
        td:last-child {
            padding-right: 30px;
        }

        /* Style the button */
        .btn {
            background-color: #007BFF;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
    <title>Left Top Menu Page</title>
</head>
<body>
    <div class="menu">
        <ul>
            <li><a href="http://localhost:9010/LoanManagement/applications">Loan Applicants</a></li>
            <li><a href="#">Loans</a></li>
            <li><a href="#">Repayments</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </div>
    <div class="content"> <div><nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Search by
          </a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
           <li><a class="dropdown-item" href="http://localhost:9010/LoanManagement/namefilter">By Name</a></li>
            <li><a class="dropdown-item" href="http://localhost:9010/LoanManagement/mobilefilter">By Mobile</a></li>
            <li><a class="dropdown-item" href="http://localhost:9010/LoanManagement/datefilter">Date Range</a></li>
            <li><a class="dropdown-item" href="http://localhost:9010/LoanManagement/amountfillter">Amount Range</a></li>
            <li><a class="dropdown-item" href="http://localhost:9010/LoanManagement/loantypefilter">Loan Type</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav></div><br><br>
        <h1>Loan Applications</h1>
        <table>
            <tr>
                <th>application Id</th>
                <th>Application Date</th>
                <th>Name </th>
                <th>Mobile</th>
                <th>LoanType</th>
                <th>Amount</th>
                <th>Months Required</th>
                <th>Status</th>
                <th></th>
            </tr>
            <% if(appList!=null){for (Application loan : appList) { %>
                <tr>
                    <td><%= loan.getAppid() %></td>
                    <td><%= loan.getAppdate() %></td>
                    <td><%= loan.getName() %></td>
                    <td><%= loan.getMobile() %></td>
                    <td><%= loan.getType() %></td>
                    <td><%= loan.getAmountreq() %></td>
                    <td><%= loan.getMontsreq() %></td>
                    <td><%= loan.getStatus() %></td>
                    <td><a class="btn" href="http://localhost:9010/LoanManagement/oneapplicant?applicant=<%=loan.getAppid() %>">Details</a></td>
                </tr>
            <% } }%>
        </table><br><br><div align="center">
        <a class="btn btn-primary" href="http://localhost:9010/LoanManagement/generateexcel">Downlod</a></div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>
