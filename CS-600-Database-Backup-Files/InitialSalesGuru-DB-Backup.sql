--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-10-24 17:11:27 EDT

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
-- TOC entry 218 (class 1259 OID 16659)
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    customer_number integer NOT NULL,
    name character varying(75),
    addr1 character varying(75),
    addr2 character varying(75),
    city character varying(40),
    state character varying(25),
    zip character varying(10)
);


ALTER TABLE public.company OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16658)
-- Name: company_customer_number_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_customer_number_seq
    AS integer
    START WITH 1000
    INCREMENT BY 10
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.company_customer_number_seq OWNER TO postgres;

--
-- TOC entry 3651 (class 0 OID 0)
-- Dependencies: 217
-- Name: company_customer_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_customer_number_seq OWNED BY public.company.customer_number;


--
-- TOC entry 221 (class 1259 OID 16681)
-- Name: invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice (
    customer_number bigint NOT NULL,
    representative_id bigint NOT NULL,
    date_of_sale date NOT NULL,
    line_items integer[] NOT NULL,
    invoice_number integer NOT NULL
);


ALTER TABLE public.invoice OWNER TO postgres;

--
-- TOC entry 3652 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE invoice; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.invoice IS 'Invoice Table for Sales GURU+';


--
-- TOC entry 225 (class 1259 OID 16728)
-- Name: invoice_invoice_number_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_invoice_number_seq
    AS integer
    START WITH 10000
    INCREMENT BY 5
    MINVALUE 10000
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.invoice_invoice_number_seq OWNER TO postgres;

--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 225
-- Name: invoice_invoice_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_invoice_number_seq OWNED BY public.invoice.invoice_number;


--
-- TOC entry 224 (class 1259 OID 16693)
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    item_number integer NOT NULL,
    description character varying(128),
    cost real,
    retail real
);


ALTER TABLE public.items OWNER TO postgres;

--
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE items; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.items IS 'List of items for the Sales GURU+ App';


--
-- TOC entry 223 (class 1259 OID 16692)
-- Name: items_item_number_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_item_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.items_item_number_seq OWNER TO postgres;

--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 223
-- Name: items_item_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.items_item_number_seq OWNED BY public.items.item_number;


--
-- TOC entry 222 (class 1259 OID 16689)
-- Name: line_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.line_items (
    invoice_number integer NOT NULL,
    qty integer,
    item_number integer,
    discount real,
    line_item_id integer NOT NULL
);


ALTER TABLE public.line_items OWNER TO postgres;

--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE line_items; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.line_items IS 'Table describing line items.';


--
-- TOC entry 226 (class 1259 OID 16745)
-- Name: line_items_line_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.line_items_line_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.line_items_line_item_id_seq OWNER TO postgres;

--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 226
-- Name: line_items_line_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.line_items_line_item_id_seq OWNED BY public.line_items.line_item_id;


--
-- TOC entry 220 (class 1259 OID 16666)
-- Name: representative; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.representative (
    customer_number integer,
    first character varying(25),
    middle character varying(25),
    last character varying(25),
    suffix character varying(15),
    salutation character varying(15),
    direct_line character varying(25),
    mobile character varying(25),
    representative_id integer NOT NULL
);


ALTER TABLE public.representative OWNER TO postgres;

--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE representative; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.representative IS 'Table describing individual representatives of a company';


--
-- TOC entry 219 (class 1259 OID 16665)
-- Name: representative_representative_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.representative_representative_id_seq
    AS integer
    START WITH 1000
    INCREMENT BY 10
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.representative_representative_id_seq OWNER TO postgres;

--
-- TOC entry 3663 (class 0 OID 0)
-- Dependencies: 219
-- Name: representative_representative_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.representative_representative_id_seq OWNED BY public.representative.representative_id;


--
-- TOC entry 3470 (class 2604 OID 16662)
-- Name: company customer_number; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company ALTER COLUMN customer_number SET DEFAULT nextval('public.company_customer_number_seq'::regclass);


--
-- TOC entry 3472 (class 2604 OID 16729)
-- Name: invoice invoice_number; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice ALTER COLUMN invoice_number SET DEFAULT nextval('public.invoice_invoice_number_seq'::regclass);


--
-- TOC entry 3474 (class 2604 OID 16696)
-- Name: items item_number; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items ALTER COLUMN item_number SET DEFAULT nextval('public.items_item_number_seq'::regclass);


--
-- TOC entry 3473 (class 2604 OID 16746)
-- Name: line_items line_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line_items ALTER COLUMN line_item_id SET DEFAULT nextval('public.line_items_line_item_id_seq'::regclass);


--
-- TOC entry 3471 (class 2604 OID 16669)
-- Name: representative representative_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.representative ALTER COLUMN representative_id SET DEFAULT nextval('public.representative_representative_id_seq'::regclass);


