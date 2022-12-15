CREATE TABLE Sucursal
(
     idSucursal serial,
	telefono int not null,
	numeroexterior  VARCHAR (50) NOT NULL,
	direccion VARCHAR (50) NOT NULL,
	cp VARCHAR (50) NOT NULL,
	estatus boolean not null default true
); 

CREATE TABLE Mantenimiento
(
	idMantenimiento serial,
	tipomantenimiento VARCHAR(50) NOT NULL, 
	personaldemantenimiento VARCHAR(50) NOT NULL,
	idSucursal int not null,
	estatus boolean not null default true 

);
 
CREATE TABLE Representante
(
	idRepresentante  serial,
	nombre VARCHAR(50) not null,
	direccion VARCHAR(50) not null,
	telefono INT NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Proveedor
(
	idProveedor  serial,
	nombre VARCHAR(50) not null,
	direccion VARCHAR(50) not null,
	telefono INT NOT NULL,
	idSucursal INT NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE PagoServicio
(
	idPagoServicio serial,
	tipodepagoservicio VARCHAR (50) NOT NULL,
	cantidad INT NOT NULL,
	servicio VARCHAR (50) NOT NULL,
	fecha  timestamp  NOT NULL,
	idSucursal INT NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE Mobiliario
(
	idMobiliario serial,
	areapertenece VARCHAR (50) NOT NULL,
	cantida INT NOT NULL,
	idSucursal INT NOT NULL, 
	estatus boolean not null default true 
);


CREATE TABLE Departamento
(
	idDepartamento serial,
	tipodepartamento VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Contrato
(
	idContrato serial,
	tipocontrato VARCHAR (50) NOT NULL, 
	fecha timestamp NOT NULL,
	idSucursal INT NOT NULL, 
	estatus boolean not null default true 

);


CREATE TABLE Inventario
(
	idInventario serial,
	personalencargado VARCHAR (50) NOT NULL,
	tipoinventario VARCHAR (50) NOT NULL,
	fecha timestamp NOT NULL,
	idBodega INT NOT  NULL, 
	estatus boolean not null default true 
);

CREATE TABLE ZonaDescarga
(
	idZonaDescarga serial,
	horariodisponible TIMESTAMP NOT NULL,
	idBodega INT NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Bodega
(
	idBodega serial,
	capacidad  VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE MercanciaExtra
(
	idMercanciaExtra serial,
	tipomercancia INT NOT NULL,
	fecha  timestamp NOT NULL,
	idBodega INT NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Horario
(
	idHorario serial,
	horasalida timestamp NOT NULL,
	horaentrada timestamp NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE Sindicato
(
	idSindicato serial,
	nombresindicato VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);



CREATE TABLE TipoTransporte
(
	idTipoTransporte serial,
	chofer VARCHAR (50) NOT NULL,
	numero int not null,
	fechasalida timestamp NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Envio
(
	idEnvio  serial,
	direccion VARCHAR (50) NOT NULL,
	numero VARCHAR (50) not null,
	estatus boolean not null default true 
);



CREATE TABLE Entrega
(
	idEntrega serial,
	direccion VARCHAR (50) NOT NULL,
	nombre VARCHAR (50) NOT NULL,
	fecha timestamp NOT NULL,
	idTipoTransporte INT NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE Vigilancia
(
	idVigilancia  serial,
	numeroguardia INT NOT NULL,
	idSucursal INT NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Zapato
(
	idZapato  serial,
	tipozapato VARCHAR (50) NOT NULL,
	precio int not null,
	estatus boolean not null default true 
);



CREATE TABLE Talla
(
	idTalla  serial,
	idZapato INT NOT NULL,
	estatus boolean not null default true 
);



CREATE TABLE Marca
(
	idMarca  serial,
	nombremarca VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);



CREATE TABLE Coleccion
(
	idColeccion  serial,
	nombrecoleccion VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);



CREATE TABLE Publicidad
(
	idPublicidad  serial,
	tipopublicidad VARCHAR (50) NOT NULL,
	fechapublicidad timestamp NOT NULL,
	idZapato int not null,
	estatus boolean not null default true 
);


CREATE TABLE MateriaPrima
(
	idMateriaPrima  serial,
	ubicacion VARCHAR (50) NOT NULL,
	calidad VARCHAR (50) not null,
	estatus boolean not null default true 
);

CREATE TABLE Seccion
(
	idSeccion serial,
	nombreseccion VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Modelo
(
	idModelo  serial,
	preciomodelo INT NOT NULL,
	numeromodelo VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE Venta
(
	idVenta serial,
	nombreempleado VARCHAR (50) NOT NULL,
	folioventa INT NOT NULL,
	idZapato int not null,
	estatus boolean not null default true 
);

CREATE TABLE PedidoLinea
(
	idPedidoLinea serial,
	fechapedido timestamp not null,
	estatus boolean not null default true 
);


CREATE TABLE Reembolso
(
	idReembolso serial,
	cantidadreembolso INT NOT NULL,
	estatus boolean not null default true  
);

CREATE TABLE Factura
(
	idFactura serial,
	foliofactura VARCHAR (50) NOT NULL,
	fechafactura timestamp NOT NULL,
	nombrefactura VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE TipoFacturacion
(
	idTipoFacturacion serial,
	montofacturar INT NOT NULL,
	fechafacturacion timestamp not null, 
	idFactura int not null,
	estatus boolean not null default true 
);

CREATE TABLE Compra
(
	idCompra serial,
	cantidadcompra INT NOT NULL,
	fechacompra timestamp NOT NULL,
	foliocompra VARCHAR (50) NOT NULL,
	idCliente int not null,
	estatus boolean not null default true 
);

CREATE TABLE Devolucion
(
	idDevolucion serial,
	producto VARCHAR (50) NOT NULL,
	fechadevolucion timestamp NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Apartado
(
	idApartado serial,
	cantidad INT NOT NULL,
	producto VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE Oferta
(
	idOferta  serial,
	productoferta VARCHAR (50) NOT NULL,
	fechaoferta timestamp NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE MetodoPago
(
	idMetodoPago  serial,
	pagotarjeta int  NOT NULL,
	pagoefectivo int NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Caja
(
	idCaja serial,
	detallecaja VARCHAR (50) NOT NULL,
	numerocaja VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE Cliente
(
	idCliente serial,
	clientegeneral VARCHAR (50) NOT NULL,
	clienterevendedor VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE Credito
(
	idCredito serial,
	montocredito INT NOT NULL,
	idCliente INT NOT NULL, 
	estatus boolean not null default true 
);


CREATE TABLE Estacionamiento
(
	idEstacionamiento serial,
	estacionamientocliente VARCHAR (50) NOT NULL,
	estacionamientoempleado VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE Empleado
(
	idEmpleado serial,
	nombre VARCHAR (50) NOT NULL,
	telefono INT NOT NULL,
	areaempleado VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Capacitacion
(
	idCapacitacion serial,
	fechacapacitacion timestamp NOT NULL,
	tipocapacitacion VARCHAR (50) NOT NULL,
	idEmpleado int not null,
	estatus boolean not null default true 
);


CREATE TABLE Puesto
(
	idPuesto serial,
	nombrepuesto VARCHAR (50) NOT NULL,
	areapuesto VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Prestacion
(
	idPrestacion  serial,
	tipoprestacion VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE Nomina 
(
	idNomina serial,
	fechanomina timestamp  NOT NULL,
	numeronomina VARCHAR (50) NOT NULL,
	folionomina VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);



CREATE TABLE Cotizacion
(
	idCotizacion  serial,
	productocotizacion VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);



CREATE TABLE CorteCaja
(
	idCorteCaja serial,
	empleadocorte VARCHAR (50) NOT NULL,
	fechacorte timestamp NOT NULL,
	estatus boolean not null default true 
);

CREATE TABLE Ticket
(
	idTicket  serial,
	fecha timestamp NOT NULL,
	idDevolucion int not null, 
	estatus boolean not null default true 
);




CREATE TABLE Vale
(
	idVale serial,
	cantidadvale INT NOT NULL,
	idCliente int not null,
	estatus boolean not null default true 
);



CREATE TABLE TipoCalzado
(
	idTipoCalzado serial,
	calzadohombre VARCHAR (50) NOT NULL,
	calzadomujer VARCHAR (50) NOT NULL,
	estatus boolean not null default true 
);


CREATE TABLE EmpleadoPrestacion
(
	idEmpleadoPrestacion serial,
	idEmpleado int not null,
	idPrestacion int not null,
	estatus boolean not null default true 
);


CREATE TABLE EmpleadoHorario
(
	idEmpleadoHorario serial,
	idEmpleado int not null,
	idHorario int not null,
	estatus boolean not null default true 
);


CREATE TABLE SucursalDepartamento
(
	idSucursalDepartamento serial,
	idSucursal int not null,
	idDepartamento int not null,
	estatus boolean not null default true 
);


CREATE TABLE ClienteCotizacion
(
	idClienteCotizacion serial,
	idCliente int not null,
	idCotizacion int not null,
	estatus boolean not null default true 
);


CREATE TABLE ClienteApartado
(
	idClienteApartado serial,
	idCliente int not null,
	idApartado int not null,
	fechaapartado timestamp  not null,
	estatus boolean not null default true 
);



CREATE TABLE CompraOferta
(
	idCompraOferta serial,
	idCompra int not null,
	idOferta int not null,
	estatus boolean not null default true 
);


 CREATE TABLE PedidoLineaEnvio
(
	idPedidoLineaEnvio serial,
	idPedidoLinea int not null,
	idEnvio int not null,
	fechaenvio timestamp not null,
	estatus boolean not null default true 
);


CREATE TABLE EnvioTipoTransporte
(
	idEnvioTipoTransporte serial,
	idEnvio int not null,
	idTipoTransporte int not null,
	fechaenvio timestamp not null,
	estatus boolean not null default true 
);


CREATE TABLE ZapatoMateriaPrima
(
	idZapatoMateriaPrima serial,
	idZapato int not null,
	idMateriaPrima int not null,
	estatus boolean not null default true 
);


CREATE TABLE ZapatoTipoCalzado
(
	idZapatoTipoCalzado serial,
	idZapato int not null,
	idTipoCalzado int not null,
	estatus boolean not null default true 
);


CREATE TABLE CotizacionCliente
(
	idCotizacionCliente serial,
	idCotizacion varchar (50) not null,
	idCliente varchar (50) not null,
	productocotizacion varchar (50) not null,
	estatus boolean not null default true 
);


CREATE TABLE CompraMetodoPago
(
	idCompraMetodoPago  serial,
	idCompra int not null,
	idMetodoPago  int not null,
	fechacompra timestamp not null,
	estatus boolean not null default true 
);

CREATE TABLE SucursalProveedor
(
	idSucursalProveedor serial,
	idSucursal int not null,
	idProveedor int not null,
	estatus boolean not null default true 
);

ALTER TABLE Sucursal ADD PRIMARY KEY (idSucursal);
ALTER TABLE Mantenimiento ADD PRIMARY KEY (idMantenimiento);
ALTER TABLE Representante ADD PRIMARY KEY (idRepresentante);
ALTER TABLE Proveedor ADD PRIMARY KEY (idProveedor);
ALTER TABLE PagoServicio ADD PRIMARY KEY (idPagoServicio);
ALTER TABLE Mobiliario ADD PRIMARY KEY (idMobiliario);
ALTER TABLE Departamento ADD PRIMARY KEY (idDepartamento);
ALTER TABLE Contrato ADD PRIMARY KEY (idContrato);
ALTER TABLE Inventario ADD PRIMARY KEY (idInventario);
ALTER TABLE Bodega ADD PRIMARY KEY (idBodega);
ALTER TABLE TipoTransporte ADD PRIMARY KEY (idTipoTransporte);
ALTER TABLE Envio ADD PRIMARY KEY (idEnvio);
ALTER TABLE Entrega ADD PRIMARY KEY (idEntrega);
ALTER TABLE Vigilancia ADD PRIMARY KEY (idVigilancia);
ALTER TABLE Zapato ADD PRIMARY KEY (idZapato);
ALTER TABLE Talla ADD PRIMARY KEY (idTalla);
ALTER TABLE Marca ADD PRIMARY KEY (idMarca);
ALTER TABLE Coleccion ADD PRIMARY KEY (idColeccion);
ALTER TABLE Publicidad ADD PRIMARY KEY (idPublicidad);
ALTER TABLE MateriaPrima ADD PRIMARY KEY (idMateriaPrima);
ALTER TABLE Seccion ADD PRIMARY KEY (idSeccion);
ALTER TABLE Modelo ADD PRIMARY KEY (idModelo);
ALTER TABLE Venta ADD PRIMARY KEY (idVenta);
ALTER TABLE PedidoLinea ADD PRIMARY KEY (idPedidoLinea);
ALTER TABLE Reembolso ADD PRIMARY KEY (idReembolso);
ALTER TABLE Factura ADD PRIMARY KEY (idFactura);
ALTER TABLE TipoFacturacion ADD PRIMARY KEY (idTipoFacturacion);
ALTER TABLE Compra ADD PRIMARY KEY (idCompra);
ALTER TABLE Devolucion ADD PRIMARY KEY (idDevolucion);
ALTER TABLE Apartado ADD PRIMARY KEY (idApartado);
ALTER TABLE Oferta ADD PRIMARY KEY (idOferta);
ALTER TABLE MetodoPago ADD PRIMARY KEY (idMetodoPago);
ALTER TABLE Caja ADD PRIMARY KEY (idCaja);
ALTER TABLE Cliente ADD PRIMARY KEY (idCliente);
ALTER TABLE Credito ADD PRIMARY KEY (idCredito);
ALTER TABLE Estacionamiento ADD PRIMARY KEY (idEstacionamiento);
ALTER TABLE Empleado ADD PRIMARY KEY (idEmpleado);
ALTER TABLE Capacitacion ADD PRIMARY KEY (idCapacitacion);
ALTER TABLE Puesto ADD PRIMARY KEY (idPuesto);
ALTER TABLE Prestacion ADD PRIMARY KEY (idPrestacion);
ALTER TABLE Nomina ADD PRIMARY KEY (idNomina);
ALTER TABLE Cotizacion ADD PRIMARY KEY (idCotizacion);
ALTER TABLE ZonaDescarga ADD PRIMARY KEY (idZonaDescarga);
ALTER TABLE CorteCaja ADD PRIMARY KEY (idCorteCaja);
ALTER TABLE Ticket ADD PRIMARY KEY (idTicket);
ALTER TABLE Horario ADD PRIMARY KEY (idHorario);
ALTER TABLE Vale ADD PRIMARY KEY (idVale);
ALTER TABLE MercanciaExtra ADD PRIMARY KEY (idMercanciaExtra);
ALTER TABLE Sindicato ADD PRIMARY KEY (idSindicato);
ALTER TABLE TipoCalzado ADD PRIMARY KEY (idTipoCalzado);
ALTER TABLE SucursalDepartamento ADD PRIMARY KEY (idSucursalDepartamento);
ALTER TABLE EmpleadoPrestacion  ADD PRIMARY KEY (idEmpleadoPrestacion);
ALTER TABLE EmpleadoHorario ADD PRIMARY KEY (idEmpleadoHorario);
ALTER TABLE ClienteCotizacion  ADD  PRIMARY KEY (idClienteCotizacion);
ALTER TABLE ClienteApartado ADD  PRIMARY KEY (idClienteApartado);
ALTER TABLE CompraMetodoPago   ADD PRIMARY  KEY (idCompraMetodoPago );
ALTER TABLE CompraOferta ADD PRIMARY KEY (idCompraOferta);
ALTER TABLE PedidoLineaEnvio ADD PRIMARY KEY (idPedidoLineaEnvio);
ALTER TABLE EnvioTipoTransporte ADD PRIMARY KEY (idEnvioTipoTransporte);
ALTER TABLE ZapatoMateriaPrima  ADD PRIMARY KEY (idZapatoMateriaPrima);
ALTER TABLE ZapatoTipoCalzado ADD PRIMARY KEY (idZapatoTipoCalzado);
ALTER TABLE SucursalProveedor ADD PRIMARY KEY (idSucursalProveedor);



ALTER TABLE Capacitacion ADD CONSTRAINT FK_CapacitacionEmpleado FOREIGN KEY (idEmpleado) REFERENCES
Empleado(idEmpleado);

ALTER TABLE Contrato ADD CONSTRAINT FK_ContratoSucursal FOREIGN KEY (idSucursal) REFERENCES
Sucursal(idSucursal);

ALTER TABLE Compra ADD CONSTRAINT FK_CompraCliente FOREIGN KEY (idCliente) REFERENCES
Cliente(idCliente);

ALTER TABLE Credito ADD CONSTRAINT FK_CreditoCliente FOREIGN KEY (idCliente) REFERENCES
Cliente(idCliente);

ALTER TABLE Entrega ADD CONSTRAINT FK_EntregaTipoTransporte FOREIGN KEY (idTipoTransporte) REFERENCES
TipoTransporte(idTipoTransporte);

ALTER TABLE TipoFacturacion ADD CONSTRAINT FK_TipoFacturacionFactura FOREIGN KEY (idFactura) REFERENCES
Factura(idFactura);

ALTER TABLE Inventario ADD CONSTRAINT FK_InventarioBodega FOREIGN KEY (idBodega) REFERENCES
Bodega(idBodega);

ALTER TABLE  Talla ADD CONSTRAINT FK_TallaZapato FOREIGN KEY (idZapato) REFERENCES
Zapato(idZapato);

ALTER TABLE  Ticket ADD CONSTRAINT FK_TicketDevolucion FOREIGN KEY (idDevolucion) REFERENCES
Devolucion(idDevolucion);

ALTER TABLE Mobiliario ADD CONSTRAINT FK_MobiliarioSucursal FOREIGN KEY (idSucursal) REFERENCES
Sucursal (idSucursal);

ALTER TABLE Publicidad ADD CONSTRAINT FK_PublicidadZapato FOREIGN KEY (idZapato) REFERENCES
Zapato (idZapato);

ALTER TABLE MercanciaExtra ADD CONSTRAINT FK_MercanciaExtraBodega FOREIGN KEY (idBodega) REFERENCES
Bodega (idBodega);

ALTER TABLE Mantenimiento ADD CONSTRAINT FK_MantenimientoSucursal FOREIGN KEY (idSucursal) REFERENCES
Sucursal (idSucursal);

ALTER TABLE PagoServicio ADD CONSTRAINT FK_PagoServicioSucursal FOREIGN KEY (idSucursal) REFERENCES
Sucursal(idSucursal);

ALTER TABLE Proveedor ADD CONSTRAINT FK_ProveedorSucursal FOREIGN KEY (idSucursal) REFERENCES
Sucursal(idSucursal);

ALTER TABLE Vale ADD CONSTRAINT FK_ValeCliente FOREIGN KEY (idCliente) REFERENCES
Cliente(idCliente);

ALTER TABLE Venta ADD CONSTRAINT FK_VentaZapato FOREIGN KEY (idZapato) REFERENCES
Zapato(idZapato);

ALTER TABLE Vigilancia ADD CONSTRAINT FK_VigilanciaSucursal FOREIGN KEY (idSucursal) REFERENCES
Sucursal(idSucursal);

ALTER TABLE ZonaDescarga ADD CONSTRAINT FK_ZonaDescargaBodega FOREIGN KEY (idBodega) REFERENCES
Bodega(idBodega);

ALTER TABLE SucursalDepartamento ADD CONSTRAINT FK_SucursalDepartamentoDepartamento FOREIGN KEY (idDepartamento) REFERENCES
Departamento (idDepartamento);

ALTER TABLE SucursalProveedor ADD CONSTRAINT FK_SucursalProveedorProveedor FOREIGN KEY (idProveedor) REFERENCES
Proveedor (idProveedor);

ALTER TABLE EmpleadoPrestacion ADD CONSTRAINT FK_EmpleadoPrestacionPrestacion FOREIGN KEY (idPrestacion) REFERENCES
Prestacion (idPrestacion);

ALTER TABLE EmpleadoPrestacion ADD CONSTRAINT FK_EmpleadoPrestacionEmpleado FOREIGN KEY (idEmpleado) REFERENCES
Empleado (idEmpleado);

ALTER TABLE EmpleadoHorario ADD CONSTRAINT FK_EmpleadoHorarioHorario FOREIGN KEY (idHorario) REFERENCES
Horario(idHorario);

ALTER TABLE EmpleadoHorario ADD CONSTRAINT FK_EmpleadoHorarioEmpleado FOREIGN KEY (idEmpleado) REFERENCES
Empleado(idEmpleado);

ALTER TABLE ClienteCotizacion ADD CONSTRAINT FK_ClienteCotizacionCotizacion FOREIGN KEY (idCotizacion) REFERENCES
Cotizacion(idCotizacion);

ALTER TABLE ClienteCotizacion ADD CONSTRAINT FK_ClienteCotizacionCliente FOREIGN KEY (idCliente) REFERENCES
Cliente(idCliente);

ALTER TABLE ClienteApartado ADD CONSTRAINT FK_ClienteApartadoApartado FOREIGN KEY (idApartado) REFERENCES
Apartado(idApartado);

ALTER TABLE ClienteApartado ADD CONSTRAINT FK_ClienteApartadoCliente FOREIGN KEY (idCliente) REFERENCES
Cliente(idCliente);

ALTER TABLE CompraMetodoPago  ADD CONSTRAINT FK_CompraMetodoPagoMetodoPago  FOREIGN KEY (idMetodoPago ) REFERENCES
MetodoPago (idMetodoPago );

ALTER TABLE CompraMetodoPago  ADD CONSTRAINT FK_CompraMetodoPagoCompra FOREIGN KEY (idCompra) REFERENCES
Compra (idCompra);

ALTER TABLE CompraOferta ADD CONSTRAINT FK_CompraOfertaOferta FOREIGN KEY (idOferta) REFERENCES
Oferta(idOferta);

ALTER TABLE CompraOferta ADD CONSTRAINT FK_CompraOfertaCompra FOREIGN KEY (idCompra) REFERENCES
Compra(idCompra);

ALTER TABLE PedidoLineaEnvio ADD CONSTRAINT FK_PedidoLineaEnvioEnvio FOREIGN KEY (idEnvio) REFERENCES
Envio(idEnvio);

ALTER TABLE PedidoLineaEnvio ADD CONSTRAINT FK_PedidoLineaEnvioPedidoLinea FOREIGN KEY (idPedidoLinea) REFERENCES
PedidoLinea(idPedidoLinea);

ALTER TABLE EnvioTipoTransporte ADD CONSTRAINT FK_EnvioTipoTransporteTipoTransporte FOREIGN KEY (idTipoTransporte) REFERENCES
TipoTransporte(idTipoTransporte);

ALTER TABLE EnvioTipoTransporte ADD CONSTRAINT FK_EnvioTipoTransporteEnvio FOREIGN KEY (idEnvio) REFERENCES
Envio (idEnvio);

ALTER TABLE ZapatoMateriaPrima ADD CONSTRAINT FK_ZapatoMateriaPrimaMateriaPrima FOREIGN KEY (idMateriaPrima) REFERENCES
MateriaPrima(idMateriaPrima);

ALTER TABLE ZapatoMateriaPrima ADD CONSTRAINT FK_ZapatoMateriaPrimaZapato FOREIGN KEY (idZapato) REFERENCES
Zapato(idZapato);

ALTER TABLE ZapatoTipoCalzado ADD CONSTRAINT FK_ZapatoTipoCalzadoTipoCalzado FOREIGN KEY (idTipoCalzado) REFERENCES
TipoCalzado(idTipoCalzado);

ALTER TABLE ZapatoTipoCalzado ADD CONSTRAINT FK_ZapatoTipoCalzadoZapato FOREIGN KEY (idZapato) REFERENCES
Zapato(idZapato);



CREATE INDEX IX_Apartado ON Apartado(idApartado);
CREATE INDEX IX_Bodega ON Bodega(idBodega);
CREATE INDEX IX_Caja ON Caja(idCaja);
CREATE INDEX IX_Capacitacion ON Capacitacion(idCapacitacion);
CREATE INDEX IX_Cliente ON Cliente(idCliente);
CREATE INDEX IX_Colección ON Coleccion(idColeccion);
CREATE INDEX IX_Compra ON Compra(idCompra);
CREATE INDEX IX_Contrato ON Contrato(idContrato);
CREATE INDEX IX_CorteCaja ON CorteCaja(idCorteCaja);
CREATE INDEX IX_Cotizacion ON Cotizacion(idCotizacion);
CREATE INDEX IX_Credito ON Credito(idCredito);
CREATE INDEX IX_Departamento ON Departamento(idDepartamento);
CREATE INDEX IX_Devolucion ON Devolucion(idDevolucion);
CREATE INDEX IX_Empleado ON Empleado(idEmpleado);
CREATE INDEX IX_Entrega ON Entrega(idEntrega);
CREATE INDEX IX_Envio ON Envio(idEnvio);
CREATE INDEX IX_Estacionamiento ON Estacionamiento(idEstacionamiento);
CREATE INDEX IX_Factura ON Factura(idFactura);
CREATE INDEX IX_Horario ON Horario(idHorario);
CREATE INDEX IX_Inventario ON Inventario(idInventario);
CREATE INDEX IX_Mantenimiento ON Mantenimiento(idMantenimiento);
CREATE INDEX IX_Marca ON Marca(idMarca);
CREATE INDEX IX_MateriaPrima ON MateriaPrima(idMateriaPrima);
CREATE INDEX IX_MetodoPago ON MetodoPago (idMetodoPago);
CREATE INDEX IX_Mobiliario ON Mobiliario(idMobiliario);
CREATE INDEX IX_Modelo ON Modelo(idModelo);
CREATE INDEX IX_Nomina ON Nomina(idNomina);
CREATE INDEX IX_Oferta ON Oferta(idOferta);
CREATE INDEX IX_PagoServicio ON PagoServicio(idPagoServicio);
CREATE INDEX IX_PedidoLinea ON PedidoLinea(idPedidoLinea);
CREATE INDEX IX_Prestacion ON Prestacion(idPrestacion);
CREATE INDEX IX_Proveedor ON Proveedor(idProveedor);
CREATE INDEX IX_Publicidad ON Publicidad(idPublicidad);
CREATE INDEX IX_Puesto ON Puesto(idPuesto);
CREATE INDEX IX_Representante ON Representante(idRepresentante);
CREATE INDEX IX_Seccion ON Seccion(idSeccion);
CREATE INDEX IX_Sindicato ON Sindicato(idSindicato);
CREATE INDEX IX_Sucursal ON Sucursal(idSucursal);
CREATE INDEX IX_Talla ON Talla(idTalla);
CREATE INDEX IX_Ticket ON Ticket(idTicket);
CREATE INDEX IX_TipoCalzado ON TipoCalzado(idTipoCalzado);
CREATE INDEX IX_TipoFacturacion ON TipoFacturacion(idTipoFacturacion);
CREATE INDEX IX_TipoTransporte ON TipoTransporte(idTipoTransporte);
CREATE INDEX IX_Vale ON Vale(idVale);
CREATE INDEX IX_Venta ON Venta(idVenta);
CREATE INDEX IX_Vigilancia ON Vigilancia(idVigilancia);
CREATE INDEX IX_Zapato ON Zapato(idZapato);
CREATE INDEX IX_ZonaDescarga ON ZonaDescarga(idZonaDescarga);
CREATE INDEX IX_SucursalDepartamento ON SucursalDepartamento(idSucursalDepartamento);
CREATE INDEX IX_EmpleadoPrestacion ON EmpleadoPrestacion(idEmpleadoPrestacion);
CREATE INDEX IX_EmpleadoHorario ON EmpleadoHorario(idEmpleadoHorario);
CREATE INDEX IX_ClienteCotizacion ON ClienteCotizacion(idClienteCotizacion);
CREATE INDEX IX_CompraMetodoPago ON CompraMetodoPago (idCompraMetodoPago);
CREATE INDEX IX_CompraOferta ON CompraOferta(idCompraOferta);
CREATE INDEX IX_ClienteApartado ON ClienteApartado(idClienteApartado);
CREATE INDEX IX_PedidoLineaEnvio ON PedidoLineaEnvio(idPedidoLineaEnvio);
CREATE INDEX IX_EnvioTipoTransporte ON EnvioTipoTransporte(idEnvioTipoTransporte);
CREATE INDEX IX_ZapatoMateriaPrima ON ZapatoMateriaPrima(idZapatoMateriaPrima);
CREATE INDEX IX_ZapatoTipoCalzado ON ZapatoTipoCalzado(idZapatoTipoCalzado);
CREATE INDEX IX_SucursalProveedor ON SucursalProveedor(idSucursalProveedor);



INSERT INTO Apartado (cantidad, producto) values(1, 'producto1');

INSERT INTO Apartado (cantidad, producto) values(2, 'producto2');

INSERT INTO Apartado (cantidad, producto) values(3, 'producto3');

INSERT INTO Apartado (cantidad, producto) values(4, 'producto4');

INSERT INTO Apartado (cantidad, producto) values(5, 'producto5');

INSERT INTO Apartado (cantidad, producto) values(6, 'producto6');

INSERT INTO Apartado (cantidad, producto) values(7, 'producto7');

INSERT INTO Apartado (cantidad, producto) values(8, 'producto8');

INSERT INTO Apartado (cantidad, producto) values(9, 'producto9');

INSERT INTO Apartado (cantidad, producto) values(10, 'producto10');


INSERT INTO Bodega (capacidad) values('capacidad1');

INSERT INTO Bodega (capacidad) values ('capacidad2');

INSERT INTO Bodega (capacidad) values('capacidad3');

INSERT INTO Bodega (capacidad) values ('capacidad4');

INSERT INTO Bodega (capacidad) values('capacidad5');

INSERT INTO Bodega (capacidad) values ('capacidad6');

INSERT INTO Bodega (capacidad) values('capacidad7');

INSERT INTO Bodega (capacidad) values ('capacidad8');

INSERT INTO Bodega (capacidad) values('capacidad9');

INSERT INTO Bodega (capacidad) values ('capacidad10');


INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja1','detallecaja1');

INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja2','detallecaja2');

INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja3','detallecaja3');

INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja4','detallecaja4');

INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja5','detallecaja5');

INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja6','detallecaja6');

INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja7','detallecaja7');

INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja8','detallecaja8');

INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja9','detallecaja9');

INSERT INTO Caja (numerocaja, detallecaja) values ('numerocaja10','detallecaja10');



INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2002', 'capacitacion1','1',false);

INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2022','capacitacion2','2',false); 

INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2002', 'capacitacion3','3', false);

INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2022','capacitacion4','4', false); 

INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2002', 'capacitacion5','5', false);

INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2022','capacitacion6','6',false); 

INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2002', 'capacitacion7','7',false);

INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2022','capacitacion8','8',false); 

INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2002', 'capacitacion9','9',false);

INSERT INTO Capacitacion (fechacapacitacion, tipocapacitacion, idEmpleado, estatus) values ('04/12/2022','capacitacion10','10',false); 


INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral1', 'clienterevendedor1');

INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral2', 'clienterevendedor2');

INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral3', 'clienterendedor3');

INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral4', 'clienterevendedor4');

INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral5', 'clienterendedor5');

INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral6', 'clienterevendedor6');

INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral7', 'clienterendedor7');

INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral8', 'clienterevendedor8');

INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral9', 'clienterendedor9');

INSERT INTO Cliente (clientegeneral, clienterevendedor) values ('clientegeneral10', 'clienterendedor10');


INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion1');

INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion2');

INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion3');

INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion4');

INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion5');

INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion6');

INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion7');

INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion8');

INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion9');

INSERT INTO Coleccion (nombrecoleccion) values ('nombrecoleccion10');



INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (1, '04/12/2022', '1','1', false);

INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (2, '04/12/2022', '2','2', false);

INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (3, '04/12/2022', '3','3',FALSE);

INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (4, '04/12/2022', '4','4',false);

INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (5, '04/12/2022', '5','5',false);

INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (6, '04/12/2022', '6','6',false);

INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (7, '04/12/2022', '7','7',false);

INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (8, '04/12/2022', '8','8',false);

INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (9, '04/12/2022', '9','9',false);

INSERT INTO Compra (cantidadcompra, fechacompra, foliocompra, idCliente, estatus) values (10, '04/12/2022', '10','10',false);


INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato1', '1', false);
 
INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato2', '2', false);

INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato3', '3',  false);
 
INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato4','4', false);

INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato5', '5', false);

INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato6', '6', false);

INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato7','7', false);
 
INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato8','8', false);

INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato9','9',  false);
  
INSERT INTO Contrato (fecha, tipocontrato, idSucursal, estatus) values ('04/12/2022', 'tipocontrato10', '10', false);
 

INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte1', '04/12/2022');
 
INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte2', '04/12/2022');
 
INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte3', '04/12/2022');
 
INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte4', '04/12/2022');
 
INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte5', '04/12/2022');
 
INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte6', '04/12/2022');
 
INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte7', '04/12/2022');
 
INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte8', '04/12/2022');
 
INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte9', '04/12/2022');
 
INSERT INTO Cortecaja (empleadocorte, fechacorte) values('empleadocorte10', '04/12/2022');
 



INSERT INTO Cotizacion (productocotizacion) values('productocotizacion1');
 
INSERT INTO Cotizacion (productocotizacion) values('productocotizacion2');
 
INSERT INTO Cotizacion (productocotizacion) values('productocotizacion3');
 
INSERT INTO Cotizacion (productocotizacion) values('productocotizacion4');
 
INSERT INTO Cotizacion (productocotizacion) values('productocotizacion5');
 
INSERT INTO Cotizacion (productocotizacion) values('productocotizacion6');
 
INSERT INTO Cotizacion (productocotizacion) values('productocotizacion7');
 
INSERT INTO Cotizacion (productocotizacion) values('productocotizacion8');
 
INSERT INTO Cotizacion (productocotizacion) values('productocotizacion9');
 
INSERT INTO Cotizacion (productocotizacion) values('productocotizacion10');
 
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (1, '1', false);
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (2,'2', false);
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (3,'3', false);
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (4,'4', false);
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (5,'5', false);
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (6,'6', false);
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (7,'7', false);
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (8,'8', false);
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (9,'9', false);
 
INSERT INTO Credito (montocredito, idCliente, estatus) values (10,'10', false);
 




INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento1');
 
INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento2');
 
INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento3');
 
INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento4');
 
INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento5');
 
INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento6');
 
INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento7');
 
INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento8');
 
INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento9');
 
INSERT INTO Departamento (tipodepartamento) values ('tipodepartammento10');
 




INSERT INTO Devolucion (producto, fechadevolucion) values ('producto1',  '04/12/2022');
 
INSERT INTO Devolucion (producto, fechadevolucion) values ('producto2', '04/12/2022');
 
INSERT INTO Devolucion (producto, fechadevolucion) values ('producto3', '04/12/2022');

INSERT INTO Devolucion (producto, fechadevolucion) values ('producto4', '04/12/2022');
 
INSERT INTO Devolucion (producto, fechadevolucion) values ('producto5', '04/12/2022');
 
INSERT INTO Devolucion (producto, fechadevolucion) values ('producto6', '04/12/2022');
 
INSERT INTO Devolucion (producto, fechadevolucion) values ('producto7', '04/12/2022');
 
INSERT INTO Devolucion (producto, fechadevolucion) values ('producto8', '04/12/2022');
 
INSERT INTO Devolucion (producto, fechadevolucion) values ('producto9', '04/12/2022');
 
INSERT INTO Devolucion (producto, fechadevolucion) values ('producto10', '04/12/2022');
 



INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre1', 1, 'areaempleado1');
 
INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre2', 2, ' areaempleado2');
 
INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre3', 3, 'areaempleado3');
 
INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre4', 4,' areaempleado4');
 
INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre5', 5, 'areaempleado5');
 
INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre6', 6,' areaempleado6');
 
INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre7', 7, 'areaempleado7');
 
INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre8', 8, 'areaempleado8');
 
INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre9', 9, 'areaempleado9');
 
INSERT INTO Empleado (nombre,telefono, areaempleado) values ('nombre10', 10, 'areaempleado10');
 


INSERT INTO Entrega (direccion,fecha, nombre, idTipoTransporte, estatus) values ('direccion1', '04/12/2022', 'nombre1','1', false);
 
INSERT INTO  Entrega (direccion, fecha, nombre, idTipoTransporte, estatus) values ('direccion2', '04/12/2022','nombre2','2', false);
 
INSERT INTO Entrega (direccion,fecha, nombre, idTipoTransporte, estatus) values ('direccion3', '04/12/2022', 'nombre3','3', false);
 
INSERT INTO Entrega (direccion, fecha, nombre, idTipoTransporte, estatus) values ('direccion4', '04/12/2022', 'nombre4','4', false);
 
INSERT INTO Entrega (direccion,fecha, nombre, idTipoTransporte, estatus) values ('direccion5', '04/12/2022', 'nombre5','5', false);
 
INSERT INTO Entrega (direccion, fecha, nombre, idTipoTransporte, estatus) values ('direccion6', '04/12/2022', 'nombre6','6', false);
 
INSERT INTO Entrega (direccion,fecha, nombre, idTipoTransporte, estatus) values ('direccion7', '04/12/2022', 'nombre7','7', false);
 
INSERT INTO Entrega (direccion, fecha, nombre, idTipoTransporte, estatus) values ('direccion8', '04/12/2022', 'nombre8','8', false);
 
INSERT INTO Entrega (direccion,fecha, nombre, idTipoTransporte, estatus) values ('direccion9', '04/12/2022', 'nombre9','9', false);
 
INSERT INTO  Entrega (direccion, fecha, nombre, idTipoTransporte, estatus) values ('direccion10', '04/12/2022', 'nombre10','10', false);
 

INSERT INTO Envio (direccion, numero) values ('direccion1', 'numero1');
 
INSERT INTO Envio (direccion, numero) values ('direccion2', 'numero2');
 
INSERT INTO Envio (direccion, numero) values ('direccion3', 'numero3');
 
INSERT INTO Envio (direccion, numero) values ('direccion4', 'numero4');
 
INSERT INTO Envio (direccion, numero) values ('direccion5', 'numero5');
 
INSERT INTO Envio (direccion, numero) values ('direccion6', 'numero6');
 
INSERT INTO Envio (direccion, numero) values ('direccion7', 'numero7');
 
INSERT INTO Envio (direccion, numero) values ('direccion8', 'numero8');
 
INSERT INTO Envio (direccion, numero) values ('direccion9', 'numero9');
 
INSERT INTO Envio (direccion, numero) values ('direccion10', 'numero10');
 



INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente1', 'estacionamientoempleado1');
 
INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente2', 'estacionamientoempleado2');
 
INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente3', 'estacionamientoempleado3');
 
INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente4', 'estacionamientoempleado4');
 
INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente5', 'estacionamientoempleado5');
 
INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente6', 'estacionamientoempleado6');
 
INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente7', 'estacionamientoempleado7');
 
INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente8', 'estacionamientoempleado8');
 
INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente9', 'estacionamientoempleado9');
 
INSERT INTO Estacionamiento (estacionamientocliente, estacionamientoempleado) values ('estacionamientocliente10', 'estacionamientoempleado10');
 



INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura1', '04/12/2022','nombrefactura1');
 
INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura2', '04/12/2022','nombrefactura2 ');
 
INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura3', '04/12/2022','nombrefactura3');
 
INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura4', '04/12/2022','nombrefactura4');
 
INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura5', '04/12/2022','nombrefactura5');
 
INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura6', '04/12/2022' ,'nombrefactura6');
 
INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura7', '04/12/2022','nombrefactura7');
 
INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura8', '04/12/2022' ,'nombrefactura8');
 
INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura9', '04/12/2022','nombrefactura9');
 
INSERT INTO Factura (foliofactura, fechafactura, nombrefactura) values ('foliofactura10','04/12/2022','nombrefactura10');
 
 
INSERT INTO Horario (horaentrada, horasalida ) values ('8:10', '8:00');
 
INSERT INTO Horario (horaentrada, horasalida) values ('8:10', '8:00');
 
INSERT INTO Horario (horaentrada, horasalida) values ('8:10', '8:00');
 
INSERT INTO Horario (horaentrada, horasalida) values ('8:10', '8:00');
 
INSERT INTO Horario (horaentrada, horasalida) values ('8:10', '8:00');
 
INSERT INTO Horario (horaentrada, horasalida) values ('8:10', '8:00');
 
INSERT INTO Horario (horaentrada, horasalida) values ('8:10', '8:00');
 
INSERT INTO Horario (horaentrada, horasalida) values ('8:10', '8:00');
 
INSERT INTO Horario (horaentrada, horasalida) values ('8:10', '8:00');
 
INSERT INTO Horario (horaentrada, horasalida) values ('8:10', '8:00');
 



INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus) values ('personalencargado1', '04/12/2022', 'tipoinventario','1', false);
 
INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus)values ('personalinventario2', '04/12/2022', 'tipoinventario2','2', false);
 
INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus) values ('personalencargado3', '04/12/2022', 'tipoinventario3','3', false);
 
INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus) values ('personalencargado4', '04/12/2022', 'tipoinventario4','4', false);
 
INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus)values ('personalinventario5', '04/12/2022', 'tipoinventario5', '5', false);
 
INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus) values ('personalencargado6', '04/12/2022', 'tipoinventario6','6', false);
 
INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus) values ('personalencargado7', '04/12/2022', 'tipoinventario7','7', false);
 
INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus)values ('personalinventario8', '04/12/2022', 'tipoinventario8', '8', false);
 
INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus) values ('personalencargado9', '04/12/2022', 'tipoinventario9','9', false);
 
INSERT INTO Inventario (personalencargado, fecha, tipoinventario, idBodega, estatus) values ('personalencargado10', '04/12/2022', 'tipoinventario10','10', false);
 
 

INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(1, 'numeroexterior1', 'direccion1', 'cp1');
 
INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(2, 'numeroexterior2', 'direccion2', 'cp2');
 
INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(3, 'numeroexterior3', 'direccion3', 'cp3');
 
INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(4, 'numeroexterior4', 'direccion4', 'cp4');
 
INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(5, 'numeroexterior5', 'direccion5', 'cp5');
 
INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(6, 'numeroexterior6', 'direccion6', 'cp6');
 
INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(7, 'numeroexterior7', 'direccion7', 'cp7');
 
INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(8, 'numeroexterior8', 'direccion8', 'cp8');
 
INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(9, 'numeroexterior9', 'direccion9', 'cp9');
 
INSERT INTO Sucursal (telefono,numeroexterior, direccion, cp) values(10, 'numeroexterior10', 'direccion10', 'cp10');
 



INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento1','personalmantenimiento1','1', false);
 
INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento2', 'personaldemantenimento2','2', false);
 
INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento3','personalmantenimiento3','3', false);
 
INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento4', 'personaldemantenimento4','4', false);
 
INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento5','personalmantenimiento5','5', false);
 
INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento6', 'personaldemantenimento6','6', false);
 
INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento7','personalmantenimiento7','7', false);
 
INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento8', 'personaldemantenimento8','8',  false);
 
INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento9','personalmantenimiento9','9', false);
 
INSERT INTO Mantenimiento (tipomantenimiento, personaldemantenimiento, idSucursal, estatus) values ('tipomantenimiento10', 'personaldemantenimento10','10',false);



INSERT INTO Representante(nombre, telefono, direccion) values ('nombre1', 1 , 'direccion1');
 
INSERT INTO Representante (nombre, telefono, direccion) values ('nombre2', 2 , 'direccion2');
 
INSERT INTO Representante (nombre, telefono, direccion) values ('nombre3', 3 ,'direccion3');
 
INSERT INTO Representante (nombre, telefono, direccion) values ('nombre4', 4 ,  'direeccion4');
 
INSERT INTO Representante (nombre, telefono, direccion) values ('nombre5', 5 ,'direccion5');
 
INSERT INTO Representante (nombre, telefono, direccion) values ('nombre6', 6 , 'direccion6');
 
INSERT INTO Representante (nombre, telefono, direccion) values ('nombre7', 7 ,'direccion7');
 
INSERT INTO Representante (nombre, telefono, direccion) values ('nombre8', 8 ,'direccion8');
 
INSERT INTO Representante (nombre, telefono, direccion) values ('nombre9', 9 ,'direcccion9');
 
INSERT INTO Representante (nombre, telefono, direccion) values ('nombre10', 10 , 'direccion10');
 



INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre1', 1 , 'direccion1','1', false);
 
INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre2', 2 , 'direccion2','2',false);
 
INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre3', 3 , 'direccion3','3',false);
 
INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre4', 4 , 'direccion4','4',false);
 
INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre5', 5 , 'direccion5','5',false);
 
INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre6', 6 , 'direccion6','6',false);
 
INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre7', 7 , 'direccion7','7',false);
 
INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre8', 8 , 'direccion8','8',false);
 
INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre9', 9 , 'direccion9','9',false);
 
INSERT INTO Proveedor (nombre, telefono, direccion,idSucursal, estatus) values ('nombre10', 10 , 'direccion10','10',false);
 


INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha,idSucursal, estatus) values ('tipopa 1', 'servicio1', 1, '04/12/2022', '1',false);
 
INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha,idSucursal, estatus) values ('tipopa 2', 'servicio2', 2, '04/12/2022','2',false);
 
INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha ,idSucursal, estatus) values ('tipopa 3', 'servicio3', 3, '04/12/2022','3',false);

INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha ,idSucursal, estatus) values ('tipopa 4', 'servicio4', 4, '04/12/2022','4', false);
 
INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha,idSucursal, estatus) values ('tipopa 5', 'servicio5', 5, '04/12/2022','5',false);
 
INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha,idSucursal, estatus) values ('tipopa 6', 'servicio6', 6, '04/12/2022','6',false);
 
INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha,idSucursal, estatus) values ('tipopa 7', 'servicio7', 7, '04/12/2022','7',false);
 
INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha,idSucursal, estatus) values ('tipopa 8', 'servicio8', 8, '04/12/2022','8',false);
 
INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha,idSucursal, estatus) values ('tipopa 9', 'servicio9', 9, '04/12/2022','9', false);
 
INSERT INTO PagoServicio (tipodepagoservicio, servicio, cantidad, fecha,idSucursal, estatus) values ('tipopa 10', 'servicio10', 10, '04/12/2022', '10',false);



INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece1', 1,'1',false);
 
INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece2', 2,'2', false);
 
INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece3', 3,'3', false);
 
INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece4', 4,'4', false);
 
INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece5', 5,'5',false);
 
INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece6', 6,'6', false);
 
INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece7', 7,'7',false);
 
INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece8', 8,'8', false);
 
INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece9', 9,'9', false);
 
INSERT INTO Mobiliario (areapertenece,cantida, idSucursal, estatus) values ('areapertenece10', 10,'10', false);
 



INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (1,'1', false);
 
INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (2,'2', false);
 
INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (3,'3', false);

INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (4,'4', false);
 
INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (5,'5', false);
 
INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (6,'6',  false);
 
INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (7,'7', false);

INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (8,'8', false);
 
INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (9,'9', false);
 
INSERT INTO ZonaDescarga (horariodisponible, idBodega, estatus) values (10,'10', false);



INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '1','1', false);

INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '2','2', false);
 
INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '3','3', false);

INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '4','4',  false);

INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '5','5', false);
 
INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '6','6', false);
 
INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '7','7', false);

INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '8','8', false);
 
INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '9','9', false);
 
INSERT INTO MercanciaExtra( fecha, tipomercancia, idBodega, estatus) values ('04/12/2022', '10','10', false);




INSERT INTO Sindicato (nombresindicato) values ('nombresindicato1');
 
INSERT INTO Sindicato (nombresindicato) values ('nombresindicato2');
 
INSERT INTO Sindicato (nombresindicato) values ('nombresindicato3');
 
INSERT INTO Sindicato (nombresindicato) values ('nombresindicato4');
 
INSERT INTO Sindicato (nombresindicato) values ('nombresindicato5');
 
INSERT INTO Sindicato (nombresindicato) values ('nombresindicato6');
 
INSERT INTO Sindicato (nombresindicato) values ('nombresindicato7');
 
INSERT INTO Sindicato (nombresindicato) values ('nombresindicato8');
 
INSERT INTO Sindicato (nombresindicato) values ('nombresindicato9');
 
INSERT INTO Sindicato (nombresindicato) values ('nombresindicato10');
 
 

INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer1', '04/12/2022', 1 );
 
INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer2', '04/12/2022', 2 );
 
INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer3', '04/12/2022', 3 );
 
INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer4', '04/12/2022', 4 );
 
INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer5', '04/12/2022', 5 );
 
INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer6', '04/12/2022', 6 );
 
INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer7', '04/12/2022', 7 );
 
INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer8', '04/12/2022', 8 );
 
INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer9', '04/12/2022', 9 );
 
INSERT INTO  TipoTransporte (chofer, fechasalida,numero) values ('chofer10', '04/12/2022', 10 );
 



INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (1, '1', false);
 
INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (2, '2', false);

INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (3,'3', false);
 
INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (4, '4', false);
 
INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (5, '5',  false);
 
INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (6,'6', false);
 
INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (7, '7', false);
 
INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (8, '8', false);
 
INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (9,'9', false);
 
INSERT INTO Vigilancia (numeroguardia, idSucursal, estatus) values (10,'10', false);
 



INSERT INTO  Marca (nombremarca) values ('nombremarca1');
 
INSERT INTO  Marca (nombremarca) values ('nombremarc2');
 
INSERT INTO  Marca (nombremarca) values ('nombremarca3');
 
INSERT INTO  Marca (nombremarca) values ('nombremarca4');
 
INSERT INTO  Marca (nombremarca) values ('nombremarca5');
 
INSERT INTO  Marca (nombremarca) values ('nombremarca6');
 
INSERT INTO  Marca (nombremarca) values ('nombremarca7');
 
