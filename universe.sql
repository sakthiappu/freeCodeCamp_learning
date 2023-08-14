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
    name character varying NOT NULL,
    description text,
    size numeric,
    is_active boolean
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
    name character varying NOT NULL,
    planet_id integer,
    distance_from_planet integer,
    has_atmosphere boolean,
    is_active boolean
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
    name character varying NOT NULL,
    star_id integer,
    population integer,
    is_habitable boolean,
    has_water boolean
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
    name character varying NOT NULL,
    galaxy_id integer,
    temperature integer,
    is_active boolean
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
-- Name: zombies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.zombies (
    zombies_id integer NOT NULL,
    name character varying NOT NULL,
    types_zombie text,
    is_active boolean
);


ALTER TABLE public.zombies OWNER TO freecodecamp;

--
-- Name: zombies_zombies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.zombies_zombies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zombies_zombies_id_seq OWNER TO freecodecamp;

--
-- Name: zombies_zombies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.zombies_zombies_id_seq OWNED BY public.zombies.zombies_id;


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
-- Name: zombies zombies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zombies ALTER COLUMN zombies_id SET DEFAULT nextval('public.zombies_zombies_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 'Spiral galaxy', 1200, true);
INSERT INTO public.galaxy VALUES (2, 'Antromeda', 'Spiral galaxy', 1999, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy', 2267, false);
INSERT INTO public.galaxy VALUES (4, 'Needle galaxy', 'Spiral', 5643, true);
INSERT INTO public.galaxy VALUES (5, 'Star galaxy', 'Hexagon galaxy', 98715, false);
INSERT INTO public.galaxy VALUES (6, 'Bad piggies', 'Angry bird', 74521, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Sun', 1, 5769, true, false);
INSERT INTO public.moon VALUES (2, 'TwoStar', 1, 2578, false, true);
INSERT INTO public.moon VALUES (3, 'ThreeStar', 2, 9856, true, false);
INSERT INTO public.moon VALUES (4, 'FourStar', 2, 6754, true, true);
INSERT INTO public.moon VALUES (5, 'FiveStar', 2, 4537, false, true);
INSERT INTO public.moon VALUES (6, 'SixStar', 1, 2354, true, false);
INSERT INTO public.moon VALUES (7, 'SevenStar', 2, 4367, false, true);
INSERT INTO public.moon VALUES (8, '8Star', 2, 4533, false, true);
INSERT INTO public.moon VALUES (9, '9star', 2, 87655, false, true);
INSERT INTO public.moon VALUES (10, '10Star', 1, 6129, true, false);
INSERT INTO public.moon VALUES (11, '11Star', 2, 9145, false, true);
INSERT INTO public.moon VALUES (12, '12Star', 1, 3425, false, true);
INSERT INTO public.moon VALUES (13, '13Star', 2, 2238, false, true);
INSERT INTO public.moon VALUES (14, '14Star', 1, 1223, false, true);
INSERT INTO public.moon VALUES (15, '15Star', 2, 4321, true, false);
INSERT INTO public.moon VALUES (16, '16Star', 1, 2121, false, false);
INSERT INTO public.moon VALUES (17, '17Star', 1, 4312, true, false);
INSERT INTO public.moon VALUES (18, '18Star', 1, 8974, false, true);
INSERT INTO public.moon VALUES (19, '19Star', 2, 5643, false, true);
INSERT INTO public.moon VALUES (20, '20Star', 2, 4325, true, false);
INSERT INTO public.moon VALUES (21, '21Star', 2, 5184, false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Sun', 1, 5769, true, false);
INSERT INTO public.planet VALUES (2, 'TwoStar', 1, 2578, false, true);
INSERT INTO public.planet VALUES (3, 'ThreeStar', 2, 9856, true, false);
INSERT INTO public.planet VALUES (4, 'FourStar', 2, 6754, true, true);
INSERT INTO public.planet VALUES (5, 'FiveStar', 2, 4537, false, true);
INSERT INTO public.planet VALUES (6, 'SixStar', 1, 2354, true, false);
INSERT INTO public.planet VALUES (7, 'SevenStar', 2, 4367, false, true);
INSERT INTO public.planet VALUES (8, '8Star', 2, 4533, false, true);
INSERT INTO public.planet VALUES (9, '9star', 2, 87655, false, true);
INSERT INTO public.planet VALUES (10, '10Star', 1, 6129, true, false);
INSERT INTO public.planet VALUES (11, '11Star', 2, 9145, false, true);
INSERT INTO public.planet VALUES (12, '12Star', 1, 3425, false, true);
INSERT INTO public.planet VALUES (13, '13Star', 2, 2238, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 5769, true);
INSERT INTO public.star VALUES (2, 'TwoStar', 1, 2578, false);
INSERT INTO public.star VALUES (3, 'ThreeStar', 2, 9856, true);
INSERT INTO public.star VALUES (4, 'FourStar', 2, 6754, true);
INSERT INTO public.star VALUES (5, 'FiveStar', 2, 4537, false);
INSERT INTO public.star VALUES (6, 'SixStar', 1, 2354, true);
INSERT INTO public.star VALUES (7, 'SevenStar', 2, 4367, false);


--
-- Data for Name: zombies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.zombies VALUES (1, 'red zombie', 'human', true);
INSERT INTO public.zombies VALUES (2, 'fly', 'birds', false);
INSERT INTO public.zombies VALUES (3, 'hunted', 'animals', true);
INSERT INTO public.zombies VALUES (4, 'blood', 'full zombie', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: zombies_zombies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.zombies_zombies_id_seq', 4, true);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: moon uq_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_name_moon UNIQUE (name);


--
-- Name: planet uq_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_name_planet UNIQUE (name);


--
-- Name: zombies zombies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zombies
    ADD CONSTRAINT zombies_name_key UNIQUE (name);


--
-- Name: zombies zombies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zombies
    ADD CONSTRAINT zombies_pkey PRIMARY KEY (zombies_id);


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

