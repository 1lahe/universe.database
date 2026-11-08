--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    galaxy_type character varying(50),
    age_in_millions_of_years numeric,
    mass_in_trillions integer,
    color character varying(30)
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
    name character varying(50) NOT NULL,
    size_in_km numeric,
    gravity numeric,
    witch_planet character varying(50),
    did_we_go_there boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    color character varying(50),
    gravity numeric,
    size_in_km numeric,
    is_it_safe boolean,
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
-- Name: space_craft; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_craft (
    space_craft_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50),
    model character varying(50),
    color character varying(30),
    material text
);


ALTER TABLE public.space_craft OWNER TO freecodecamp;

--
-- Name: space_craft_space_craft_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_craft_space_craft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_craft_space_craft_id_seq OWNER TO freecodecamp;

--
-- Name: space_craft_space_craft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_craft_space_craft_id_seq OWNED BY public.space_craft.space_craft_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    color character varying(30),
    size_in_km integer,
    mass integer,
    age_in_millions integer,
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
-- Name: space_craft space_craft_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_craft ALTER COLUMN space_craft_id SET DEFAULT nextval('public.space_craft_space_craft_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 13.6, 2, 'Band of white light');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral (SA(s)b)', 10, 1, 'Bluish-white');
INSERT INTO public.galaxy VALUES (3, 'Messier', 'Giant Elliptical', 13.2, 2, 'Reddish-yellow');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic', 'Magellanic Irregular', 13, 138, 'Bright blue and pink');
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'flocculent spiral galaxy', 10, 50, 'bluish-white');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'classic grand-design spiral galaxy', 400, 160, ' yellowish-orange core');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 2.634, 0.146, 'Jupiter', false, 5);
INSERT INTO public.moon VALUES (2, 'Titan', 2.575, 0.138, 'Saturn', false, 6);
INSERT INTO public.moon VALUES (3, 'Callisto', 2.410, 0.126, 'Jupiter', false, 5);
INSERT INTO public.moon VALUES (4, 'Io', 1.821, 0.183, 'Jupiter', false, 5);
INSERT INTO public.moon VALUES (5, 'Earths Moon', 1.737, 0.165, 'Earth', true, 3);
INSERT INTO public.moon VALUES (6, 'Europa', 1.560, 0.134, 'Jupiter', false, 5);
INSERT INTO public.moon VALUES (7, 'Triton', 1.353, 0.080, 'Neptune', false, 8);
INSERT INTO public.moon VALUES (8, 'Titania', 788, 0.038, 'Uranus', false, 7);
INSERT INTO public.moon VALUES (9, 'Rhea', 763, 0.027, 'Saturn', false, 6);
INSERT INTO public.moon VALUES (10, 'Oberon', 761, 0.035, 'Uranus', false, 7);
INSERT INTO public.moon VALUES (11, 'Iapetus', 734, 0.022, 'Saturn', false, 6);
INSERT INTO public.moon VALUES (12, 'Umbriel', 584, 0.023, 'Uranus', false, 7);
INSERT INTO public.moon VALUES (13, 'Ariel', 578, 0.027, 'Uranus', false, 7);
INSERT INTO public.moon VALUES (14, 'Dione', 561, 0.023, 'Saturn', false, 6);
INSERT INTO public.moon VALUES (15, 'Tethys', 531, 0.015, 'Saturn', false, 6);
INSERT INTO public.moon VALUES (16, 'Enceladus', 252, 0.011, 'Saturn', false, 6);
INSERT INTO public.moon VALUES (17, 'Miranda', 235, 0.008, 'Uranus', false, 7);
INSERT INTO public.moon VALUES (18, 'Proteus', 210, 0.007, 'Neptune', false, 8);
INSERT INTO public.moon VALUES (19, 'Phobos', 11.2, 0.00058, 'Mars', false, 4);
INSERT INTO public.moon VALUES (20, 'Deimos', 6.2, 0.00030, 'Mars', false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', 'Pale yellowish-white', 0.90, 0.95, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Reddish-orange', 0.38, 0.53, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Banded orange, brown, and beige', 2.53, 11.21, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Hazy pale gold and yellow', 1.06, 9.45, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Pale cyan / aquamarine', 0.89, 4.01, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Deep azure blue', 1.14, 3.88, false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Unknown', 1.10, 1.03, false, 1);
INSERT INTO public.planet VALUES (10, 'HD 189733b', 'Cobalt blue', 2.15, 12.70, false, 1);
INSERT INTO public.planet VALUES (11, 'Gliese 581c', 'Unknown', 2.20, 1.50, false, 1);
INSERT INTO public.planet VALUES (12, 'WASP-12b', 'Pitch black', 2.22, 20.05, false, 1);
INSERT INTO public.planet VALUES (1, 'Mercury', 'Slate gray', 0.38, 0.38, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Blue, white, and green', 1.00, 1.00, true, 1);


--
-- Data for Name: space_craft; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_craft VALUES (1, 'Voyager 1', 'Deep Space Interstellar Probe', 'Voyager Mariner-Class', 'Glossy white', 'Aluminum alloy, titanium, and gold plating');
INSERT INTO public.space_craft VALUES (2, 'James Webb', 'Infrared Space Observatory', 'Next Generation Space Telescope (JWST)', 'Bright gold', 'Beryllium (mirrors), polyimide film (sunshield), and carbon-fiber composite');
INSERT INTO public.space_craft VALUES (3, 'Cassini', 'Planetary Orbiter', 'Cassini-Huygens Outer Heliocentric Bus', 'Gold and amber', 'Aluminum structure, titanium fasteners, and amber-colored Kapton foil blankets');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius A', 'Bright white', 2, 2, 240, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Red-orange', 760, 20, 8, 1);
INSERT INTO public.star VALUES (3, 'Rigel', 'Blue-white', 79, 21, 8, 1);
INSERT INTO public.star VALUES (4, 'Vega', 'Bluish-white', 2, 2, 450, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Dull red', 0, 0, 5, 1);
INSERT INTO public.star VALUES (6, 'Arcturus', 'red giant', 25, 1, 7, 1);


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
-- Name: space_craft_space_craft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_craft_space_craft_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: space_craft space_craft_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_craft
    ADD CONSTRAINT space_craft_name_key UNIQUE (name);


--
-- Name: space_craft space_craft_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_craft
    ADD CONSTRAINT space_craft_pkey PRIMARY KEY (space_craft_id);


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

