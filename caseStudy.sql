use sisdb;


-- Vehicle Table
create table vehicle(vehicleID int primary key, make varchar(20), model varchar(20), 
year int, dailyRate int, status varchar(20), passengerCapacity int, engineCapacity int);
INSERT INTO Vehicle (vehicleID, make, model, year, dailyRate, status, passengerCapacity, engineCapacity)
VALUES
    (1, 'Toyota', 'Camry', 2022, 50.00, 'A', 5, 2487 ),
    (2, 'Honda', 'Civic', 2021, 45.00, 'A', 5, 1799),
    (3, 'Ford', 'F 150', 2023, 70.00, 'NA', 3, 3342);
    
    -- Customer Table
    
    create table customer(customerID int primary key, firstnName varchar(20), lastName varchar(20),email varchar(20),phoneNumber int);
    
INSERT INTO Customer(customerID, firstName, lastName, email, phoneNumber)
VALUES
    (1, 'Aman', 'Singh', 'as2321@gmail.com', '9568745889'),
    (2, 'Suresh', 'Shetty', 'ss2223@gmail.comm', '8544775486'),
    (3, 'Abhishek', 'Kumar', 'Akumar22@gmail.com', '6323599698');
    
    -- Leash Table
    
    create table Lease(leaseID int primary key, vehicleID int , customerID int,startDate date,endDate Date,type varchar(20), 
    foreign key(vehicleID) References vehicle(vehicleID),    
    foreign key (customerID) references customer(customerID));
    
    insert into Lease (leaseID, vehicleID, customerID, startDate, endDate, type)
VALUES
    (1, 1, 1, '2023-01-01', '2023-01-05', 'Daily'),
    (2, 2, 2, '2023-02-01', '2023-03-01', 'Monthly'),
    (3, 3, 3, '2023-03-15', '2023-04-20', 'Monthly');
    
    -- Payment Table
    create table Payment (
    paymentID int primary key,
    leaseID int,
    paymentDate date,
    amount decimal(10, 2),
    foreign key (leaseID) references Lease(leaseID)
);

    INSERT INTO Payment (paymentID, leaseID, paymentDate, amount)
VALUES
    (1, 1, '2023-01-03', 3000),
    (2, 2, '2023-02-15', 8000),
    (3, 3, '2023-03-18', 95000);
    
    select * from vehicle;
    select * from customer;
    select * from lease;
    select * from payment;
    
