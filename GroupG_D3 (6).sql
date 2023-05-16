use restaurant
use master
--customer table

--insert customer
create procedure AddCustomer
@cid char(6),
@cname varchar(20),
@cphone char(11),
@carea char(5),
@caddr varchar(30),
@cmail varchar(50),
@cp int,
@cpass varchar(20)
as
begin
insert into customer values (@cid, @cname, @cphone, @carea, @caddr, @cmail, @cp, @cpass)
end
go

--search customer
create procedure SearchCustomerByID
@cid char(6),
@Found int output
as
begin
Select * from customer where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure SearchCustomerByName
@cname varchar(20),
@Found int output
as
begin
Select * from customer where cust_name = @cname
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure SearchCustomerByMail
@cmail varchar(50),
@cpass varchar(20),
@cname varchar(20) output,
@Found int output
as
begin
Select @cname = cust_name from customer where cust_email = @cmail AND cust_pass = @cpass
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

--delete customer
create procedure DeleteCustomerByID
@cid char(6),
@Found int output
as
begin
delete from customer where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure DeleteCustomerByName
@cname varchar(20),
@Found int output
as
begin
delete from customer where cust_name = @cname
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure DeleteCustomerByMail
@cmail varchar(20),
@Found int output
as
begin
delete from customer where cust_email = @cmail
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

--update customer
create procedure AddPoints
@cid char(6),
@cp int,
@Found int output
as
begin
update customer set points = (points + @cp) where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure DeductPoints
@cid char(6),
@cp int,
@Found int output
as
begin
update customer set points = (points - @cp) where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure UpdateCustomerName
@cid char(6),
@cname varchar(20),
@Found int output
as
begin
update customer set cust_name = @cname where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure UpdateCustomerPass
@cid char(6),
@cpass varchar(20),
@Found int output
as
begin
update customer set cust_pass = @cpass where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure UpdateCustomerPhone
@cid char(6),
@cphone char(11),
@Found int output
as
begin
update customer set cust_phone = @cphone where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure UpdateCustomerAddress
@cid char(6),
@caddr varchar(30),
@Found int output
as
begin
update customer set cust_address = @caddr where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

--rider table

--insert rider
create procedure AddRider
@rid char(6),
@rname varchar(20),
@rphone char(11),
@rarea char(5)
as
begin
insert into rider values(@rid,@rname,@rphone,@rarea, 'Available')
end
go

--search rider
create procedure SearchRiderByID
@rid char(6),
@Found int output
as
begin
Select * from rider where rider_id = @rid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure SearchRiderByName
@rname varchar(20),
@Found int output
as
begin
Select * from rider where rider_name = @rname
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

--delete rider
create procedure DeleteRiderByID
@rid char(6),
@Found int output
as
begin
delete from customer where rider_id = @rid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure DeleteRiderByName
@rname varchar(20),
@Found int output
as
begin
delete from customer where rider_name = @rname
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

--update rider
create procedure UpdateRiderStatus
@rid char(6),
@rstatus varchar(10),
@Found int output
as
begin
update rider set rider_status = @rstatus where rider_id = @rid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go


--discount table

--insert discount
create procedure AddDiscount 
@did char(6),
@dvalue float,
@dp int
as
begin
insert into discount values(@did, @dvalue, @dp)
end
go

--update discount
create procedure UpdateDiscountValue
@did char(6),
@dvalue float,
@Found int
as
begin
update discount set discount_value = @dvalue where discount_id = @did
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure UpdateDiscountPoints
@did char(6),
@dp int,
@Found int
as
begin
update discount set points_required = @dp where discount_id = @did
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

--sort discounts
create procedure SortDiscountsByValue
@order int
as
begin
if @order = 1
select * from discount order by discount_value desc
else 
select * from discount order by discount_value asc
end
go

create procedure SortDiscountsByPoints
@order int
as
begin
if @order = 1
select * from discount order by points_required desc
else 
select * from discount order by points_required asc
end
go

--delete discount
create procedure DeleteDiscount
@did char(6),
@Found int output
as
begin
delete from discount where discount_id = @did
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

