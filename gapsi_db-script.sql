--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-06-09 12:34:30 CDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

-- Role: gapsi_dbuser
-- DROP ROLE gapsi_dbuser;
-- CREATE ROLE gapsi_dbuser LOGIN
--  ENCRYPTED PASSWORD 'md52d8bbf90a97e5cbfbc12a5c21bb4afd1'
--  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;

DROP DATABASE gapsi_db;
--
-- TOC entry 2182 (class 1262 OID 41895)
-- Name: gapsi_db; Type: DATABASE; Schema: -; Owner: gapsi_dbuser
--

CREATE DATABASE gapsi_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_VE.UTF-8' LC_CTYPE = 'es_VE.UTF-8';


ALTER DATABASE gapsi_db OWNER TO gapsi_dbuser;

\connect gapsi_db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12435)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 41896)
-- Name: article; Type: TABLE; Schema: public; Owner: gapsi_dbuser
--

CREATE TABLE public.article (
    id integer NOT NULL,
    description character varying(200),
    model character varying(10),
    name character varying(20),
    price numeric(19,2)
);


ALTER TABLE public.article OWNER TO gapsi_dbuser;

--
-- TOC entry 182 (class 1259 OID 41901)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: gapsi_dbuser
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO gapsi_dbuser;

--
-- TOC entry 2175 (class 0 OID 41896)
-- Dependencies: 181
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: gapsi_dbuser
--



--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 182
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: gapsi_dbuser
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);


--
-- TOC entry 2060 (class 2606 OID 41900)
-- Name: article_pkey; Type: CONSTRAINT; Schema: public; Owner: gapsi_dbuser
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-06-09 12:34:30 CDT

--
-- PostgreSQL database dump complete
--

