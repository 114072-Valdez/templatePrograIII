use progra3_practica

INSERT INTO albaniles (Id, Nombre, Apellido, Dni, Telefono, Calle, Numero, CodPost, Activo, FechaAlta)
VALUES
(NEWID(),'Juan', 'Pérez', '12345678A', '555-1234', 'Calle Falsa', 123, '28001', 1, '2024-08-01'),
(NEWID(),'María', 'García', '23456789B', '555-2345', 'Avenida Siempre Viva', 456, '28002', 0, '2024-08-02'),
(NEWID(),'Carlos', 'López', '34567890C', '555-3456', 'Calle de la Estrella', 789, '28003', 1, '2024-08-03'),
(NEWID(),'Ana', 'Martínez', '45678901D', '555-4567', 'Plaza Mayor', 101, '28004', 0, '2024-08-04'),
(NEWID(),'Luis', 'Fernández', '56789012E', '555-5678', 'Calle del Sol', 202, '28005', 1, '2024-08-05'),
(NEWID(),'Laura', 'Gómez', '67890123F', '555-6789', 'Calle del Agua', 303, '28006', 1, '2024-08-06'),
(NEWID(),'Javier', 'Romero', '78901234G', '555-7890', 'Avenida de la Paz', 404, '28007', 0, '2024-08-07'),
(NEWID(),'Isabel', 'Hernández', '89012345H', '555-8901', 'Calle del Viento', 505, '28008', 1, '2024-08-08'),
(NEWID(),'Manuel', 'Vázquez', '90123456I', '555-9012', 'Calle del Río', 606, '28009', 0, '2024-08-09'),
(NEWID(),'Beatriz', 'Sánchez', '01234567J', '555-0123', 'Calle de la Luna', 707, '28010', 1, '2024-08-10');

INSERT INTO tipos_obras (Id, Nombre)
VALUES
(NEWID(), 'Construcción de Viviendas'),
(NEWID(), 'Obras Públicas'),
(NEWID(), 'Construcción de Puentes')

select * from tipos_obras

INSERT INTO obras(Id, Nombre, datosVarios, IdTipoObra)
VALUES
(NEWID(), 'Edificio 1', 'Construcción de 10 pisos con estacionamiento subterráneo.', '23F29E94-9434-4AB7-A68B-515DD943B73A'),
(NEWID(), 'Puente 1', 'Puente de acero de 500 metros para tránsito vehicular.', 'DFEC398B-2312-47BC-A7A2-76FBE047378B'),
(NEWID(), 'Teatro Municipal', 'Restauración de fachada y refuerzo estructural.', '840A60C9-C962-4B9B-A3AF-47758E2259F4'),
(NEWID(), 'Construcción de Viviendas', 'Construcción de 100 viviendas para familias de bajos recursos.', '23F29E94-9434-4AB7-A68B-515DD943B73A'),
(NEWID(), 'Reparación de Carretera Principal', 'Asfaltado y reparación de baches en la carretera principal.', '840A60C9-C962-4B9B-A3AF-47758E2259F4'),
(NEWID(), 'Construcción de Nuevo Hospital', 'Hospital con 200 camas y área de urgencias.', '840A60C9-C962-4B9B-A3AF-47758E2259F4')

select * from albaniles
select * from obras

INSERT INTO albaniles_x_obras (Id, IdAlbanil, IdObra, TareaARealizar, FechaAlta)
VALUES
(NEWID(), '273242A0-F744-43AC-B891-0F36AC2D51A8', '45CA2D93-4685-45EC-ACFF-261D000BE73A', 'Instalación de sistemas de ventilación', '2024-08-01'),
(NEWID(), 'D1B46AF1-2A58-4508-8EE0-11C8BAEDCCDA', '89A2E111-6121-4379-A2CE-2D5945D7AD29', 'Reparación de baches en la carretera', '2024-08-02'),
(NEWID(), 'D1A6008C-20F1-4B75-A845-439E411AA6BB', '000F511D-8057-4A70-A98A-9421FCFEB948', 'Restauración de fachada', '2024-08-03'),
(NEWID(), 'AE15DF24-2F67-4CBF-9305-548E91C065D2', '4D2D72F0-E2DB-487F-AB2F-A1F4B4908601', 'Instalación de elementos estructurales', '2024-08-04'),
(NEWID(), 'AB9ABF82-2034-4BDC-8647-60355F71BEB9', '0042B611-6BC4-4505-AE76-AC4CDAD1E513', 'Preparación del terreno', '2024-08-05'),
(NEWID(), 'B86F9D7A-DC99-4EE8-802F-62DC43B67DD8', '4D5F1E3D-24BC-4A54-8E9D-CB55D4EE940B', 'Colocación de cimientos', '2024-08-06'),
(NEWID(), '4CEBC78A-6A8B-4A8F-BC54-716481F17845', '45CA2D93-4685-45EC-ACFF-261D000BE73A', 'Montaje de estructuras de soporte', '2024-08-07'),
(NEWID(), 'C7C128DF-B0F1-4D71-AD20-77E22C732781', '89A2E111-6121-4379-A2CE-2D5945D7AD29', 'Instalación de señalización', '2024-08-08'),
(NEWID(), '5C920E71-CF49-4EDC-94FE-C04199CBBC4C', '0042B611-6BC4-4505-AE76-AC4CDAD1E513', 'Construcción de muros de contención', '2024-08-09'),
(NEWID(), 'BB9A762A-5FD1-42B3-BBA9-C802DDC4ABEB', '4D5F1E3D-24BC-4A54-8E9D-CB55D4EE940B', 'Instalación de sistemas eléctricos', '2024-08-10');