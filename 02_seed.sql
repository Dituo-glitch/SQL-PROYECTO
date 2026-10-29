INSERT INTO clientes (nombre, correo, direccion, telefono)
SELECT 
    n.nombre || ' ' || ap.apellido AS nombre,
    LOWER(TRANSLATE(n.nombre, 'áéíóúÁÉÍÓÚñÑ', 'aeiouAEIOUnN')) || '.' || 
    LOWER(TRANSLATE(ap.apellido, 'áéíóúÁÉÍÓÚñÑ', 'aeiouAEIOUnN')) || i || '@email.com' AS correo,
    'Calle ' || FLOOR(RANDOM() * 100 + 1)::INT || ' #' || FLOOR(RANDOM() * 90 + 10)::INT || '-' || FLOOR(RANDOM() * 90 + 10)::INT AS direccion,
    '3' || LPAD(FLOOR(RANDOM() * 1000000000)::TEXT, 9, '0') AS telefono
FROM generate_series(1, 10000) AS i
CROSS JOIN LATERAL (
    SELECT (ARRAY[
        'Carlos', 'Ana', 'Luis', 'Maria', 'Juan', 'Sofia', 'Pedro', 'Laura', 
        'Diego', 'Valentina', 'Andres', 'Camila', 'Felipe', 'Mariana', 'Javier', 
        'Daniela', 'Mateo', 'Lucia', 'Santiago', 'Elena'
    ])[FLOOR(RANDOM() * 20 + 1)] AS nombre
) n
CROSS JOIN LATERAL (
    SELECT (ARRAY[
        'Gomez', 'Rodriguez', 'Lopez', 'Martinez', 'Perez', 'Garcia', 'Sanchez', 
        'Torres', 'Ramirez', 'Flores', 'Diaz', 'Vargas', 'Castro', 'Morales', 
        'Rojas', 'Mendoza', 'Ortiz', 'Silva', 'Gutierrez', 'Rios'
    ])[FLOOR(RANDOM() * 20 + 1)] AS apellido
) ap;

SELECT count(*) FROM clientes;
SELECT * FROM clientes LIMIT 10000;

