--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-22 11:17:55

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16452)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer,
    description text,
    add_person character varying(255),
    localization character varying(255),
    photo text
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16451)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 218 (class 1259 OID 16413)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    photo text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16412)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4701 (class 2604 OID 16455)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16416)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4857 (class 0 OID 16452)
-- Dependencies: 220
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, user_id, description, add_person, localization, photo) FROM stdin;
1	1	Caf‚ parisien	@laurinha	Paris	\N
2	2	Livraria	@ana	SÆo Paulo	\N
3	1	Caf‚ aconchegante	@laurinha	Londres	\N
4	2	Biblioteca moderna	@ana	Nova York	\N
5	3	P“r do sol na praia	@carlos	Florian¢polis	\N
6	4	Montanhas ao amanhecer	@mariana	Andes	\N
7	5	Pra‡a hist¢rica	@joao	Madrid	\N
8	6	Jardim botƒnico	@fernanda	Berlim	\N
9	7	Trilha na floresta	@rafael	Serra Ga£cha	\N
10	3	Praia ao entardecer	@carlos	Rio de Janeiro	\N
11	4	Montanhas nevadas	@mariana	Patag“nia	\N
12	5	Centro hist¢rico	@joao	Lisboa	\N
13	6	Parque florido	@fernanda	AmsterdÆ	\N
14	7	Cachoeira	@rafael	Chapada Diamantina	\N
15	2	Mini Donuts, Cake Bob Esponja e Patrick Estrela	@laurinha	São Paulo	\N
16	2	Mini Donuts, Cake Bob Esponja e Patrick Estrela	@laurinha	São Paulo	\N
17	2	Mini Donuts, Cake Bob Esponja e Patrick Estrela	@laurinha	São Paulo	\N
18	2	Mini Donuts, Cake Bob Esponja e Patrick Estrela	@laurinha	São Paulo	\N
19	2	Mini Donuts, Cake Bob Esponja e Patrick Estrela	@laurinha	São Paulo	1745324941689-6771e0cce6b8c883c2323efafb93d6a1.jpg
\.


