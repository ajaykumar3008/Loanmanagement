
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Loan Application</title>
    <!-- Add Bootstrap CSS link here -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="display-4">Loan Application Form</h1>
        <form action="process_loan_application.jsp" method="post">

        	<%-- Java code to get the current date --%>
            <%
                java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
                java.util.Date currentDate = new java.util.Date();
                String formattedDate = dateFormat.format(currentDate);
            %>

            <div class="form-group">
                <label for="applicationDate">Application Date:</label>
                <input type="text" class="form-control" name="applicationDate" id="applicationDate" value="<%= formattedDate %>" readonly>
            </div>

            <div class="form-group">

                <label for="loanType">Loan Type:</label>
                <select class="form-control" name="loanType" id="loanType">
                    <option value="personal">Personal Loan</option>
                    <option value="home">Home Loan</option>
                    <option value="auto">Vehicle Loan</option>
                    <!-- Add more loan types as needed -->
                </select>
            </div>

            <div class="form-group">
                <label for="amountRequired">Amount Required:</label>
                <input type="text" class="form-control" name="amountRequired" id="amountRequired" required>
            </div>

            <div class="form-group">
                <label for="numMonths">Number of Months:</label>
                <input type="text" class="form-control" name="numMonths" id="numMonths" required>
            </div>



            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Add Bootstrap JS and jQuery (if needed) here -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>