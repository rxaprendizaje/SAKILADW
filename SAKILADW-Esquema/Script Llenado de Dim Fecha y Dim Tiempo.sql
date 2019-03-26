--LLENADO DIMENSION FECHA
DECLARE @MinRenta DATETIME, @NinRetorno DATETIME, @MaxRenta DATETIME, @MaxRetorno DATETIME;
SELECT @MinRenta = MIN(rental_date), @NinRetorno = MIN(return_date), @MaxRenta = MAX(rental_date), @MaxRetorno = MAX(return_date) FROM sakila.dbo.rental;

DECLARE @start DATETIME, @Finish DATETIME;

SELECT 
   @start = (SELECT Min(v)  
   FROM (VALUES (@MinRenta), (@NinRetorno), (@MaxRenta), (@MaxRetorno)) AS value(v)),
   @Finish = (SELECT Max(v)
   FROM (VALUES (@MinRenta), (@NinRetorno), (@MaxRenta), (@MaxRetorno)) AS value(v));


 WHILE @start < @Finish-- @Finish --o GETDATE()
 BEGIN


 INSERT INTO DimFecha([Date]
      ,[month_abbrev]
      ,[year4]
      ,[day_of_month]
      ,[day_of_year]
      ,[day_of_week]
      ,[week_in_month]
      ,[week_in_year]
      ,[month_number]
      ,[year_month]
      ,[qtr_name]
      ,[qtr_number]
      ,[year_qrt] )
	  VALUES (@start,
		FORMAT(@START, 'MMM') --ABREVIACION MES
		,DATEPART(YY,@start) --AÑO
		,DATEPART(dd,@start) --DIA DEL MES
		,DATEPART(DY,@start) --DIA DEL AÑO
		,FORMAT(@START, 'ddd')--DIA SEMANA CORTO
		,datepart(day, datediff(day, 0, @START)/7 * 7)/7 + 1--SEMANA DEL MES
		,DATEPART(WW,@start) --SEMANA DEL AÑO
		,DATEPART(mm,@start) --MES
		,convert(varchar,DATEPART(YY,@start)) +convert(varchar,DATENAME(mm,@start)) -- AÑO + NOMBRE DEL MES
		,'q'+ convert(varchar, DATENAME(qq,@start)) --NOMBRE DE TRIMESTRE
		,DATENAME(qq,@start) -- TRIMESTRE
		,convert(varchar, DATEPART(YY,@start))+'q'+convert(varchar, DATENAME(qq,@start)) --TRIMESTRE AÑO
	);
	SET @start = DATEADD(dd,1,@start)
END

--LLENADO DIMENSION HORA
DECLARE @MinRenta DATETIME, @NinRetorno DATETIME, @MaxRenta DATETIME, @MaxRetorno DATETIME;
SELECT @MinRenta = MIN(rental_date), @NinRetorno = MIN(return_date), @MaxRenta = MAX(rental_date), @MaxRetorno = MAX(return_date) FROM sakila.dbo.rental;

DECLARE @start DATETIME, @Finish DATETIME;

SELECT 
   @start = (SELECT Min(v)  
   FROM (VALUES (@MinRenta), (@NinRetorno), (@MaxRenta), (@MaxRetorno)) AS value(v)),
   @Finish = (SELECT Max(v)
   FROM (VALUES (@MinRenta), (@NinRetorno), (@MaxRenta), (@MaxRetorno)) AS value(v));


 WHILE @start < @Finish-- @Finish --o GETDATE()
 BEGIN
  INSERT INTO [DimHora] (
      [Tiempo]
      ,[hrs24]
      ,[hrs12]
      ,[minutos]
      ,[segundos]
      ,[AMPM])
	  VALUES (
		CONVERT(TIME, @start),
		  FORMAT(@start, 'HH'),
		  FORMAT(@start, 'hh'),
		  FORMAT(@start, 'mm'),
		  FORMAT(@start, 'ss'),
		  RIGHT(CONVERT(varchar(15),CAST(@start AS TIME),100), 2)
			);
	SET @start = DATEADD(DD,1,@start) --DEBEN REEMPLAZAR EL DE HH POR EL VALOR QUE CONSIDEREN (DD PARA DÍAS Y MINUTE PARA MINUTOS).
END
