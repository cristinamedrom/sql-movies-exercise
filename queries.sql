/*1. Obtener la cantidad de películas por género*/

select genres, COUNT(*) as movie_count from movies group by genres;

/*2.Encontrar la película con mayor recaudación*/

select * from movies order by revenue desc;

/*3. Crear una consulta SQL que cuente el número de películas para adultos*/

select * from movies where adult = 'True';

/*4. Calcular la duración promedio de las películas*/

select AVG(runtime) from movies;

/*5. Listar películas con una puntuación de audiencia específica o superior*/

select * from movies where vote_average > 7;

/*6. Contar la cantidad de películas por idioma original*/

select original_language, count(*) as movie_count from movies group by original_language;

/*7. Encontrar todas las películas lanzadas en un año específico*/

select * from movies where extract(year from to_date(release_date, 'YYYY-MM-DD')) = 1990

/*8. Seleccionar películas que aún no han sido lanzadas (según la columna 'status')*/

select * from movies where status != 'Released';

/*9. Listar las películas que pertenecen a una colección */

select * from movies where belongs_to_collection is not null;

/*10. Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y 'revenue' están completos y son correctos)*/

select  title, budget, revenue, (revenue - budget) as profitability from movies where budget is not null and revenue is not null;