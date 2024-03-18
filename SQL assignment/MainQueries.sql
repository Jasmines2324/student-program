SELECT * FROM myqueries.customer c where c.RoyalCustomer = 'Y' order by c.LastName

SELECT * FROM myqueries.product.name, p.category, p.Quantityinstock as 'availability' from product p

select sp.SupplierID from Product p, SupplierProduct sp where p.productID = sp.productID and p.Quantityinstock < 5

select count(*) from order o where o.orderDate like '202304%'

select p.name, p.price from product p

create view view1 as 
select o.* from order o, delivery d where o.deliveryID = d.deliveryID and d.status = 'NotPosted'

create view view2 as
select count(o.*) from customer c, order o where c.customerID = o.customerID group by o.orderDate