INSERT INTO  Marca (nombremarca) values ('nombremarca8');
 
INSERT INTO  Marca (nombremarca) values ('nombremarca9');
 
INSERT INTO  Marca (nombremarca) values ('nombremarca10');
 



INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad1','1', false);
 
INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad2','2', false);
 
INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad3','3', false);

INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad4','4', false);
 
INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad5','5', false);
 
INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad6','6', false);

INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad7','7', false);
 
INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad8','8', false);

INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad9','9', false);
 
INSERT INTO Publicidad (fechapublicidad, tipopublicidad, idZapato, estatus) values ('04/12/2022', 'tipopublicidad10','10', false);
 




INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion1', 'calidad1');
 
INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion2', 'calidad2');
 
INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion3', 'calidad3');
 
INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion4', 'calidad4');
 
INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion5', 'calidad5');
 
INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion6', 'calidad6');
 
INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion7', 'calidad7');
 
INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion8', 'calidad8');
 
INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion9', 'calidad9');
 
INSERT INTO MateriaPrima (ubicacion, calidad) values ('ubicacion10', 'calidad10');
 



INSERT INTO Seccion (nombreseccion) values ('nombreseccion1');
 
INSERT INTO Seccion (nombreseccion) values ('nombreseccion2');
 