insert into productos (nombre, description, precio, stock)
values 
('Arroz Diana', 'Arroz Blanco 500 G', '2500.00', '1'),
('Arroz Boluga', 'Arroz Blanco 500 G', '2500.00', '1'),
('Arroz Premium', 'Arroz Blanco 500 G', '3000.00', '1'),
('Arroz Con Fideos', 'Arroz Blanco 500 G', '3000.00', '1'),
('Arroz Roa', 'Arroz Blanco 500 G', '2500.00', '1'),
('Lentejas Diana', 'Lentejas 400 G', '3500.00', '1'),
('Lentejas Maritza', 'Lentejas 454 G', '3500.00', '1'),
('Frijol Diana', 'Frijol 250 G', '2900.00', '1'),
('Frijol Maritza', 'Frijol 454 G', '11900.00', '1'),
('Fideos Doria', 'Pasta 250 G', '2700.00', '1'),
('Spaghetti Doria', 'Pasta 250 G', '2700.00', '1'),
('Concha Doria', 'Pasta 250 G', '2700.00', '1'),
('Lassagna Doria', 'Pasta 200 G', '7400.00', '1'),
('Spagetti La Muñeca', 'Pasta 250 G', '2500.00', '1'),
('Rigatone La Muñeca', 'Pasta 250 G', '2500.00', '1'),
('Cebolla De Angel La Muñeca', 'Pasta 200 G', '2500.00', '1'),
('Azúcar Mayagüez Blanca', 'Azúcar 500 G', '2800.00', '1'),
('Azúcar Mayagüez Morena', 'Azúcar 500 G', '3000.00', '1'),
('Sal Refisal Marina', 'Sal 400 G', '2500.00', '1'),
('Sal Refisal Alta Pureza', 'Sal 400 G', '2000.00', '1'),
('Salero Refisal Limon', 'Sal 110 G', '4800.00', '1'),
('Salero Refisal Tomillo Laurel', 'Sal 100 G', '5000.00', '1'),
('Salero Refisal Alta Pureza', 'Sal 130 G', '1500.00', '1'),
('Pop Corn Maritza', 'Maíz Pira 450 G', '3300.00', '1'),
('Garbanzos Diana', 'Garbanzos 500 G', '3200.00', '1'),
('Arveja Amarilla Maritza', 'Arvejas 450 G', '2000.00', '1'),
('Arvejas Diana', 'Arvejas 500 G', '2600.00', '1'),
('Carne de res', 'Carne de res 500 g', '12000.00', '1'),
('Pollo', 'Pechuga de pollo', '10500.00', '1'),
('Gaseosa', 'Gaseosa coca cola 1.75 L', '4000.00', '1'),
('Speeed Max Lata', 'Speed 250 Ml', '2000.00', '1'),
('Speeed Max', 'Speed 250 Ml', '1500.00', '1'),
('Pepsi', 'Gaseosa 400 Ml', '2200.00', '1'),
('Postobon Uva', 'Gaseosa 400 Ml', '2500.00', '1'),
('Postobon Uva', 'Gaseosa 400 Ml', '2500.00', '1'),
('Postobon Colombiana', 'Gaseosa 400 Ml', '2500.00', '1'),
('Postobon Manzana', 'Gaseosa 400 Ml', '2500.00', '1'),
('Coca-Cola', 'Gaseosa 250 Ml', '2000.00', '1'),
('Gaseosa Del Valle', 'Gaseosa 400 Ml', '25000.00', '1'),
('Gaseosa Quatro', 'Gaseosa 400 Ml', '25000.00', '1'),
('Coca & Cola', 'Gaseosa 400 Ml', '3000.00', '1'),
('H2OH!', 'H2OH! 1.5 L', '2500.00', '1'),
('Leche Colanta', 'Leche 1 litro', '4200.00', '1'),
('Leche Trebol', 'Leche 900 Ml', '4000.00', '1'),
('Leche Trebol', 'Leche 900 Ml', '4000.00', '1'),
('Leche Colanta Entera', 'Leche 1 L', '5900.00', '1'),
('Leche Alqueria Media', 'Leche 400 Ml', '2400.00', '1'),
('Leche Alqueria Meg', 'Leche 1.100 Ml', '6900.00', '1'),
('Leche Alqueria Meg Delactosada', 'Leche 1.100 Ml', '6900.00', '1'),
('Leche Semidescremada Deslactosada', 'Leche 1.100 Ml', '5900.00', '1'),
('Leche Trebol', 'Leche 900 Ml', '4000.00', '1'),
('Jabón', 'Jabón Tigre 450 g', '3000.00', '1'),
('Detergente', 'Detergente AK-1.3 Lt', '6500.00', '1'),
('Papel higiénico', 'familia-expert', '7000.00', '1'),
('Manzana', 'Manzana roja', '4500.00', '1'),
('Banano', 'Banano por kilo', '3500.00', '1'),
('Zanahoria', 'Zanahoria por kilo', '3000.00', '1'),
('Queso', 'Queso Colanta 250 g', '8000.00', '1'),
('Yogur', 'Yogur original fresa 900 g', '5500.00', '1'),
('Galletas', 'Galletas festival de x6 unidades', '2500.00', '1'),
('Palomitas', 'Palomitas de maíz', '3000.00', '1');

INSERT INTO domicilios (nombre, telefono, descripcion)
SELECT 
(ARRAY['Carlos', 'María', 'Juan', 'Ana', 'Luis', 'Sofía', 'Pedro', 'Laura'])[floor(random() * 8 + 1)] 
|| ' ' || 
(ARRAY['Gómez', 'Rodríguez', 'López', 'Martínez', 'García', 'Pérez', 'Torres', 'Sánchez'])[floor(random() * 8 + 1)] AS nombre,
'3' || LPAD(floor(random() * 1000000000)::text, 9, '0') AS telefono,
(ARRAY['Entrega en portería', 'Dejar en recepción', 'Casa esquinera portón negro', 'Edificio el prado apto 302'])[floor(random() * 4 + 1)] AS descripcion
FROM generate_series(1, 20);

select count(*) from domicilios;