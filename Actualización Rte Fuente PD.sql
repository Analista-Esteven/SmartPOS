update compras set rtefuente = round((total * 0.025),0) where id_proveedor =(select id from proveedores where grancontribuyente ='1' and proveedores.id = compras.id_proveedor) and fecha >= '20230713'
update compras set total = subtotal + iva - rtefuente - rteica - descuento,saldo = subtotal + iva - rtefuente - rteica - descuento where id_proveedor =(select id from proveedores where grancontribuyente ='1' and proveedores.id = compras.id_proveedor) and fecha >= '20230713'
