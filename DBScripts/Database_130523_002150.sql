-- Group [Group]
create table "APP"."GROUP_2" (
   "OID"  integer  not null,
   "GROUPNAME"  varchar(255),
  primary key ("OID")
);


-- Module [Module]
create table "APP"."MODULE_2" (
   "OID"  integer  not null,
   "MODULEID"  varchar(255),
   "MODULENAME"  varchar(255),
  primary key ("OID")
);


-- User [User]
create table "APP"."USER_2" (
   "OID"  integer  not null,
   "USERNAME"  varchar(255),
   "PASSWORD"  varchar(255),
   "EMAIL"  varchar(255),
  primary key ("OID")
);


-- Clientes [ent1]
alter table "APP"."CLIENTES"  add column  "FECHA_DE_NACIMIENTO"  date;


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "APP"."GROUP_2"  add column  "MODULE_2_OID"  integer;
alter table "APP"."GROUP_2"   add constraint FK_GROUP_2_MODULE_2 foreign key ("MODULE_2_OID") references "APP"."MODULE_2" ("OID");


-- Group_Module [Group2Module_Module2Group]
create table "APP"."GROUP_MODULE_2" (
   "GROUP_2_OID"  integer not null,
   "MODULE_2_OID"  integer not null,
  primary key ("GROUP_2_OID", "MODULE_2_OID")
);
alter table "APP"."GROUP_MODULE_2"   add constraint FK_GROUP_MODULE_2_GROUP_2 foreign key ("GROUP_2_OID") references "APP"."GROUP_2" ("OID");
alter table "APP"."GROUP_MODULE_2"   add constraint FK_GROUP_MODULE_2_MODULE_2 foreign key ("MODULE_2_OID") references "APP"."MODULE_2" ("OID");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "APP"."USER_2"  add column  "GROUP_2_OID"  integer;
alter table "APP"."USER_2"   add constraint FK_USER_2_GROUP_2 foreign key ("GROUP_2_OID") references "APP"."GROUP_2" ("OID");


-- User_Group [User2Group_Group2User]
create table "APP"."USER_GROUP_2" (
   "USER_2_OID"  integer not null,
   "GROUP_2_OID"  integer not null,
  primary key ("USER_2_OID", "GROUP_2_OID")
);
alter table "APP"."USER_GROUP_2"   add constraint FK_USER_GROUP_2_USER_2 foreign key ("USER_2_OID") references "APP"."USER_2" ("OID");
alter table "APP"."USER_GROUP_2"   add constraint FK_USER_GROUP_2_GROUP_2 foreign key ("GROUP_2_OID") references "APP"."GROUP_2" ("OID");


