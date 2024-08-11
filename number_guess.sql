--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game_data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_data (
    game_id integer NOT NULL,
    tries integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.game_data OWNER TO freecodecamp;

--
-- Name: game_data_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_data_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_data_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_data_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_data_game_id_seq OWNED BY public.game_data.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: game_data game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_data ALTER COLUMN game_id SET DEFAULT nextval('public.game_data_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: game_data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_data VALUES (17, 12, 23);
INSERT INTO public.game_data VALUES (18, 11, 23);
INSERT INTO public.game_data VALUES (19, 236, 24);
INSERT INTO public.game_data VALUES (20, 945, 24);
INSERT INTO public.game_data VALUES (21, 490, 25);
INSERT INTO public.game_data VALUES (22, 855, 25);
INSERT INTO public.game_data VALUES (23, 816, 24);
INSERT INTO public.game_data VALUES (24, 581, 24);
INSERT INTO public.game_data VALUES (25, 672, 24);
INSERT INTO public.game_data VALUES (26, 172, 26);
INSERT INTO public.game_data VALUES (27, 143, 27);
INSERT INTO public.game_data VALUES (28, 427, 26);
INSERT INTO public.game_data VALUES (29, 635, 26);
INSERT INTO public.game_data VALUES (30, 240, 26);
INSERT INTO public.game_data VALUES (31, 1, 28);
INSERT INTO public.game_data VALUES (32, 1, 30);
INSERT INTO public.game_data VALUES (33, 730, 32);
INSERT INTO public.game_data VALUES (34, 779, 33);
INSERT INTO public.game_data VALUES (35, 911, 32);
INSERT INTO public.game_data VALUES (36, 358, 32);
INSERT INTO public.game_data VALUES (37, 866, 32);
INSERT INTO public.game_data VALUES (38, 892, 34);
INSERT INTO public.game_data VALUES (39, 192, 34);
INSERT INTO public.game_data VALUES (40, 163, 35);
INSERT INTO public.game_data VALUES (41, 35, 35);
INSERT INTO public.game_data VALUES (42, 592, 34);
INSERT INTO public.game_data VALUES (43, 72, 34);
INSERT INTO public.game_data VALUES (44, 203, 34);
INSERT INTO public.game_data VALUES (45, 809, 36);
INSERT INTO public.game_data VALUES (46, 809, 36);
INSERT INTO public.game_data VALUES (47, 362, 37);
INSERT INTO public.game_data VALUES (48, 120, 37);
INSERT INTO public.game_data VALUES (49, 563, 36);
INSERT INTO public.game_data VALUES (50, 579, 36);
INSERT INTO public.game_data VALUES (51, 157, 36);
INSERT INTO public.game_data VALUES (52, 8, 23);
INSERT INTO public.game_data VALUES (53, 411, 38);
INSERT INTO public.game_data VALUES (54, 256, 38);
INSERT INTO public.game_data VALUES (55, 386, 39);
INSERT INTO public.game_data VALUES (56, 130, 39);
INSERT INTO public.game_data VALUES (57, 198, 38);
INSERT INTO public.game_data VALUES (58, 244, 38);
INSERT INTO public.game_data VALUES (59, 695, 38);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (23, 'luan');
INSERT INTO public.users VALUES (24, 'user_1723324563429');
INSERT INTO public.users VALUES (25, 'user_1723324563428');
INSERT INTO public.users VALUES (26, 'user_1723324844398');
INSERT INTO public.users VALUES (27, 'user_1723324844397');
INSERT INTO public.users VALUES (28, 'user_1723324872700');
INSERT INTO public.users VALUES (29, 'user_1723324872699');
INSERT INTO public.users VALUES (30, 'user_1723324885063');
INSERT INTO public.users VALUES (31, 'user_1723324885062');
INSERT INTO public.users VALUES (32, 'user_1723324966891');
INSERT INTO public.users VALUES (33, 'user_1723324966890');
INSERT INTO public.users VALUES (34, 'user_1723324985897');
INSERT INTO public.users VALUES (35, 'user_1723324985896');
INSERT INTO public.users VALUES (36, 'user_1723325082236');
INSERT INTO public.users VALUES (37, 'user_1723325082235');
INSERT INTO public.users VALUES (38, 'user_1723325160790');
INSERT INTO public.users VALUES (39, 'user_1723325160789');


--
-- Name: game_data_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_data_game_id_seq', 59, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 39, true);


--
-- Name: game_data game_data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_data
    ADD CONSTRAINT game_data_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: game_data game_data_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_data
    ADD CONSTRAINT game_data_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

