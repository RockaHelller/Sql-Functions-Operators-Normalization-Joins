CREATE DATABASE Shop


CREATE TABLE Product (
    [Id] int primary key Identity(1,1),
    [Name] nvarchar (255),
	[Count] int,
	[Price] decimal,
	[CategoryId] int foreign key references Category(Id)
);

CREATE TABLE Category (
    [Id] int primary key Identity(1,1),
    [Name] nvarchar (255)
);


select co.name as 'Category', ct.name as 'Product' from Category co
inner join Product ct
on co.Id = ct.CategoryId


select co.name as 'Category', ct.name as 'Product' from Category co
left join Product ct
on co.Id = ct.CategoryId


select co.name as 'Category', ct.name as 'Product' from Category co
right join Product ct
on co.Id = ct.CategoryId

select co.name as 'Category', ct.name as 'Product' from Category co
Full outer join Product ct
on co.Id = ct.CategoryId

CREATE TABLE Users (
    [Id] int primary key Identity(1,1),
    [Name] nvarchar (255)
);

CREATE TABLE Roles (
    [Id] int primary key Identity(1,1),
    [Name] nvarchar (255)
);

CREATE TABLE UserRole (
    [Id] int primary key Identity(1,1),
    [UsersId] int foreign key references Users(Id),
	[RolesId] int foreign key references Roles(Id)

);


select co.name as 'Category', ct.name as 'Product' from Category co
inner join UserRole ur
on co.Id = ur.UsersId

inner join Roles ct
on ct.Id = ur.RolesId