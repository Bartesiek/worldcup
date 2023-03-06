--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 4, 2, 217, 218);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 2, 0, 219, 220);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 2, 1, 218, 220);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 1, 0, 217, 219);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 3, 2, 218, 221);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 2, 0, 220, 222);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 2, 1, 219, 223);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 2, 0, 217, 224);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 2, 1, 220, 225);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 1, 0, 222, 226);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 3, 2, 219, 227);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 2, 0, 223, 228);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 2, 1, 218, 229);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 2, 1, 221, 230);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 2, 1, 224, 231);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 4, 3, 217, 232);
INSERT INTO public.games VALUES (81, 2014, 'Final', 1, 0, 233, 232);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 3, 0, 234, 223);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 1, 0, 232, 234);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 7, 1, 233, 223);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 1, 0, 234, 235);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 1, 0, 232, 219);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 2, 1, 223, 225);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 1, 0, 233, 217);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 2, 1, 223, 236);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 2, 0, 225, 224);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 2, 0, 217, 237);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 2, 1, 233, 238);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 2, 1, 234, 228);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 2, 1, 235, 239);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 1, 0, 232, 226);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 2, 1, 219, 240);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (217, 'France');
INSERT INTO public.teams VALUES (218, 'Croatia');
INSERT INTO public.teams VALUES (219, 'Belgium');
INSERT INTO public.teams VALUES (220, 'England');
INSERT INTO public.teams VALUES (221, 'Russia');
INSERT INTO public.teams VALUES (222, 'Sweden');
INSERT INTO public.teams VALUES (223, 'Brazil');
INSERT INTO public.teams VALUES (224, 'Uruguay');
INSERT INTO public.teams VALUES (225, 'Colombia');
INSERT INTO public.teams VALUES (226, 'Switzerland');
INSERT INTO public.teams VALUES (227, 'Japan');
INSERT INTO public.teams VALUES (228, 'Mexico');
INSERT INTO public.teams VALUES (229, 'Denmark');
INSERT INTO public.teams VALUES (230, 'Spain');
INSERT INTO public.teams VALUES (231, 'Portugal');
INSERT INTO public.teams VALUES (232, 'Argentina');
INSERT INTO public.teams VALUES (233, 'Germany');
INSERT INTO public.teams VALUES (234, 'Netherlands');
INSERT INTO public.teams VALUES (235, 'Costa Rica');
INSERT INTO public.teams VALUES (236, 'Chile');
INSERT INTO public.teams VALUES (237, 'Nigeria');
INSERT INTO public.teams VALUES (238, 'Algeria');
INSERT INTO public.teams VALUES (239, 'Greece');
INSERT INTO public.teams VALUES (240, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 240, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

