Create database bd_livraria;
use bd_livraria;

create table tb_usuario (
cd_usuario int primary key auto_increment,
login varchar(45),
senha varchar(45)
);

create table tb_autor (
cd_autor int primary key auto_increment,
nm_autor varchar(45)
);

create table tb_livro (
cd_livro int primary key auto_increment,
nm_livro varchar(45),
ds_livro varchar(80),
nm_genero varchar(45),
fk_cd_autor int,
foreign key (fk_cd_autor) references tb_autor(cd_autor)
);