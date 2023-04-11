--Q1. who is the senior most employee based on job title ?

--SELECT *
--FROM ... 
--ORDER BY levels desc limit 1

--FROM `civil-tempo-371217.music_store.employee` 

--ORDER BY levels desc limit 1

--Q2. WHich country have most invoices 

--select billing_country,count(*) as MOST_inovices

--from `music_store.invoice`
--GROUP BY billing_country
--ORDER BY MOST_inovices DESC 

--Q3. what are top 3 values of total invoice ?

--select total,invoice_id
--from `music_store.invoice`
--ORDER BY total DESC
--LIMIT 3

--Q4. which city has the best customers ? most money made by city ? retun bothe city name & sum of all invoice totals

--SELECT billing_city, round(sum(total),2) as invoice_total
--FROM `music_store.invoice`
--GROUP By billing_city
--ORDER BY invoice_total DESC

--Q5. who is best customer & spent highest money ?

--select c.customer_id,c.first_name, round(sum(i.total),2) as TOTAL
--From music_store.customer as c
--JOIN music_store.invoice as i
--ON c.customer_id = i.customer_id
--Group by c.customer_id 
--ORDER BY TOTAL  DESC
--LIMIT 1

--PART 2
--Q1
1--To get email,last_name, & genra of all rock music and sort by email start with A
--SELECT DISTINCT email,first_name, Last_name
--FROM customer
--JOIN invocie ON customer.customer_id = invoice.customer_id
--JOIN invoice_line ON inovice.invoice.invoice_id = invoice.invoice_id 
--WHERE track_id IN (
--    SELECT track_id FROM track 
--    JOIN genre ON track.genre_id = genre.genre_id
--     WHERE genre.name LIKE 'Rock'
--)
--ORDER BY email



--Q2 Artist who has most written rock music and return artist name with total track count of top 10 rock bands

--SELECT artist.artist_id,count(artist.artist.id)
--FROM music_store.track  
--JOIN music_store.album ON track.album_id = album.album_id 
--JOIN music_store.artist ON artist.artist_id = album.artist_id
--JOIN music_store.genre ON track.genre_id = genre.genre_id  Where genre.name LIKE 'Rock'

--WHERE artist_id ( SELECT artist_id from music_store.album JOIN music_store.artist ON album.artist_id = artist.artist_id )
--GROUP BY artist.artist_id
--ORDER BY count(artist.artist.id) DESC
--LIMIT 10

--Q3. Track which has longest length longerthan average song length and also return name and milliseconds for track.Sort by longest songs

--select name, milliseconds
--from music_store.track 
--WHERE milliseconds  > (
-- select round(avg(milliseconds),2) 
 --From music_store.track ) 
--ORDER BY milliseconds DESC








 
