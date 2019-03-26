select 
store.store_id
,[address].[address] as Direccion1
,[address].address2 as Direccion2
,[address].district as Distrito
,[address].postal_code as CodigoPostal
,[address].phone as Telefono
,city.city as Ciudad
,country.country as Pais
from store
inner join [address]  
on store.address_id = [address].address_id
inner join 
city  on
city.city_id =  [address].city_id
inner join 
country on country.country_id = city.country_id
;