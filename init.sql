--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

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
-- Name: event; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.event (
                              id bigint NOT NULL,
                              description character varying(255),
                              liked boolean NOT NULL,
                              name character varying(255),
                              popularity_score double precision NOT NULL,
                              location_id bigint
);


ALTER TABLE public.event OWNER TO test;

--
-- Name: event_id_seq; Type: SEQUENCE; Schema: public; Owner: test
--

ALTER TABLE public.event ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: location; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.location (
                                 id bigint NOT NULL,
                                 address character varying(255),
                                 capacity character varying(255),
                                 description character varying(255),
                                 name character varying(255)
);


ALTER TABLE public.location OWNER TO test;

--
-- Name: location_id_seq; Type: SEQUENCE; Schema: public; Owner: test
--

ALTER TABLE public.location ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.event (id, description, liked, name, popularity_score, location_id) FROM stdin;
6	FDASFDSF	t	BUTTer	20	1
5	FDASFDSF	t	Banana	20	1
9	gdfgdf	t	Apple	20	4
8	gdfgdf	t	ghfdfd	50	3
7	FDASFDSF	t	Apple	20	2
10	gdfgdf	t	Apple	60	3
\.


--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.location (id, address, capacity, description, name) FROM stdin;
1	AAAA	200	BBBB	DAOSDASKODK
2	FSDFDS	120	SDFDSFSDF	ADASDASD
3	FDSFDSF	50	GDFGDFG	ASDASD
4	SDFDSFSSDFSD	100	FDGDFGDF	ASDASD
\.


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.event_id_seq', 10, true);


--
-- Name: location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.location_id_seq', 4, true);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (id);


--
-- Name: event fkbb6c0h5nhs5og47iem617ehrl; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT fkbb6c0h5nhs5og47iem617ehrl FOREIGN KEY (location_id) REFERENCES public.location(id);


--
-- PostgreSQL database dump complete
--

