-- Creacion del esquema donde se ara la carga del csv --
create schema ot_2026

-- le decimos a MySQL con que base de datos vamos a trabajar -- 
use ot_2026

-- importamos el csv a traves de la funcion "Table Data import Wizard" --

-- eliminamos unas columnas que tenian errores y creamos otras como el id, ciudad, canton, provincia -- 
ALTER TABLE ot_2025.oferta_laboral_ecuador 
DROP COLUMN sector,
DROP COLUMN parroquia,
ADD COLUMN id_oferta_laboral INT NOT NULL AUTO_INCREMENT AFTER canton,
ADD COLUMN provincia VARCHAR(45) NULL AFTER id_oferta_laboral,
CHANGE COLUMN ciudad canton TEXT NULL DEFAULT NULL ,
ADD PRIMARY KEY (id_oferta_laboral);

-- Actualizacion y normalizacion de los datos de provincia y canton --
-- Se asigna la provincia y canton correctos a cada ciudad, y se unifican nombres de ciudades con variaciones. --

UPDATE ot_2026.oferta_laboral_ecuador
SET provincia = 'pichincha',
canton = 'quito'
WHERE ciudad = 'quito';

UPDATE ot_2026.oferta_laboral_ecuador
SET provincia = 'imbabura', canton = 'ibarra'
WHERE ciudad = 'ibarra';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'guayas', canton = 'guayaquil' 
WHERE ciudad = 'guayaquil';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pichincha', canton = 'pedro vicente maldonado' 
WHERE ciudad = 'pedro vicente maldonado';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'manabí', canton = 'portoviejo' 
WHERE ciudad = 'portoviejo';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'sucumbíos', canton = 'lago agrio' 
WHERE ciudad = 'nueva loja';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'sucumbíos', canton = 'lago agrio' 
WHERE ciudad = 'lago agrio';

UPDATE ot_2026.oferta_laboral_ecuador 
SET ciudad = 'nueva loja' 
WHERE ciudad = 'lago agrio';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'orellana', canton = 'orellana' 
WHERE ciudad = 'puerto francisco de orellana';

