--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-10-28 02:24:58 CDT

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
-- TOC entry 219 (class 1259 OID 16769)
-- Name: name; Type: TABLE; Schema: public; Owner: cs600
--

CREATE TABLE public.name (
    id bigint NOT NULL,
    first character varying(255),
    last character varying(255),
    middle character varying(255),
    suffix character varying(255),
    email character varying(255)
);


ALTER TABLE public.name OWNER TO cs600;

--
-- TOC entry 220 (class 1259 OID 16776)
-- Name: name_seq; Type: SEQUENCE; Schema: public; Owner: cs600
--

CREATE SEQUENCE public.name_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.name_seq OWNER TO cs600;

--
-- TOC entry 217 (class 1259 OID 16762)
-- Name: names; Type: TABLE; Schema: public; Owner: cs600
--

CREATE TABLE public.names (
    id integer NOT NULL,
    first character varying(75),
    middle character varying(75),
    last character varying(75),
    suffix character varying(10),
    email character varying(128)
);


ALTER TABLE public.names OWNER TO cs600;

--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE names; Type: COMMENT; Schema: public; Owner: cs600
--

COMMENT ON TABLE public.names IS 'Names table in support of the Lab for Module-2';


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN names.email; Type: COMMENT; Schema: public; Owner: cs600
--

COMMENT ON COLUMN public.names.email IS 'Generated e-mail address of user';


--
-- TOC entry 218 (class 1259 OID 16765)
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
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 218
-- Name: names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs600
--

ALTER SEQUENCE public.names_id_seq OWNED BY public.names.id;


--
-- TOC entry 3455 (class 2604 OID 16766)
-- Name: names id; Type: DEFAULT; Schema: public; Owner: cs600
--

ALTER TABLE ONLY public.names ALTER COLUMN id SET DEFAULT nextval('public.names_id_seq'::regclass);


--
-- TOC entry 3607 (class 0 OID 16769)
-- Dependencies: 219
-- Data for Name: name; Type: TABLE DATA; Schema: public; Owner: cs600
--

COPY public.name (id, first, last, middle, suffix, email) FROM stdin;
\.


--
-- TOC entry 3605 (class 0 OID 16762)
-- Dependencies: 217
-- Data for Name: names; Type: TABLE DATA; Schema: public; Owner: cs600
--

COPY public.names (id, first, middle, last, suffix, email) FROM stdin;
1	Jillian	Dorris	Taylor	\N	\N
2	Niles	Angelika	Rounds	Jr.	\N
3	Annika	Ángeles	Vargas	\N	\N
4	Crawford	Moriah	Essert	\N	\N
5	Gayla	Patricia	Colby	\N	\N
6	Rhonda	Maria	Santana	\N	\N
7	Thurstan	Josiah	Vera	IV	\N
8	Tayla	Ronnie	Bannister	\N	\N
9	Silas	Virgil	Fontana	\N	\N
10	Alfredo	Stephania	Tschida	\N	\N
11	Pip	Adolfito	Eilerts	\N	\N
12	Mariel	Wallace	Velázquez	\N	\N
13	Cory	Velvet	Butts	\N	\N
14	Laurene	Sophia	Holmwood	\N	\N
15	Macario	Felicie	Beverley	\N	\N
16	Nando	Arin	Elliott	\N	\N
17	Mirabelle	Lorna	Holt	\N	\N
18	Ceferina	Ventura	Reynell	\N	\N
19	Friday	Anabella	Harrington	\N	\N
20	Winnifred	Bobbie	Wyman	\N	\N
21	Odelia	Verda	Hayter	\N	\N
22	Karyn	Amyas	Christopherson	\N	\N
23	Adele	Arianna	Ewart	\N	\N
24	Jodene	Nelson	Montero	\N	\N
25	Frona	Valorie	Wendell	\N	\N
\.


--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 220
-- Name: name_seq; Type: SEQUENCE SET; Schema: public; Owner: cs600
--

SELECT pg_catalog.setval('public.name_seq', 1, false);


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 218
-- Name: names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs600
--

SELECT pg_catalog.setval('public.names_id_seq', 25, true);


--
-- TOC entry 3459 (class 2606 OID 16775)
-- Name: name name_pkey; Type: CONSTRAINT; Schema: public; Owner: cs600
--

ALTER TABLE ONLY public.name
    ADD CONSTRAINT name_pkey PRIMARY KEY (id);


--
-- TOC entry 3457 (class 2606 OID 16768)
-- Name: names names_pkey; Type: CONSTRAINT; Schema: public; Owner: cs600
--

ALTER TABLE ONLY public.names
    ADD CONSTRAINT names_pkey PRIMARY KEY (id);


-- Completed on 2025-10-28 02:24:58 CDT

--
-- PostgreSQL database dump complete
--