--orders table
--insert order
create procedure AddOrder
@oid char(6),
@cid char(6),
@rid char(6),
@pmode varchar(15),
@ocost float,
@did char(6),
@ototal float,
@tip float
as
begin
insert into orders values (@oid,@cid,@rid,@pmode,@ocost,@did,@ototal,@tip)
end
go

--search orders
create procedure SearchOrderByCID
@cid char(6),
@Found int
as
begin
Select * from orders where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure SearchOrderByRID
@rid char(6),
@Found int
as
begin
Select * from orders where rider_id = @rid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

--delete order
create procedure DeleteOrderByID
@oid char(6),
@Found int
as
begin
delete from orders where order_id = @oid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure DeleteOrderByCID
@cid char(6),
@Found int
as
begin
delete from orders where cust_id = @cid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure DeleteOrderByRID
@rid char(6),
@Found int
as
begin
delete from orders where rider_id = @rid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go


--menu table

--insert new item
create procedure AddItemInMenu
@itemid char(6),
@itemname varchar(15),
@ctg varchar(15),
@itemcost int,
@itemdesc varchar(50)
as begin
insert into menu values (@itemid,@itemname,@ctg,@itemcost,@itemdesc)
end;
go

--search item by name
create procedure SearchItemInMenu
@itemname varchar(15),
@Found int output
as begin
select * from menu M where M.item_name=@itemname
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end;
go

--sort items by category or cost
create procedure SortItemsByCost
@order int
as
begin
if @order = 1
select * from menu order by item_cost desc
else 
select * from menu order by item_cost asc
end
go

create procedure SortItemsByCategory
@order int
as
begin
if @order = 1
select * from menu order by category desc
else 
select * from menu order by category asc
end
go

--delete item by id
create procedure DeleteItem
@itemid char(6),
@Found int output
as begin
delete from menu where item_id=@itemid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end;
go

--search item by keyword in description
create procedure SearchItemByKW
@keyword varchar(50)
as 
begin
select * from menu where item_desc like '%' + @keyword + '%'
end;
go


--items table

--insert item in table
create procedure InsertItemInItems
@orderid char(6),
@itemid char(6),
@qt int
as begin
insert into items values (@orderid,@itemid,@qt)
end;
go

create procedure InsertItemFromCart
@orderid char(6),
@iname varchar(30),
@qt int
as
begin
declare @iid char(6);
select @iid = item_id from menu where item_name = @iname
insert into items values(@orderid, @iid, @qt)
end
go

--delete item by id
create procedure deleteItemByID
@itemid char(6),
@Found int output
as begin
delete from items where item_id=@itemid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end;
go

--update item by quantity
create procedure UpdateItemsByQuantity
@itemid char(6),
@qt int,
@Found int output
as begin
update items set quantity=@qt where item_id=@itemid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end;
go

--search items by order id
create procedure SearchItemsByOrderID
@oid char(6),
@Found int output
as begin
select * from items where order_id = @oid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end;
go

--reviews table

--insert new review 
create procedure CreateNewReview
@reviewid char(6),
@custid char(6),
@rt int,
@reviewdesc varchar(50)
as 
begin
insert into reviews values (@reviewid,@custid,@rt,@reviewdesc)
end;
go

--search review
create procedure SearchReviewByID
@rid char(6),
@Found int
as
begin
select * from reviews where review_id = @rid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure SearchReviewByCID
@cid char(6),
@Found int
as
begin
select * from reviews where cust_id = @rid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

create procedure SearchReviewByRating
@rate int,
@Found int
as
begin
select * from reviews where rating = @rate
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end
go

--sort review by rating
create procedure SortReviewsByRating
@order int
as
begin
if @order = 1
select * from reviews order by rating desc
else 
select * from review order by rating asc
end
go

--delete review
create procedure 
@reviewid char(6),
@Found int output
as begin
delete from reviews where review_id=@reviewid
if @@ROWCOUNT>0 
set @Found=1
else 
set @Found=0
end;
go