--
-- TOC entry 3636 (class 0 OID 16659)
-- Dependencies: 218
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (customer_number, name, addr1, addr2, city, state, zip) FROM stdin;
1000	Solid Surface Counters	123 Main Street	Suite 400	Birmingham	AL	35203
1010	Office Eats	456 Oak Avenue	Retail Plaza	Mobile	AL	36606
1020	Cafe Coffee Roasters	789 Pine Lane	Office Complex	Huntsville	AL	35801
1030	Custom Doors	1011 Elm Street	Suite 100	Montgomery	AL	36104
1040	Syrup Hoestlers	1213 Maple Drive	Retail Center	Tuscaloosa	AL	35401
1050	Commander's Chandlers	1415 Birch Road	Office Park	Hoover	AL	35244
1060	Custom Kilns	1617 Cedar Court	Retail Square	Dothan	AL	36303
1070	Redd's Lawn Service	1819 Walnut Avenue	Suite 200	Auburn	AL	36830
1080	Runner's Roost	2021 Willow Street	Retail Village	Decatur	AL	35601
1090	The Barber Shop	2223 Cherry Lane	Office Building	Madison	AL	35758
1100	The Giant Shrimp	2425 Poplar Drive	Retail District	Mobile	AL	36609
1110	Pets and Vets	2627 Ash Street	Suite 300	Birmingham	AL	35209
1120	Gentle Dentistry	2829 Sycamore Road	Retail Plaza	Huntsville	AL	35805
1130	Crossfit	3031 Dogwood Avenue	Office Complex	Montgomery	AL	36117
1140	Office Depot	3233 Pecan Lane	Retail Center	Tuscaloosa	AL	35404
1150	Hoover Pediatrics	3435 Peach Drive	Office Park	Hoover	AL	35226
1160	Sapphire Jewelry	3637 Spruce Court	Retail Square	Dothan	AL	36301
1170	All World Travel	3839 Pine Street	Suite 400	Auburn	AL	36832
1180	Everything Alpaca	4041 Oak Road	Retail Village	Decatur	AL	35603
1190	Income Tax Express	4243 Elm Avenue	Office Building	Madison	AL	35757
\.


--
-- TOC entry 3639 (class 0 OID 16681)
-- Dependencies: 221
-- Data for Name: invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice (customer_number, representative_id, date_of_sale, line_items, invoice_number) FROM stdin;
\.


--
-- TOC entry 3642 (class 0 OID 16693)
-- Dependencies: 224
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (item_number, description, cost, retail) FROM stdin;
\.


--
-- TOC entry 3640 (class 0 OID 16689)
-- Dependencies: 222
-- Data for Name: line_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.line_items (invoice_number, qty, item_number, discount, line_item_id) FROM stdin;
\.


