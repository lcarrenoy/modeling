                                /* Modeling */

  create table category
  (Idcategory varchar(5) not null , --c00001
  Namecategory varchar(50),
  Estado bit not null ,
  check (Idcategory like '[c][0-9][0-9][0-9][0-9]'),
  unique (Namecategory),
  primary key (Idcategory)
  )

  create table family
  (Idfamily varchar(5) not null , --f00001
  Namefamily varchar(50),
  Estado bit not null ,
  check (Idfamily like '[f][0-9][0-9][0-9][0-9]'),
  unique (Namefamily),
  primary key (Idfamily)
  )

  create table brand
  (Idbrand varchar(5) not null , --b00001
  Namebrand varchar(50),
  Estado bit not null ,
  check (Idbrand like '[b][0-9][0-9][0-9][0-9]'),
  unique (Namebrand),
  primary key (Idbrand)
  )
  
   create table payment
  (Idpayment varchar(5) not null , --y00001
   Namepayment varchar(50),
   Estado bit not null ,
  check (Idpayment like '[y][0-9][0-9][0-9][0-9]'),
  unique (Namepayment),
  primary key (Idpayment)
  )

   create table customer
  (Idcustomer varchar(5) not null , --n00001
  Namecustomer varchar(50),
  Estado bit not null ,
  check (Idcustomer like '[n][0-9][0-9][0-9][0-9]'),
  email varchar(50) null,
  unique (Namecustomer),
  primary key (Idcustomer)
  )
  
   create table product
  (Idproduct varchar(5) not null , --p00001
  Idcategory varchar(5) not null , --c00001
  Idbrand varchar(5) not null , --b00001
  Idfamily varchar(5) not null , --f00001
  Nameproduct varchar(50),
  price decimal (10,2) not null,
  Estado bit not null ,
  check (Idproduct like '[p][0-9][0-9][0-9][0-9]'),
  unique (Nameproduct),
  primary key (Idproduct),
  foreign key (Idcategory) references category(Idcategory),
  foreign key (Idbrand) references brand(Idbrand),
  foreign key (Idfamily) references family(Idfamily),)
  create table invoice
  (Idinvoice varchar(5) not null , --i00001
  Idpayment varchar(5) not null , --y00001
  Idcustomer varchar(5) not null , --n00001
  check (Idinvoice like '[i][0-9][0-9][0-9][0-9]'),
  primary key (Idinvoice),
  foreign key (Idpayment) references payment(Idpayment),
  foreign key (Idcustomer) references customer(Idcustomer),
  )

   create table detail
  (Iddetail varchar(5) not null , --d00001
  Idinvoice varchar(5) not null , --i00001
  Idproduct varchar(5) not null , --p00001
  price decimal(10,2) not null,
  cant int not null,
  check (Iddetail like '[d][0-9][0-9][0-9][0-9]'),
  primary key (Iddetail),
  foreign key (Idinvoice) references invoice(Idinvoice),
  foreign key (Idproduct) references product(Idproduct),
  )


  insert into category values ('c0001','category1',1);
  insert into category values ('c0002','category2',1);
  insert into category values ('c0003','category3',1)

  insert into family values ('f0001','familia1',1);
  insert into family values ('f0002','familia2',1);
  insert into family values ('f0003','familia3',1)

  insert into brand values ('b0001','brand1',1);
  insert into brand values ('b0002','brand2',1);
  insert into brand values ('b0003','brand3',1)

  insert into payment values ('y0001','payment1',1);
  insert into payment values ('y0002','payment2',1);
  insert into payment values ('y0003','payment3',1)

  insert into customer values ('n0001','customer1',1,'email1');
  insert into customer values ('n0002','customer2',1,'email2');
  insert into customer values ('n0003','customer3',1,'email3')


  insert into product values ('p0001','c0001','b0001','f0001','Nomproduct1','100',1);
  insert into product values ('p0002','c0002','b0002','f0002','Nomproduct2','200',1);
  insert into product values ('p0003','c0003','b0003','f0003','Nomproduct3','300',1)

  insert into invoice values ('i0001','y0001','n0001');
  insert into invoice values ('i0002','y0002','n0002');
  insert into invoice values ('i0003','y0003','n0003')

  insert into detail values ('d0001','i0001','p0001','200','5');
  insert into detail values ('d0002','i0002','p0002','200','5');
  insert into detail values ('d0003','i0003','p0003','200','5')