UPDATE ot_2026.oferta_laboral_ecuador 
SET ciudad = 'sangolquí' 
WHERE ciudad = 'rumiñahui';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pichincha', canton = 'rumiñahui'
WHERE ciudad ='sangolquí';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'azuay', canton = 'cuenca' 
WHERE ciudad = 'cuenca';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pichincha', canton = 'cayambe' 
WHERE ciudad = 'cayambe';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'loja', canton = 'loja' 
WHERE ciudad = 'loja';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'imbabura', canton = 'otavalo' 
WHERE ciudad = 'otavalo';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'loja', canton = 'espindola' 
WHERE ciudad = 'espindola';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'esmeraldas', canton = 'esmeraldas' 
WHERE ciudad = 'esmeraldas';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'el oro', canton = 'machala' 
WHERE ciudad = 'machala';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'manabí', canton = 'manta' 
WHERE ciudad = 'manta';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'santa elena', canton = 'salinas' 
WHERE ciudad = 'salinas';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'cotopaxi', canton = 'latacunga' 
WHERE ciudad = 'latacunga';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'tungurahua', canton = 'ambato' 
WHERE ciudad = 'ambato';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pastaza', canton = 'pastaza', ciudad = 'puyo'
WHERE ciudad IN ('pastaza', 'puyo');

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'napo', canton = 'tena' 
WHERE ciudad = 'tena';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'orellana', canton = 'la joya de los sachas' 
WHERE ciudad = 'la joya de los sachas';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'santa elena', canton = 'la libertad' 
WHERE ciudad = 'la libertad';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'bolívar', canton = 'guaranda' 
WHERE ciudad = 'guaranda';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'manabí', canton = 'jaramijo' 
WHERE ciudad = 'jaramijo';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'guayas', canton = 'duran' 
WHERE ciudad = 'duran';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'cotopaxi', canton = 'sigchos' 
WHERE ciudad = 'sigchos';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'azuay', canton = 'camilo ponce enriquez' 
WHERE ciudad = 'camilo ponce enriquez';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'los ríos', canton = 'buena fe' 
WHERE ciudad = 'buena fe';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'los ríos', canton = 'quevedo' 
WHERE ciudad = 'quevedo';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'cotopaxi', canton = 'la mana' 
WHERE ciudad = 'la mana';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'zamora chinchipe', canton = 'el pangui' 
WHERE ciudad = 'el pangui';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'manabí', canton = 'el carmen' 
WHERE ciudad = 'el carmen';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'guayas', canton = 'playas' 
WHERE ciudad = 'playas';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pastaza', canton = 'mera' 
WHERE ciudad = 'mera';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pichincha', canton = 'pedro moncayo' 
WHERE ciudad = 'pedro moncayo';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'carchi', canton = 'montufar', ciudad = 'san gabriel' 
WHERE ciudad IN ('montufar', 'san gabriel');

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'azuay', canton = 'paute' 
WHERE ciudad = 'paute';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'azuay', canton = 'santa isabel' 
WHERE ciudad = 'santa isabel';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'cañar', canton = 'la troncal' 
WHERE ciudad = 'la troncal';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'cañar', canton = 'cañar' 
WHERE ciudad = 'cañar';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'sucumbíos', canton = 'lago agrio', ciudad = 'nueva loja' 
WHERE ciudad = 'sucumbios';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'guayas', canton = 'daule' 
WHERE ciudad = 'daule';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'morona santiago', canton = 'morona' 
WHERE ciudad = 'macas';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'guayas', canton = 'samborondón' 
WHERE ciudad = 'samborondon';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'los ríos', canton = 'palenque' 
WHERE ciudad = 'palenque';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'manabí', canton = 'tosagua' 
WHERE ciudad = 'tosagua';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'cotopaxi', canton = 'pangua' 
WHERE ciudad = 'pangua';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'loja', canton = 'paltas', ciudad = 'catacocha' 
WHERE ciudad = 'paltas';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'carchi', canton = 'mira' 
WHERE ciudad = 'mira';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'morona santiago', canton = 'gualaquiza' 
WHERE ciudad = 'gualaquiza';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'chimborazo', canton = 'penipe' 
WHERE ciudad = 'penipe';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'imbabura', canton = 'san miguel de urcuquí', ciudad = 'urcuquí' 
WHERE ciudad = 'san miguel de urcuqui';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'sucumbíos', canton = 'cuyabeno', ciudad = 'tarapoa' 
WHERE ciudad = 'cuyabeno';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'zamora chinchipe', canton = 'paquisha' 
WHERE ciudad = 'paquisha';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'azuay', canton = 'pucará', ciudad = 'pucará' 
WHERE ciudad = 'pucara';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'loja', canton = 'macará', ciudad = 'macará' 
WHERE ciudad = 'macara';
--
UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'loja', canton = 'puyango' 
WHERE ciudad = 'puyango';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pichincha', canton = 'mejía', ciudad = 'machachi' 
WHERE ciudad = 'mejia';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'manabí', canton = 'pedernales' 
WHERE ciudad = 'pedernales';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'orellana', canton = 'aguarico' 
WHERE ciudad = 'aguarico';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'morona santiago', canton = 'san juan bosco' 
WHERE ciudad = 'san juan bosco';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'el oro', canton = 'piñas' 
WHERE ciudad = 'piñas';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'loja', canton = 'saraguro' 
WHERE ciudad = 'saraguro';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'galápagos', canton = 'san cristóbal', ciudad = 'puerto baquerizo moreno' 
WHERE ciudad = 'san cristobal';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'morona santiago', canton = 'santiago' 
WHERE ciudad = 'santiago';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'santa elena', canton = 'santa elena' 
WHERE ciudad = 'santa elena';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'morona santiago', canton = 'limón indanza' 
WHERE ciudad = 'limon indanza';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'zamora chinchipe', canton = 'yantzaza' 
WHERE ciudad = 'yantzaza';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'morona santiago', canton = 'taisha' 
WHERE ciudad = 'taisha';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'orellana', canton = 'loreto' 
WHERE ciudad = 'loreto';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'el oro', canton = 'balsas' 
WHERE ciudad = 'balsas';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = NULL, canton = NULL 
WHERE ciudad = 'indistinto';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'guayas', canton = 'milagro' 
WHERE ciudad = 'milagro';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'manabí', canton = 'sucre' 
WHERE ciudad = 'sucre';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'los ríos', canton = 'vinces' 
WHERE ciudad = 'vinces';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pichincha', canton = 'puerto quito' 
WHERE ciudad = 'puerto quito';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pichincha', canton = 'san miguel de los bancos' 
WHERE ciudad = 'san miguel de los bancos';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'imbabura', canton = 'antonio ante' 
WHERE ciudad = 'antonio ante';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'cañar', canton = 'el tambo' 
WHERE ciudad = 'el tambo';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'napo', canton = 'quijos' 
WHERE ciudad = 'quijos';

UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'sucumbíos', canton = 'cascales', ciudad = 'cascales' WHERE ciudad = 'cascales';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'napo', canton = 'el chaco', ciudad = 'el chaco' WHERE ciudad = 'el chaco';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'cotopaxi', canton = 'pujili', ciudad = 'pujilí' WHERE ciudad = 'pujili';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'pasaje', ciudad = 'pasaje' WHERE ciudad = 'pasaje';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'esmeraldas', canton = 'san lorenzo', ciudad = 'san lorenzo' WHERE ciudad = 'san lorenzo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'jama', ciudad = 'jama' WHERE ciudad = 'jama';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'chimborazo', canton = 'alausi', ciudad = 'alausí' WHERE ciudad = 'alausi';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'giron', ciudad = 'girón' WHERE ciudad = 'giron';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'santa rosa', ciudad = 'santa rosa' WHERE ciudad = 'santa rosa';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'galápagos', canton = 'isabela', ciudad = 'puerto villamil' WHERE ciudad = 'isabela';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'bolívar', canton = 'chillanes', ciudad = 'chillanes' WHERE ciudad = 'chillanes';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'tungurahua', canton = 'baños de agua santa', ciudad = 'baños de agua santa' WHERE ciudad = 'baños de agua santa';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'tungurahua', canton = 'santiago de pillaro', ciudad = 'píllaro' WHERE ciudad = 'santiago de pillaro';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'loja', canton = 'zapotillo', ciudad = 'zapotillo' WHERE ciudad = 'zapotillo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'imbabura', canton = 'pimampiro', ciudad = 'pimampiro' WHERE ciudad = 'pimampiro';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'sucumbíos', canton = 'putumayo', ciudad = 'puerto el carmen' WHERE ciudad = 'putumayo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'cotopaxi', canton = 'salcedo', ciudad = 'salcedo' WHERE ciudad = 'salcedo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'imbabura', canton = 'cotacachi', ciudad = 'cotacachi' WHERE ciudad = 'cotacachi';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'chimborazo', canton = 'guano', ciudad = 'guano' WHERE ciudad = 'guano';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'chordeleg', ciudad = 'chordeleg' WHERE ciudad = 'chordeleg';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'loja', canton = 'calvas', ciudad = 'cariamanga' WHERE ciudad = 'calvas';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'esmeraldas', canton = 'atacames', ciudad = 'atacames' WHERE ciudad = 'atacames';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'chimborazo', canton = 'guamote', ciudad = 'guamote' WHERE ciudad = 'guamote';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'santo domingo de los tsáchilas', canton = 'la concordia', ciudad = 'la concordia' WHERE ciudad = 'la concordia';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'chimborazo', canton = 'chunchi', ciudad = 'chunchi' WHERE ciudad = 'chunchi';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'tungurahua', canton = 'patate', ciudad = 'patate' WHERE ciudad = 'patate';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'esmeraldas', canton = 'quininde', ciudad = 'rosa zárate' WHERE ciudad = 'quininde';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'morona santiago', canton = 'sucua', ciudad = 'sucúa' WHERE ciudad = 'sucua';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'morona santiago', canton = 'logroño', ciudad = 'logroño' WHERE ciudad = 'logroño';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'loja', canton = 'catamayo', ciudad = 'catamayo' WHERE ciudad = 'catamayo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'nabon', ciudad = 'nabón' WHERE ciudad = 'nabon';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'oña', ciudad = 'oña' WHERE ciudad = 'oña';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'san fernando', ciudad = 'san fernando' WHERE ciudad = 'san fernando';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'sevilla de oro', ciudad = 'sevilla de oro' WHERE ciudad = 'sevilla de oro';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'sigsig', ciudad = 'sigsig' WHERE ciudad = 'sigsig';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'bolívar', canton = 'san miguel', ciudad = 'san miguel' WHERE ciudad = 'san miguel';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'bolivar', ciudad = 'calceta' WHERE ciudad = 'bolivar';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'carchi', canton = 'espejo', ciudad = 'el ángel' WHERE ciudad = 'espejo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'cotopaxi', canton = 'saquisili', ciudad = 'saquisilí' WHERE ciudad = 'saquisili';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'morona santiago', canton = 'huamboya', ciudad = 'huamboya' WHERE ciudad = 'huamboya';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'san jacinto de yaguachi', ciudad = 'san jacinto de yaguachi' WHERE ciudad = 'san jacinto de yaguachi';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'morona santiago', canton = 'morona', ciudad = 'macas' WHERE ciudad = 'morona';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'morona santiago', canton = 'palora', ciudad = 'palora' WHERE ciudad = 'palora';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'morona santiago', canton = 'tiwintza', ciudad = 'santiago' WHERE ciudad = 'tiwintza';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'bolívar', canton = 'caluma', ciudad = 'caluma' WHERE ciudad = 'caluma';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'napo', canton = 'archidona', ciudad = 'archidona' WHERE ciudad = 'archidona';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'montecristi', ciudad = 'montecristi' WHERE ciudad = 'montecristi';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'pastaza', canton = 'santa clara', ciudad = 'santa clara' WHERE ciudad = 'santa clara';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'gualaceo', ciudad = 'gualaceo' WHERE ciudad = 'gualaceo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'carchi', canton = 'san pedro de huaca', ciudad = 'huaca' WHERE ciudad = 'san pedro de huaca';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'portovelo', ciudad = 'portovelo' WHERE ciudad = 'portovelo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'santa ana', ciudad = 'santa ana de vuelta larga' WHERE ciudad = 'santa ana';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'alfredo baquerizo moreno (jujan)', ciudad = 'alfredo baquerizo moreno' WHERE ciudad = 'alfredo baquerizo moreno (jujan)';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'tungurahua', canton = 'quero', ciudad = 'quero' WHERE ciudad = 'quero';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'galápagos', canton = 'santa cruz', ciudad = 'puerto ayora' WHERE ciudad = 'santa cruz';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'montalvo', ciudad = 'montalvo' WHERE ciudad = 'montalvo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'naranjal', ciudad = 'naranjal' WHERE ciudad = 'naranjal';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'santa elena', canton = 'salinas (salinas, cab. cantonal)', ciudad = 'salinas' WHERE ciudad = 'salinas (salinas, cab. cantonal)';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'chimborazo', canton = 'cumanda', ciudad = 'cumandá' WHERE ciudad = 'cumanda';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'tungurahua', canton = 'san pedro de pelileo', ciudad = 'pelileo' WHERE ciudad = 'san pedro de pelileo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'zamora chinchipe', canton = 'palanda', ciudad = 'palanda' WHERE ciudad = 'palanda';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = '24 de mayo', ciudad = 'sucre' WHERE ciudad = '24 de mayo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'rocafuerte', ciudad = 'rocafuerte' WHERE ciudad = 'rocafuerte';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'el empalme', ciudad = 'el empalme' WHERE ciudad = 'el empalme';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'chone', ciudad = 'chone' WHERE ciudad = 'chone';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'esmeraldas', canton = 'muisne', ciudad = 'muisne' WHERE ciudad = 'muisne';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'arenillas', ciudad = 'arenillas' WHERE ciudad = 'arenillas';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'loja', canton = 'chaguarpamba', ciudad = 'chaguarpamba' WHERE ciudad = 'chaguarpamba';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'flavio alfaro', ciudad = 'flavio alfaro' WHERE ciudad = 'flavio alfaro';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'napo', canton = 'carlos julio arosemena tola', ciudad = 'carlos julio arosemena tola' WHERE ciudad = 'carlos julio arosemena tola';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'mocache', ciudad = 'mocache' WHERE ciudad = 'mocache';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'balao', ciudad = 'balao' WHERE ciudad = 'balao';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'santa lucia', ciudad = 'santa lucía' WHERE ciudad = 'santa lucia';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'cañar', canton = 'biblian', ciudad = 'biblián' WHERE ciudad = 'biblian';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'gnral. antonio elizalde', ciudad = 'general antonio elizalde' WHERE ciudad = 'gnral. antonio elizalde';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'huaquillas', ciudad = 'huaquillas' WHERE ciudad = 'huaquillas';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'isidro ayora', ciudad = 'isidro ayora' WHERE ciudad = 'isidro ayora';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'tungurahua', canton = 'mocha', ciudad = 'mocha' WHERE ciudad = 'mocha';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'jipijapa', ciudad = 'jipijapa' WHERE ciudad = 'jipijapa';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'loja', canton = 'celica', ciudad = 'celica' WHERE ciudad = 'celica';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'ventanas', ciudad = 'ventanas' WHERE ciudad = 'ventanas';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'olmedo', ciudad = 'olmedo' WHERE ciudad = 'olmedo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'salitre', ciudad = 'salitre' WHERE ciudad = 'salitre';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'cañar', canton = 'deleg', ciudad = 'déleg' WHERE ciudad = 'deleg';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'chimborazo', canton = 'colta', ciudad = 'colta' WHERE ciudad = 'colta';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'zaruma', ciudad = 'zaruma' WHERE ciudad = 'zaruma';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'esmeraldas', canton = 'rioverde', ciudad = 'rioverde' WHERE ciudad = 'rioverde';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'esmeraldas', canton = 'eloy alfaro', ciudad = 'valdez' WHERE ciudad = 'eloy alfaro';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'puerto lopez', ciudad = 'puerto lópez' WHERE ciudad = 'puerto lopez';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'tungurahua', canton = 'tisaleo', ciudad = 'tisaleo' WHERE ciudad = 'tisaleo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'pajan', ciudad = 'paján' WHERE ciudad = 'pajan';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'colimes', ciudad = 'colimes' WHERE ciudad = 'colimes';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'morona santiago', canton = 'pablo sexto', ciudad = 'pablo sexto' WHERE ciudad = 'pablo sexto';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'tungurahua', canton = 'cevallos', ciudad = 'cevallos' WHERE ciudad = 'cevallos';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'cañar', canton = 'suscal', ciudad = 'suscal' WHERE ciudad = 'suscal';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'marcabeli', ciudad = 'marcabelí' WHERE ciudad = 'marcabeli';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'chimborazo', canton = 'pallatanga', ciudad = 'pallatanga' WHERE ciudad = 'pallatanga';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'chimborazo', canton = 'chambo', ciudad = 'chambo' WHERE ciudad = 'chambo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'atahualpa', ciudad = 'ayapamba' WHERE ciudad = 'atahualpa';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'zamora chinchipe', canton = 'yacuambi', ciudad = 'zumba' WHERE ciudad = 'yacuambi';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'urdaneta', ciudad = 'moraspungo' WHERE ciudad = 'urdaneta';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'baba', ciudad = 'baba' WHERE ciudad = 'baba';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'palestina', ciudad = 'palestina' WHERE ciudad = 'palestina';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'bolívar', canton = 'chimbo', ciudad = 'chimbo' WHERE ciudad = 'chimbo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'san vicente', ciudad = 'san vicente' WHERE ciudad = 'san vicente';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'junin', ciudad = 'junín' WHERE ciudad = 'junin';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'nobol', ciudad = 'nobol' WHERE ciudad = 'nobol';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'loja', canton = 'sozoranga', ciudad = 'sozoranga' WHERE ciudad = 'sozoranga';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'balzar', ciudad = 'balzar' WHERE ciudad = 'balzar';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'zamora chinchipe', canton = 'centinela del condor', ciudad = 'zumbi' WHERE ciudad = 'centinela del condor';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'puebloviejo', ciudad = 'puebloviejo' WHERE ciudad = 'puebloviejo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'simon bolivar', ciudad = 'simón bolívar' WHERE ciudad = 'simon bolivar';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'loja', canton = 'pindal', ciudad = 'pindal' WHERE ciudad = 'pindal';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'lomas de sargentillo', ciudad = 'lomas de sargentillo' WHERE ciudad = 'lomas de sargentillo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'el triunfo', ciudad = 'el triunfo' WHERE ciudad = 'el triunfo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'loja', canton = 'quilanga', ciudad = 'quilanga' WHERE ciudad = 'quilanga';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'zamora chinchipe', canton = 'nangaritza', ciudad = 'guayzimi' WHERE ciudad = 'nangaritza';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'pedro carbo', ciudad = 'pedro carbo' WHERE ciudad = 'pedro carbo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'naranjito', ciudad = 'naranjito' WHERE ciudad = 'naranjito';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'chilla', ciudad = 'chilla' WHERE ciudad = 'chilla';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'bolívar', canton = 'las naves', ciudad = 'las naves' WHERE ciudad = 'las naves';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'las lajas', ciudad = 'la victoria' WHERE ciudad = 'las lajas';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'bolívar', canton = 'echeandia', ciudad = 'echeandía' WHERE ciudad = 'echeandia';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'crnel. marcelino maridueña', ciudad = 'marcelino maridueña' WHERE ciudad = 'crnel. marcelino maridueña';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'el pan', ciudad = 'el pan' WHERE ciudad = 'el pan';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'quinsaloma', ciudad = 'quinsaloma' WHERE ciudad = 'quinsaloma';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'guachapala', ciudad = 'guachapala' WHERE ciudad = 'guachapala';

UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'cotopaxi', canton = 'latacunga', ciudad = 'latacunga' WHERE ciudad = 'latacunga';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'azuay', canton = 'camilo ponce enriquez', ciudad = 'camilo ponce enriquez' WHERE ciudad = 'camilo ponce enriquez';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'el oro', canton = 'el guabo', ciudad = 'el guabo' WHERE ciudad = 'el guabo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'carchi', canton = 'tulcan', ciudad = 'tulcan' WHERE ciudad = 'tulcan';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'santa elena', canton = 'la libertad', ciudad = 'la libertad' WHERE ciudad = 'la libertad';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'zamora chinchipe', canton = 'chinchipe', ciudad = 'zumba' WHERE ciudad = 'zumba';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'indistinto', canton = 'indistinto', ciudad = 'indistinto' WHERE ciudad = 'indistinto';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'cotopaxi', canton = 'sigchos', ciudad = 'sigchos' WHERE ciudad = 'sigchos';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'orellana', canton = 'la joya de los sachas', ciudad = 'la joya de los sachas' WHERE ciudad = 'la joya de los sachas';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'babahoyo', ciudad = 'babahoyo' WHERE ciudad = 'babahoyo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'sucumbíos', canton = 'shushufindi', ciudad = 'shushufindi' WHERE ciudad = 'shushufindi';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'santa elena', canton = 'salinas', ciudad = 'salinas' WHERE ciudad = 'salinas';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'napo', canton = 'tena', ciudad = 'tena' WHERE ciudad = 'tena';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'valencia', ciudad = 'valencia' WHERE ciudad = 'valencia';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'tungurahua', canton = 'ambato', ciudad = 'ambato' WHERE ciudad = 'ambato';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'guayas', canton = 'duran', ciudad = 'duran' WHERE ciudad = 'duran';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'los ríos', canton = 'buena fe', ciudad = 'buena fe' WHERE ciudad = 'buena fe';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'manabí', canton = 'jaramijo', ciudad = 'jaramijo' WHERE ciudad = 'jaramijo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'santo domingo de los tsáchilas', canton = 'santo domingo', ciudad = 'santo domingo' WHERE ciudad = 'santo domingo';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'bolívar', canton = 'guaranda', ciudad = 'guaranda' WHERE ciudad = 'guaranda';
UPDATE ot_2026.oferta_laboral_ecuador SET provincia = 'pastaza', canton = 'pastaza', ciudad = 'puyo' WHERE ciudad = 'puyo';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'pastaza', canton = 'pastaza', ciudad = 'puyo' 
WHERE ciudad = 'pastaza';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'zamora chinchipe', canton = 'chinchipe', ciudad = 'zumba' 
WHERE ciudad = 'chinchipe';