--
-- TOC entry 3638 (class 0 OID 16666)
-- Dependencies: 220
-- Data for Name: representative; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.representative (customer_number, first, middle, last, suffix, salutation, direct_line, mobile, representative_id) FROM stdin;
1000	Jillian	Dorris	Taylor	\N	Ms.	+1 505-674-9482	+1 505-680-2551	1660
1010	Niles	Angelika	Rounds	III	Mr.	+1 223-907-5653	+1 505-657-6096	1670
1020	Annika	Ángeles	Vargas	\N	Ms.	+1 505-646-2395	+1 505-644-2989	1680
1030	Crawford	Moriah	Essert	\N	Ms.	+1 505-635-9114	+1 505-757-1939	1690
1030	Gayla	Patricia	Colby	\N	Mrs.	+1 505-644-6603	+1 402-987-9956	1700
1040	Rhonda	Maria	Santana	\N	Ms.	+1 505-644-3104	+1 505-644-2099	1710
1040	Thurstan	Josiah	Vera	II	Mr.	+1 423-620-9698	+1 505-621-2979	1720
1050	Tayla	Ronnie	Bannister	\N	Ms.	+1 214-237-7045	+1 472-281-1761	1730
1050	Silas	Virgil	Fontana	\N	Mr.	+1 505-644-2173	+1 505-876-5808	1740
1050	Alfredo	Stephania	Tschida	\N	Mr.	+1 505-644-2672	+1 505-665-9361	1750
1060	Pip	Adolfito	Eilerts	\N	Mr.	+1 205-792-0231	+1 505-646-0857	1760
1070	Mariel	Wallace	Velázquez	\N	Mrs.	+1 472-256-2077	+1 619-479-0685	1770
1070	Cory	Velvet	Butts	\N	Mr.	+1 505-589-7062	+1 505-646-8825	1780
1080	Laurene	Sophia	Holmwood	\N	Ms.	+1 505-646-2261	+1 207-454-8624	1790
1090	Macario	Felicie	Beverley	\N	Mr.	+1 214-872-3730	+1 505-699-3871	1800
1100	Nando	Arin	Elliott	\N	Mr.	+1 205-882-8424	+1 505-394-7143	1810
1100	Mirabelle	Lorna	Holt	\N	Miss	+1 610-592-0390	+1 505-650-9510	1820
1100	Ceferina	Ventura	Reynell	\N	Mrs.	+1 505-695-2088	+1 419-588-3237	1830
1110	Friday	Anabella	Harrington	\N	Ms.	+1 417-391-1988	+1 505-646-2326	1840
1110	Winnifred	Bobbie	Wyman	\N	Mrs.	+1 505-646-3603	+1 208-681-6112	1850
1120	Odelia	Verda	Hayter	\N	Miss	+1 505-946-3225	+1 505-646-0828	1860
1120	Karyn	Amyas	Christopherson	\N	Mrs.	+1 225-919-7094	+1 472-281-8319	1870
1130	Adele	Arianna	Ewart	\N	Miss	+1 352-837-7138	+1 505-665-4881	1880
1140	Jodene	Nelson	Montero	\N	Mrs.	+1 472-287-1309	+1 505-644-9475	1890
1140	Frona	Valorie	Wendell	\N	Mrs.	+1 309-564-4048	+1 212-751-0248	1900
1150	Raffaella	Anima	Ruzzier	\N	Mrs.	+1 505-618-1591	+1 505-612-6512	1910
1160	Hettie	Fausto	Bonner	\N	Mrs.	+1 505-674-2327	+1 505-616-6192	1920
1160	Harvey	Beulah	Bandini	Jr.	Mr.	+1 505-644-4477	+1 505-693-1822	1930
1170	Angelica	Madelina	Robustelli	\N	Mrs.	+1 472-269-5735	+1 505-444-7504	1940
1180	Erna	Shelley	Columbus	\N	Mrs.	+1 505-622-4467	+1 505-593-1181	1950
1180	Corey	Bryce	Lagomarsino	\N	Mr.	+1 505-653-4600	+1 616-238-8436	1960
1180	Lee	Dilshad	Sanchez	\N	Mr.	+1 505-644-0803	+1 505-397-0089	1970
1190	Umberto	Britton	Borgnino	\N	Mr.	+1 201-958-1141	+1 505-646-1397	1980
1190	Juan	Bautista	Basso	\N	Mr.	+1 305-760-2520	+1 505-644-3746	1990
1190	Carlyn	Tasha	Alderisi	\N	Miss	+1 505-704-2560	+1 505-210-8495	2000
\.


--
-- TOC entry 3664 (class 0 OID 0)
-- Dependencies: 217
-- Name: company_customer_number_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_customer_number_seq', 1190, true);


--
-- TOC entry 3665 (class 0 OID 0)
-- Dependencies: 225
-- Name: invoice_invoice_number_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_invoice_number_seq', 10000, false);


--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 223
-- Name: items_item_number_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_item_number_seq', 1, false);


--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 226
-- Name: line_items_line_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.line_items_line_item_id_seq', 1, false);


--
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 219
-- Name: representative_representative_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.representative_representative_id_seq', 2000, true);


--
-- TOC entry 3476 (class 2606 OID 16664)
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (customer_number);


--
-- TOC entry 3483 (class 2606 OID 16738)
-- Name: invoice invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (invoice_number);


--
-- TOC entry 3488 (class 2606 OID 16716)
-- Name: items items_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_key PRIMARY KEY (item_number);


--
-- TOC entry 3486 (class 2606 OID 16752)
-- Name: line_items line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT line_items_pkey PRIMARY KEY (line_item_id);


--
-- TOC entry 3479 (class 2606 OID 16671)
-- Name: representative representative_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.representative
    ADD CONSTRAINT representative_pkey PRIMARY KEY (representative_id);


--
-- TOC entry 3477 (class 1259 OID 16717)
-- Name: fki_customer_number_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_customer_number_key ON public.representative USING btree (customer_number);


--
-- TOC entry 3480 (class 1259 OID 16702)
-- Name: fki_invoice_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_invoice_key ON public.invoice USING btree (customer_number);


--
-- TOC entry 3481 (class 1259 OID 16708)
-- Name: fki_invoice_rep; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_invoice_rep ON public.invoice USING btree (representative_id);


--
-- TOC entry 3484 (class 1259 OID 16740)
-- Name: fki_line_invoice; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_line_invoice ON public.line_items USING btree (invoice_number);


--
-- TOC entry 3489 (class 2606 OID 16718)
-- Name: representative customer_number_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.representative
    ADD CONSTRAINT customer_number_key FOREIGN KEY (customer_number) REFERENCES public.company(customer_number) NOT VALID;


--
-- TOC entry 3650 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE company; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.company TO cs600;


--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE invoice; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.invoice TO cs600;


--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE items; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.items TO cs600;


--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE line_items; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.line_items TO cs600;


--
-- TOC entry 3662 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE representative; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.representative TO cs600;


-- Completed on 2025-10-24 17:11:27 EDT

--
-- PostgreSQL database dump complete
--

