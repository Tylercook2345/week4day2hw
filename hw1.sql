CREATE TABLE 'Ticket' (
  'TicketNumber' INTEGER,
  'Price' INTEGER,
  'SeatNumber' INTEGER,
  '3D' BOOLEAN
);

CREATE TABLE 'Movies' (
  'Title' VARCHAR(150),
  'Description' VARCHAR(150),
  'TicketsSold' INTEGER,
  'ShowingTime' TIMESTAMP,
  'Rating' VARCHAR(50),
  PRIMARY KEY ('TicketsSold')
);

CREATE TABLE 'Theatre' (
  'Name' VARCHAR(50),
  'Address' VARCHAR(50),
  'NoOfSeats' INTEGER,
  'MoviesBeingShown' VARCHAR(150),
  FOREIGN KEY ('MoviesBeingShown') REFERENCES 'Movies'('Title')
);

CREATE TABLE 'Staff' (
  'TicketSold' INTEGER,
  'Id' VARCHAR(50),
  'Username' VARCHAR(50),
  'Password' VARCHAR(150),
  PRIMARY KEY ('TicketSold')
);

CREATE TABLE 'Customers' (
  'TicketNumber' INT,
  'Price'  INT,
  'SeatNumber' TYPE,
  'Email' TYPE,
  'Age' INTEGER,
  FOREIGN KEY ('TicketNumber') REFERENCES 'Staff'('TicketSold')
);