--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-03 17:01:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16690)
-- Name: Asientos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Asientos" (
    "AsientoID" integer NOT NULL,
    "SalaID" integer NOT NULL,
    "Num_Fila" integer NOT NULL,
    "Num_Asiento" integer NOT NULL,
    "Estado" boolean NOT NULL
);


ALTER TABLE public."Asientos" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16689)
-- Name: Asientos_AsientoID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Asientos_AsientoID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Asientos_AsientoID_seq" OWNER TO postgres;

--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 223
-- Name: Asientos_AsientoID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Asientos_AsientoID_seq" OWNED BY public."Asientos"."AsientoID";


--
-- TOC entry 219 (class 1259 OID 16667)
-- Name: Horarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Horarios" (
    "HorarioID" integer NOT NULL,
    "PeliculaID" integer NOT NULL,
    "SalaID" integer NOT NULL,
    "Fecha_y_hora_Inicio" date NOT NULL,
    "Fecha_y_hora_Fin" date NOT NULL
);


ALTER TABLE public."Horarios" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16666)
-- Name: Horarios_HorarioID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Horarios_HorarioID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Horarios_HorarioID_seq" OWNER TO postgres;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 218
-- Name: Horarios_HorarioID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Horarios_HorarioID_seq" OWNED BY public."Horarios"."HorarioID";


--
-- TOC entry 215 (class 1259 OID 16649)
-- Name: Peliculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Peliculas" (
    "PeliculaID" integer NOT NULL,
    "Titulo" character varying(100) NOT NULL,
    "Sinopsis" character varying(500) NOT NULL,
    "Director" character varying(100) NOT NULL,
    "Reparto" character varying(300) NOT NULL,
    "Duracion" integer NOT NULL,
    "Genero" character varying(100) NOT NULL,
    "Año_estreno" integer NOT NULL,
    "Imagen" character varying(100) NOT NULL
);


ALTER TABLE public."Peliculas" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16648)
-- Name: Peliculas_PeliculaID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Peliculas_PeliculaID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Peliculas_PeliculaID_seq" OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 214
-- Name: Peliculas_PeliculaID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Peliculas_PeliculaID_seq" OWNED BY public."Peliculas"."PeliculaID";


--
-- TOC entry 217 (class 1259 OID 16658)
-- Name: Salas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Salas" (
    "SalasID" integer NOT NULL,
    "Nombre" character varying NOT NULL,
    "Capacidad_Max" integer NOT NULL,
    "Tipo" character varying NOT NULL
);


ALTER TABLE public."Salas" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16657)
-- Name: Salas_SalasID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Salas_SalasID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Salas_SalasID_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 216
-- Name: Salas_SalasID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Salas_SalasID_seq" OWNED BY public."Salas"."SalasID";


--
-- TOC entry 222 (class 1259 OID 16682)
-- Name: Usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario" (
    "Usuario" character varying NOT NULL,
    "Nombre" character varying(60) NOT NULL,
    "Correo_electrónico" character varying(60) NOT NULL,
    "Teléfono" integer NOT NULL,
    "Direccion" character varying(60) NOT NULL
);


ALTER TABLE public."Usuario" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16674)
-- Name: Ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ventas" (
    "VentaID" integer NOT NULL,
    "PeliculaID" integer NOT NULL,
    "AsientoID" integer,
    "SalaID" integer NOT NULL,
    "Usuario" character varying NOT NULL,
    "HorarioID" integer NOT NULL,
    "Precio" integer NOT NULL,
    "Metodo_Pago" character varying NOT NULL
);


ALTER TABLE public."Ventas" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16673)
-- Name: Ventas_VentaID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ventas_VentaID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ventas_VentaID_seq" OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 220
-- Name: Ventas_VentaID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ventas_VentaID_seq" OWNED BY public."Ventas"."VentaID";


--
-- TOC entry 3201 (class 2604 OID 16693)
-- Name: Asientos AsientoID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asientos" ALTER COLUMN "AsientoID" SET DEFAULT nextval('public."Asientos_AsientoID_seq"'::regclass);


--
-- TOC entry 3199 (class 2604 OID 16670)
-- Name: Horarios HorarioID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Horarios" ALTER COLUMN "HorarioID" SET DEFAULT nextval('public."Horarios_HorarioID_seq"'::regclass);


--
-- TOC entry 3197 (class 2604 OID 16652)
-- Name: Peliculas PeliculaID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Peliculas" ALTER COLUMN "PeliculaID" SET DEFAULT nextval('public."Peliculas_PeliculaID_seq"'::regclass);


--
-- TOC entry 3198 (class 2604 OID 16661)
-- Name: Salas SalasID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Salas" ALTER COLUMN "SalasID" SET DEFAULT nextval('public."Salas_SalasID_seq"'::regclass);