--
-- TOC entry 4855 (class 0 OID 16413)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, photo) FROM stdin;
9	Maria	Maria@gmail.com	1745323044883-48921068191d675356136f5ed8e445de.jpg
1	Evelyn Oliveira	evelyn.oliveira@email.com	https://example.com/photos/evelyn.jpg
2	Laura Violla	laura.violla@email.com	https://example.com/photos/laura.jpg
3	Ana Carolina	Ana.carolina@email.com	https://example.com/photos/ana.jpg
4	Carlos Silva	carlos.silva@email.com	https://example.com/photos/carlos.jpg
5	Mariana Santos	mariana.santos@email.com	https://example.com/photos/mariana.jpg
6	JoÆo Pereira	joao.pereira@email.com	https://example.com/photos/joao.jpg
7	Fernanda Costa	fernanda.costa@email.com	https://example.com/photos/fernanda.jpg
8	Rafael Almeida	rafael.almeida@email.com	https://example.com/photos/rafael.jpg
10	Alice Souza	alice.souza@email.com	https://example.com/photos/alice.jpg
11	Bruno Lima	bruno.lima@email.com	https://example.com/photos/bruno.jpg
12	Camila Rocha	camila.rocha@email.com	https://example.com/photos/camila.jpg
13	Daniel Costa	daniel.costa@email.com	https://example.com/photos/daniel.jpg
14	Eduarda Martins	eduarda.martins@email.com	https://example.com/photos/eduarda.jpg
15	Felipe Alves	felipe.alves@email.com	https://example.com/photos/felipe.jpg
16	Gabriela Mendes	gabriela.mendes@email.com	https://example.com/photos/gabriela.jpg
17	Henrique Silva	henrique.silva@email.com	https://example.com/photos/henrique.jpg
18	Isabela Ferreira	isabela.ferreira@email.com	https://example.com/photos/isabela.jpg
19	Joana Ribeiro	joana.ribeiro@email.com	https://example.com/photos/joana.jpg
20	Leonardo Oliveira	leonardo.oliveira@email.com	https://example.com/photos/leonardo.jpg
21	Marcos Santos	marcos.santos@email.com	https://example.com/photos/marcos.jpg
22	Nat lia Almeida	natalia.almeida@email.com	https://example.com/photos/natalia.jpg
23	Ot vio Pereira	otavio.pereira@email.com	https://example.com/photos/otavio.jpg
24	Patr¡cia Lima	patricia.lima@email.com	https://example.com/photos/patricia.jpg
25	Renato Souza	renato.souza@email.com	https://example.com/photos/renato.jpg
26	Sabrina Costa	sabrina.costa@email.com	https://example.com/photos/sabrina.jpg
27	Thiago Rocha	thiago.rocha@email.com	https://example.com/photos/thiago.jpg
28	Vanessa Martins	vanessa.martins@email.com	https://example.com/photos/vanessa.jpg
29	William Mendes	william.mendes@email.com	https://example.com/photos/william.jpg
30	Yasmin Ribeiro	yasmin.ribeiro@email.com	https://example.com/photos/yasmin.jpg
31	Z‚ Carlos	ze.carlos@email.com	https://example.com/photos/ze.jpg
32	Amanda Silva	amanda.silva@email.com	https://example.com/photos/amanda.jpg
33	Bernardo Alves	bernardo.alves@email.com	https://example.com/photos/bernardo.jpg
34	Carolina Mendes	carolina.mendes@email.com	https://example.com/photos/carolina.jpg
35	Diego Costa	diego.costa@email.com	https://example.com/photos/diego.jpg
36	Elisa Martins	elisa.martins@email.com	https://example.com/photos/elisa.jpg
37	Fernando Rocha	fernando.rocha@email.com	https://example.com/photos/fernando.jpg
38	Giovana Ribeiro	giovana.ribeiro@email.com	https://example.com/photos/giovana.jpg
39	Hugo Pereira	hugo.pereira@email.com	https://example.com/photos/hugo.jpg
40	Ingrid Lima	ingrid.lima@email.com	https://example.com/photos/ingrid.jpg
41	Juliana Souza	juliana.souza@email.com	https://example.com/photos/juliana.jpg
42	Lucas Oliveira	lucas.oliveira@email.com	https://example.com/photos/lucas.jpg
43	Marcela Santos	marcela.santos@email.com	https://example.com/photos/marcela.jpg
44	Nicolas Mendes	nicolas.mendes@email.com	https://example.com/photos/nicolas.jpg
45	Olivia Ribeiro	olivia.ribeiro@email.com	https://example.com/photos/olivia.jpg
46	Pedro Costa	pedro.costa@email.com	https://example.com/photos/pedro.jpg
47	Qu‚sia Martins	quesia.martins@email.com	https://example.com/photos/quesia.jpg
48	Rafaela Rocha	rafaela.rocha@email.com	https://example.com/photos/rafaela.jpg
49	Samuel Pereira	samuel.pereira@email.com	https://example.com/photos/samuel.jpg
50	Tatiana Lima	tatiana.lima@email.com	https://example.com/photos/tatiana.jpg
51	Ursula Souza	ursula.souza@email.com	https://example.com/photos/ursula.jpg
52	Victor Alves	victor.alves@email.com	https://example.com/photos/victor.jpg
53	Wesley Mendes	wesley.mendes@email.com	https://example.com/photos/wesley.jpg
54	Xavier Ribeiro	xavier.ribeiro@email.com	https://example.com/photos/xavier.jpg
55	Yuri Costa	yuri.costa@email.com	https://example.com/photos/yuri.jpg
56	Zilda Martins	zilda.martins@email.com	https://example.com/photos/zilda.jpg
57	Ana Paula	ana.paula@email.com	https://example.com/photos/ana_paula.jpg
58	Bruna Oliveira	bruna.oliveira@email.com	https://example.com/photos/bruna.jpg
59	Carlos Eduardo	carlos.eduardo@email.com	https://example.com/photos/carlos_eduardo.jpg
\.


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 19, true);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 59, true);


--
-- TOC entry 4707 (class 2606 OID 16459)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16420)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4705 (class 2606 OID 16418)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16460)
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


-- Completed on 2025-04-22 11:17:55

--
-- PostgreSQL database dump complete
--

