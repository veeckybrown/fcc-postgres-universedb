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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    age_in_million_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    gravity numeric(3,1),
    has_life boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    age_in_million_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    gravity numeric(3,1),
    has_life boolean,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(20),
    frequency integer NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    age_in_million_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    gravity numeric(3,1),
    has_life boolean,
    description text,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    age_in_million_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    gravity numeric(3,1),
    has_life boolean,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Gal_1', 10, 100, 11.1, true, 'welcome to gal_1 planet enjoy');
INSERT INTO public.galaxy VALUES (2, 'Gal_2', 20, 200, 22.2, true, 'welcome to gal_2 planet wonderful');
INSERT INTO public.galaxy VALUES (3, 'Gal_3', 30, 300, 33.3, false, 'welcome to gal_3 planet cool');
INSERT INTO public.galaxy VALUES (4, 'Gal_4', 40, 400, 44.4, true, 'welcome to gal_4 planet beautiful');
INSERT INTO public.galaxy VALUES (5, 'Gal_5', 50, 500, 55.5, false, 'welcome to gal_5 planet wowwww');
INSERT INTO public.galaxy VALUES (6, 'Gal_6', 60, 600, 66.6, true, 'welcome gal_6 planet mad ooo');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1', 10, 1, 23.3, false, 'welcome to the moon', 1);
INSERT INTO public.moon VALUES (2, 'moon_2', 20, 2, 13.3, false, 'welcome to the moon', 1);
INSERT INTO public.moon VALUES (3, 'moon_3', 30, 3, 43.4, true, 'welcome to the moon3', 2);
INSERT INTO public.moon VALUES (4, 'moon_4', 40, 4, 52.1, false, 'welcome to the moon4', 2);
INSERT INTO public.moon VALUES (5, 'moon_5', 50, 5, 54.5, true, 'welcome to the moon5', 3);
INSERT INTO public.moon VALUES (6, 'moon_6', 60, 6, 65.5, false, 'welcome to the moon6', 3);
INSERT INTO public.moon VALUES (7, 'moon_7', 70, 7, 34.6, true, 'welcome to the moon7', 4);
INSERT INTO public.moon VALUES (8, 'moon_8', 80, 8, 23.9, true, 'welcome to the moon8', 4);
INSERT INTO public.moon VALUES (9, 'moon_9', 90, 9, 46.5, true, 'welcome to the moon9', 5);
INSERT INTO public.moon VALUES (10, 'moon_10', 100, 10, 32.7, false, 'welcome to the moon10', 5);
INSERT INTO public.moon VALUES (11, 'moon_11', 100, 100, 45.7, false, 'welcome to the moon11', 6);
INSERT INTO public.moon VALUES (12, 'moon_12', 120, 120, 56.2, true, 'welcome to the moon12', 6);
INSERT INTO public.moon VALUES (13, 'moon_13', 130, 130, 67.8, false, 'welcome to the moon13', 7);
INSERT INTO public.moon VALUES (14, 'moon_14', 140, 140, 34.9, true, 'welcome to the moon14', 7);
INSERT INTO public.moon VALUES (15, 'moon_15', 150, 150, 45.8, false, 'welcome to the moon15', 8);
INSERT INTO public.moon VALUES (16, 'moon_16', 160, 160, 13.6, true, 'welcome to the moon16', 8);
INSERT INTO public.moon VALUES (17, 'moon_17', 170, 170, 67.8, true, 'welcome to the moon17', 9);
INSERT INTO public.moon VALUES (18, 'moon_18', 180, 180, 98.5, true, 'welcome to the moon18', 9);
INSERT INTO public.moon VALUES (19, 'moon_19', 190, 190, 84.7, false, 'welcome to the moon19', 10);
INSERT INTO public.moon VALUES (20, 'moon_20', 210, 210, 75.8, false, 'welcome to the moon20', 10);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'star', 5);
INSERT INTO public.more_info VALUES (2, 'moon', 10);
INSERT INTO public.more_info VALUES (3, 'sun', 1);
INSERT INTO public.more_info VALUES (4, 'earth', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'plan_1', 100, 1000, 10.9, true, 'welcome to planet ONE', 1);
INSERT INTO public.planet VALUES (2, 'plan_2', 200, 2000, 20.9, true, 'welcome to planet TWO', 1);
INSERT INTO public.planet VALUES (3, 'plan_3', 300, 3000, 30.9, false, 'welcome to planet THREE', 2);
INSERT INTO public.planet VALUES (4, 'plan_4', 400, 4000, 40.9, true, 'welcome to planet FOUR', 2);
INSERT INTO public.planet VALUES (5, 'plan_5', 500, 5000, 50.9, false, 'welcome to planet FIVE', 3);
INSERT INTO public.planet VALUES (6, 'plan_6', 600, 6000, 60.9, false, 'welcome to planet SIX', 3);
INSERT INTO public.planet VALUES (7, 'plan_7', 700, 7000, 70.9, true, 'welcome to planet SEVEN', 4);
INSERT INTO public.planet VALUES (8, 'plan_8', 800, 8000, 80.9, false, 'welcome to planet EIGHT', 4);
INSERT INTO public.planet VALUES (9, 'plan_9', 900, 9000, 90.9, true, 'welcome to planet NINE', 5);
INSERT INTO public.planet VALUES (10, 'plan_10', 11, 110, 19.9, false, 'welcome to planet TEN', 5);
INSERT INTO public.planet VALUES (11, 'plan_11', 12, 120, 18.8, false, 'welcome to planet ELEVEN', 6);
INSERT INTO public.planet VALUES (12, 'plan_12', 13, 130, 17.7, false, 'welcome to planet TWELVE', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', 1, 10, 10.1, true, 'welcome to star_1 kingdom nagode', 1);
INSERT INTO public.star VALUES (2, 'star_2', 2, 20, 20.2, true, 'welcome to star_2 kingdom home of all', 2);
INSERT INTO public.star VALUES (3, 'star_3', 3, 30, 30.3, false, 'welcome to star_3 kingdom feel at home', 3);
INSERT INTO public.star VALUES (4, 'star_4', 4, 40, 40.4, false, 'welcome to star_4 kingdom AJ_city', 4);
INSERT INTO public.star VALUES (5, 'star_5', 5, 50, 50.5, true, 'welcome to star_5 kingdom lagos island axis', 5);
INSERT INTO public.star VALUES (6, 'star_6', 6, 60, 60.6, false, 'welcome to star_6 kingdom all hail', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

