select 
customer.customer_id
,dt.[address] as Direccion1Tienda
,dt.address2 as Direccion2Tienda
,dt.district as DistritoTienda
,ct.city as CiudadTienda
,pt.country as PaisTienda
,dt.postal_code as CodigoPostalTienda
,dt.phone as TelefonoTienda
,customer.first_name as PrimerNombre
,customer.last_name as Apellidos
,dc.[address] as Direcccion1Cliente
,dc.address2 as Direccion2Cliente
,dc.district as DistritoCliente
,city.city as CiudadCliente
,country.country as PaisCliente
,dc.postal_code as CodigoPostalCliente
,dc.phone as TelefonoCliente
from customer inner join 
[address] dc on
customer.address_id = dc.address_id
inner join city on
dc.city_id =  city.city_id
inner join 
country on city.country_id = country.country_id

inner join store
on store.store_id = customer.store_id
inner join 
[address] dt on
store.address_id = dt.address_id
inner join city ct on
dt.city_id =  ct.city_id
inner join 
country pt on ct.country_id = pt.country_id
;