
#Q1
#The Chinook database contains all invoices from the beginning of 2009 till the end of 2013. The employees at Chinook store are interested in seeing all invoices that happened in 2013 only. Using the Invoice table, write a query that returns all the info of the invoices in 2013.

select *
from invoice
where InvoiceDate between '2013-01-01' AND '2014-01-01';

#Q2
#The Chinook team decided to run a marketing campaign in Brazil, Canada, india, and Sweden. Using the customer table, write a query that returns the first name, last name, and country for all customers from the 4 countries.

SELECT firstname ,lastname,country
from Customer
where Country IN  ('Brazil','Canada','India','Sweden');

#Q3
#Using the Track and Album tables, write a query that returns all the songs that start with the letter 'A' and the composer field is not empty. Your query should return the name of the song, the name of the composer, and the title of the album.In [ ]:

select t.name ,t.composer ,a.title
from track t
join album a
on t.albumid=a.albumid
where t.name like 'A%' AND t.composer not like 'none'


#Q4
#The Chinook team would like to throw a promotional Music Festival for their top 10 cutomers who have spent the most in a single invoice. Write a query that returns the first name, last name, and invoice total for the top 10 invoices ordered by invoice total descending.

select c.firstname ,c.lastname ,i.total
from invoice i
join customer c
on i.customerid= c.customerid
order by i.total desc
limit '10'