UPDATE ot_2026.oferta_laboral_ecuador 
SET provincia = 'santo domingo de los tsáchilas', canton = 'santo domingo', ciudad = 'santo domingo' 
WHERE ciudad = 'santo domingo de los tsachilas';

-- Creacion de la primera tabla llamada "Requisitos" --
CREATE TABLE requisitos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nivel_instruccion VARCHAR(100),
    area_estudios VARCHAR(100)
);

-- Agregamos una columna llamada "nivel_rigor_tecnio" en la tabla de requisitos y le das su valor respectivo --
ALTER TABLE ot_2026.requisitos
ADD COLUMN nivel_rigor_tecnico ENUM('Bajo', 'Medio', 'Alto');
UPDATE ot_2026.requisitos
SET nivel_rigor_tecnico = CASE
  -- Nivel ALTO
  WHEN nivelInstruccion REGEXP 'phd|cuarto nivel|maestria|especialidad|diplomado'
       OR experiencia IN ('7-10 años', 'más de 10 años') THEN 'Alto'

  -- Nivel MEDIO
  WHEN nivelInstruccion REGEXP 'bachiller|técnico|tecnológico|egresado|estudiante universitario|tercer nivel'
       AND experiencia IN ('1-3 años', '7-12 meses', '4-6 años') THEN 'Medio'

  -- Nivel BAJO
  WHEN nivelInstruccion REGEXP 'primaria|educación básica|sin instruccion|secundaria sin finalizar'
       OR experiencia IN ('sin experiencia', 'practica en empresa', '1-6 meses') THEN 'Bajo'

  -- Valor por defecto
  ELSE NULL
