/*Se envia al cliente resultado solo de las dos primeras consultas*/
select Referencia,descripcion1 as 'Descripcion',(select nombre from usuarios where usuarios.login = referencias.modificada) as 'Usuario' from referencias where isnumeric (referencia) = 0 and id_empaquetamiento <> '20' and enabled ='1'

--update referencias set id_empaquetamiento ='20' where isnumeric (referencia) = 0 and id_empaquetamiento <> '20' and enabled ='1'

select Referencia,descripcion1 as 'Descripcion',(select nombre from usuarios where usuarios.login = referencias.modificada) as 'Usuario' from referencias where descripcion1 like '%,%' and id_empaquetamiento <> '20'

--update referencias set descripcion1 = replace(descripcion1,',','.') where descripcion1 like '%,%' and id_empaquetamiento <> '20'

select Referencia,descripcion1 as 'Descripcion',(select nombre from usuarios where usuarios.login = referencias.modificada) as 'Usuario' from referencias where cantidadcaja = '0' and id_empaquetamiento <> '20'

--update referencias set cantidadcaja ='1' where cantidadcaja = '0' and id_empaquetamiento <> '20'
