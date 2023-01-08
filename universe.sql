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
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    distance_from_earth_ly numeric(10,5) NOT NULL,
    constellation character varying(50),
    uc character varying(1)
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
    name character varying(100) NOT NULL,
    description text,
    discovery_year integer,
    planet_id integer NOT NULL,
    uq_col character varying(1)
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
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    has_moons boolean,
    no_of_moons integer,
    star_id integer NOT NULL,
    has_life boolean,
    uq_col character varying(1)
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
    name character varying(100) NOT NULL,
    description text,
    age_in_billion numeric(3,1),
    galaxy_id integer NOT NULL,
    stellar_classification character varying(50),
    uq_col character varying(1)
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
-- Name: supernovae; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supernovae (
    supernovae_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    constellation character varying(50),
    distance_from_earth_ly numeric(10,5) NOT NULL,
    galaxy_id integer NOT NULL,
    uq_col character varying(1)
);


ALTER TABLE public.supernovae OWNER TO freecodecamp;

--
-- Name: supernovae_supernovae_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.supernovae_supernovae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supernovae_supernovae_id_seq OWNER TO freecodecamp;

--
-- Name: supernovae_supernovae_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.supernovae_supernovae_id_seq OWNED BY public.supernovae.supernovae_id;


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
-- Name: supernovae supernovae_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovae ALTER COLUMN supernovae_id SET DEFAULT nextval('public.supernovae_supernovae_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', NULL, 0.00000, 'Sagittarius', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, 2.50000, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (3, 'Messier 82', NULL, 11.40000, 'Ursa Major', NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', NULL, 17.30000, 'Coma Berenices', NULL);
INSERT INTO public.galaxy VALUES (5, 'Medusa merger', NULL, 128.80000, 'Ursa Major', NULL);
INSERT INTO public.galaxy VALUES (6, 'M32', NULL, 2.49000, 'Andromeda', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Io', NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Titan', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (6, 'Tethys', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, 'Oberon', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (8, 'Rhea', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Hyperion', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Phobos', NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (11, 'Phoebe', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Charon', NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (13, 'Pandora', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (14, 'Ophelia', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (15, 'Proteus', NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (16, 'Vanth', NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (17, 'Hydra', NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (18, 'Kerberos', NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (19, 'Bianca', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (20, 'Janus', NULL, NULL, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, false, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, false, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, true, NULL, 1, true, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, true, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, true, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, true, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, true, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, true, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, true, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', NULL, false, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (11, 'Orcus', NULL, true, NULL, 1, false, NULL);
INSERT INTO public.planet VALUES (12, 'Sedna', NULL, false, NULL, 1, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Barnard’s Star', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Altair', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Sirius', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Vega', NULL, NULL, 1, NULL, NULL);


--
-- Data for Name: supernovae; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supernovae VALUES (1, 'SN 185', NULL, NULL, 9100.00000, 1, NULL);
INSERT INTO public.supernovae VALUES (2, 'SN 386', NULL, NULL, 14700.00000, 1, NULL);
INSERT INTO public.supernovae VALUES (3, 'SN 1054', NULL, NULL, 6500.00000, 1, NULL);
INSERT INTO public.supernovae VALUES (4, 'SN 1181', NULL, NULL, 8500.00000, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: supernovae_supernovae_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supernovae_supernovae_id_seq', 4, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uc_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uc_key UNIQUE (uc);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uq_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uq_col_key UNIQUE (uq_col);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uq_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uq_col_key UNIQUE (uq_col);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uq_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uq_col_key UNIQUE (uq_col);


--
-- Name: supernovae supernovae_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovae
    ADD CONSTRAINT supernovae_pkey PRIMARY KEY (supernovae_id);


--
-- Name: supernovae supernovae_uq_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovae
    ADD CONSTRAINT supernovae_uq_col_key UNIQUE (uq_col);


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
-- Name: supernovae supernovae_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovae
    ADD CONSTRAINT supernovae_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

