--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-10-24 17:11:00 EDT

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
-- TOC entry 217 (class 1259 OID 16633)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    title character varying(75) NOT NULL,
    author character varying(75) NOT NULL,
    year integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE books; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.books IS 'Books table for CS-600 Module 2';


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN books.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books.id IS 'Unique ID for Books';


--
-- TOC entry 218 (class 1259 OID 16636)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.books_id_seq OWNER TO postgres;

--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 218
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- TOC entry 3450 (class 2604 OID 16637)
-- Name: books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- TOC entry 3598 (class 0 OID 16633)
-- Dependencies: 217
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (title, author, year, id) FROM stdin;
Pride and Prejudice	Jane Austen	1813	1
To Kill a Mockingbird	Harper Lee	1960	2
The Great Gatsby	F. Scott Fitzgerald	1925	3
One Hundred Years of Solitude	Gabriel García Márquez	1967	4
In Cold Blood	Truman Capote	1965	5
Wide Sargasso Sea	Jean Rhys	1966	6
Brave New World	Aldous Huxley	1932	7
I Capture The Castle	Dodie Smith	1948	8
Jane Eyre	Charlotte Bronte	1847	9
Crime and Punishment	Fyodor Dostoevsky	1866	10
The Secret History	Donna Tartt	1992	11
The Call of the Wild	Jack London	1903	12
The Chrysalids	John Wyndham	1955	13
Persuasion	Jane Austen	1818	14
Moby-Dick	Herman Melville	1851	15
The Lion, the Witch and the Wardrobe	C.S. Lewis	1950	16
To the Lighthouse	Virginia Woolf	1927	17
The Death of the Heart	Elizabeth Bowen	1938	18
Tess of the d'Urbervilles	Thomas Hardy	1891	19
Frankenstein	Mary Shelley	1823	20
The Master and Margarita	Mikhail Bulgakov	1966	21
The Go-Between	L. P. Hartley	1953	22
One Flew Over the Cuckoo's Nest	Ken Kesey	1962	23
Nineteen Eighty-Four	George Orwell	1949	24
Buddenbrooks	Thomas Mann	1901	25
The Grapes of Wrath	John Steinbeck	1939	26
Beloved	Toni Morrison	1987	27
The Code of the Woosters	P. G. Wodehouse	1938	28
Dracula	Bram Stoker	1897	29
The Lord of the Rings	J. R. R. Tolkien	1954	30
The Adventures of Huckleberry Finn	Mark Twain	1884	31
Great Expectations	Charles Dickens	1860	32
Catch-22	Joseph Heller	1961	33
The Age of Innocence	Edith Wharton	1920	34
Things Fall Apart	Chinua Achebe	1958	35
Middlemarch	George Eliot	1871	36
Midnight's Children	Salman Rushdie	1981	37
The Iliad	Homer	1488	38
Vanity Fair	William Makepeace Thackeray	1847	39
Brideshead Revisited	Evelyn Waugh	1945	40
The Catcher in the Rye	J.D. Salinger	1951	41
Alice’s Adventures in Wonderland	Lewis Carroll	1865	42
The Mill on the Floss	George Eliot	1860	43
Barchester Towers	Anthony Trollope	1857	44
Another Country	James Baldwin	1962	45
Les Miserables	Victor Hugo	1862	46
Charlie and the Chocolate Factory	Roald Dahl	1964	47
The Outsiders	S. E. Hinton	1967	48
The Count of Monte Cristo	Alexandre Dumas	1844	49
Ulysses	James Joyce	1922	50
East of Eden	John Steinbeck	1952	51
The Brothers Karamazov	Fyodor Dostoyevsky	1880	52
Lolita	Vladimir Nabokov	1955	53
The Secret Garden	Frances Hodgson Burnett	1911	54
Scoop	Evelyn Waugh	1938	55
A Tale of Two Cities	Charles Dickens	1859	56
Diary of a Nobody	George Grossmith and Weedon Grossmith	1892	57
Anna Karenina	Leo Tolstoy	1878	58
The Betrothed	Alessandro Manzoni	1827	59
Orlando	Virginia Woolf	1928	60
Atlas Shrugged	Ayn Rand	1957	61
The Time Machine	H. G. Wells	1895	62
The Art of War	Sun-Tzu	1782	63
The Forsyte Saga	John Galsworthy	1922	64
Travels with Charley	John Steinbeck	1962	65
Tropic of Cancer	Henry Miller	1934	66
Women in Love	D. H. Lawrence	1920	67
Staying On	Paul Scott	1977	68
The Wind in the Willows	Kenneth Grahame	1908	69
My Ántonia	Willa Cather	1918	70
Wuthering Heights	Emily Brontë	1847	71
Perfume	Patrick Süskind	1985	72
War and Peace	Leo Tolstoy	1867	73
Of Human Bondage	Somerset Maugham	1915	74
Bleak House	Charles Dickens	1853	75
Lost Illusions	Honoré de Balzac	1837	76
Breakfast of Champions	Kurt Vonnegut	1973	77
A Christmas Carol	Charles Dickens	1843	78
Silas Marner	George Eliot	1861	79
Mrs Dalloway	Virginia Woolf	1925	80
Little Women	Louisa May Alcott	1868	81
The Sea, The Sea	Iris Murdoch	1978	82
The Godfather	Mario Puzo	1969	83
The Castle	Franz Kafka	1926	84
I, Claudius	Robert Graves	1934	85
Peter Pan	J.M. Barrie	1904	86
A Confederacy of Dunces	John Kennedy Toole	1980	87
The Razor's Edge	W. Somerset Maugham	1944	88
Lark Rise to Candleford	Flora Thompson	1939	89
The Return of the Native	Thomas Hardy	1878	90
A Portrait of the Artist as a Young Man	James Joyce	1916	91
Heart of Darkness	Joseph Conrad	1902	92
North and South	Elizabeth Gaskell	1854	93
The Handmaid's Tale	Margaret Atwood	1985	94
Suite Francaise	Irene Nemirovsky	2004	95
One Day in the Life of Ivan Denisovich	Alexander Solzhenitsyn	1962	96
What A Carve Up!	Jonathan Coe	1994	97
Zen and the Art of Motorcycle Maintenance	Robert Pirsig	1974	98
White Nights	Fyodor Dostoyevsky	1848	99
Hard Times	Charles Dickens	1854	100
\.


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 218
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 100, true);


--
-- TOC entry 3452 (class 2606 OID 16639)
-- Name: books books_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_key PRIMARY KEY (id);


--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 3452
-- Name: CONSTRAINT books_key ON books; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT books_key ON public.books IS 'Primary key for books - keys on the id field.';


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE books; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.books TO cs600;


-- Completed on 2025-10-24 17:11:00 EDT

--
-- PostgreSQL database dump complete
--

