-- Clientes [ent1]
create table "APP"."CLIENTES" (
   "OID"  integer  not null,
   "NOMBRE"  varchar(255),
   "APELLIDO"  varchar(255),
   "DIRECCION"  varchar(255),
   "EMAIL"  varchar(255),
  primary key ("OID")
);


