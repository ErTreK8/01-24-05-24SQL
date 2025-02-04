-- El create database se tiene que hacer solo y luego el resto del codigo
-- create database testDB;
use testDB;

if(OBJECT_ID('Roba') IS NULL)
begin
create table Roba(
	referencia char(6) primary key,
	nom varchar(30) not NULL,
	categoria varchar(20),
	preu money,
	talla varchar(3) default 'S'
);
-- dbo == data base owner


END


select * from Roba;
INSERT INTO Roba VALUES('122245','Pantaló Texà','Jeans',79.99,'M');


-- cuando se ponga un if o cualquier cosa los {} es BEGIN y END

-- Bloc instruccion:

Begin
	-- @ es para poner el nombre de la variable NO ES KEY SENSITIVE num2=NUM2
	-- Solo tienen vida entre el BEGIN y el END en el bloque.
	DECLARE @num1 INT, @resultat INT
	declare @num2 int = 5
	declare @nom varchar(20), @cognom varchar(20)
	declare @nouPreu MONEY = 100


	-- SET es para cambiarle
	SET @num1 = 6
	SET @resultat = @num1 + @num2
	set @nom = 'Maria'
	set @cognom = 'Fernandez Sanchez'

	print 'El nom es: ' + @nom + ' ' + @cognom
	-- Error varchar al tipo de resultado INT (print solo sabe concatenar char y varchar no int)
	-- PRINT 'El resultat es: ' + @resultat
	
	-- SOLUCION: convierte la variable en la impresion a varchar
	PRINT 'El resultat es: ' + cast(@resultat AS VARCHAR(3))

	UPDATE Roba SET preu = @nouPreu WHERE referencia ='122245'

END

GO


-- Fer un bloc d'instruccion que capturi el nom, categoria i preu
-- d'unca peça de roba donada una referencia
BEGIN
	DECLARE @referencia char(6)
	DECLARE @nom varchar(30), @categoria varchar(20)
	declare @preu MONEY
	declare @existeixProd BIT -- es un bool 0 es FALSE 1 es TRUE


	Set @referencia ='122245'
	-- Siempre entre parentesis y para cojer la info con un select como si fuera una subconsulta
	-- MANERA LENTA:
	-- SET @nom = (Select nom from roba where referencia=@referencia)
	-- SET @categoria = (Select categoria from roba where referencia=@referencia)
	-- SET @preu = (Select preu from roba where referencia=@referencia)

	
	SET @existeixProd = (select count(*) from Roba where referencia = @referencia)


	-- No es necesario poner el begin y el end si es una instruccion
	if(@existeixProd=0) print 'La roba amb referencia: ' + @referencia + ' NO existeix'
	
	ELSE
	BEGIN
		-- Manera Rapida (Optimizada):
		Select @nom= nom, @categoria= categoria, @preu = preu 
		from Roba where referencia = @referencia
		
		PRINT 'REFERENCIA: ' + @referencia
		PRINT 'NOM: ' + @nom -- SI cambio la referencia y se pone NULL es NOM: + NULL = NULL Es como un abujero negro
		PRINT 'CAT: ' + @categoria
		PRINT 'PREU: ' + CAST(@preu AS VARCHAR(10))
	END
END
GO

-- Es como una funcion literalmente igual xd (si cambias algo tienes q volver a ejecutar el procedimiento xd (para eso esta el alter) god)

-- Para borrar procedimiento
-- DROP procedure saludar
Create or alter procedure saludar(@nom VARCHAR(20), @cognom VARCHAR(40)) 
	AS
Begin
	print 'Hola ' + @nom + ' ' + @cognom
END
Go

-- si sobra en el VARCHAR(40) no pasa nada y si faltan numeros pues ol corta y lo deja con lo del procedimiento VARCHAR(20) Martinez en el procedimiento VARCHAR (5) seria Marti

begin
	declare @cadena varchar(40)
	set @cadena = 'Martinez'
	Exec saludar 'David', @cadena
end
go

-- Fer un proceiment per inserir una peça de roba

create or alter procedure inserirRoba (@referencia CHAR(6), @nom VARCHAR(30), @categoria VARCHAR(20), @preu MONEY, @talla Varchar(3))
WITH Recompile AS
BEGIN
	SET NOCOUNT ON -- Esto quita los mensajes tipo (1 row affected)
	IF(@referencia IS NULL or LEN(@referencia)<>6) print'REFERENCIA INCORRECTE' -- <> significa distinto a numero == <> 9, distinto a 9
	else IF(@nom IS NULL or LEN(@nom)=0) print'La peça d eroba ha de tenir Nom'
	else if(@preu<=0) print'EL preu no pot ser negatiu o 0'
	-- else if (@talla !='S' AND @talla!='M' AND @talla !='L') print'Talla Incorrecta'
	-- Es lo mismo que arriba
	else if (@talla NOT IN ('S','M','L')) print'Talla Incorrecta'
	else if ((Select Count(*) from ROba where referencia = @referencia)=1) print'Referencia duplicada'
	else
	BEGIN
		INSERT INTO Roba VALUES(@referencia,@nom,@categoria,@preu,@talla)
		print'Producte inserit Correctament' + char(13) + 'Asi se pone un \n en SQL' -- el char(13)
	END
END
GO

-- Si le quieres pasar todo menos la talla tendras de poner NULL EJ:
-- exec inserirRoba '122128', 'Polo Vermell J&J', 'Polo', 29.95, NULL
exec inserirRoba '122129', 'Polo Vermell J&J', 'Polo', 29.95, 'S'


