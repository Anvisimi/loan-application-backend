# Borrow Loan App | Online Loan Application (Backend)

- An online loan application where a user can login, signup, apply a loan, pay loan fully or partially, and track their transactions.
- RESTful backend server developed in Spring boot enabling users to store data in a relational database(MYSQL here).
- Integration of Java Mail API and Swagger for API documentation to ease the reference of UI/API.

run docker compose up -d and APIs could then be seen on http://localhost:6868//swagger-ui/index.html

## Technologies used
1. Java 8
2. Maven
3. Spring Boot
4. MySQL


API reference

1. LOGIN API:

localhost:6868/customer/login?email=<emailID>&password=<userPassword>
example
localhost:6868/customer/login?email=mahesh.kumar@yahoo.com&password=mahesh.kumar@1234


2. OPEN new credit facility for the applicant

localhost:6868/customer

BODY

{
"id": 1,
"fname": "Mahesh",
"lname": "Kumar",
"gender": "Male",
"phone": 9431278999,
"email": "mahesh.kumar@yahoo.com",
"password": "mahesh.kumar@1234",
"confirmPassword": "mahesh.kumar@1234",
"salary": 90000,
"adhaar": 9010112345678900,
"pan": "SIMQX4119A",
"walletAmt": 10000,
"loans": [
{
"loanId": 0,
"loanAmt": 40000,
"loanType": "Personal Loan",
"duration": 10,
"monthlyEMI": 4000,
"loanStatus": "New",
"customerId": 0,
"transactions": [
{
"transId": 0,
"transTime": "2023-04-01T13:49:20.000Z",
"mssg": "New Personal Loan",
"amount": -40000,
"loanId": 0
}
]
}
]
}


3. API for Bank to give loan to application when applicant applies

REQUEST

localhost:6868/loan/1/loan

Body

{
"loanId": 0,
"loanAmt": 40000,
"loanType": "Personal Loan",
"duration": 10,
"monthlyEMI": 4000,
"loanStatus": "New",
"customer": {
"id": 1,
"fname": "Mahesh",
"lname": "Kumar",
"gender": "Male",
"phone": 9431278999,
"email": "mahesh.kumar@yahoo.com",
"password": "mahesh.kumar@1234",
"confirmPassword": "mahesh.kumar@1234",
"salary": 90000.0,
"adhaar": 9010112345678900,
"pan": "SIMQX4119A",
"walletAmt": 10000.0,
"loans": []
},
"transactions": []
}

4. Foreclose a loan

http://localhost:6868/loan/foreclose?loanId=1&amount=500

Body : <No Body>

5. API to see the customer and his loan and transactions

localhost:6868/customer/1

6. API to see all customers, their loans and transactions

localhost:6868/customer?page=0&size=20


You may see the APIs and request details at http://localhost:6868//swagger-ui/index.html



Access APIs using below URL

https://api.postman.com/collections/18966223-60fb844a-2db5-4977-99b0-0a74aa6757a0?access_key=PMAT-01GX0PR2BT06HZQW9W9FT7HXZ4