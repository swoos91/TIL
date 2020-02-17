##### Mon, Feb 17, 2020

###### SQL query 연습

---



```sql
5;

select count(distinct publisher) from book
where bookid in (select bookid from orders
where custid=(select custid from customer where name = '박지성'));

select count(distinct publisher) as 출판사count from customer, orders, book
where customer.custid = orders.custid and orders.bookid = book.bookid and customer.name='박지성';

6;

select bookname, price, (book.price-orders.saleprice) from book, orders 
where book.bookid = orders.bookid and orders.custid = (select custid from customer
where name='박지성');

select t3.bookname as 이름, t3.price as 가격, t3.price - t2.saleprice as 차액 
from customer t1, orders t2, book t3 
where t1.custid = t2.custid and t2.bookid = t3.bookid and t1.name = '박지성';

7;

select bookname from book
where bookid not in (select bookid from orders, customer
where orders.custid = customer.custid and customer.name = '박지성');

select bookname from book t1
where not exists (select bookname from customer t1, orders t2
where t1.custid = t2.custid
and t2.bookid = t1.bookid
and t1.name = '박지성');

8;

select name from customer
where custid not in (select custid from orders);

select name from customer
where name not in (select name from orders t1, customer t2
where t1.custid = t2.custid);


9;

select sum(saleprice), avg(saleprice) from orders;


10;

select name, sum(saleprice) from customer, orders 
where customer.custid = orders.custid
group by name;

select t2.name as 이름, sum(saleprice) as 구매액
from orders t1, customer t2
where t1.custid = t2.custid
group by t2.name
order by sum(saleprice) desc;


11;

select name, bookname from customer, orders, book 
where orders.bookid = book.bookid 
and orders.custid = customer.custid;

select t1.name as 이름, t3.bookname as 도서
from customer t1, orders t2, book t3
where t1.custid = t2.custid
and t2.bookid = t3.bookid;


12;

select max(book.price - orders.saleprice) from book, orders
where book.bookid = orders.bookid;


select t1.price, t2.saleprice, t1.price-t2.saleprice
from book t1, orders t2
where t1.bookid = t2.bookid
and t1.price -t2.saleprice = (select max(t3.price - t4.saleprice)
from book t3, orders t4
where t3.bookid = t4.bookid);


13;

select name from customer where custid in (select custid from orders, book
where orders.bookid=book.bookid group by custid having avg(saleprice) > (select avg(saleprice) from orders));


select name, avg(saleprice)
from customer t1, orders t2
where t1.custid = t2.custid
group by name
having avg(saleprice) > (select avg(t3.saleprice) from orders t3);


```

