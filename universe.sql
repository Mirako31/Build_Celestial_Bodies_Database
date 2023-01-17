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
    galaxy_types text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    has_life boolean,
    stars text,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_name text
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
    planet_name text,
    distance_from_earth numeric,
    is_spherical boolean,
    age_in_millions_of_years integer,
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    has_life boolean,
    age_in_millions_of_years integer,
    is_spherical boolean,
    star_name text,
    distance_from_earth numeric,
    moons text,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_name text
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    star_name character varying(30),
    galaxy_name character varying(30),
    planet_name character varying(30),
    solar_system_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    is_spherical boolean,
    planets text,
    galaxy_name text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_name text
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
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('elliptical', 500, 555.5, false, 'Sirius', 1, 'Andromeda', 'Andromeda');
INSERT INTO public.galaxy VALUES ('spiral', 600, 666.6, true, 'Sun', 2, 'Milky Way', 'Milky Way');
INSERT INTO public.galaxy VALUES ('S0', 400, 444.4, true, 'Elune', 3, 'Sargeras', 'Sargeras');
INSERT INTO public.galaxy VALUES ('Sa', 300, 333.3, true, 'Valhalla', 4, 'Yggdrasil', 'Yggdrasil');
INSERT INTO public.galaxy VALUES ('Sb', 200, 222.2, true, 'Ouranos', 5, 'Nox', 'Nox');
INSERT INTO public.galaxy VALUES ('SB', 700, 777.7, true, 'Earendil', 6, 'Illuvatar', 'Illuvatar');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Epsilon 1', 152.25, true, 1200, 1, 'Io');
INSERT INTO public.moon VALUES ('Epsilon 1', 150.25, true, 100, 2, 'Io 2');
INSERT INTO public.moon VALUES ('Epsilon 1', 110.25, true, 200, 3, 'Io 3');
INSERT INTO public.moon VALUES ('Azeroth', 10.25, false, 210, 4, 'Illidan');
INSERT INTO public.moon VALUES ('Darnassus', 20.25, false, 110, 5, 'Malfurion');
INSERT INTO public.moon VALUES ('Helheim', 55.25, true, 330, 6, 'Angrboda');
INSERT INTO public.moon VALUES ('Jotunheim', 5.25, true, 131, 7, 'Loki');
INSERT INTO public.moon VALUES ('Earth', 0.001, true, 60, 8, 'Moon');
INSERT INTO public.moon VALUES ('Mars', 100, true, 10, 9, 'Damos');
INSERT INTO public.moon VALUES ('Hades', 50.12, false, 20, 10, 'Tartarus');
INSERT INTO public.moon VALUES ('Arda', 51.52, false, 1000, 11, 'Valinor');
INSERT INTO public.moon VALUES ('Morgoth', 666.6, false, 1100, 12, 'Balrog');
INSERT INTO public.moon VALUES ('Melkor', 67.8, true, 900, 13, 'Sauron');
INSERT INTO public.moon VALUES ('Azeroth', 47.8, true, 8400, 14, 'Tyrande');
INSERT INTO public.moon VALUES ('Azeroth', 471.8, false, 2400, 15, 'Medivh');
INSERT INTO public.moon VALUES ('Jotunheim', 41.8, false, 200, 16, 'Thor');
INSERT INTO public.moon VALUES ('Apollo', 11.8, true, 100, 17, 'Hermes');
INSERT INTO public.moon VALUES ('Arda', 111.80, true, 1200, 18, 'Aragorn');
INSERT INTO public.moon VALUES ('Darnassus', 11.80, false, 120, 19, 'Varian');
INSERT INTO public.moon VALUES ('Helheim', 665.24, true, 220, 20, 'Hel');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (false, 222, true, 'Sirius', 2200, 'Io', 1, 'Epsilon 1', 'Epsilon 1');
INSERT INTO public.planet VALUES (true, 232, false, 'Elune', 1250, 'Illidan', 2, 'Azeroth', 'Azeroth');
INSERT INTO public.planet VALUES (true, 140, false, 'Elune', 1210, 'Malfurion', 3, 'Darnassus', 'Darnassus');
INSERT INTO public.planet VALUES (true, 140, true, 'Valhalla', 6210, 'Angrboda', 4, 'Helheim', 'Helheim');
INSERT INTO public.planet VALUES (true, 140, true, 'Valhalla', 7210, 'Loki', 5, 'Jotunheim', 'Jotunheim');
INSERT INTO public.planet VALUES (false, 245, false, 'Sun', 1000, 'Moon', 6, 'Earth', 'Earth');
INSERT INTO public.planet VALUES (true, 145, false, 'Sun', 10, 'Damos', 7, 'Mars', 'Mars');
INSERT INTO public.planet VALUES (true, 140, false, 'Ouranos', 1000, 'Kratos', 8, 'Apollo', 'Apollo');
INSERT INTO public.planet VALUES (true, 340, true, 'Ouranos', 1005, 'Tartarus', 9, 'Hades', 'Hades');
INSERT INTO public.planet VALUES (false, 110, true, 'Earendil', 115, 'Valinor', 10, 'Arda', 'Arda');
INSERT INTO public.planet VALUES (false, 110, false, 'Earendil', 155, 'Balrog', 11, 'Morgoth', 'Morgoth');
INSERT INTO public.planet VALUES (false, 110, false, 'Earendil', 1550, 'Sauron', 12, 'Melkor', 'Melkor');


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES ('Sirius', 'Andromeda', 'Epsilon 1', 1, 'Sirius System');
INSERT INTO public.solar_system VALUES ('Sun', 'Milky Way', 'Earth', 2, 'Sun System');
INSERT INTO public.solar_system VALUES ('Elune', 'Sargeras', 'Azeroth', 3, 'Elunian System');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (true, 'Epsilon 1', 'Andromeda', 510.1, 511, 1, 'Sirius', 'Sirius');
INSERT INTO public.star VALUES (true, 'Earth', 'Milky Way', 100.1, 1000, 2, 'Sun', 'Sun');
INSERT INTO public.star VALUES (true, 'Azeroth', 'Sargeras', 300.1, 2000, 3, 'Elune', 'Elune');
INSERT INTO public.star VALUES (false, 'Odin', 'Yggdrasil', 700.1, 410, 4, 'Valhalla', 'Valhalla');
INSERT INTO public.star VALUES (false, 'Apollo', 'Nox', 800.1, 210, 5, 'Ouranos', 'Ouranos');
INSERT INTO public.star VALUES (true, 'Arda', 'Illuvatar', 450.1, 221, 6, 'Earendil', 'Earendil');


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
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: solar_system solar_system_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: solar_system solar_system_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_planet_name_key UNIQUE (planet_name);


--
-- Name: solar_system solar_system_solar_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_solar_system_id_key UNIQUE (solar_system_id);


--
-- Name: solar_system solar_system_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_star_name_key UNIQUE (star_name);


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
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);


--
-- Name: moon moon_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

