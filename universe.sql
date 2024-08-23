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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    name character varying(30) NOT NULL,
    lightyear integer,
    diametro integer NOT NULL,
    edad numeric(10,5) NOT NULL,
    descripcion text,
    peligroso boolean,
    importante boolean,
    blackhole_id integer NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    color character varying(10),
    ovnis integer,
    distancia integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    color character varying(10),
    ovnis integer,
    distancia integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer,
    color character varying(10),
    ovnis integer,
    distancia integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    color character varying(10),
    ovnis integer,
    distancia integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES ('negro', NULL, 11111, 22222.00000, NULL, NULL, NULL, 1);
INSERT INTO public.blackhole VALUES ('negro1', NULL, 11112, 22232.00000, NULL, NULL, NULL, 2);
INSERT INTO public.blackhole VALUES ('negro2', NULL, 13112, 23232.00000, NULL, NULL, NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via lactea', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'enana can mayor', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'enana de draco', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'magallanes', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'sagitario', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'mimas', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'encelado', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'tetis', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'dione', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'rea', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'titan', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'japeto', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'miranda', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'ariel', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'umbriel', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'titania', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'oberon', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'fobos', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'deimos', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'hiperion', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'ijiraq', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'fabe', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'jano', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'epimeteo', 6, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercurio', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'venus', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'tierra', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'marte', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'saturno', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'urano', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptuno', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'pluton', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'freezer', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'gohan', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'vegeta', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'goku', 2, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'sirio', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'betelgeusu', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'alpha', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'beta', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'gamma', 1, NULL, NULL, NULL);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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

