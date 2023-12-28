
CREATE EXTENSION postgis;
CREATE EXTENSION unaccent;

-- delete all tables in public schema, with exception of the spatial_ref_sys
-- SOURCE: https://stackoverflow.com/questions/3327312/drop-all-tables-in-postgresql
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public' and tablename != 'spatial_ref_sys') LOOP
        EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.tablename) || ' CASCADE';
    END LOOP;
END $$;


-- Ter 11 Set 2018 15:55:39 -03

-- -----------------------------------------------------
-- Table pauliceia_user
-- -----------------------------------------------------
DROP TABLE IF EXISTS pauliceia_user CASCADE ;

CREATE TABLE IF NOT EXISTS pauliceia_user (
  user_id SERIAL ,
  email TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL,
  username TEXT NOT NULL UNIQUE,
  name TEXT NULL,
  created_at TIMESTAMP NOT NULL,
  is_email_valid BOOLEAN NOT NULL DEFAULT FALSE,
  terms_agreed BOOLEAN NOT NULL DEFAULT FALSE,
  login_date TIMESTAMP NULL,
  is_the_admin BOOLEAN NOT NULL DEFAULT FALSE ,
  receive_notification_by_email BOOLEAN NOT NULL,
  picture TEXT NULL,
  social_id TEXT NULL,
  social_account TEXT NULL,
  language TEXT NULL,
  PRIMARY KEY (user_id)
);


-- -----------------------------------------------------
-- Table layer
-- -----------------------------------------------------
DROP TABLE IF EXISTS layer CASCADE ;

CREATE TABLE IF NOT EXISTS layer (
  layer_id SERIAL ,
  f_table_name TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  description TEXT NULL,
  source_description TEXT NULL ,
  created_at TIMESTAMP NOT NULL,
  PRIMARY KEY (layer_id)
);


-- -----------------------------------------------------
-- Table changeset
-- -----------------------------------------------------
DROP TABLE IF EXISTS changeset CASCADE ;

