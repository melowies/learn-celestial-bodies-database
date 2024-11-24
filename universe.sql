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
-- Name: finish; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.finish (
    finish_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.finish OWNER TO freecodecamp;

--
-- Name: finish_finish_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.finish_finish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.finish_finish_id_seq OWNER TO freecodecamp;

--
-- Name: finish_finish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.finish_finish_id_seq OWNED BY public.finish.finish_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(250) NOT NULL,
    description text,
    type text,
    distance integer,
    galaxy_id integer NOT NULL
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
    name character varying(250) NOT NULL,
    age integer NOT NULL,
    satellite boolean NOT NULL,
    description text,
    moon_id integer NOT NULL,
    planet_id integer
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
    name character varying(250) NOT NULL,
    description text,
    type text,
    distance integer,
    planet_id integer NOT NULL,
    star_id integer
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
    name character varying(250) NOT NULL,
    age integer NOT NULL,
    distance numeric(6,2) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    star_id integer NOT NULL,
    galaxy_id integer
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
-- Name: finish finish_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.finish ALTER COLUMN finish_id SET DEFAULT nextval('public.finish_finish_id_seq'::regclass);


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
-- Data for Name: finish; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.finish VALUES (1, 'Finish 1', 'Description for finish 1', '2024-11-24 10:53:37.24663');
INSERT INTO public.finish VALUES (2, 'Finish 2', 'Description for finish 2', '2024-11-24 10:53:37.24663');
INSERT INTO public.finish VALUES (3, 'Finish 3', 'Description for finish 3', '2024-11-24 10:53:37.24663');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Our home galaxy', 'Spiral', 0, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 'Nearest major galaxy', 'Spiral', 2500000, 2);
INSERT INTO public.galaxy VALUES ('Triangulum', 'A small spiral galaxy', 'Spiral', 3000000, 3);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 'A satellite galaxy of the Milky Way', 'Irregular', 160000, 4);
INSERT INTO public.galaxy VALUES ('Small Magellanic Cloud', 'A dwarf galaxy near the Milky Way', 'Irregular', 200000, 5);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 'A classic spiral galaxy', 'Spiral', 23000000, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 4500, true, 'Earth''s only natural satellite', 21, 11);
INSERT INTO public.moon VALUES ('Phobos', 4500, true, 'One of Mars'' moons', 22, 12);
INSERT INTO public.moon VALUES ('Deimos', 4500, true, 'Another of Mars'' moons', 23, 12);
INSERT INTO public.moon VALUES ('Europa', 4500, true, 'Jupiter''s icy moon', 24, 13);
INSERT INTO public.moon VALUES ('Ganymede', 4500, true, 'The largest moon in the solar system', 25, 13);
INSERT INTO public.moon VALUES ('Callisto', 4500, true, 'A heavily cratered moon', 26, 13);
INSERT INTO public.moon VALUES ('Titan', 4500, true, 'Saturn''s largest moon', 27, 14);
INSERT INTO public.moon VALUES ('Enceladus', 4500, true, 'Saturn moon with water geysers', 28, 14);
INSERT INTO public.moon VALUES ('Mimas', 4500, true, 'Small moon of Saturn', 29, 14);
INSERT INTO public.moon VALUES ('Triton', 4500, true, 'Neptune''s largest moon', 30, 16);
INSERT INTO public.moon VALUES ('Charon', 4500, true, 'Pluto''s largest moon', 31, 17);
INSERT INTO public.moon VALUES ('Proxima b-1', 4500, true, 'Moon around Proxima b', 32, 18);
INSERT INTO public.moon VALUES ('Proxima b-2', 4500, true, 'Another moon around Proxima b', 33, 18);
INSERT INTO public.moon VALUES ('Alpha b-1', 4500, true, 'Moon around Alpha b', 34, 19);
INSERT INTO public.moon VALUES ('Alpha b-2', 4500, true, 'Another moon around Alpha b', 35, 19);
INSERT INTO public.moon VALUES ('Sirius b-1', 4500, true, 'Moon around Sirius b', 36, 20);
INSERT INTO public.moon VALUES ('Io', 4500, true, 'Volcanically active moon of Jupiter', 37, 13);
INSERT INTO public.moon VALUES ('Tethys', 4500, true, 'One of Saturn''s moons', 38, 14);
INSERT INTO public.moon VALUES ('Oberon', 4500, true, 'Uranus''s moon', 39, 15);
INSERT INTO public.moon VALUES ('Miranda', 4500, true, 'Another Uranus moon', 40, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 'Planet with life', 'Terrestrial', 3, 11, 1);
INSERT INTO public.planet VALUES ('Mars', 'The Red Planet', 'Terrestrial', 4, 12, 1);
INSERT INTO public.planet VALUES ('Jupiter', 'The largest planet', 'Gas Giant', 5, 13, 1);
INSERT INTO public.planet VALUES ('Saturn', 'Known for its rings', 'Gas Giant', 6, 14, 1);
INSERT INTO public.planet VALUES ('Uranus', 'An ice giant', 'Ice Giant', 7, 15, 1);
INSERT INTO public.planet VALUES ('Neptune', 'The farthest planet', 'Ice Giant', 8, 16, 1);
INSERT INTO public.planet VALUES ('Planet Nine', 'Hypothetical planet', 'Unknown', 9, 17, 1);
INSERT INTO public.planet VALUES ('Proxima b', 'Closest exoplanet', 'Terrestrial', 10, 18, 2);
INSERT INTO public.planet VALUES ('Alpha b', 'Exoplanet in Alpha Centauri', 'Terrestrial', 11, 19, 6);
INSERT INTO public.planet VALUES ('Sirius b', 'Exoplanet in Sirius', 'Gas Giant', 12, 20, 4);
INSERT INTO public.planet VALUES ('Kepler-22b', 'Habitable zone planet', 'Terrestrial', 13, 22, 2);
INSERT INTO public.planet VALUES ('Gliese 581g', 'Exoplanet in Gliese 581 system', 'Terrestrial', 14, 23, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 4600, 0.00, true, 'Our home star', 1, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 5000, 4.24, false, 'Closest star to the Sun', 2, 1);
INSERT INTO public.star VALUES ('Betelgeuse', 10000, 643.00, false, 'Red supergiant star', 3, 1);
INSERT INTO public.star VALUES ('Sirius', 5000, 8.60, false, 'Brightest star in the night sky', 4, 1);
INSERT INTO public.star VALUES ('Vega', 4550, 25.00, false, 'A bright star in the Lyra constellation', 5, 1);
INSERT INTO public.star VALUES ('Alpha Centauri', 5000, 4.37, false, 'Part of a binary system', 6, 2);


--
-- Name: finish_finish_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.finish_finish_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy dist_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT dist_unique UNIQUE (distance);


--
-- Name: finish finish_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.finish
    ADD CONSTRAINT finish_name_key UNIQUE (name);


--
-- Name: finish finish_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.finish
    ADD CONSTRAINT finish_pkey PRIMARY KEY (finish_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_dist_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_dist_unique UNIQUE (distance);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