INSERT INTO Seccion (nombreseccion) values ('nombreseccion3');
 
INSERT INTO Seccion (nombreseccion) values ('nombreseccion4');
 
INSERT INTO Seccion (nombreseccion) values ('nombreseccion5');
 
INSERT INTO Seccion (nombreseccion) values ('nombreseccion6');
 
INSERT INTO Seccion (nombreseccion) values ('nombreseccion7');
 
INSERT INTO Seccion (nombreseccion) values ('nombreseccion8');
  
INSERT INTO Seccion (nombreseccion) values ('nombreseccion9');
 
INSERT INTO Seccion (nombreseccion) values ('nombreseccion10');
 



INSERT INTO Modelo (preciomodelo, numeromodelo) values (100, 'numeromodelo1');
 
INSERT INTO Modelo (preciomodelo, numeromodelo) values (200, 'numeromodelo2');
 
INSERT INTO Modelo (preciomodelo, numeromodelo) values (300, 'numeromodelo3');
 
INSERT INTO Modelo (preciomodelo, numeromodelo) values (400, 'numeromodelo4');
 
INSERT INTO Modelo (preciomodelo, numeromodelo) values (500, 'numeromodelo5');
 
INSERT INTO Modelo (preciomodelo, numeromodelo) values (600, 'numeromodelo6');
 