CREATE TABLE IF NOT EXISTS changeset (
  changeset_id SERIAL ,
  description TEXT NULL,
  created_at TIMESTAMP NOT NULL,
  closed_at TIMESTAMP NULL,
  user_id_creator INT NOT NULL,
  layer_id INT NOT NULL,
  PRIMARY KEY (changeset_id),
  CONSTRAINT fk_tb_project_tb_user1
    FOREIGN KEY (user_id_creator)
    REFERENCES pauliceia_user (user_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_change_set_project1
    FOREIGN KEY (layer_id)
    REFERENCES layer (layer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


-- -----------------------------------------------------


-- -----------------------------------------------------
-- Table user_layer
-- -----------------------------------------------------
DROP TABLE IF EXISTS user_layer CASCADE ;

CREATE TABLE IF NOT EXISTS user_layer (
  user_id SERIAL ,
  layer_id INT NOT NULL,
  created_at TIMESTAMP NULL,
  is_the_creator BOOLEAN NULL DEFAULT FALSE ,
  PRIMARY KEY (user_id, layer_id),
  CONSTRAINT fk_project_subscriber_user1
    FOREIGN KEY (user_id)
    REFERENCES pauliceia_user (user_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_user_layer_layer1
    FOREIGN KEY (layer_id)
    REFERENCES layer (layer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table keyword
-- -----------------------------------------------------
DROP TABLE IF EXISTS keyword CASCADE ;

CREATE TABLE IF NOT EXISTS keyword (
  keyword_id SERIAL ,
  name TEXT NOT NULL UNIQUE,
  created_at TIMESTAMP NULL,
  user_id_creator INT NOT NULL,
  PRIMARY KEY (keyword_id),
  CONSTRAINT fk_theme_user1
    FOREIGN KEY (user_id_creator)
    REFERENCES pauliceia_user (user_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table notification
-- -----------------------------------------------------
DROP TABLE IF EXISTS notification CASCADE ;

CREATE TABLE IF NOT EXISTS notification (
  notification_id SERIAL ,
  description TEXT NOT NULL ,
  created_at TIMESTAMP NOT NULL,
  is_denunciation BOOLEAN NOT NULL DEFAULT FALSE,
  user_id_creator INT NOT NULL ,
  layer_id INT NULL ,
  keyword_id INT NULL ,
  notification_id_parent INT NULL,
  PRIMARY KEY (notification_id),
  CONSTRAINT fk_notification_layer1
    FOREIGN KEY (layer_id)
    REFERENCES layer (layer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_notification_theme1
    FOREIGN KEY (keyword_id)
    REFERENCES keyword (keyword_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_notification_user_1
    FOREIGN KEY (user_id_creator)
    REFERENCES pauliceia_user (user_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_notification_notification1
    FOREIGN KEY (notification_id_parent)
    REFERENCES notification (notification_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table user_notification
-- -----------------------------------------------------
DROP TABLE IF EXISTS user_notification CASCADE ;

CREATE TABLE IF NOT EXISTS user_notification (
  user_id SERIAL ,
  notification_id INT NOT NULL,
  is_read BOOLEAN NULL,
  PRIMARY KEY (user_id, notification_id),
  CONSTRAINT fk_user_notification_user_1
    FOREIGN KEY (user_id)
    REFERENCES pauliceia_user (user_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_user_notification_notification1
    FOREIGN KEY (notification_id)
    REFERENCES notification (notification_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table layer_followers
-- -----------------------------------------------------
DROP TABLE IF EXISTS layer_followers CASCADE ;

CREATE TABLE IF NOT EXISTS layer_followers (
  user_id SERIAL ,
  layer_id INT NOT NULL,
  created_at TIMESTAMP NULL,
  PRIMARY KEY (user_id, layer_id),
  CONSTRAINT fk_user_follows_layer_user_1
    FOREIGN KEY (user_id)
    REFERENCES pauliceia_user (user_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_user_follows_layer_layer1
    FOREIGN KEY (layer_id)
    REFERENCES layer (layer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table keyword_followers
-- -----------------------------------------------------
DROP TABLE IF EXISTS keyword_followers CASCADE ;

CREATE TABLE IF NOT EXISTS keyword_followers (
  user_id SERIAL ,
  keyword_id INT NOT NULL,
  created_at TIMESTAMP NULL,
  PRIMARY KEY (keyword_id, user_id),
  CONSTRAINT fk_user_follows_theme_user_1
    FOREIGN KEY (user_id)
    REFERENCES pauliceia_user (user_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_user_follows_theme_theme1
    FOREIGN KEY (keyword_id)
    REFERENCES keyword (keyword_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table reference
-- -----------------------------------------------------
DROP TABLE IF EXISTS reference CASCADE ;

CREATE TABLE IF NOT EXISTS reference (
  reference_id SERIAL ,
  description TEXT NOT NULL ,
  user_id_creator INT NOT NULL,
  PRIMARY KEY (reference_id),
  CONSTRAINT fk_reference_pauliceia_user1
    FOREIGN KEY (user_id_creator)
    REFERENCES pauliceia_user (user_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table curator
-- -----------------------------------------------------
DROP TABLE IF EXISTS curator CASCADE ;

CREATE TABLE IF NOT EXISTS curator (
  user_id SERIAL  ,
  keyword_id INT NOT NULL,
  region TEXT NULL,
  created_at TIMESTAMP NULL,
  PRIMARY KEY (user_id, keyword_id),
  CONSTRAINT fk_curator_user_theme_user_1
    FOREIGN KEY (user_id)
    REFERENCES pauliceia_user (user_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_curator_user_theme_theme1
    FOREIGN KEY (keyword_id)
    REFERENCES keyword (keyword_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table layer_keyword
-- -----------------------------------------------------
DROP TABLE IF EXISTS layer_keyword CASCADE ;

CREATE TABLE IF NOT EXISTS layer_keyword (
  layer_id SERIAL ,
  keyword_id INT NOT NULL,
  PRIMARY KEY (layer_id, keyword_id),
  CONSTRAINT fk_layer_theme_layer1
    FOREIGN KEY (layer_id)
    REFERENCES layer (layer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_layer_theme_theme1
    FOREIGN KEY (keyword_id)
    REFERENCES keyword (keyword_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table layer_reference
-- -----------------------------------------------------
DROP TABLE IF EXISTS layer_reference CASCADE ;

CREATE TABLE IF NOT EXISTS layer_reference (
  layer_id SERIAL ,
  reference_id INT NOT NULL,
  PRIMARY KEY (layer_id, reference_id),
  CONSTRAINT fk_reference_layer_layer1
    FOREIGN KEY (layer_id)
    REFERENCES layer (layer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_reference_layer_reference1
    FOREIGN KEY (reference_id)
    REFERENCES reference (reference_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table file
-- -----------------------------------------------------
DROP TABLE IF EXISTS file CASCADE ;

CREATE TABLE IF NOT EXISTS file (
  file_id SERIAL ,
  f_table_name TEXT NOT NULL UNIQUE,
  feature_id INT NOT NULL,
  name TEXT NULL,
  extension TEXT NULL,
  PRIMARY KEY (file_id, f_table_name, feature_id)
);


-- -----------------------------------------------------
-- Table mask
-- -----------------------------------------------------
DROP TABLE IF EXISTS mask CASCADE ;

CREATE TABLE IF NOT EXISTS mask (
  mask_id SERIAL ,
  mask TEXT NULL,
  PRIMARY KEY (mask_id)
);


-- -----------------------------------------------------
-- Table temporal_columns
-- -----------------------------------------------------
DROP TABLE IF EXISTS temporal_columns CASCADE ;

CREATE TABLE IF NOT EXISTS temporal_columns (
  f_table_name TEXT NOT NULL UNIQUE,
  start_date_column_name TEXT NULL,
  end_date_column_name TEXT NULL,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP NOT NULL,
  start_date_mask_id INT NULL,
  end_date_mask_id INT NULL,
  PRIMARY KEY (f_table_name),
  CONSTRAINT fk_temporal_columns_mask1
    FOREIGN KEY (start_date_mask_id)
    REFERENCES mask (mask_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_temporal_columns_mask2
    FOREIGN KEY (end_date_mask_id)
    REFERENCES mask (mask_id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table media_columns
-- -----------------------------------------------------
DROP TABLE IF EXISTS media_columns CASCADE ;

CREATE TABLE IF NOT EXISTS media_columns (
  f_table_name TEXT NOT NULL UNIQUE,
  media_column_name TEXT NOT NULL,
  media_type TEXT NULL,
  PRIMARY KEY (f_table_name, media_column_name)
);

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1.pgdg16.04+1)

-- Started on 2018-05-18 16:58:36 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12391)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 2 (class 3079 OID 18159)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 19658)
-- Name: tb_places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_places (
    id integer NOT NULL,
    id_street integer NOT NULL,
    geom public.geometry(Point,4326),
    number double precision NOT NULL,
    original_number character varying,
    name character varying,
    first_day integer,
    first_month integer,
    first_year integer,
    last_day integer,
    last_month integer,
    last_year integer,
    description text,
    source character varying,
    id_user integer,
    date date,
    disc_date boolean DEFAULT false NOT NULL
);


--
-- TOC entry 202 (class 1259 OID 19665)
-- Name: tb_places2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_places2 (
    id integer NOT NULL,
    id_street integer NOT NULL,
    geom public.geometry(Point,4326),
    number double precision NOT NULL,
    original_number character varying,
    name character varying,
    first_day integer,
    first_month integer,
    first_year integer,
    last_day integer,
    last_month integer,
    last_year integer,
    description text,
    source character varying,
    id_user integer,
    date date
);


--
-- TOC entry 203 (class 1259 OID 19671)
-- Name: tb_places2_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_places2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 203
-- Name: tb_places2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_places2_id_seq OWNED BY public.tb_places2.id;


--
-- TOC entry 204 (class 1259 OID 19673)
-- Name: tb_places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_places_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 204
-- Name: tb_places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_places_id_seq OWNED BY public.tb_places.id;


--
-- TOC entry 205 (class 1259 OID 19675)
-- Name: tb_street_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_street_id_seq
    START WITH 527
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 206 (class 1259 OID 19677)
-- Name: tb_street; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_street (
    id integer DEFAULT nextval('public.tb_street_id_seq'::regclass) NOT NULL,
    name character varying(50),
    obs character varying(100),
    geom public.geometry(MultiLineString,4326),
    perimeter double precision,
    id_type integer DEFAULT 0,
    first_year integer,
    last_year integer
);


--
-- TOC entry 207 (class 1259 OID 19685)
-- Name: tb_type_logradouro; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_type_logradouro (
    id integer NOT NULL,
    type character varying NOT NULL
);


--
-- TOC entry 208 (class 1259 OID 19691)
-- Name: tb_type_logradouro_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_type_logradouro_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 208
-- Name: tb_type_logradouro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_type_logradouro_id_seq OWNED BY public.tb_type_logradouro.id;


--
-- TOC entry 209 (class 1259 OID 19693)
-- Name: tb_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tb_users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    institution character varying(50) NOT NULL,
    password character varying NOT NULL,
    level integer NOT NULL,
    datestart date NOT NULL,
    status integer NOT NULL
);


--
-- TOC entry 210 (class 1259 OID 19699)
-- Name: tb_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tb_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 210
-- Name: tb_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tb_users_id_seq OWNED BY public.tb_users.id;


--
-- TOC entry 3439 (class 2604 OID 19701)
-- Name: tb_places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_places ALTER COLUMN id SET DEFAULT nextval('public.tb_places_id_seq'::regclass);


--
-- TOC entry 3440 (class 2604 OID 19702)
-- Name: tb_places2 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_places2 ALTER COLUMN id SET DEFAULT nextval('public.tb_places2_id_seq'::regclass);


--
-- TOC entry 3443 (class 2604 OID 19703)
-- Name: tb_type_logradouro id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_type_logradouro ALTER COLUMN id SET DEFAULT nextval('public.tb_type_logradouro_id_seq'::regclass);


--
-- TOC entry 3444 (class 2604 OID 19704)
-- Name: tb_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_users ALTER COLUMN id SET DEFAULT nextval('public.tb_users_id_seq'::regclass);