END;

-- Creacion de la tabla "localizacion" --
CREATE TABLE localizacion AS
SELECT DISTINCT
  ciudad,
  canton,
  provincia
FROM oferta_laboral_ecuador
ORDER BY ciudad, canton, privincia;

-- Creacion de una columan en la tabla localizacion que se llama "Region" --
-- Agregar campo region
ALTER TABLE ot_2026.localizacion ADD COLUMN region VARCHAR(20);

-- Región COSTA
UPDATE ot_2026.localizacion SET region = 'Costa'
WHERE provincia IN (
  'guayas',
  'manabí',
  'esmeraldas',
  'el oro',
  'santa elena',
  'los ríos',
  'santo domingo de los tsáchilas'
);

-- Región SIERRA
UPDATE ot_2026.localizacion SET region = 'Sierra'
WHERE provincia IN (
  'pichincha',
  'imbabura',
  'carchi',
  'cotopaxi',
  'tungurahua',
  'chimborazo',
  'bolívar',
  'azuay',
  'cañar',
  'loja'
);

-- Región AMAZONÍA
UPDATE ot_2026.localizacion SET region = 'Amazonía'
WHERE provincia IN (
  'sucumbíos',
  'orellana',
  'napo',
  'pastaza',
  'morona santiago',
  'zamora chinchipe'
);

-- Región INSULAR
UPDATE ot_2026.localizacion SET region = 'Insular'
WHERE provincia = 'galápagos';

-- 