INSERT INTO Modelo (preciomodelo, numeromodelo) values (700, 'numeromodelo7');
 
INSERT INTO Modelo (preciomodelo, numeromodelo) values (800, 'numeromodelo8');
 
INSERT INTO Modelo (preciomodelo, numeromodelo) values (900, 'numeromodelo9');
 
INSERT INTO Modelo (preciomodelo, numeromodelo) values (1000, 'numeromodelo10');
 


INSERT INTO Zapato(tipozapato, precio) values ('tipozapato1', '100');
 
INSERT INTO Zapato(tipozapato, precio) values ('tipozapato2', '200');
 
INSERT INTO Zapato(tipozapato, precio) values ('tipozapato3', '300');
 
INSERT INTO Zapato(tipozapato, precio) values ('tipozapato4', '400');
 
INSERT INTO Zapato(tipozapato, precio) values ('tipozapato5', '500');
 
INSERT INTO Zapato(tipozapato, precio) values ('tipozapato6', '600');
 
INSERT INTO Zapato(tipozapato, precio) values ('tipozapato7', '700');
 
INSERT INTO Zapato(tipozapato, precio) values ('tipozapato8', '800');
 
INSERT INTO Zapato(tipozapato, precio) values ('tipozapato9', '900');
 
INSERT INTO Zapato (tipozapato, precio) values ('tipozapato10', '1000');



INSERT INTO Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado1', 1,'1', false);
 
INSERT INTO Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado2', 2,'2', false);
 
INSERT INTO  Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado3', 3,'3', false);
 
INSERT INTO Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado4', 4,'4', false);

INSERT INTO Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado5', 5,'5', false);
 
INSERT INTO Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado6', 6,'6', false);

INSERT INTO Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado7', 7,'7', false);
 
INSERT INTO Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado8', 8,'8', false);
 
INSERT INTO Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado9', 9,'9', false);
 
INSERT INTO Venta (nombreempleado, folioventa, idZapato, estatus) values ('nombreempleado10', 10,'10', false);
 



INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');

INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');
 
INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');
 
INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');
 
INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');
 
INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');
 
INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');
 
INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');
 
INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');
 
INSERT INTO PedidoLinea (fechapedido) values ('04/12/2022');
 



INSERT INTO Reembolso (cantidadreembolso) values (1);
 
INSERT INTO Reembolso (cantidadreembolso) values (2);
 
INSERT INTO Reembolso (cantidadreembolso) values (3);
 
INSERT INTO Reembolso (cantidadreembolso) values (4);
 
INSERT INTO Reembolso (cantidadreembolso) values (5);
 
INSERT INTO Reembolso (cantidadreembolso) values (6);
 
INSERT INTO Reembolso (cantidadreembolso) values (7);
 
INSERT INTO Reembolso (cantidadreembolso) values (8);
 
INSERT INTO Reembolso (cantidadreembolso) values (9);
 
INSERT INTO Reembolso (cantidadreembolso) values (10);
 




INSERT INTO Talla (idZapato, estatus) values ('1', false);
 
INSERT INTO Talla (idZapato, estatus) values ('2', false);

INSERT INTO Talla (idZapato, estatus) values ('3', false);

INSERT INTO Talla (idZapato, estatus) values ('4', false);

INSERT INTO Talla (idZapato, estatus) values ('5',false);
 
INSERT INTO Talla (idZapato, estatus) values ('6', false);
 
INSERT INTO Talla (idZapato, estatus) values ('7', false);
 
INSERT INTO Talla ( idZapato, estatus) values ('8',false);
 
INSERT INTO Talla ( idZapato, estatus) values ('9', false);
 
INSERT INTO Talla (idZapato, estatus) values ('10',false);
 


INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (100, '04/12/2022','1', false);
 
INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (200, '04/12/2022','2',false);
 
INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (300, '04/12/2022','3',false);
 
INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (400, '04/12/2022','4',false);
 
INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (500, '04/12/2022','5',false);
 
INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (600, '04/12/2022','6',false);
 
INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (700, '04/12/2022','7',false);
 
INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (800, '04/12/2022','8',false);
 
INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (900,'04/12/2022','9',false);
 
INSERT INTO TipoFacturacion (montofacturar, fechafacturacion, idFactura, estatus) values (1000, '04/12/2022','10',false);
 




INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta1');
 
INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta2');
 
INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta3');
 
INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta4');
 
INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta5');
 
INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta6');
 
INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta7');
 
INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta8');
 
INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta9');
 
INSERT INTO Oferta (fechaoferta, productoferta) values ('04/12/2022', 'productooferta10');
 


INSERT INTO MetodoPago  (pagoefectivo, pagotarjeta) values (1, 1);
 
INSERT INTO MetodoPago (pagoefectivo, pagotarjeta) values (2,2);
 
INSERT INTO MetodoPago  (pagoefectivo, pagotarjeta) values (3,3);

INSERT INTO MetodoPago  (pagoefectivo, pagotarjeta) values (4,4);
 
INSERT INTO MetodoPago (pagoefectivo, pagotarjeta) values (5,5);
 
INSERT INTO MetodoPago  (pagoefectivo, pagotarjeta) values (6,6);
 
INSERT INTO MetodoPago (pagoefectivo, pagotarjeta) values (7,7);
 
INSERT INTO MetodoPago (pagoefectivo, pagotarjeta) values (8,8);
 
INSERT INTO MetodoPago  (pagoefectivo, pagotarjeta) values (9,9);
 
INSERT INTO MetodoPago  (pagoefectivo, pagotarjeta) values (10,10);
 



INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto1', 'areapuesto1');
 
INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto2', 'areapuesto2');
 
INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto3', 'areapuesto3');
 
INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto4', 'areapuesto4');
 
INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto5', 'areapuesto5');
 
INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto6', 'areapuesto6');
 
INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto7', 'areapuesto7');
 
INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto8', 'areapuesto8');
 
INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto9', 'areapuesto9');
 
INSERT INTO Puesto (nombrepuesto, areapuesto) values ('nombrepuesto10', 'areapuesto10');
 



INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion1'); 

INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion1');
 
INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion2');
 
INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion3');
 
INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion4');
 
INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion5');
 
INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion6');
 
INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion7');
 
INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion8');
 
INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion9');
 
INSERT INTO Prestacion (tipoprestacion) values ('´tipoprestacion10');
 


INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina1', 'folionomina1');
 
INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina2', 'folionomina2');
 
INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina3', 'folionomina3');
 
INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina4', 'folionomina4');
 
INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina5', 'folionomina5');
 
INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina6', 'folionomina6');
 
INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina7', 'folionomina7');
 
INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina8', 'folionomina8');
 
INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina9', 'folionomina9');
 
INSERT INTO Nomina (fechanomina, numeronomina, folionomina) values ('04/12/2022', 'numeronomina10', 'folionomina10');
 



INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','1', false);
 
INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','2', false);
 
INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','3', false);
 
INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','4', false);
 
INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','5', false);
 
INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','6', false);
 
INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','7', false);
 
INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','8', false);
 
INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','9', false);
 
INSERT INTO Ticket (fecha, idDevolucion, estatus) values ('04/12/2022','10', false);
 



INSERT INTO Vale (cantidadvale, idCliente, estatus) values (100, '1', false);
 
INSERT INTO Vale (cantidadvale, idCliente, estatus) values (200,'2',false);
 
INSERT INTO Vale (cantidadvale, idCliente, estatus) values (300,'3',false);
 
INSERT INTO Vale (cantidadvale, idCliente, estatus) values (400,'4',false);
 
INSERT INTO Vale (cantidadvale, idCliente, estatus) values (500,'5',false);
 
INSERT INTO Vale (cantidadvale, idCliente, estatus) values (600,'6',false);
 
INSERT INTO Vale (cantidadvale, idCliente, estatus) values (700,'7',false);
 
INSERT INTO Vale (cantidadvale, idCliente, estatus) values (800,'8',false);
 
INSERT INTO Vale (cantidadvale, idCliente, estatus) values (900,'9',false);
 
INSERT INTO Vale (cantidadvale, idCliente, estatus) values (1000,'10',false);



INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre1', 'calzadomujer1');
 
INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre2', 'calzadomujer2');
 
INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre3', 'calzadomujer3');
 
INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre4', 'calzadomujer4');
 
INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre5', 'calzadomujer5');
 
INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre6', 'calzadomujer6');
 
INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre7', 'calzadomujer7');
 
INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre8', 'calzadomujer8');
 
INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre9', 'calzadomujer9');
 
INSERT INTO TipoCalzado(calzadohombre, calzadomujer) values ('calzadohonmbre10', 'calzadomujer10');
 



INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('1', '1',false);
 
INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('2', '2', false);
 
INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('3', '3',false);
 
INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('4', '4', false);
 
INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('5', '5', false);
 
INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('6', '6', false);
 
INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('7', '7',false);

INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('8', '8',false);
 
INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('9', '9', false);

INSERT INTO SucursalDepartamento(idSucursal,idDepartamento, estatus) values ('10', '10', false);



INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('1', '1', false);

INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('2', '2', false);

INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('3', '3', false);

INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('4', '4', false);

INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('5', '5', false);

INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('6', '6', false);

INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('7', '7', false);

INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('8', '8', false);

INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('9', '9', false);

INSERT INTO EmpleadoPrestacion(idEmpleado, idPrestacion, estatus) values('10', '10', false);




INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('1', '1', false);

INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('2', '2', false);

INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('3', '3',  false);

INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('4', '4', false);

INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('5', '5' , false);

INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('6', '6', false);

INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('7', '7',false);

INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('8', '8',false);

INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('9', '9',false);

INSERT INTO EmpleadoHorario (idEmpleado, idHorario, estatus) values ('10', '10',false);




INSERT INTO CotizacionCliente (idCotizacion, idCliente, productocotizacion, estatus) values ('1', '1', 'productocotizacion1', false);

INSERT INTO CotizacionCliente (idCotizacion, idCliente, productocotizacion, estatus) values ('2', '2', 'productocotizacion2', false);

INSERT INTO CotizacionCliente (idCotizacion, idCliente, productocotizacion, estatus) values ('3', '3', 'productocotizacion3', false);

INSERT INTO CotizacionCliente (idCotizacion, idCliente, productocotizacion, estatus) values ('4', '4', 'productocotizacion4', false);

INSERT INTO CotizacionCliente (idCotizacion, idCliente, productocotizacion,  estatus) values ('5', '5', 'productocotizacion5',false);

INSERT INTO CotizacionCliente (idCotizacion, idCliente,productocotizacion, estatus) values ('6', '6', 'productocotizacion6',false);

INSERT INTO CotizacionCliente (idCotizacion, idCliente, productocotizacion, estatus) values ('7', '7', 'productocotizacion7', false);

INSERT INTO CotizacionCliente (idCotizacion, idCliente,productocotizacion , estatus) values ('8', '8', 'productocotizacion8', false);

INSERT INTO CotizacionCliente (idCotizacion, idCliente, productocotizacion ,estatus) values ('9', '9', 'productocotizacion9', false);

INSERT INTO CotizacionCliente (idCotizacion, idCliente, productocotizacion,  estatus) values ('10', '10', 'productocotizacion10',false);




INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago , fechacompra, estatus) values ('1', '1', '04/12/2022', false);

INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago , fechacompra, estatus) values ('2', '2','04/12/2022',false);

INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago ,fechacompra, estatus) values ('3', '3', '04/12/2022',false);

INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago ,fechacompra, estatus) values ('4', '4', '04/12/2022', false);

INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago ,fechacompra, estatus) values ('5', '5','04/12/2022',false);

INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago ,fechacompra, estatus) values ('6', '6', '04/12/2022', false);

INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago , fechacompra,estatus) values ('7', '7','04/12/2022' , false);

INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago , fechacompra,estatus) values ('8', '8', '04/12/2022', false);

INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago , fechacompra,estatus) values ('9', '9', '04/12/2022', false);

INSERT INTO CompraMetodoPago  (idCompra, idMetodoPago , fechacompra,estatus) values ('10', '10', '04/12/2022' ,false);




INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('1','1', false);

INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('2','2', false);

INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('3','3',false);
	
INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('4','4', false);

INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('5','5',false);

INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('6','6',false);

INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('7','7',false);

INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('8','8', false);

INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('9','9',false);

INSERT INTO CompraOferta (idCompra, idOferta, estatus) values ('10','10', false);




INSERT INTO ClienteApartado (idCliente, idApartado,fechaapartado,  estatus) values ('1','1', '04/12/2022', false);

INSERT INTO ClienteApartado (idCliente, idApartado, fechaapartado, estatus) values ('2','2', '04/12/2022', false);

INSERT INTO ClienteApartado (idCliente, idApartado, fechaapartado, estatus) values ('3','3', '04/12/2022', false);

INSERT INTO ClienteApartado (idCliente, idApartado, fechaapartado, estatus) values ('4','4', '04/12/2022', false);

INSERT INTO ClienteApartado (idCliente, idApartado, fechaapartado,  estatus) values ('5','5',' 04/12/2022', false);

INSERT INTO ClienteApartado (idCliente, idApartado,fechaapartado,  estatus) values ('6','6' ,'04/12/2022', false);

INSERT INTO ClienteApartado (idCliente, idApartado, fechaapartado, estatus) values ('7','7', '04/12/2022', false);

INSERT INTO ClienteApartado (idCliente, idApartado, fechaapartado, estatus) values ('8','8', '04/12/2022', false);

INSERT INTO ClienteApartado (idCliente, idApartado,fechaapartado,  estatus) values ('9','9', '04/12/2022', false);

INSERT INTO ClienteApartado (idCliente, idApartado,fechaapartado,  estatus) values ('10','10', '04/12/2022', false);


INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio,  estatus) values ('1','1','04/12/2022', false);

INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio, estatus) values ('2','2','04/12/2022', false);

INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio,  estatus) values ('3','3','04/12/2022', false);

INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio , estatus) values ('4','4','04/12/2022', false);

INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio,  estatus) values ('5','5', '04/12/2022', false);

INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio ,estatus) values ('6','6','04/12/2022', false);

INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio,  estatus) values ('7','7', '04/12/2022', false);

INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio ,estatus) values  ('8','8','04/12/2022', false);

INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio , estatus) values ('9','9','04/12/2022', false);

INSERT INTO PedidoLineaEnvio (idPedidoLinea, idEnvio, fechaenvio , estatus) values ('10','10','04/12/2022', false);




INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte, fechaenvio , estatus) values ('1','1', '04/12/2022', false);

INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte, fechaenvio ,estatus) values ('2','2', '04/12/2022', false);

INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte, fechaenvio,  estatus) values ('3','3', '04/12/2022', false);

INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte, fechaenvio,  estatus) values ('4','4','04/12/2022', false);

INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte,fechaenvio ,  estatus) values ('5','5', '04/12/2022', false);

INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte, fechaenvio, estatus) values ('6','6','04/12/2022', false);

INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte,fechaenvio , estatus) values ('7','7', '04/12/2022', false);

INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte,fechaenvio , estatus) values ('8','8', '04/12/2022', false);

INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte, fechaenvio, estatus) values ('9','9', '04/12/2022', false);

INSERT INTO EnvioTipoTransporte (idEnvio, idTipoTransporte, fechaenvio,  estatus) values ('1','1', '04/12/2022', false);




INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('1','1', false);

INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('2','2',false);

INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('3','3',false);

INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('4','4',false);

INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('5','5',false);

INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('6','6',false);

INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('7','7',false);

INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('8','8',false);

INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('9','9',false);

INSERT INTO ZapatoMateriaPrima (idZapato, idMateriaPrima, estatus) values ('10','10',false);



INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('1','1', false);

INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('2','2',false);

INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('3','3',false);

INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('4','4', false);

INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('5','5',false);

INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('6','6',false);

INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('7','7',false);

INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('8','8',false);

INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('9','9' , false);

INSERT INTO ZapatoTipoCalzado (idZapato, idTipoCalzado, estatus) values ('10','10',false);




SELECT *FROM Apartado;
UPDATE Apartado SET producto = 'Apartado1' WHERE idApartado = 1;
 
SELECT *FROM Apartado;
DELETE FROM Apartado WHERE idApartado = 1;
 
SELECT *FROM Apartado;

SELECT *FROM Bodega;
UPDATE Bodega SET capacidad = 'Bodega1'  WHERE idBodega = 1;
 
SELECT *FROM Bodega;
DELETE FROM Bodega WHERE idBodega = 1;
 
SELECT *FROM Bodega;



SELECT *FROM Caja;
UPDATE Caja SET numerocaja = '2' WHERE idCaja = 2;
 
SELECT *FROM Caja;
DELETE FROM Caja WHERE idCaja = 1;
 
SELECT *FROM Caja;




SELECT *FROM Capacitacion;
UPDATE Capacitacion SET tipocapacitacion = 'tipocapacitacion1' WHERE idCapacitacion = 1;
 
SELECT *FROM Capacitacion;
DELETE FROM Capacitacion WHERE idCapacitacion = 1;
 
SELECT *FROM Capacitacion;



SELECT *FROM Cliente;
UPDATE Cliente SET clientegeneral = 'clientegeneral1' WHERE idCliente = 1;
 
SELECT *FROM Cliente;
DELETE FROM Cliente WHERE idCliente = 1;
 
SELECT *FROM Cliente;



SELECT *FROM Coleccion;
UPDATE Coleccion SET nombrecoleccion = 'nombrecoleccion1' WHERE idColeccion = 1;
 
SELECT *FROM Coleccion;
DELETE FROM Coleccion WHERE idColeccion = 1;
 
SELECT *FROM Coleccion;



SELECT *FROM Compra;
UPDATE Compra SET cantidadcompra = 1 WHERE idCompra = 1;
 
SELECT *FROM Compra;
DELETE FROM Compra WHERE idCompra = 1;
 
SELECT *FROM Compra;



SELECT *FROM Contrato;
UPDATE Contrato SET tipocontrato = 'tipocontrato1' WHERE idContrato = 1;
 
SELECT *FROM Contrato;
DELETE FROM Contrato WHERE idContrato = 1;
 
SELECT *FROM Contrato;




SELECT *FROM CorteCaja;
UPDATE CorteCaja SET empleadocorte = 'empleadocorte1' WHERE idCorteCaja = 1;
 
SELECT *FROM CorteCaja;
DELETE FROM CorteCaja WHERE idCorteCaja = 1;
 
SELECT *FROM CorteCaja;



SELECT *FROM Cotizacion;
UPDATE Cotizacion SET productocotizacion = 'productocotizacion1' WHERE idCotizacion = 1;
 
SELECT *FROM Cotizacion;
DELETE FROM Cotizacion WHERE idCotizacion = 1;
 
SELECT *FROM Cotizacion;



SELECT *FROM Credito;
UPDATE Credito SET montocredito = 1 WHERE idCredito = 1;
 
SELECT *FROM Credito;
DELETE FROM Credito WHERE idCredito = 1;
 
SELECT *FROM Credito;




SELECT *FROM Departamento;
UPDATE Departamento SET tipodepartamento = 'tipodepartamento1' WHERE idDepartamento = 1;
 
SELECT *FROM Departamento;
DELETE FROM Departamento WHERE idDepartamento = 1;
 
SELECT *FROM Departamento;


SELECT *FROM Devolucion;
UPDATE Devolucion SET producto = 'producto' WHERE idDevolucion = 1;
 
