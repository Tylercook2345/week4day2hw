-- insert into Ticket table
insert into 'Ticket'(
	'TicketNumber',
	'Price',
	'SeatNumber',
	'3D'
);

insert into 'Movies' (
  'Title',
  'Description',
  'TicketsSold',
  'ShowingTime',
  'Rating',
  PRIMARY KEY ('TicketsSold')
);

insert into 'Theatre' (
  'Name',
  'Address',
  'NoOfSeats',
  'MoviesBeingShown'),
  FOREIGN KEY ('MoviesBeingShown') REFERENCES 'Movies'('Title')
);

insert into 'Staff' (
  'TicketSold' INTEGER,
  'Id' VARCHAR(50),
  'Username' VARCHAR(50),
  'password' VARCHAR(150),
  PRIMARY KEY ('TicketSold')
);

CREATE table 'Customers' (
  'TicketNumber' INT,
  'Price' INT,
  'SeatNumber' TYPE,
  'Email' TYPE,
  'Age' INTEGER,
  FOREIGN KEY ('TicketNumber') REFERENCES 'Staff'('TicketSold')
);