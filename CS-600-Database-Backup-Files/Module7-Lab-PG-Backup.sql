--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-10-29 00:27:35 CDT

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
-- TOC entry 217 (class 1259 OID 16778)
-- Name: names; Type: TABLE; Schema: public; Owner: cs600
--

CREATE TABLE public.names (
    id integer NOT NULL,
    first character varying(75),
    middle character varying(75),
    last character varying(75),
    suffix character varying(10)
);


ALTER TABLE public.names OWNER TO cs600;

--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE names; Type: COMMENT; Schema: public; Owner: cs600
--

COMMENT ON TABLE public.names IS 'Names table in support of the Lab for Module-2';


--
-- TOC entry 218 (class 1259 OID 16781)
-- Name: names_id_seq; Type: SEQUENCE; Schema: public; Owner: cs600
--

CREATE SEQUENCE public.names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.names_id_seq OWNER TO cs600;

--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 218
-- Name: names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs600
--

ALTER SEQUENCE public.names_id_seq OWNED BY public.names.id;


--
-- TOC entry 3450 (class 2604 OID 16782)
-- Name: names id; Type: DEFAULT; Schema: public; Owner: cs600
--

ALTER TABLE ONLY public.names ALTER COLUMN id SET DEFAULT nextval('public.names_id_seq'::regclass);


--
-- TOC entry 3598 (class 0 OID 16778)
-- Dependencies: 217
-- Data for Name: names; Type: TABLE DATA; Schema: public; Owner: cs600
--

COPY public.names (id, first, middle, last, suffix) FROM stdin;
3	Annika	Ángeles	Vargas	\N
4	Crawford	Moriah	Essert	\N
5	Gayla	Patricia	Colby	\N
6	Rhonda	Maria	Santana	\N
8	Tayla	Ronnie	Bannister	\N
9	Silas	Virgil	Fontana	\N
10	Alfredo	Stephania	Tschida	\N
11	Pip	Adolfito	Eilerts	\N
12	Mariel	Wallace	Velázquez	\N
13	Cory	Velvet	Butts	\N
14	Laurene	Sophia	Holmwood	\N
15	Macario	Felicie	Beverley	\N
16	Nando	Arin	Elliott	\N
17	Mirabelle	Lorna	Holt	\N
18	Ceferina	Ventura	Reynell	\N
19	Friday	Anabella	Harrington	\N
20	Winnifred	Bobbie	Wyman	\N
21	Odelia	Verda	Hayter	\N
22	Karyn	Amyas	Christopherson	\N
23	Adele	Arianna	Ewart	\N
24	Jodene	Nelson	Montero	\N
25	Frona	Valorie	Wendell	\N
1	Jillian	Dorris	Taylor	\N
2	Niles	Angelika	Rounds	Jr.
7	Thurstan	Josiah	Vera	IV
\.


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 218
-- Name: names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs600
--

SELECT pg_catalog.setval('public.names_id_seq', 25, true);


--
-- TOC entry 3452 (class 2606 OID 16784)
-- Name: names names_pkey; Type: CONSTRAINT; Schema: public; Owner: cs600
--

ALTER TABLE ONLY public.names
    ADD CONSTRAINT names_pkey PRIMARY KEY (id);


-- Completed on 2025-10-29 00:27:35 CDT

--
-- PostgreSQL database dump complete
--