SELECT *FROM Devolucion;
DELETE FROM Devolucion WHERE idDevolucion = 1;
 
SELECT *FROM Devolucion;


SELECT *FROM Empleado;
UPDATE Empleado SET areaempleado = 'areaempleado1' WHERE idEmpleado = 1;
 
SELECT *FROM Empleado;
DELETE FROM Empleado WHERE idEmpleado = 1;
 
SELECT *FROM Empleado;


SELECT *FROM Entrega;
UPDATE Entrega SET direccion = 'direccion1' WHERE idEntrega = 1;
 
SELECT *FROM Entrega;
DELETE FROM Entrega WHERE idEntrega = 1;
 
SELECT *FROM Entrega;



SELECT *FROM Envio;
UPDATE Envio SET direccion = 'direccion1' WHERE idEnvio = 1;
 
SELECT *FROM Envio;
DELETE FROM Envio WHERE idEnvio = 1;
 
SELECT *FROM Envio;


SELECT *FROM Estacionamiento;
UPDATE Estacionamiento SET estacionamientocliente = 'estacionamientocliente1' WHERE idEstacionamiento = 1;
 
SELECT *FROM Estacionamiento;
DELETE FROM Estacionamiento WHERE idEstacionamiento = 1;
 
SELECT *FROM Estacionamiento;




SELECT *FROM Factura;
UPDATE Factura SET foliofactura = 'foliofactura1' WHERE idFactura = 1;
 
SELECT *FROM Factura;
DELETE FROM Factura WHERE idFactura = 1;
 
SELECT *FROM Factura;




SELECT *FROM Horario;
UPDATE Horario SET horaentrada = 04/10/2022 WHERE idHorario = 1;
 
SELECT *FROM Horario;
DELETE FROM Horario WHERE idHorario = 1;
 
SELECT *FROM Horario;


SELECT *FROM Inventario;
UPDATE Inventario SET tipoinventario = 'tipoinventario' WHERE idInventario = 1;
 
SELECT *FROM Inventario;
DELETE FROM Inventario WHERE idInventario = 1;
 
SELECT *FROM Inventario;


SELECT *FROM Mantenimiento;
UPDATE Mantenimiento SET tipomantenimiento = 'tipomantenimiento' WHERE idMantenimiento = 1;
 
SELECT *FROM Mantenimiento;
DELETE FROM Mantenimiento WHERE idMantenimiento = 1;
 
SELECT *FROM Mantenimiento;


SELECT *FROM Marca;
UPDATE Marca SET nombremarca = 'nombreMarca1' WHERE idMarca = 1;
 
SELECT *FROM Marca;
DELETE FROM Marca WHERE idMarca = 1;
 
SELECT *FROM Marca;

SELECT *FROM MateriaPrima;
UPDATE MateriaPrima SET calidad = 'calidadMateriaPrima1' WHERE idMateriaPrima = 1;
 
SELECT *FROM MateriaPrima;
DELETE FROM MateriaPrima WHERE idMateriaPrima = 1;
 
SELECT *FROM MateriaPrima;


SELECT *FROM MateriaPrima;
UPDATE MateriaPrima SET calidad = 'calidad' WHERE idMateriaPrima = 1;
 
SELECT *FROM MateriaPrima;
DELETE FROM MateriaPrima WHERE idMateriaPrima = 1;
 
SELECT *FROM MateriaPrima;


SELECT *FROM MetodoPago ;
UPDATE MetodoPago SET pagotarjeta = 1 WHERE idMetodoPago  = 1;
 
SELECT *FROM MetodoPago ;
DELETE FROM MetodoPago  WHERE idMetodoPago  = 1;
 
SELECT *FROM MetodoPago ;

SELECT *FROM Mobiliario;
UPDATE Mobiliario SET areapertenece = 'areapertenece1' WHERE idMobiliario = 1;
 
SELECT *FROM Mobiliario;
DELETE FROM Mobiliario WHERE idMobiliario = 1;
 
SELECT *FROM Mobiliario;


SELECT *FROM Modelo;
UPDATE Modelo SET numeromodelo = 'numeromodelo1' WHERE idModelo = 1;
 
SELECT *FROM Modelo;
DELETE FROM Modelo WHERE idModelo = 1;
 
SELECT *FROM Modelo;

SELECT *FROM Nomina;
UPDATE Nomina SET folionomina = 'folionomina1' WHERE idNomina = 1;
 
SELECT *FROM Nomina;
DELETE FROM Nomina WHERE idNomina = 1;
 
SELECT *FROM Nomina;

SELECT *FROM Oferta;
UPDATE Oferta SET productoferta = 'productooferta1' WHERE idOferta = 1;
 
SELECT *FROM Oferta;
DELETE FROM Oferta WHERE idOferta = 1;

SELECT *FROM Oferta;


SELECT *FROM PagoServicio;
UPDATE PagoServicio SET servicio = 'tipopagservicio1' WHERE idPagoServicio = 1;
 
SELECT *FROM PagoServicio;
DELETE FROM PagoServicio WHERE idPagoServicio = 1;
 
SELECT *FROM PagoServicio;


SELECT *FROM PedidoLinea;
UPDATE PedidoLinea SET fechapedido = '04/12/2022' WHERE idPedidoLinea = 1;
 
SELECT *FROM PedidoLinea;
DELETE FROM PedidoLinea WHERE idPedidoLinea = 1;
 
SELECT *FROM PedidoLinea;


SELECT *FROM Prestacion;
UPDATE Prestacion SET tipoprestacion = 'tipoprestacion1' WHERE idPrestacion = 1;
 
SELECT *FROM Prestacion;
DELETE FROM Prestacion WHERE idPrestacion = 1;
 
SELECT *FROM Prestacion;

SELECT *FROM Proveedor;
UPDATE Proveedor SET nombre = 'nombre1' WHERE idProveedor = 1;
 
SELECT *FROM Proveedor;
DELETE FROM Proveedor WHERE idProveedor = 1;
 
SELECT *FROM Proveedor;


SELECT *FROM Publicidad;
UPDATE Publicidad SET tipopublicidad = 'tipoPublicidad1' WHERE idPublicidad = 1;
 
SELECT *FROM Publicidad;
DELETE FROM Publicidad WHERE idPublicidad = 1;
 
SELECT *FROM Publicidad;


SELECT *FROM Puesto;
UPDATE Puesto SET nombrepuesto = 'nombrepuesto1' WHERE idPuesto = 1;
 
SELECT *FROM Puesto;
DELETE FROM Puesto WHERE idPuesto = 1;
 
SELECT *FROM Puesto;


SELECT *FROM Reembolso;
UPDATE Reembolso SET cantidadreembolso = 1 WHERE idReembolso = 1;
 
SELECT *FROM Reembolso;
DELETE FROM Reembolso WHERE idReembolso = 1;
 
SELECT *FROM Reembolso;


SELECT *FROM Representante;
UPDATE Representante SET direccion = 'direccion1' WHERE idRepresentante = 1;
 
SELECT *FROM Representante;
DELETE FROM Representante WHERE idRepresentante = 1;
 
SELECT *FROM Representante;


SELECT *FROM Seccion;
UPDATE Seccion SET nombreseccion = 'nombreseccion1' WHERE idSeccion = 1;
 
SELECT *FROM Seccion;
DELETE FROM Seccion WHERE idSeccion = 1;
 
SELECT *FROM Seccion;


SELECT *FROM Sindicato;
UPDATE Sindicato SET nombresindicato = 'nombresindicato1' WHERE idSindicato = 1;
 
SELECT *FROM Sindicato;
DELETE FROM Sindicato WHERE idSindicato = 1;
 
SELECT *FROM Sindicato;


SELECT *FROM Sucursal;
UPDATE Sucursal SET direccion = 'direccion1' WHERE idSucursal = 1;
 
SELECT *FROM Sucursal;
DELETE FROM Sucursal WHERE idSucursal = 1;
 
SELECT *FROM Sucursal;




SELECT *FROM Ticket ;
UPDATE Ticket SET fecha = '04/12/2022' WHERE idTicket = 1;
 
SELECT *FROM Ticket;
DELETE FROM Ticket WHERE idTicket = 1;
 
SELECT *FROM Ticket;


SELECT *FROM TipoCalzado;
UPDATE TipoCalzado SET calzadohombre = 'calzadohombre1' WHERE idTipoCalzado = 1;
 
SELECT *FROM TipoCalzado;
DELETE FROM TipoCalzado WHERE idTipoCalzado = 1;
 
SELECT *FROM TipoCalzado;


SELECT *FROM TipoFacturacion;
UPDATE TipoFacturacion SET  montofacturar = 1 WHERE idTipoFacturacion = 1;
 
SELECT *FROM TipoFacturacion;
DELETE FROM TipoFacturacion WHERE idTipoFacturacion = 1;
 
SELECT *FROM TipoFacturacion;


SELECT *FROM Tipotransporte;
UPDATE Tipotransporte SET  chofer = 'chofer1' WHERE idTipotransporte = 1;
 
SELECT *FROM Tipotransporte;
DELETE FROM Tipotransporte WHERE idTipotransporte = 1;
 
SELECT *FROM Tipotransporte;


SELECT *FROM Vale;
UPDATE Vale SET  cantidadvale = 1 WHERE idVale = 1;
 
SELECT *FROM Vale;
DELETE FROM Vale WHERE idVale = 1;
 
SELECT *FROM Vale;


SELECT *FROM Venta;
UPDATE Venta SET nombreempleado = 'nombreempleado1' WHERE idVenta = 1;
 
SELECT *FROM Venta;
DELETE FROM Venta WHERE idVenta = 1;
 
SELECT *FROM Venta;


SELECT *FROM Vigilancia;
UPDATE Vigilancia SET numeroguardia = 1 WHERE idVigilancia = 1;
 
SELECT *FROM Vigilancia;
DELETE FROM Vigilancia WHERE idVigilancia = 1;
 
SELECT *FROM Vigilancia;


SELECT *FROM Zapato;
UPDATE Zapato SET tipozapato = 'tipozapato1' WHERE idZapato = 1;
 
SELECT *FROM Zapato;
DELETE FROM Zapato WHERE idZapato = 1;
 
SELECT *FROM Zapato;


SELECT *FROM ZonaDescarga;
UPDATE ZonaDescarga SET horariodisponible = 1 WHERE idZonaDescarga = 1;
 
SELECT *FROM ZonaDescarga;
DELETE FROM ZonaDescarga WHERE idZonaDescarga = 1;
 
SELECT *FROM ZonaDescarga;