--
-- TOC entry 3200 (class 2604 OID 16677)
-- Name: Ventas VentaID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ventas" ALTER COLUMN "VentaID" SET DEFAULT nextval('public."Ventas_VentaID_seq"'::regclass);


--
-- TOC entry 3372 (class 0 OID 16690)
-- Dependencies: 224
-- Data for Name: Asientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (31, 1, 1, 1, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (32, 1, 1, 2, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (33, 1, 1, 3, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (34, 1, 1, 4, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (35, 1, 1, 5, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (36, 1, 2, 1, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (37, 1, 2, 2, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (38, 1, 2, 3, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (39, 1, 2, 4, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (40, 1, 2, 5, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (41, 1, 3, 1, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (42, 1, 3, 2, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (43, 1, 3, 3, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (44, 1, 3, 4, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (45, 1, 3, 5, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (46, 2, 1, 1, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (47, 2, 1, 2, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (48, 2, 1, 3, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (49, 2, 1, 4, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (50, 2, 1, 5, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (51, 2, 2, 1, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (52, 2, 2, 2, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (53, 2, 2, 3, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (54, 2, 2, 4, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (55, 2, 2, 5, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (56, 2, 3, 1, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (57, 2, 3, 2, false);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (58, 2, 3, 3, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (59, 2, 3, 4, true);
INSERT INTO public."Asientos" ("AsientoID", "SalaID", "Num_Fila", "Num_Asiento", "Estado") VALUES (60, 2, 3, 5, false);


--
-- TOC entry 3367 (class 0 OID 16667)
-- Dependencies: 219
-- Data for Name: Horarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Horarios" ("HorarioID", "PeliculaID", "SalaID", "Fecha_y_hora_Inicio", "Fecha_y_hora_Fin") VALUES (1, 1, 1, '2023-05-04', '2023-05-04');
INSERT INTO public."Horarios" ("HorarioID", "PeliculaID", "SalaID", "Fecha_y_hora_Inicio", "Fecha_y_hora_Fin") VALUES (2, 1, 2, '2023-05-05', '2023-05-05');
INSERT INTO public."Horarios" ("HorarioID", "PeliculaID", "SalaID", "Fecha_y_hora_Inicio", "Fecha_y_hora_Fin") VALUES (3, 2, 1, '2023-05-06', '2023-05-06');
INSERT INTO public."Horarios" ("HorarioID", "PeliculaID", "SalaID", "Fecha_y_hora_Inicio", "Fecha_y_hora_Fin") VALUES (4, 2, 2, '2023-05-07', '2023-05-07');


--
-- TOC entry 3363 (class 0 OID 16649)
-- Dependencies: 215
-- Data for Name: Peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Peliculas" ("PeliculaID", "Titulo", "Sinopsis", "Director", "Reparto", "Duracion", "Genero", "Año_estreno", "Imagen") VALUES (1, 'Avengers: Endgame', 'Después de los devastadores eventos de Avengers: Infinity War, el universo está en ruinas debido a las acciones de Thanos, el Titán Loco. Con la ayuda de los aliados que quedaron, los Vengadores deberán reunirse una vez más para intentar deshacer sus acciones y restaurar el orden en el universo de una vez por todas.', 'Anthony Russo, Joe Russo', 'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, Josh Brolin', 181, 'Acción, Aventura, Drama', 2019, 'https://images-na.ssl-images-amazon.com/images/I/81x%2BN-M5SbL.jpg');
INSERT INTO public."Peliculas" ("PeliculaID", "Titulo", "Sinopsis", "Director", "Reparto", "Duracion", "Genero", "Año_estreno", "Imagen") VALUES (2, 'La La Land', 'Es una historia de amor ambientada en Los Ángeles que sigue a la joven actriz Mia (Emma Stone) y al talentoso pianista de jazz Sebastian (Ryan Gosling), que están luchando por hacer realidad sus sueños en una ciudad conocida por aplastar las esperanzas y romper los corazones. Ambientada en una variedad de impresionantes ubicaciones de Los Ángeles, La La Land es un musical vibrante y conmovedor sobre la naturaleza humana y el poder del amor', 'Damien Chazelle', 'Ryan Gosling, Emma Stone, John Legend, Rosemarie DeWitt, J. K. Simmons, Finn Wittrock', 128, 'Drama, Musical, Romance', 2016, 'https://images-na.ssl-images-amazon.com/images/I/71W0l0hV-AL._AC_SY679_.jpg');
INSERT INTO public."Peliculas" ("PeliculaID", "Titulo", "Sinopsis", "Director", "Reparto", "Duracion", "Genero", "Año_estreno", "Imagen") VALUES (3, 'El Rey León', 'Un pequeño león llamado Simba que está destinado a ser el rey de la selva es injustamente exiliado de su hogar por su malvado tío Scar. Con la ayuda de sus amigos Timón y Pumba, Simba tendrá que recuperar su trono y enfrentarse a su tío para lograr la justicia en el reino animal.', 'Roger Allers, Rob Minkoff', 'Matthew Broderick, James Earl Jones, Jeremy Irons, Moira Kelly, Nathan Lane, Ernie Sabella, Rowan Atkinson, Robert Guillaume, Madge Sinclair, Whoopi Goldberg, Cheech Marin, Jim Cummings', 88, 'Animación, Aventura, Drama', 1994, 'https://images-na.ssl-images-amazon.com/images/I/71VLOf6IuAL._AC_SL1016_.jpg');


--
-- TOC entry 3365 (class 0 OID 16658)
-- Dependencies: 217
-- Data for Name: Salas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Salas" ("SalasID", "Nombre", "Capacidad_Max", "Tipo") VALUES (1, 'Sala 1', 30, '2D');
INSERT INTO public."Salas" ("SalasID", "Nombre", "Capacidad_Max", "Tipo") VALUES (2, 'Sala 2', 35, '3D');
INSERT INTO public."Salas" ("SalasID", "Nombre", "Capacidad_Max", "Tipo") VALUES (3, 'Sala 3', 20, 'IMAX');


--
-- TOC entry 3370 (class 0 OID 16682)
-- Dependencies: 222
-- Data for Name: Usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3369 (class 0 OID 16674)
-- Dependencies: 221
-- Data for Name: Ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 223
-- Name: Asientos_AsientoID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Asientos_AsientoID_seq"', 60, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 218
-- Name: Horarios_HorarioID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Horarios_HorarioID_seq"', 4, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 214
-- Name: Peliculas_PeliculaID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Peliculas_PeliculaID_seq"', 3, true);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 216
-- Name: Salas_SalasID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Salas_SalasID_seq"', 3, true);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 220
-- Name: Ventas_VentaID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ventas_VentaID_seq"', 1, false);


--
-- TOC entry 3213 (class 2606 OID 16695)
-- Name: Asientos Asientos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asientos"
    ADD CONSTRAINT "Asientos_pkey" PRIMARY KEY ("AsientoID");


--
-- TOC entry 3207 (class 2606 OID 16672)
-- Name: Horarios Horarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Horarios"
    ADD CONSTRAINT "Horarios_pkey" PRIMARY KEY ("HorarioID");


--
-- TOC entry 3203 (class 2606 OID 16656)
-- Name: Peliculas Peliculas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Peliculas"
    ADD CONSTRAINT "Peliculas_pkey" PRIMARY KEY ("PeliculaID");


--
-- TOC entry 3205 (class 2606 OID 16665)
-- Name: Salas Salas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Salas"
    ADD CONSTRAINT "Salas_pkey" PRIMARY KEY ("SalasID");


--
-- TOC entry 3211 (class 2606 OID 16688)
-- Name: Usuario Usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY ("Usuario");


--
-- TOC entry 3209 (class 2606 OID 16681)
-- Name: Ventas Ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "Ventas_pkey" PRIMARY KEY ("VentaID");


--
-- TOC entry 3214 (class 2606 OID 16716)
-- Name: Ventas FK_id_asiento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "FK_id_asiento" FOREIGN KEY ("AsientoID") REFERENCES public."Asientos"("AsientoID") NOT VALID;


--
-- TOC entry 3215 (class 2606 OID 16706)
-- Name: Ventas FK_id_horario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "FK_id_horario" FOREIGN KEY ("HorarioID") REFERENCES public."Horarios"("HorarioID") NOT VALID;


--
-- TOC entry 3216 (class 2606 OID 16696)
-- Name: Ventas FK_id_pelicula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "FK_id_pelicula" FOREIGN KEY ("PeliculaID") REFERENCES public."Peliculas"("PeliculaID") NOT VALID;


--
-- TOC entry 3217 (class 2606 OID 16701)
-- Name: Ventas FK_id_sala; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "FK_id_sala" FOREIGN KEY ("SalaID") REFERENCES public."Salas"("SalasID") NOT VALID;


--
-- TOC entry 3219 (class 2606 OID 16721)
-- Name: Asientos FK_id_sala; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asientos"
    ADD CONSTRAINT "FK_id_sala" FOREIGN KEY ("SalaID") REFERENCES public."Salas"("SalasID") NOT VALID;


--
-- TOC entry 3218 (class 2606 OID 16711)
-- Name: Ventas FK_id_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ventas"
    ADD CONSTRAINT "FK_id_usuario" FOREIGN KEY ("Usuario") REFERENCES public."Usuario"("Usuario") NOT VALID;


-- Completed on 2023-05-03 17:01:09

--
-- PostgreSQL database dump complete
--

