--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Albums" (
    id integer NOT NULL,
    title character varying(255),
    description text,
    "releaseDate" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ArtistId" integer
);


ALTER TABLE "Albums" OWNER TO postgres;

--
-- Name: Albums_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Albums_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Albums_id_seq" OWNER TO postgres;

--
-- Name: Albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Albums_id_seq" OWNED BY "Albums".id;


--
-- Name: Artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Artists" (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE "Artists" OWNER TO postgres;

--
-- Name: Artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Artists_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Artists_id_seq" OWNER TO postgres;

--
-- Name: Artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Artists_id_seq" OWNED BY "Artists".id;


--
-- Name: Songs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Songs" (
    id integer NOT NULL,
    name character varying(255),
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ArtistId" integer,
    "SongwriterId" integer
);


ALTER TABLE "Songs" OWNER TO postgres;

--
-- Name: SongsToTracks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "SongsToTracks" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "SongId" integer NOT NULL,
    "TrackId" integer NOT NULL
);


ALTER TABLE "SongsToTracks" OWNER TO postgres;

--
-- Name: Songs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Songs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Songs_id_seq" OWNER TO postgres;

--
-- Name: Songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Songs_id_seq" OWNED BY "Songs".id;


--
-- Name: Songwriters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Songwriters" (
    id integer NOT NULL,
    name character varying(255),
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE "Songwriters" OWNER TO postgres;

--
-- Name: Songwriters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Songwriters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Songwriters_id_seq" OWNER TO postgres;

--
-- Name: Songwriters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Songwriters_id_seq" OWNED BY "Songwriters".id;


--
-- Name: Tracks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Tracks" (
    id integer NOT NULL,
    length integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "AlbumId" integer
);


ALTER TABLE "Tracks" OWNER TO postgres;

--
-- Name: Tracks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Tracks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Tracks_id_seq" OWNER TO postgres;

--
-- Name: Tracks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Tracks_id_seq" OWNED BY "Tracks".id;


--
-- Name: Albums id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Albums" ALTER COLUMN id SET DEFAULT nextval('"Albums_id_seq"'::regclass);


--
-- Name: Artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Artists" ALTER COLUMN id SET DEFAULT nextval('"Artists_id_seq"'::regclass);


--
-- Name: Songs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Songs" ALTER COLUMN id SET DEFAULT nextval('"Songs_id_seq"'::regclass);


--
-- Name: Songwriters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Songwriters" ALTER COLUMN id SET DEFAULT nextval('"Songwriters_id_seq"'::regclass);


--
-- Name: Tracks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tracks" ALTER COLUMN id SET DEFAULT nextval('"Tracks_id_seq"'::regclass);


--
-- Data for Name: Albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Albums" (id, title, description, "releaseDate", "createdAt", "updatedAt", "ArtistId") FROM stdin;
2	Dark Side of the Moon	\N	1973	2017-11-09 15:32:23.174668-05	2017-11-09 15:32:23.174668-05	1
\.


--
-- Data for Name: Artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Artists" (id, name, "createdAt", "updatedAt") FROM stdin;
1	Pink Floyd	2017-11-09 15:30:20.815933-05	2017-11-09 15:30:20.815933-05
\.


--
-- Data for Name: Songs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Songs" (id, name, description, "createdAt", "updatedAt", "ArtistId", "SongwriterId") FROM stdin;
\.


--
-- Data for Name: SongsToTracks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "SongsToTracks" ("createdAt", "updatedAt", "SongId", "TrackId") FROM stdin;
\.


--
-- Data for Name: Songwriters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Songwriters" (id, name, description, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Tracks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tracks" (id, length, "createdAt", "updatedAt", "AlbumId") FROM stdin;
\.


--
-- Name: Albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Albums_id_seq"', 3, true);


--
-- Name: Artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Artists_id_seq"', 1, true);


--
-- Name: Songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Songs_id_seq"', 1, false);


--
-- Name: Songwriters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Songwriters_id_seq"', 1, false);


--
-- Name: Tracks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Tracks_id_seq"', 1, false);


--
-- Name: Albums Albums_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Albums"
    ADD CONSTRAINT "Albums_pkey" PRIMARY KEY (id);


--
-- Name: Artists Artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Artists"
    ADD CONSTRAINT "Artists_pkey" PRIMARY KEY (id);


--
-- Name: SongsToTracks SongsToTracks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SongsToTracks"
    ADD CONSTRAINT "SongsToTracks_pkey" PRIMARY KEY ("SongId", "TrackId");


--
-- Name: Songs Songs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Songs"
    ADD CONSTRAINT "Songs_pkey" PRIMARY KEY (id);


--
-- Name: Songwriters Songwriters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Songwriters"
    ADD CONSTRAINT "Songwriters_pkey" PRIMARY KEY (id);


--
-- Name: Tracks Tracks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tracks"
    ADD CONSTRAINT "Tracks_pkey" PRIMARY KEY (id);


--
-- Name: Albums Albums_ArtistId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Albums"
    ADD CONSTRAINT "Albums_ArtistId_fkey" FOREIGN KEY ("ArtistId") REFERENCES "Artists"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: SongsToTracks SongsToTracks_SongId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SongsToTracks"
    ADD CONSTRAINT "SongsToTracks_SongId_fkey" FOREIGN KEY ("SongId") REFERENCES "Songs"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SongsToTracks SongsToTracks_TrackId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SongsToTracks"
    ADD CONSTRAINT "SongsToTracks_TrackId_fkey" FOREIGN KEY ("TrackId") REFERENCES "Tracks"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Songs Songs_ArtistId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Songs"
    ADD CONSTRAINT "Songs_ArtistId_fkey" FOREIGN KEY ("ArtistId") REFERENCES "Artists"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Songs Songs_SongwriterId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Songs"
    ADD CONSTRAINT "Songs_SongwriterId_fkey" FOREIGN KEY ("SongwriterId") REFERENCES "Songwriters"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Tracks Tracks_AlbumId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tracks"
    ADD CONSTRAINT "Tracks_AlbumId_fkey" FOREIGN KEY ("AlbumId") REFERENCES "Albums"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

