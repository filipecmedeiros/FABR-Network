--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7 (Ubuntu 10.7-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.7 (Ubuntu 10.7-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: championship_campaign; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.championship_campaign (
    id integer NOT NULL,
    victories integer NOT NULL,
    defeats integer NOT NULL,
    draws integer NOT NULL,
    "atkPoints" integer NOT NULL,
    "dfPoints" integer NOT NULL,
    division_id integer NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.championship_campaign OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_campaign_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.championship_campaign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_campaign_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_campaign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.championship_campaign_id_seq OWNED BY public.championship_campaign.id;


--
-- Name: championship_championship; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.championship_championship (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    "shortName" character varying(10) NOT NULL,
    logo character varying(100),
    "primaryColor" character varying(20),
    "secundaryColor" character varying(20),
    "terciaryColor" character varying(20),
    facebook character varying(255),
    instagram character varying(255),
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    category_id integer
);


ALTER TABLE public.championship_championship OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_championship_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.championship_championship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_championship_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_championship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.championship_championship_id_seq OWNED BY public.championship_championship.id;


--
-- Name: championship_championshipcategory; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.championship_championshipcategory (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.championship_championshipcategory OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_championshipcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.championship_championshipcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_championshipcategory_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_championshipcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.championship_championshipcategory_id_seq OWNED BY public.championship_championshipcategory.id;


--
-- Name: championship_conference; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.championship_conference (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    weeks integer,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    season_id integer NOT NULL
);


ALTER TABLE public.championship_conference OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_conference_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.championship_conference_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_conference_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_conference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.championship_conference_id_seq OWNED BY public.championship_conference.id;


--
-- Name: championship_division; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.championship_division (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    playoffs integer,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    conference_id integer NOT NULL
);


ALTER TABLE public.championship_division OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_division_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.championship_division_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_division_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_division_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.championship_division_id_seq OWNED BY public.championship_division.id;


--
-- Name: championship_game; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.championship_game (
    id integer NOT NULL,
    date timestamp with time zone,
    place_id integer,
    "scoreA" integer,
    "scoreB" integer,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    "teamA_id" integer NOT NULL,
    "teamB_id" integer NOT NULL,
    week_id integer NOT NULL,
    ended boolean NOT NULL
);


ALTER TABLE public.championship_game OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_game_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.championship_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_game_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.championship_game_id_seq OWNED BY public.championship_game.id;


--
-- Name: championship_round; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.championship_round (
    id integer NOT NULL,
    phase character varying(255) NOT NULL,
    season_id integer NOT NULL,
    week date,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.championship_round OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_round_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.championship_round_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_round_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_round_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.championship_round_id_seq OWNED BY public.championship_round.id;


--
-- Name: championship_season; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.championship_season (
    id integer NOT NULL,
    year integer,
    slug character varying(255) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    championship_id integer NOT NULL,
    champion_id integer
);


ALTER TABLE public.championship_season OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_season_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.championship_season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_season_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: championship_season_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.championship_season_id_seq OWNED BY public.championship_season.id;


--
-- Name: core_city; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.core_city (
    code integer NOT NULL,
    name character varying(255) NOT NULL,
    uf_id integer
);


ALTER TABLE public.core_city OWNER TO yxtdybtfwvyjom;

--
-- Name: core_region; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.core_region (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.core_region OWNER TO yxtdybtfwvyjom;

--
-- Name: core_region_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.core_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_region_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: core_region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.core_region_id_seq OWNED BY public.core_region.id;


--
-- Name: core_slide; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.core_slide (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    photo character varying(100) NOT NULL,
    link character varying(5000) NOT NULL,
    subtitle character varying(100) NOT NULL
);


ALTER TABLE public.core_slide OWNER TO yxtdybtfwvyjom;

--
-- Name: core_slide_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.core_slide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_slide_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: core_slide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.core_slide_id_seq OWNED BY public.core_slide.id;


--
-- Name: core_state; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.core_state (
    code integer NOT NULL,
    name character varying(255) NOT NULL,
    uf character varying(20) NOT NULL,
    region_id integer
);


ALTER TABLE public.core_state OWNER TO yxtdybtfwvyjom;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO yxtdybtfwvyjom;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO yxtdybtfwvyjom;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO yxtdybtfwvyjom;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO yxtdybtfwvyjom;

--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.django_summernote_attachment (
    id integer NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO yxtdybtfwvyjom;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_summernote_attachment_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: news_news; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.news_news (
    id integer NOT NULL,
    date date NOT NULL,
    title character varying(100) NOT NULL,
    slug character varying(255) NOT NULL,
    text text NOT NULL,
    subtitle character varying(100) NOT NULL,
    photo character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.news_news OWNER TO yxtdybtfwvyjom;

--
-- Name: news_news_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.news_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_news_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: news_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.news_news_id_seq OWNED BY public.news_news.id;


--
-- Name: news_news_tag; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.news_news_tag (
    id integer NOT NULL,
    news_id integer NOT NULL,
    tag_id character varying(255) NOT NULL
);


ALTER TABLE public.news_news_tag OWNER TO yxtdybtfwvyjom;

--
-- Name: news_news_teamTag; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public."news_news_teamTag" (
    id integer NOT NULL,
    news_id integer NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public."news_news_teamTag" OWNER TO yxtdybtfwvyjom;

--
-- Name: news_news_tagTeam_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public."news_news_tagTeam_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."news_news_tagTeam_id_seq" OWNER TO yxtdybtfwvyjom;

--
-- Name: news_news_tagTeam_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public."news_news_tagTeam_id_seq" OWNED BY public."news_news_teamTag".id;


--
-- Name: news_news_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.news_news_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_news_tag_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: news_news_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.news_news_tag_id_seq OWNED BY public.news_news_tag.id;


--
-- Name: news_tag; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.news_tag (
    name character varying(255) NOT NULL
);


ALTER TABLE public.news_tag OWNER TO yxtdybtfwvyjom;

--
-- Name: team_player; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.team_player (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    nickname character varying(255),
    slug character varying(255) NOT NULL,
    photo character varying(100),
    number integer,
    height numeric(4,2),
    weight numeric(5,2),
    birthdate date,
    facebook character varying(255),
    instagram character varying(255),
    experience date,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    position_id integer,
    team_id integer
);


ALTER TABLE public.team_player OWNER TO yxtdybtfwvyjom;

--
-- Name: team_player_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.team_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_player_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: team_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.team_player_id_seq OWNED BY public.team_player.id;


--
-- Name: team_position; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.team_position (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    initials character varying(10) NOT NULL
);


ALTER TABLE public.team_position OWNER TO yxtdybtfwvyjom;

--
-- Name: team_position_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.team_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_position_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: team_position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.team_position_id_seq OWNED BY public.team_position.id;


--
-- Name: team_team; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.team_team (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "shortName" character varying(255) NOT NULL,
    initials character varying(3) NOT NULL,
    slug character varying(255) NOT NULL,
    logo character varying(100),
    foundation date,
    facebook character varying(255),
    instagram character varying(255),
    "primaryColor" character varying(20),
    "secundaryColor" character varying(20),
    "terciaryColor" character varying(20),
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    city_id integer NOT NULL,
    category_id integer
);


ALTER TABLE public.team_team OWNER TO yxtdybtfwvyjom;

--
-- Name: team_team_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_team_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: team_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.team_team_id_seq OWNED BY public.team_team.id;


--
-- Name: team_teamcategory; Type: TABLE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE TABLE public.team_teamcategory (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.team_teamcategory OWNER TO yxtdybtfwvyjom;

--
-- Name: team_teamcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE SEQUENCE public.team_teamcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_teamcategory_id_seq OWNER TO yxtdybtfwvyjom;

--
-- Name: team_teamcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER SEQUENCE public.team_teamcategory_id_seq OWNED BY public.team_teamcategory.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: championship_campaign id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_campaign ALTER COLUMN id SET DEFAULT nextval('public.championship_campaign_id_seq'::regclass);


--
-- Name: championship_championship id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_championship ALTER COLUMN id SET DEFAULT nextval('public.championship_championship_id_seq'::regclass);


--
-- Name: championship_championshipcategory id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_championshipcategory ALTER COLUMN id SET DEFAULT nextval('public.championship_championshipcategory_id_seq'::regclass);


--
-- Name: championship_conference id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_conference ALTER COLUMN id SET DEFAULT nextval('public.championship_conference_id_seq'::regclass);


--
-- Name: championship_division id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_division ALTER COLUMN id SET DEFAULT nextval('public.championship_division_id_seq'::regclass);


--
-- Name: championship_game id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_game ALTER COLUMN id SET DEFAULT nextval('public.championship_game_id_seq'::regclass);


--
-- Name: championship_round id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_round ALTER COLUMN id SET DEFAULT nextval('public.championship_round_id_seq'::regclass);


--
-- Name: championship_season id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_season ALTER COLUMN id SET DEFAULT nextval('public.championship_season_id_seq'::regclass);


--
-- Name: core_region id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.core_region ALTER COLUMN id SET DEFAULT nextval('public.core_region_id_seq'::regclass);


--
-- Name: core_slide id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.core_slide ALTER COLUMN id SET DEFAULT nextval('public.core_slide_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: news_news id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_news ALTER COLUMN id SET DEFAULT nextval('public.news_news_id_seq'::regclass);


--
-- Name: news_news_tag id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_news_tag ALTER COLUMN id SET DEFAULT nextval('public.news_news_tag_id_seq'::regclass);


--
-- Name: news_news_teamTag id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public."news_news_teamTag" ALTER COLUMN id SET DEFAULT nextval('public."news_news_tagTeam_id_seq"'::regclass);


--
-- Name: team_player id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_player ALTER COLUMN id SET DEFAULT nextval('public.team_player_id_seq'::regclass);


--
-- Name: team_position id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_position ALTER COLUMN id SET DEFAULT nextval('public.team_position_id_seq'::regclass);


--
-- Name: team_team id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_team ALTER COLUMN id SET DEFAULT nextval('public.team_team_id_seq'::regclass);


--
-- Name: team_teamcategory id; Type: DEFAULT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_teamcategory ALTER COLUMN id SET DEFAULT nextval('public.team_teamcategory_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add attachment	7	add_attachment
20	Can change attachment	7	change_attachment
21	Can delete attachment	7	delete_attachment
22	Can add Cidade	8	add_city
23	Can change Cidade	8	change_city
24	Can delete Cidade	8	delete_city
25	Can add Nacionalidade	9	add_nationality
26	Can change Nacionalidade	9	change_nationality
27	Can delete Nacionalidade	9	delete_nationality
28	Can add Região	10	add_region
29	Can change Região	10	change_region
30	Can delete Região	10	delete_region
31	Can add Estado	11	add_state
32	Can change Estado	11	change_state
33	Can delete Estado	11	delete_state
34	Can add Notícia	12	add_news
35	Can change Notícia	12	change_news
36	Can delete Notícia	12	delete_news
37	Can add Jogador	13	add_player
38	Can change Jogador	13	change_player
39	Can delete Jogador	13	delete_player
40	Can add Posição	14	add_position
41	Can change Posição	14	change_position
42	Can delete Posição	14	delete_position
43	Can add Time	15	add_team
44	Can change Time	15	change_team
45	Can delete Time	15	delete_team
46	Can add Campeonato	16	add_championship
47	Can change Campeonato	16	change_championship
48	Can delete Campeonato	16	delete_championship
49	Can add Conferência	17	add_conference
50	Can change Conferência	17	change_conference
51	Can delete Conferência	17	delete_conference
52	Can add Divisão	18	add_division
53	Can change Divisão	18	change_division
54	Can delete Divisão	18	delete_division
55	Can add Jogo	19	add_game
56	Can change Jogo	19	change_game
57	Can delete Jogo	19	delete_game
58	Can add Rodada	20	add_round
59	Can change Rodada	20	change_round
60	Can delete Rodada	20	delete_round
61	Can add Temporada	21	add_season
62	Can change Temporada	21	change_season
63	Can delete Temporada	21	delete_season
64	Can add Tag	22	add_tag
65	Can change Tag	22	change_tag
66	Can delete Tag	22	delete_tag
67	Can add Campanha	23	add_campaign
68	Can change Campanha	23	change_campaign
69	Can delete Campanha	23	delete_campaign
70	Can add Slide	24	add_slide
71	Can change Slide	24	change_slide
72	Can delete Slide	24	delete_slide
73	Can add Tipo de campeonato	25	add_championshipcategory
74	Can change Tipo de campeonato	25	change_championshipcategory
75	Can delete Tipo de campeonato	25	delete_championshipcategory
76	Can add Divisão do time	26	add_teamcategory
77	Can change Divisão do time	26	change_teamcategory
78	Can delete Divisão do time	26	delete_teamcategory
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$Ytx05NqeV8XU$1mZVGb7zT6vGao+oLUFVNJ6Rd/osyule49tUbRkBaq8=	2019-05-05 06:38:28.278803+00	t	filipe	Filipe	Medeiros	filipecmedeiros88@gmail.com	t	t	2018-10-16 03:15:30+00
2	pbkdf2_sha256$100000$QQActFX86on1$5B8RzCqu+7d3xasRbLPU3HsKtxgOOXnX1avDllp5dIE=	2019-05-06 11:51:16.859475+00	t	haim	Haim	Ferreira		t	t	2018-10-16 03:44:07+00
4	pbkdf2_sha256$100000$f1nZEaoJFHQ6$pDuROUr3mlSSLwtxCv/T4X/y7Xo2nmfVZfx+GRrbJIY=	\N	t	rafael				t	t	2019-04-14 04:48:23+00
3	pbkdf2_sha256$100000$QKQ2cVE4noTu$i4dEb6ZjFsVBzl2L0YcEMWIdHKx7TF8cuAglRJgBkKI=	2019-04-15 16:03:54.879718+00	t	papel	Filipe	Finco		t	t	2018-10-31 00:54:38+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: championship_campaign; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.championship_campaign (id, victories, defeats, draws, "atkPoints", "dfPoints", division_id, team_id) FROM stdin;
15	0	5	0	33	-140	24	70
10	3	2	0	78	-87	22	21
13	5	2	0	126	-101	24	67
16	0	0	0	0	0	25	64
17	0	0	0	0	0	25	33
18	0	0	0	0	0	25	211
19	0	0	0	0	0	25	209
20	0	0	0	0	0	26	72
21	0	0	0	0	0	26	74
22	0	0	0	0	0	26	79
23	0	0	0	0	0	27	73
24	0	0	0	0	0	27	74
25	0	0	0	0	0	27	76
26	0	0	0	0	0	27	49
27	0	0	0	0	0	27	209
28	0	0	0	0	0	27	212
29	0	0	0	0	0	27	213
30	0	0	0	0	0	27	151
31	0	0	0	0	0	28	33
32	0	0	0	0	0	28	79
33	0	0	0	0	0	28	18
34	0	0	0	0	0	28	211
35	0	0	0	0	0	28	20
36	0	0	0	0	0	28	117
37	0	0	0	0	0	28	22
38	0	0	0	0	0	28	119
39	0	0	0	0	0	29	97
40	0	0	0	0	0	29	74
41	0	0	0	0	0	29	76
42	0	0	0	0	0	29	49
43	0	0	0	0	0	29	53
44	0	0	0	0	0	29	214
45	0	0	0	0	0	30	18
46	0	0	0	0	0	30	82
47	0	0	0	0	0	30	20
48	0	0	0	0	0	30	117
49	0	0	0	0	0	30	90
50	0	0	0	0	0	30	212
51	0	0	0	0	0	31	33
52	0	0	0	0	0	31	73
53	0	0	0	0	0	31	79
54	0	0	0	0	0	31	119
55	0	0	0	0	0	31	151
56	0	0	0	0	0	31	125
57	0	0	0	0	0	32	1
58	0	0	0	0	0	32	90
59	0	0	0	0	0	32	76
60	0	0	0	0	0	32	79
61	0	0	0	0	0	32	215
62	0	0	0	0	0	33	18
63	0	0	0	0	0	33	82
64	0	0	0	0	0	33	20
65	0	0	0	0	0	33	117
66	0	0	0	0	0	33	27
67	0	0	0	0	0	34	33
68	0	0	0	0	0	34	99
69	0	0	0	0	0	34	73
70	0	0	0	0	0	34	53
71	0	0	0	0	0	34	125
72	0	0	0	0	0	35	1
73	0	0	0	0	0	35	76
74	0	0	0	0	0	35	79
75	0	0	0	0	0	35	151
76	0	0	0	0	0	35	90
77	0	0	0	0	0	36	33
78	0	0	0	0	0	36	99
79	0	0	0	0	0	36	73
80	0	0	0	0	0	36	50
81	0	0	0	0	0	36	125
82	0	0	0	0	0	37	97
83	0	0	0	0	0	37	9
84	0	0	0	0	0	37	74
85	0	0	0	0	0	37	53
86	0	0	0	0	0	37	214
87	0	0	0	0	0	38	18
88	0	0	0	0	0	38	82
89	0	0	0	0	0	38	20
90	0	0	0	0	0	38	117
91	0	0	0	0	0	38	27
92	0	0	0	0	0	39	1
93	0	0	0	0	0	39	74
94	0	0	0	0	0	39	9
95	0	0	0	0	0	39	216
96	0	0	0	0	0	40	27
97	0	0	0	0	0	40	76
98	0	0	0	0	0	40	79
99	0	0	0	0	0	40	151
100	0	0	0	0	0	41	18
101	0	0	0	0	0	41	53
102	0	0	0	0	0	41	20
103	0	0	0	0	0	41	50
104	0	0	0	0	0	42	73
105	0	0	0	0	0	42	33
106	0	0	0	0	0	42	11
107	0	0	0	0	0	42	35
108	0	0	0	0	0	43	24
109	0	0	0	0	0	43	20
110	0	0	0	0	0	43	76
111	0	0	0	0	0	44	1
112	0	0	0	0	0	44	27
113	0	0	0	0	0	44	70
114	0	0	0	0	0	45	73
115	0	0	0	0	0	45	210
116	0	0	0	0	0	45	99
117	0	0	0	0	0	45	21
118	0	0	0	0	0	46	208
119	0	0	0	0	0	46	67
120	0	0	0	0	0	46	11
121	0	0	0	0	0	46	28
122	0	0	0	0	0	47	1
123	0	0	0	0	0	47	67
124	0	0	0	0	0	47	72
125	0	0	0	0	0	47	24
126	0	0	0	0	0	47	27
127	0	0	0	0	0	48	64
128	0	0	0	0	0	48	99
129	0	0	0	0	0	48	11
130	0	0	0	0	0	48	210
131	0	0	0	0	0	48	21
132	0	0	0	0	0	48	28
133	0	0	0	0	0	48	61
134	0	0	0	0	0	49	99
135	0	0	0	0	0	49	11
136	0	0	0	0	0	49	203
137	0	0	0	0	0	49	209
138	0	0	0	0	0	49	22
139	0	0	0	0	0	49	28
140	0	0	0	0	0	49	217
141	0	0	0	0	0	50	64
142	0	0	0	0	0	50	210
12	0	2	0	16	-50	23	76
14	5	1	0	141	-38	24	27
11	2	1	0	77	-44	23	24
143	0	0	0	0	0	50	211
144	0	0	0	0	0	50	213
145	0	0	0	0	0	50	21
146	0	0	0	0	0	50	61
147	0	0	0	0	0	50	63
148	0	0	0	0	0	51	67
149	0	0	0	0	0	51	69
150	0	0	0	0	0	51	70
151	0	0	0	0	0	51	150
152	0	0	0	0	0	51	24
153	0	0	0	0	0	52	1
154	0	0	0	0	0	52	72
155	0	0	0	0	0	52	206
156	0	0	0	0	0	52	216
157	0	0	0	0	0	52	27
158	0	0	0	0	0	53	12
159	0	0	0	0	0	53	45
160	0	0	0	0	0	53	218
161	0	0	0	0	0	53	219
162	0	0	0	0	0	54	56
163	0	0	0	0	0	54	34
164	0	0	0	0	0	54	62
165	0	0	0	0	0	55	215
166	0	0	0	0	0	55	68
167	0	0	0	0	0	55	39
168	0	0	0	0	0	56	67
169	0	0	0	0	0	56	69
170	0	0	0	0	0	56	70
171	0	0	0	0	0	56	72
172	0	0	0	0	0	56	9
173	0	0	0	0	0	56	206
174	0	0	0	0	0	56	150
175	0	0	0	0	0	56	216
176	0	0	0	0	0	56	24
177	0	0	0	0	0	56	220
178	0	0	0	0	0	57	34
179	0	0	0	0	0	57	45
180	0	0	0	0	0	57	78
181	0	0	0	0	0	57	218
182	0	0	0	0	0	57	219
183	0	0	0	0	0	58	68
184	0	0	0	0	0	58	39
185	0	0	0	0	0	58	12
186	0	0	0	0	0	58	56
187	0	0	0	0	0	58	62
188	0	0	0	0	0	59	64
189	0	0	0	0	0	59	11
190	0	0	0	0	0	59	203
191	0	0	0	0	0	59	211
192	0	0	0	0	0	59	213
193	0	0	0	0	0	59	21
194	0	0	0	0	0	59	63
195	0	0	0	0	0	60	41
196	0	0	0	0	0	60	4
197	0	0	0	0	0	57	221
198	0	0	0	0	0	57	222
199	0	0	0	0	0	58	224
200	0	0	0	0	0	58	223
201	0	0	0	0	0	61	64
202	0	0	0	0	0	61	67
203	0	0	0	0	0	61	84
204	0	0	0	0	0	61	21
205	0	0	0	0	0	61	24
206	0	0	0	0	0	62	17
207	0	0	0	0	0	62	12
208	0	0	0	0	0	62	221
209	0	0	0	0	0	62	78
210	0	0	0	0	0	63	56
211	0	0	0	0	0	63	34
212	0	0	0	0	0	63	68
213	0	0	0	0	0	63	62
214	0	0	0	0	0	64	17
215	0	0	0	0	0	64	12
216	0	0	0	0	0	64	62
217	0	0	0	0	0	64	78
218	0	0	0	0	0	65	16
219	0	0	0	0	0	65	34
220	0	0	0	0	0	65	56
221	0	0	0	0	0	65	68
222	0	0	0	0	0	66	64
223	0	0	0	0	0	66	225
224	0	0	0	0	0	66	67
225	0	0	0	0	0	66	84
226	0	0	0	0	0	66	21
227	0	0	0	0	0	66	24
228	0	0	0	0	0	66	28
229	0	0	0	0	0	67	97
230	0	0	0	0	0	67	74
231	0	0	0	0	0	67	212
232	0	0	0	0	0	67	214
233	0	0	0	0	0	67	151
234	0	0	0	0	0	68	216
235	0	0	0	0	0	68	1
236	0	0	0	0	0	68	18
237	0	0	0	0	0	68	74
238	0	0	0	0	0	69	9
239	0	0	0	0	0	69	27
240	0	0	0	0	0	69	79
241	0	0	0	0	0	69	151
242	0	0	0	0	0	70	24
243	0	0	0	0	0	70	76
244	0	0	0	0	0	70	13
245	0	0	0	0	0	70	84
246	0	0	0	0	0	71	67
247	0	0	0	0	0	71	20
248	0	0	0	0	0	71	53
249	0	0	0	0	0	71	70
250	0	0	0	0	0	72	34
251	0	0	0	0	0	72	12
252	0	0	0	0	0	72	78
253	0	0	0	0	0	72	16
254	0	0	0	0	0	72	17
255	0	0	0	0	0	72	56
256	0	0	0	0	0	72	62
257	0	0	0	0	0	73	35
258	0	0	0	0	0	73	73
259	0	0	0	0	0	73	11
260	0	0	0	0	0	73	50
261	0	0	0	0	0	73	21
262	0	0	0	0	0	73	28
263	0	0	0	0	0	73	226
264	0	0	0	0	0	74	64
265	0	0	0	0	0	74	35
266	0	0	0	0	0	74	73
267	0	0	0	0	0	74	11
268	0	0	0	0	0	74	50
269	0	0	0	0	0	74	21
270	0	0	0	0	0	74	63
271	0	0	0	0	0	75	69
272	0	0	0	0	0	75	76
273	0	0	0	0	0	75	13
274	0	0	0	0	0	75	84
275	0	0	0	0	0	75	24
276	0	0	0	0	0	76	17
277	0	0	0	0	0	76	75
278	0	0	0	0	0	76	12
279	0	0	0	0	0	76	78
280	0	0	0	0	0	77	16
281	0	0	0	0	0	77	34
282	0	0	0	0	0	77	56
283	0	0	0	0	0	77	62
284	0	0	0	0	0	78	79
285	0	0	0	0	0	78	20
286	0	0	0	0	0	78	151
287	0	0	0	0	0	78	27
288	0	0	0	0	0	78	30
289	0	0	0	0	0	79	1
290	0	0	0	0	0	79	67
291	0	0	0	0	0	79	9
292	0	0	0	0	0	79	74
293	0	0	0	0	0	79	53
294	0	0	0	0	0	80	64
295	0	0	0	0	0	80	33
296	0	0	0	0	0	80	35
297	0	0	0	0	0	80	73
298	0	0	0	0	0	80	50
299	0	0	0	0	0	80	21
300	0	0	0	0	0	80	63
301	0	0	0	0	0	81	36
302	0	0	0	0	0	81	71
303	0	0	0	0	0	81	10
304	0	0	0	0	0	81	76
305	0	0	0	0	0	81	13
306	0	0	0	0	0	81	84
307	0	0	0	0	0	81	24
308	0	0	0	0	0	82	17
309	0	0	0	0	0	82	12
310	0	0	0	0	0	82	45
311	0	0	0	0	0	82	78
312	0	0	0	0	0	83	16
313	0	0	0	0	0	83	75
314	0	0	0	0	0	83	34
315	0	0	0	0	0	83	56
316	0	0	0	0	0	84	67
317	0	0	0	0	0	84	79
318	0	0	0	0	0	84	83
319	0	0	0	0	0	84	53
320	0	0	0	0	0	84	30
322	0	0	0	0	0	85	1
323	0	0	0	0	0	85	9
324	0	0	0	0	0	85	74
325	0	0	0	0	0	85	20
326	0	0	0	0	0	85	27
328	0	0	0	0	0	86	225
329	0	0	0	0	0	86	210
330	0	0	0	0	0	86	217
331	0	0	0	0	0	86	28
332	0	0	0	0	0	86	63
333	0	0	0	0	0	87	227
334	0	0	0	0	0	87	70
335	0	0	0	0	0	87	41
336	0	0	0	0	0	87	11
337	0	0	0	0	0	87	216
338	0	0	0	0	0	88	228
339	0	0	0	0	0	88	69
340	0	0	0	0	0	88	36
341	0	0	0	0	0	88	207
342	0	0	0	0	0	88	220
343	0	0	0	0	0	88	229
344	0	0	0	0	0	89	210
345	0	0	0	0	0	89	99
346	0	0	0	0	0	89	125
347	0	0	0	0	0	89	63
348	0	0	0	0	0	90	227
349	0	0	0	0	0	90	148
350	0	0	0	0	0	90	70
351	0	0	0	0	0	91	82
352	0	0	0	0	0	91	69
353	0	0	0	0	0	91	13
354	0	0	0	0	0	91	71
355	0	0	0	0	0	92	90
356	0	0	0	0	0	92	36
357	0	0	0	0	0	92	207
358	0	0	0	0	0	93	86
359	0	0	0	0	0	93	44
360	0	0	0	0	0	93	117
361	0	0	0	0	0	93	30
362	0	0	0	0	0	94	150
363	0	0	0	0	0	94	148
364	0	0	0	0	0	94	142
365	0	0	0	0	0	94	111
366	0	0	0	0	0	95	99
367	0	0	0	0	0	95	5
368	0	0	0	0	0	95	210
369	0	0	0	0	0	95	85
370	0	0	0	0	0	95	61
371	0	0	0	0	0	95	63
372	0	0	0	0	0	96	36
373	0	0	0	0	0	96	69
374	0	0	0	0	0	96	71
375	0	0	0	0	0	96	207
376	0	0	0	0	0	97	10
377	0	0	0	0	0	97	60
378	0	0	0	0	0	97	90
379	0	0	0	0	0	98	75
380	0	0	0	0	0	98	2
381	0	0	0	0	0	98	59
382	0	0	0	0	0	98	45
383	0	0	0	0	0	99	48
384	0	0	0	0	0	99	112
385	0	0	0	0	0	99	39
386	0	0	0	0	0	99	15
387	0	0	0	0	0	100	18
388	0	0	0	0	0	100	116
389	0	0	0	0	0	100	148
390	0	0	0	0	0	100	117
391	0	0	0	0	0	100	150
392	0	0	0	0	0	101	81
393	0	0	0	0	0	101	146
394	0	0	0	0	0	101	44
395	0	0	0	0	0	101	70
396	0	0	0	0	0	102	38
397	0	0	0	0	0	102	6
398	0	0	0	0	0	102	140
399	0	0	0	0	0	102	49
400	0	0	0	0	0	102	83
401	0	0	0	0	0	103	33
402	0	0	0	0	0	103	99
403	0	0	0	0	0	103	43
404	0	0	0	0	0	103	85
405	0	0	0	0	0	103	28
406	0	0	0	0	0	104	52
407	0	0	0	0	0	104	5
408	0	0	0	0	0	104	87
409	0	0	0	0	0	104	7
410	0	0	0	0	0	105	36
411	0	0	0	0	0	105	71
412	0	0	0	0	0	105	10
413	0	0	0	0	0	105	207
414	0	0	0	0	0	105	60
415	0	0	0	0	0	106	65
416	0	0	0	0	0	106	2
417	0	0	0	0	0	106	45
418	0	0	0	0	0	106	48
419	0	0	0	0	0	106	59
420	0	0	0	0	0	107	68
421	0	0	0	0	0	107	39
422	0	0	0	0	0	107	14
423	0	0	0	0	0	107	15
424	0	0	0	0	0	107	55
425	0	0	0	0	0	108	25
426	0	0	0	0	0	108	26
427	0	0	0	0	0	108	19
428	0	0	0	0	0	108	38
429	0	0	0	0	0	109	81
430	0	0	0	0	0	109	49
431	0	0	0	0	0	109	66
432	0	0	0	0	0	109	70
433	0	0	0	0	0	110	8
434	0	0	0	0	0	110	44
435	0	0	0	0	0	110	54
436	0	0	0	0	0	110	47
437	0	0	0	0	0	111	72
438	0	0	0	0	0	111	86
439	0	0	0	0	0	111	18
440	0	0	0	0	0	111	6
441	0	0	0	0	0	112	32
442	0	0	0	0	0	112	61
443	0	0	0	0	0	112	28
444	0	0	0	0	0	112	5
445	0	0	0	0	0	113	43
446	0	0	0	0	0	113	11
447	0	0	0	0	0	113	22
448	0	0	0	0	0	113	7
449	0	0	0	0	0	114	200
450	0	0	0	0	0	114	52
451	0	0	0	0	0	114	85
452	0	0	0	0	0	114	87
453	0	0	0	0	0	115	69
454	0	0	0	0	0	115	82
455	0	0	0	0	0	115	60
456	0	0	0	0	0	115	29
457	0	0	0	0	0	115	31
458	0	0	0	0	0	116	65
459	0	0	0	0	0	116	2
460	0	0	0	0	0	116	59
461	0	0	0	0	0	116	14
462	0	0	0	0	0	117	48
463	0	0	0	0	0	117	23
464	0	0	0	0	0	117	62
465	0	0	0	0	0	117	15
466	0	0	0	0	0	118	57
467	0	0	0	0	0	118	68
468	0	0	0	0	0	118	55
469	0	0	0	0	0	118	39
470	0	0	0	0	0	119	37
471	0	0	0	0	0	119	40
472	0	0	0	0	0	119	41
473	0	0	0	0	0	119	42
474	0	0	0	0	0	119	46
475	0	0	0	0	0	120	4
476	0	0	0	0	0	120	77
477	0	0	0	0	0	120	80
478	0	0	0	0	0	120	51
479	0	0	0	0	0	120	58
480	0	0	0	0	0	95	230
481	0	0	0	0	0	104	233
482	0	0	0	0	0	94	231
483	0	0	0	0	0	100	232
484	0	0	0	0	0	121	4
485	0	0	0	0	0	121	77
486	0	0	0	0	0	121	80
487	0	0	0	0	0	121	51
488	0	0	0	0	0	121	58
489	0	0	0	0	0	122	37
490	0	0	0	0	0	122	40
491	0	0	0	0	0	122	41
492	0	0	0	0	0	122	42
493	0	0	0	0	0	122	46
494	0	0	0	0	0	123	3
495	0	0	0	0	0	123	11
496	0	0	0	0	0	123	144
497	0	0	0	0	0	123	52
498	0	0	0	0	0	123	125
499	0	0	0	0	0	124	35
500	0	0	0	0	0	124	5
501	0	0	0	0	0	124	43
502	0	0	0	0	0	124	28
503	0	0	0	0	0	124	61
504	0	0	0	0	0	125	64
506	0	0	0	0	0	125	7
507	0	0	0	0	0	125	73
508	0	0	0	0	0	125	50
509	0	0	0	0	0	125	21
536	0	0	0	0	0	131	1
537	0	0	0	0	0	131	67
539	0	0	0	0	0	131	20
540	0	0	0	0	0	131	157
518	0	0	0	0	0	126	60
505	0	0	0	0	0	125	33
510	0	0	0	0	0	125	63
531	0	0	0	0	0	130	38
532	0	0	0	0	0	130	18
533	0	0	0	0	0	130	53
534	0	0	0	0	0	130	27
512	0	0	0	0	0	126	69
535	0	0	0	0	0	130	30
538	0	0	0	0	0	131	74
524	0	0	0	0	0	128	34
526	0	0	0	0	0	128	62
523	0	0	0	0	0	128	16
525	0	0	0	0	0	128	56
527	0	0	0	0	0	129	17
530	0	0	0	0	0	129	78
528	0	0	0	0	0	129	12
529	0	0	0	0	0	129	45
513	0	0	0	0	0	126	71
517	0	0	0	0	0	126	24
519	0	0	0	0	0	127	10
522	0	0	0	0	0	127	76
521	0	0	0	0	0	127	13
520	0	0	0	0	0	127	36
9	3	2	0	82	-63	22	11
8	1	4	0	55	-85	22	99
\.


--
-- Data for Name: championship_championship; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.championship_championship (id, name, "shortName", logo, "primaryColor", "secundaryColor", "terciaryColor", facebook, instagram, created, modified, category_id) FROM stdin;
4	Brasil Futebol Americano	BFA	logos/bfa.png	#fd9813	#fda913	#231f20	\N	\N	2019-02-23 01:24:27.788791+00	2019-04-21 00:01:16.675538+00	1
3	Torneio Touchdown	TTD	logos/ttd.png	#106231	#106831	#fff	\N	\N	2019-02-23 01:21:43.492304+00	2019-04-21 00:01:27.948522+00	3
5	Superliga Nacional	SLN	logos/slnn.png	#006030	#016930	#fff	\N	\N	2019-02-23 01:25:52.636679+00	2019-04-21 00:01:41.702695+00	3
6	Liga Nacional	LNFA	logos/lnfa.png	#08558c	#006cb5	#fff	\N	\N	2019-02-24 02:59:10.762286+00	2019-04-21 00:01:49.618251+00	3
7	Liga Brasileira	LBFA	logos/lbfa.png	#55b800	#17fe02	#fff	\N	\N	2019-02-24 03:01:45.056349+00	2019-04-21 00:01:57.30229+00	3
8	Campeonato Brasileiro	CBFA	logos/cb.png	#045b2b	#0d874d	#fff	\N	\N	2019-02-24 03:02:54.426809+00	2019-04-21 00:02:04.777376+00	3
\.


--
-- Data for Name: championship_championshipcategory; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.championship_championshipcategory (id, name, created, modified) FROM stdin;
1	Nacional	2019-04-21 00:00:53.35385+00	2019-04-21 00:00:53.353903+00
2	Estadual	2019-04-21 00:00:57.800655+00	2019-04-21 00:00:57.800699+00
3	Outros	2019-04-21 00:01:01.894743+00	2019-04-21 00:01:01.894799+00
\.


--
-- Data for Name: championship_conference; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.championship_conference (id, name, weeks, created, modified, season_id) FROM stdin;
12	Sudeste	14	2019-02-28 11:12:00.724266+00	2019-02-28 11:12:00.724315+00	6
10	Leste	14	2019-02-23 01:35:15.90777+00	2019-02-28 11:12:43.971983+00	4
9	Sul	14	2019-02-23 01:35:04.827047+00	2019-02-28 11:12:50.587255+00	4
11	Oeste	14	2019-02-23 01:35:25.286436+00	2019-02-28 11:12:57.444162+00	4
13	Sul	14	2019-02-28 11:15:58.228448+00	2019-02-28 11:15:58.228505+00	6
14	Walter Camp	23	2019-02-28 11:17:15.321432+00	2019-02-28 11:17:15.321477+00	8
15	George Halas	23	2019-02-28 11:17:32.706821+00	2019-02-28 11:17:32.706875+00	8
16	George Halas	30	2019-02-28 16:09:30.99502+00	2019-02-28 16:09:30.995128+00	10
17	Walter Camp	30	2019-02-28 16:09:46.204583+00	2019-02-28 16:09:46.204615+00	10
18	Bill Walsh	30	2019-02-28 16:09:58.904187+00	2019-02-28 16:09:58.904213+00	10
19	George Halas	30	2019-02-28 16:28:56.928124+00	2019-02-28 16:28:56.928167+00	11
20	Bill Walsh	30	2019-02-28 16:29:06.549009+00	2019-02-28 16:29:06.549037+00	11
21	Walter Camp	30	2019-02-28 16:29:14.886722+00	2019-02-28 16:29:14.886753+00	11
22	Vince Lombardi	30	2019-02-28 16:29:29.670543+00	2019-02-28 16:29:29.670569+00	11
23	Norte	30	2019-02-28 16:37:20.775877+00	2019-02-28 16:37:20.775922+00	12
24	Sul	30	2019-02-28 16:37:34.737094+00	2019-02-28 16:37:34.737122+00	12
25	Leste	30	2019-02-28 16:37:44.073193+00	2019-02-28 16:37:44.073222+00	12
26	Oeste	30	2019-02-28 16:37:53.633754+00	2019-02-28 16:37:53.633805+00	12
27	Norte	30	2019-02-28 16:42:34.34306+00	2019-02-28 16:42:34.343116+00	13
28	Sul	30	2019-02-28 16:42:43.638289+00	2019-02-28 16:42:43.63832+00	13
29	Norte	30	2019-03-01 01:54:29.484582+00	2019-03-01 01:54:29.484611+00	23
30	Sul	30	2019-03-01 01:54:40.149489+00	2019-03-01 01:54:40.149514+00	23
31	Norte	30	2019-03-01 01:58:33.846239+00	2019-03-01 01:58:33.846276+00	24
32	Sul	30	2019-03-01 01:58:46.004076+00	2019-03-01 01:58:46.004102+00	24
33	Sul	30	2019-03-01 02:01:50.770114+00	2019-03-01 02:01:50.770161+00	25
34	Central	30	2019-03-01 02:02:00.764561+00	2019-03-01 02:02:00.764586+00	25
35	Nordeste	30	2019-03-01 02:02:09.288056+00	2019-03-01 02:02:09.288102+00	25
36	Central	30	2019-03-01 22:27:40.50538+00	2019-03-01 22:27:40.505425+00	26
37	Nordeste	30	2019-03-01 22:27:51.070052+00	2019-03-01 22:27:51.070084+00	26
38	Sul	30	2019-03-01 22:28:03.268896+00	2019-03-01 22:28:03.268925+00	26
39	Norte	30	2019-03-01 22:28:12.718361+00	2019-03-01 22:28:12.718392+00	26
40	Centro-Sul	30	2019-03-01 23:09:22.946577+00	2019-03-01 23:09:22.946604+00	27
41	Nordeste	30	2019-03-01 23:09:32.280904+00	2019-03-01 23:09:32.28095+00	27
42	Centro-Sul	30	2019-03-01 23:09:46.184049+00	2019-03-01 23:09:46.184118+00	28
43	Nordeste	30	2019-03-01 23:09:55.346267+00	2019-03-01 23:09:55.346319+00	28
44	Leste	30	2019-03-01 23:10:13.819551+00	2019-03-01 23:10:13.819575+00	16
45	Oeste	30	2019-03-01 23:10:22.252845+00	2019-03-01 23:10:22.252913+00	16
46	Sul	30	2019-03-01 23:10:30.446383+00	2019-03-01 23:10:30.446411+00	16
47	Nordeste	30	2019-03-01 23:10:45.661986+00	2019-03-01 23:10:45.662036+00	16
48	Nordeste	30	2019-03-01 23:11:10.276166+00	2019-03-01 23:11:10.276222+00	14
49	Nordeste	30	2019-03-01 23:11:18.098536+00	2019-03-01 23:11:18.098588+00	15
50	Sul	30	2019-03-01 23:11:25.143893+00	2019-03-01 23:11:25.143919+00	14
51	Sul	30	2019-03-01 23:11:33.231094+00	2019-03-01 23:11:33.231124+00	15
52	Centro-Oeste	30	2019-03-01 23:11:50.693866+00	2019-03-01 23:11:50.693917+00	15
53	Centro-Oeste	\N	2019-03-01 23:12:00.783666+00	2019-03-01 23:12:00.783697+00	14
54	Sudeste	\N	2019-03-01 23:12:11.051136+00	2019-03-01 23:12:11.051168+00	15
55	Sudeste	\N	2019-03-01 23:12:22.707948+00	2019-03-01 23:12:31.822444+00	14
56	Sul	\N	2019-03-02 03:20:40.571324+00	2019-03-02 03:20:40.571354+00	29
57	Sudeste	\N	2019-03-02 03:20:49.243248+00	2019-03-02 03:20:49.243275+00	29
58	Centro-Oeste	\N	2019-03-02 03:20:57.80801+00	2019-03-02 03:20:57.808037+00	29
59	Sul	\N	2019-03-02 03:21:17.046132+00	2019-03-02 03:21:17.046182+00	30
60	Sudeste	\N	2019-03-02 03:21:24.169641+00	2019-03-02 03:21:24.169673+00	30
61	Centro-Oeste	\N	2019-03-02 03:21:30.399172+00	2019-03-02 03:21:30.399217+00	30
62	Sul	\N	2019-03-02 03:22:08.947428+00	2019-03-02 03:22:08.947478+00	31
63	Sudeste	\N	2019-03-02 03:22:17.896164+00	2019-03-02 03:22:17.896219+00	31
64	Centro-Oeste	\N	2019-03-02 03:22:25.318665+00	2019-03-02 03:22:25.318696+00	31
65	Nordeste	\N	2019-03-02 03:22:31.85887+00	2019-03-02 03:22:31.8589+00	31
66	Sul	\N	2019-03-02 03:22:44.273359+00	2019-03-02 03:22:44.273406+00	32
67	Sudeste	\N	2019-03-02 03:22:49.925482+00	2019-03-02 03:22:49.925528+00	32
68	Centro-Oeste	\N	2019-03-02 03:22:55.87642+00	2019-03-02 03:22:55.876458+00	32
69	Nordeste	\N	2019-03-02 03:23:02.124663+00	2019-03-02 03:23:02.124711+00	32
70	Nordeste	\N	2019-03-02 03:23:18.122429+00	2019-03-02 03:23:18.122474+00	33
71	Sudeste	\N	2019-03-02 03:23:24.289711+00	2019-03-02 03:23:24.28974+00	33
72	Sul	\N	2019-03-02 03:23:30.130948+00	2019-03-02 03:23:30.130975+00	33
73	Centro-Oeste	\N	2019-03-02 03:23:37.320082+00	2019-03-02 03:23:37.320127+00	33
74	Norte	\N	2019-03-02 03:23:43.214807+00	2019-03-02 03:23:43.214833+00	33
75	Centro-Oeste	\N	2019-03-02 20:56:50.181011+00	2019-03-02 20:56:50.181057+00	34
76	Nordeste	\N	2019-03-02 20:56:56.580201+00	2019-03-02 20:56:56.580247+00	34
77	Sul	\N	2019-03-02 20:57:02.085183+00	2019-03-02 20:57:02.085218+00	34
78	Sudeste	\N	2019-03-02 20:57:09.536914+00	2019-03-02 20:57:09.536962+00	34
79	Centro-Oeste	\N	2019-03-02 20:57:22.514356+00	2019-03-02 20:57:22.514384+00	35
80	Nordeste	\N	2019-03-02 20:57:35.076346+00	2019-03-02 20:57:35.076374+00	35
81	Norte	\N	2019-03-02 20:57:50.672632+00	2019-03-02 20:57:50.672667+00	35
82	Sul	\N	2019-03-02 20:58:00.146594+00	2019-03-02 20:58:00.146642+00	35
83	Sudeste	\N	2019-03-02 20:58:09.82964+00	2019-03-02 20:58:09.829668+00	35
\.


--
-- Data for Name: championship_division; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.championship_division (id, name, playoffs, created, modified, conference_id) FROM stdin;
88	Grupo	\N	2019-03-02 03:45:50.983448+00	2019-03-02 03:49:06.819099+00	58
89	Grupo	\N	2019-03-02 18:59:15.101904+00	2019-03-02 18:59:15.101954+00	59
90	Grupo	\N	2019-03-02 18:59:43.541398+00	2019-03-02 18:59:43.541452+00	60
91	Grupo 1	\N	2019-03-02 19:00:29.303724+00	2019-03-02 19:00:29.304569+00	61
24	Grupo	\N	2019-02-24 02:30:43.784443+00	2019-02-24 20:42:03.681474+00	10
23	Grupo	\N	2019-02-24 02:30:20.063+00	2019-02-24 20:42:11.413444+00	11
22	Grupo	\N	2019-02-24 02:29:58.301021+00	2019-02-24 20:42:18.024693+00	9
25	Grupo	\N	2019-02-28 11:25:03.297828+00	2019-02-28 11:25:03.298098+00	13
26	Grupo	\N	2019-02-28 11:25:35.466262+00	2019-02-28 11:25:35.46631+00	12
27	Grupo	\N	2019-02-28 11:40:12.311223+00	2019-02-28 11:40:12.311274+00	14
28	Grupo	\N	2019-02-28 11:41:05.449204+00	2019-02-28 11:41:05.449483+00	15
29	Grupo	\N	2019-02-28 16:10:53.79192+00	2019-02-28 16:15:45.245573+00	17
30	Grupo	\N	2019-02-28 16:19:08.20319+00	2019-02-28 16:26:42.540086+00	16
31	Grupo	\N	2019-02-28 16:27:52.360816+00	2019-02-28 16:27:52.360847+00	18
32	Grupo	\N	2019-02-28 16:34:08.161791+00	2019-02-28 16:34:15.95348+00	21
33	Grupo	\N	2019-02-28 16:35:41.284862+00	2019-02-28 16:35:41.284893+00	19
34	Grupo	\N	2019-02-28 16:36:46.562964+00	2019-02-28 16:36:46.562994+00	20
35	Grupo	\N	2019-02-28 16:38:44.638994+00	2019-02-28 16:38:44.639044+00	23
36	Grupo	\N	2019-02-28 16:39:39.541795+00	2019-02-28 16:39:39.541837+00	24
37	Grupo	\N	2019-02-28 16:40:21.433886+00	2019-02-28 16:40:21.433941+00	25
38	Grupo	\N	2019-02-28 16:42:03.774046+00	2019-02-28 16:42:03.774097+00	26
39	Grupo 1	\N	2019-02-28 16:46:49.071084+00	2019-02-28 16:47:01.11685+00	27
40	Grupo 2	\N	2019-02-28 16:47:29.380713+00	2019-02-28 16:47:29.380746+00	27
41	Grupo 1	\N	2019-02-28 16:47:59.968648+00	2019-02-28 16:47:59.968694+00	28
42	Grupo 2	\N	2019-02-28 16:48:32.057126+00	2019-02-28 16:48:32.057157+00	28
43	Grupo 1	\N	2019-03-01 01:55:41.88539+00	2019-03-01 01:55:41.885417+00	29
44	Grupo 2	\N	2019-03-01 01:56:08.114842+00	2019-03-01 01:56:08.114873+00	29
45	Grupo 1	\N	2019-03-01 01:57:12.24665+00	2019-03-01 01:57:12.246675+00	30
46	Grupo 2	\N	2019-03-01 01:57:43.201933+00	2019-03-01 01:57:43.201956+00	30
47	Grupo	\N	2019-03-01 01:59:45.604414+00	2019-03-01 01:59:45.604464+00	31
48	Grupo	\N	2019-03-01 02:00:27.608802+00	2019-03-01 02:00:27.608826+00	32
49	Grupo 1	\N	2019-03-01 02:06:17.395196+00	2019-03-01 02:12:46.9847+00	33
50	Grupo 2	\N	2019-03-01 02:13:48.48195+00	2019-03-01 02:13:48.481979+00	33
51	Grupo 1	\N	2019-03-01 02:15:16.069464+00	2019-03-01 02:15:16.069504+00	34
52	Grupo 2	\N	2019-03-01 02:15:55.927017+00	2019-03-01 02:15:55.927044+00	34
53	Grupo 1	\N	2019-03-01 02:16:48.479516+00	2019-03-01 02:36:42.560025+00	35
54	Grupo 2	\N	2019-03-01 02:37:05.036963+00	2019-03-01 02:37:05.036992+00	35
55	Grupo 3	\N	2019-03-01 02:37:25.625262+00	2019-03-01 02:37:25.625291+00	35
56	Grupo	\N	2019-03-01 22:38:39.111035+00	2019-03-01 22:38:50.988734+00	36
60	Grupo	\N	2019-03-01 22:43:48.091924+00	2019-03-01 22:43:48.091954+00	39
57	Grupo 1	\N	2019-03-01 22:39:56.81394+00	2019-03-01 23:08:08.405126+00	37
58	Grupo 2	\N	2019-03-01 22:41:30.042444+00	2019-03-01 23:08:40.557042+00	37
61	Grupo	\N	2019-03-02 02:27:24.617421+00	2019-03-02 02:27:24.617451+00	40
62	Grupo 1	\N	2019-03-02 02:28:36.37675+00	2019-03-02 02:28:36.376777+00	41
63	Grupo 2	\N	2019-03-02 02:29:04.392707+00	2019-03-02 02:29:04.392759+00	41
64	Grupo 1	\N	2019-03-02 02:30:42.241328+00	2019-03-02 02:30:42.241358+00	43
65	Grupo 2	\N	2019-03-02 02:31:11.961142+00	2019-03-02 02:31:11.961188+00	43
66	Grupo	\N	2019-03-02 02:41:37.082267+00	2019-03-02 02:41:37.082297+00	42
59	Grupo	\N	2019-03-01 22:43:30.157427+00	2019-03-02 02:45:01.97181+00	38
67	Grupo	\N	2019-03-02 02:46:28.046093+00	2019-03-02 02:46:28.04612+00	22
68	Grupo 1	\N	2019-03-02 02:52:12.955358+00	2019-03-02 02:52:12.955393+00	44
69	Grupo 2	\N	2019-03-02 02:52:40.317355+00	2019-03-02 02:52:40.317404+00	44
70	Grupo 1	\N	2019-03-02 02:53:08.818802+00	2019-03-02 02:53:08.818829+00	45
71	Grupo 2	\N	2019-03-02 02:53:41.452367+00	2019-03-02 02:53:41.452399+00	45
72	Grupo	\N	2019-03-02 02:54:48.979496+00	2019-03-02 02:54:48.979525+00	47
73	Grupo	\N	2019-03-02 02:55:24.852025+00	2019-03-02 03:01:03.836567+00	46
74	Grupo	\N	2019-03-02 03:06:51.064491+00	2019-03-02 03:06:51.064518+00	50
75	Grupo	\N	2019-03-02 03:07:27.760948+00	2019-03-02 03:07:27.760979+00	53
76	Grupo 1	\N	2019-03-02 03:07:59.321928+00	2019-03-02 03:07:59.321958+00	48
77	Grupo 2	\N	2019-03-02 03:08:23.5106+00	2019-03-02 03:08:23.51065+00	48
78	Grupo 1	\N	2019-03-02 03:08:56.507173+00	2019-03-02 03:08:56.507212+00	55
79	Grupo 2	\N	2019-03-02 03:09:39.012673+00	2019-03-02 03:09:39.012716+00	55
80	Grupo	\N	2019-03-02 03:11:28.853004+00	2019-03-02 03:11:28.853032+00	51
81	Grupo	\N	2019-03-02 03:12:34.569746+00	2019-03-02 03:12:34.569794+00	52
82	Grupo 1	\N	2019-03-02 03:13:27.907772+00	2019-03-02 03:13:27.907802+00	49
83	Grupo 2	\N	2019-03-02 03:14:00.421058+00	2019-03-02 03:14:00.42111+00	49
85	Grupo 2	\N	2019-03-02 03:15:34.957039+00	2019-03-02 03:15:34.957085+00	54
92	Grupo 2	\N	2019-03-02 19:00:54.452998+00	2019-03-02 19:00:54.453049+00	61
84	Grupo 1	\N	2019-03-02 03:15:06.52453+00	2019-03-02 03:16:19.647508+00	54
86	Grupo	\N	2019-03-02 03:30:35.776557+00	2019-03-02 03:30:35.776601+00	56
87	Grupo	\N	2019-03-02 03:44:59.447417+00	2019-03-02 03:44:59.447442+00	57
93	Grupo 1	\N	2019-03-02 19:04:23.989985+00	2019-03-02 19:04:23.990015+00	63
96	Grupo 1	\N	2019-03-02 19:08:19.884969+00	2019-03-02 19:08:19.885042+00	64
97	Grupo 2	\N	2019-03-02 19:08:45.23266+00	2019-03-02 19:08:45.232689+00	64
98	Grupo 1	\N	2019-03-02 19:09:34.189869+00	2019-03-02 19:09:34.1899+00	65
99	Grupo 2	\N	2019-03-02 19:10:02.942507+00	2019-03-02 19:10:02.942561+00	65
101	Grupo 2	\N	2019-03-02 19:13:56.224082+00	2019-03-02 19:13:56.224112+00	67
102	Grupo 3	\N	2019-03-02 19:21:49.405061+00	2019-03-02 19:21:49.405107+00	67
103	Grupo 1	\N	2019-03-02 19:33:43.491816+00	2019-03-02 19:33:43.491846+00	66
105	Grupo	\N	2019-03-02 19:37:52.886351+00	2019-03-02 19:37:52.886383+00	68
106	Grupo 1	\N	2019-03-02 19:38:32.372383+00	2019-03-02 19:38:32.372414+00	69
107	Grupo 2	\N	2019-03-02 19:39:22.356724+00	2019-03-02 19:39:22.356767+00	69
108	Grupo 1	\N	2019-03-02 19:44:24.709068+00	2019-03-02 19:44:24.709096+00	71
109	Grupo 2	\N	2019-03-02 19:45:20.416798+00	2019-03-02 19:45:20.41684+00	71
110	Grupo 3	\N	2019-03-02 19:45:57.382614+00	2019-03-02 19:45:57.382661+00	71
111	Grupo 4	\N	2019-03-02 19:46:41.489468+00	2019-03-02 19:46:41.489503+00	71
112	Grupo 1	\N	2019-03-02 19:47:29.742302+00	2019-03-02 19:47:29.742335+00	72
113	Grupo 2	\N	2019-03-02 19:48:55.823868+00	2019-03-02 19:48:55.8239+00	72
114	Grupo 3	\N	2019-03-02 19:49:35.176134+00	2019-03-02 19:49:35.176164+00	72
115	Grupo	\N	2019-03-02 19:50:31.982625+00	2019-03-02 19:50:31.982655+00	73
116	Grupo 1	\N	2019-03-02 19:52:32.064472+00	2019-03-02 19:52:32.064502+00	70
117	Grupo 2	\N	2019-03-02 19:53:03.09726+00	2019-03-02 19:53:03.097288+00	70
118	Grupo 3	\N	2019-03-02 19:53:47.912863+00	2019-03-02 19:53:47.912892+00	70
119	Grupo 1	\N	2019-03-02 19:54:49.746337+00	2019-03-02 19:54:49.746367+00	74
120	Grupo 2	\N	2019-03-02 19:55:56.337635+00	2019-03-02 19:55:56.337667+00	74
95	Grupo	\N	2019-03-02 19:07:47.064467+00	2019-03-02 20:53:59.748604+00	46
104	Grupo 2	\N	2019-03-02 19:36:42.287478+00	2019-03-02 20:54:25.776881+00	66
94	Grupo 2	\N	2019-03-02 19:05:08.251206+00	2019-03-02 20:54:48.368019+00	63
100	Grupo 1	\N	2019-03-02 19:11:54.969206+00	2019-03-02 20:55:06.149103+00	67
121	Grupo 1	\N	2019-03-02 20:59:55.100496+00	2019-03-02 20:59:55.100525+00	81
122	Grupo 2	\N	2019-03-02 21:00:40.657157+00	2019-03-02 21:00:40.657189+00	81
123	Grupo 1	\N	2019-03-02 21:05:48.216535+00	2019-03-02 21:05:48.216591+00	82
124	Grupo 2	\N	2019-03-02 21:06:54.85753+00	2019-03-02 21:06:54.85758+00	82
125	Grupo	\N	2019-03-03 04:01:45.549455+00	2019-03-03 04:01:45.549492+00	77
127	Grupo 2	\N	2019-04-09 20:22:23.435562+00	2019-04-09 20:22:23.435589+00	75
126	Grupo 1	\N	2019-03-03 04:03:08.439311+00	2019-04-09 20:20:57.386648+00	75
128	Grupo 1	\N	2019-04-09 20:31:03.498165+00	2019-04-09 20:31:03.498217+00	76
129	Grupo 2	\N	2019-04-09 20:32:20.526188+00	2019-04-09 20:32:20.526228+00	76
130	Grupo 1	\N	2019-04-09 20:33:13.378589+00	2019-04-09 20:33:13.378616+00	78
131	Grupo 2	\N	2019-04-09 20:35:46.752468+00	2019-04-09 20:35:46.752521+00	78
\.


--
-- Data for Name: championship_game; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.championship_game (id, date, place_id, "scoreA", "scoreB", created, modified, "teamA_id", "teamB_id", week_id, ended) FROM stdin;
6	\N	\N	\N	\N	2019-04-09 20:36:39.507594+00	2019-04-09 20:36:39.507643+00	60	69	61	f
7	\N	\N	\N	\N	2019-04-09 20:36:57.047916+00	2019-04-09 20:36:57.047947+00	30	74	62	f
8	\N	\N	\N	\N	2019-04-09 20:37:45.280341+00	2019-04-09 20:37:45.280391+00	34	62	60	f
9	\N	\N	\N	\N	2019-04-09 20:38:00.18346+00	2019-04-09 20:38:00.183504+00	16	56	60	f
10	\N	\N	\N	\N	2019-04-09 20:39:43.447453+00	2019-04-09 20:39:43.44748+00	17	78	60	f
11	\N	\N	\N	\N	2019-04-09 20:39:58.073603+00	2019-04-09 20:39:58.073648+00	12	45	60	f
12	\N	\N	\N	\N	2019-04-09 20:41:29.084707+00	2019-04-09 20:41:29.084756+00	71	24	60	f
13	\N	\N	\N	\N	2019-04-09 20:41:45.574375+00	2019-04-09 20:41:45.574404+00	10	76	60	f
14	\N	\N	\N	\N	2019-04-09 20:42:03.136564+00	2019-04-09 20:42:03.136593+00	13	36	60	f
15	\N	\N	8	21	2019-04-15 16:24:50.244303+00	2019-04-15 16:24:50.24433+00	99	11	76	t
16	\N	\N	16	12	2019-04-15 16:25:24.048764+00	2019-04-15 16:25:24.048792+00	67	70	77	t
17	\N	\N	20	23	2019-04-15 16:26:55.126093+00	2019-04-15 16:26:55.12613+00	11	21	78	t
18	\N	\N	13	15	2019-04-15 16:27:33.19325+00	2019-04-15 16:27:33.1933+00	27	67	79	t
19	\N	\N	16	20	2019-04-15 16:28:14.159015+00	2019-04-15 16:28:14.159065+00	76	24	80	t
20	\N	\N	31	21	2019-04-15 16:28:44.699019+00	2019-04-15 16:28:44.699046+00	21	99	81	t
21	\N	\N	10	20	2019-04-15 16:29:09.583038+00	2019-04-15 16:29:09.583066+00	67	27	82	t
22	\N	\N	6	25	2019-04-15 16:29:36.687784+00	2019-04-15 16:29:36.688217+00	70	27	83	t
23	\N	\N	12	20	2019-04-15 16:30:08.732359+00	2019-04-15 16:30:08.732386+00	21	11	83	t
24	\N	\N	49	0	2019-04-15 16:31:39.483453+00	2019-04-15 16:31:39.483485+00	27	70	84	t
25	\N	\N	6	12	2019-04-15 16:32:12.700002+00	2019-04-15 16:32:12.700043+00	99	21	84	t
26	\N	\N	30	0	2019-04-15 16:32:39.006364+00	2019-04-15 16:32:39.006412+00	24	76	85	t
27	\N	\N	3	34	2019-04-15 16:33:02.305581+00	2019-04-15 16:33:02.305629+00	70	67	86	t
28	\N	\N	0	12	2019-04-15 16:33:29.413048+00	2019-04-15 16:33:29.413098+00	11	99	87	t
29	\N	\N	28	27	2019-04-15 16:33:57.587898+00	2019-04-15 16:33:57.587926+00	67	24	88	t
30	\N	\N	0	20	2019-04-15 16:34:24.677314+00	2019-04-15 16:34:24.677359+00	21	27	88	t
31	\N	\N	7	14	2019-04-15 16:34:49.067677+00	2019-04-15 16:34:49.067718+00	67	27	89	t
\.


--
-- Data for Name: championship_round; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.championship_round (id, phase, season_id, week, slug) FROM stdin;
60	Semana 1	34	2019-06-30	semana-1
61	Semana 2	34	2019-07-07	semana-2
62	Semana 3	34	2019-07-14	semana-3
63	Semana 4	34	2019-07-21	semana-4
64	Semana 5	34	2019-07-28	semana-5
65	Semana 6	34	2019-08-04	semana-6
66	Semana 7	34	2019-08-11	semana-7
69	Semana 10	34	2019-09-01	semana-10
70	Semana 11	34	2019-09-15	semana-11
71	Semana 12	34	2019-09-22	semana-12
72	Semana 13	34	2019-09-29	semana-13
68	Semana 9	34	2019-08-25	semana-9
67	Semana 8	34	2019-08-18	semana-8
73	Semana 14	34	2019-10-06	semana-14
74	Semana 15	34	2019-10-13	semana-15
75	Semana 16	34	2019-10-20	semana-16
78	Semana 3	4	2009-08-23	semana-3-da-ttd-2009
81	Semana 6	4	2009-09-13	semana-6-da-ttd-2009
79	Semana 4	4	2009-08-30	semana-4-da-ttd-2009
76	Semana 1	4	2009-08-09	semana-1-da-ttd-2009
77	Semana 2	4	2009-08-16	semana-2-da-ttd-2009
83	Semana 8	4	2009-10-11	semana-8-da-ttd-2009
84	Semana 9	4	2009-10-18	semana-9-da-ttd-2009
89	Final	4	\N	final-da-ttd-2009
87	Semana 12	4	2009-11-08	semana-12-da-ttd-2009
86	Semana 11	4	2009-11-01	semana-11-da-ttd-2009
85	Semana 10	4	2009-10-25	semana-10-da-ttd-2009
82	Semana 7	4	2009-09-13	semana-7-da-ttd-2009
80	Semana 5	4	2009-09-06	semana-5-da-ttd-2009
88	Semifinal	4	\N	semifinal-da-ttd-2009
\.


--
-- Data for Name: championship_season; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.championship_season (id, year, slug, created, modified, championship_id, champion_id) FROM stdin;
4	2009	ttd-2009	2019-02-23 01:22:25.069607+00	2019-02-23 01:22:25.069662+00	3	27
6	2010	ttd-2010	2019-02-23 01:27:18.959926+00	2019-02-23 01:27:18.959972+00	3	74
8	2011	ttd-2011	2019-02-23 01:27:44.890428+00	2019-02-23 01:27:44.890478+00	3	20
10	2012	ttd-2012	2019-02-23 01:29:30.747204+00	2019-02-23 01:29:30.747244+00	3	20
11	2013	ttd-2013	2019-02-23 01:29:48.981945+00	2019-02-23 01:29:48.981977+00	3	33
12	2014	ttd-2014	2019-02-23 01:30:04.978369+00	2019-02-23 01:30:04.978398+00	3	79
13	2015	ttd-2015	2019-02-23 01:30:18.798537+00	2019-02-23 01:30:18.798565+00	3	73
14	2017	bfa-2017	2019-02-23 01:30:39.423061+00	2019-02-23 01:30:39.423091+00	4	30
15	2018	bfa-2018	2019-02-23 01:30:53.936213+00	2019-02-23 01:30:53.936239+00	4	30
16	2016	sln-2016	2019-02-23 01:31:09.591094+00	2019-02-23 01:31:09.591148+00	5	73
23	2010	lbfa-2010	2019-02-24 03:03:32.965176+00	2019-02-24 03:03:32.965229+00	7	24
24	2011	lbfa-2011	2019-02-24 03:03:45.478676+00	2019-02-24 03:03:45.478726+00	7	27
25	2012	cb-2012	2019-02-24 03:04:05.08189+00	2019-02-24 03:04:05.081954+00	8	24
26	2013	cb-2013	2019-02-24 03:04:21.431886+00	2019-02-24 03:04:21.431944+00	8	21
27	2014	sln-2014	2019-02-24 03:05:14.756136+00	2019-02-24 03:05:14.756211+00	5	21
28	2015	sln-2015	2019-02-24 03:05:26.998963+00	2019-02-24 03:05:26.999022+00	5	34
29	2014	lnfa-2014	2019-02-24 03:05:59.82901+00	2019-02-24 03:05:59.829049+00	6	28
30	2015	lnfa-2015	2019-02-24 03:06:10.698238+00	2019-02-24 03:06:10.698298+00	6	70
31	2016	lnfa-2016	2019-02-24 03:06:22.242691+00	2019-02-24 03:06:22.242727+00	6	30
32	2017	lnfa-2017	2019-02-24 03:06:36.235934+00	2019-02-24 03:06:36.235993+00	6	71
33	2018	lnfa-2018	2019-02-24 03:06:46.91204+00	2019-02-24 03:06:46.912101+00	6	18
34	2019	bfa-2019	2019-03-02 20:56:21.421161+00	2019-03-02 20:56:21.421212+00	4	\N
35	2019	lnfa-2019	2019-03-02 20:56:31.222138+00	2019-03-02 20:56:31.222184+00	6	\N
\.


--
-- Data for Name: core_city; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.core_city (code, name, uf_id) FROM stdin;
1	Aracaju	28
2	Araçatuba	35
3	Araxá	31
4	Arcoverde	26
5	Balneário Camboriú	42
6	Belém	15
7	Belo Horizonte	31
8	Bento Gonçalves	43
9	Betim	31
10	Boa Vista	14
11	Brasília	53
12	Cachoeirinha	43
13	Cambé	41
14	Campina Grande	25
15	Campinas	35
16	Campo Grande	50
17	Campo Largo	41
18	Canoas	43
19	Caraguatatuba	35
20	Carlos Barbosa	43
21	Caruaru	26
22	Cascavél	41
23	Castanhal	15
24	Caxias do Sul	43
25	Contagem	31
26	Corupá	42
27	Criciúma	42
28	Cuiabá	51
29	Curitiba	41
30	Dourados	50
31	Feira de Santana	29
32	Fortaleza	23
33	Foz do Iguaçu	41
34	Franca	35
35	Francisco Beltrão	41
36	Gaspar	42
37	Goiânia	52
38	Gravataí	43
39	Guarapuava	41
40	Ijuí	43
41	Ipatinga	31
42	Itaiópolis	42
43	Itajaí	42
44	Jaraguá	42
45	João Pessoa	25
46	Joinville	42
47	Jundiaí	35
48	Leme	35
49	Limeira	35
50	Londrina	41
51	Lucas do Rio Verde	51
52	Macaé	33
53	Maceió	27
54	Magé	33
55	Manaus	13
56	Maringá	41
57	Mauá	35
58	Monte Alto	35
59	Mossoró	24
60	Natal	24
61	Niterói	33
62	Nova Friburgo	33
63	Nova Serrana	31
64	Olinda	26
65	Osasco	35
66	Palotina	41
67	Passos	31
68	Patos	25
69	Petrolina	26
70	Piracicaba	35
71	Pouso Alegre	31
72	Presidente Prudente	35
73	Recife	26
74	Ribeirão Preto	35
75	Rio de Janeiro	33
76	Rio Preto	35
77	Rondonópolis	51
78	Salvador	29
79	Santa Cruz	43
80	Santa Maria	43
81	Santa Maria	53
82	Santos	35
83	São Bento	25
84	São Caetano	35
85	São José	42
86	São José	35
87	São Luís	21
88	São Miguel	42
89	São Paulo	35
90	São Sebastião do Paraíso	31
91	Sinop	51
92	Sorocaba	35
93	Sorriso	51
95	Timbó	42
96	Tubarão	42
97	Uberaba	31
98	Uberlândia	31
99	União da Vitória	41
100	Venâncio Aires	43
101	Viamão	43
102	Vila Velha	32
103	Votuporanga	35
104	Porto Alegre	43
105	Juiz de Fora	31
94	Taquaritinga	35
106	Erechim	43
107	Blumenau	42
108	Brusque	42
109	Angra dos Reis	33
110	Arcos	31
111	Avaré	35
112	Balneário Camboriu	42
113	Ponta Grossa	41
114	Vitória	32
116	Itapema	42
117	Paulínia	35
118	São Leopoldo	43
\.


--
-- Data for Name: core_region; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.core_region (id, name) FROM stdin;
1	Norte
2	Nordeste
3	Sudeste
4	Sul
5	Centro-Oeste
\.


--
-- Data for Name: core_slide; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.core_slide (id, description, photo, link, subtitle) FROM stdin;
1	Caçadores atropela Bulls e decidirá título inédito em Fortaleza	players/photo/14125678_1148032128576268_1423167628746376180_o.jpg	http://fabrnetwork.com/noticias/cacadores-atropela-bulls-e-decidira-titulo-inedito-em-fortaleza/	Caçadores atropela Bulls e decidirá título inédito em Fortaleza
3	Ex-Mariners, Drew Banks acerta com Crocodiles para Superliga	players/photo/EM181115041.jpg	http://fabrnetwork.com/noticias/ex-mariners-drew-banks-acerta-com-crocodiles-para-superliga/	Ex-Mariners, Drew Banks acerta com Crocodiles para Superliga
2	Em jogo emocionante, Patriotas vence Tritões e fará final contra FlamengoE	players/photo/14124480_1242483852448786_7021744516021624945_o.jpg	http://fabrnetwork.com/noticias/em-jogo-emocionante-patriotas-vence-tritoes-e-fara-final-contra-flamengo/	Em jogo emocionante, Patriotas vence Tritões e fará final contra Flamengo
\.


--
-- Data for Name: core_state; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.core_state (code, name, uf, region_id) FROM stdin;
12	Acre	AC	1
27	Alagoas	AL	2
16	Amapá	AP	1
13	Amazonas	AM	1
29	Bahia	BA	2
23	Ceará	CE	2
53	Distrito Federal	DF	5
32	Espírito Santo	ES	3
52	Goiás	GO	5
21	Maranhão	MA	2
51	Mato Grosso	MT	5
50	Mato Grosso do Sul	MS	5
31	Minas Gerais	MG	3
15	Pará	PA	1
25	Paraíba	PB	2
41	Paraná	PR	4
26	Pernambuco	PE	2
22	Piauí	PI	2
33	Rio de Janeiro	RJ	3
24	Rio Grande do Norte	RN	2
43	Rio Grande do Sul	RS	4
11	Rondônia	RO	1
14	Roraima	RR	1
42	Santa Catarina	SC	4
35	São Paulo	SP	3
28	Sergipe	SE	2
17	Tocantins	TO	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-10-16 03:44:07.22976+00	2	haim	1	[{"added": {}}]	4	1
2	2018-10-16 03:44:19.446832+00	2	haim	2	[{"changed": {"fields": ["is_staff", "is_superuser"]}}]	4	1
3	2018-10-16 03:45:43.447832+00	1	filipe	2	[{"changed": {"fields": ["first_name", "last_name"]}}]	4	1
4	2018-10-16 03:45:52.12894+00	2	haim	2	[{"changed": {"fields": ["first_name", "last_name"]}}]	4	1
5	2018-10-16 19:09:07.50388+00	1	Unificação foi o melhor caminho para a Superliga Nacional	1	[{"added": {}}]	12	2
6	2018-10-17 12:15:51.948952+00	1	Unificação foi o melhor caminho para a Superliga Nacional	2	[{"changed": {"fields": ["text", "subtitle"]}}]	12	2
7	2018-10-17 12:21:22.938679+00	1	Unificação foi o melhor caminho para a Superliga Nacional	2	[{"changed": {"fields": ["text"]}}]	12	2
8	2018-10-17 12:23:23.775358+00	1	Unificação foi o melhor caminho para a Superliga Nacional	2	[{"changed": {"fields": ["text"]}}]	12	2
9	2018-10-17 12:28:17.891744+00	2	Fluminense voltará a ter time de futebol americano em 2017	1	[{"added": {}}]	12	2
10	2018-10-17 12:31:16.623057+00	3	Divulgada tabela do Campeonato Mundial de Futebol Americano	1	[{"added": {}}]	12	2
11	2018-10-17 12:38:07.447254+00	4	Brasil Onças é convocado para Copa do Mundo de Futebol Americano	1	[{"added": {}}]	12	2
12	2018-10-17 12:38:50.923521+00	4	Brasil Onças é convocado para Copa do Mundo de Futebol Americano	2	[{"changed": {"fields": ["text"]}}]	12	2
13	2018-10-17 12:39:11.861716+00	4	Brasil Onças é convocado para Copa do Mundo de Futebol Americano	2	[{"changed": {"fields": ["text"]}}]	12	2
14	2018-10-17 12:42:43.712195+00	5	Brasil Onças anuncia reestruturação na comissão técnica	1	[{"added": {}}]	12	2
15	2018-10-17 12:43:13.731241+00	5	Brasil Onças anuncia reestruturação na comissão técnica	2	[{"changed": {"fields": ["photo"]}}]	12	2
16	2018-10-17 12:49:30.652198+00	5	Brasil Onças anuncia reestruturação na comissão técnica	2	[]	12	2
17	2018-10-17 12:54:24.61803+00	6	Saiba como funcionará o campeonato unificado de futebol americano do Brasil	1	[{"added": {}}]	12	2
18	2018-10-17 12:58:54.374099+00	7	Entenda como será o formato de disputa da Superliga Nacional	1	[{"added": {}}]	12	2
19	2018-10-17 13:02:27.646738+00	8	CBFA confirma Liga Nacional com 33 times e divulga formato	1	[{"added": {}}]	12	2
20	2018-10-17 13:07:15.699499+00	9	Os cinco maiores públicos de futebol americano no Brasil	1	[{"added": {}}]	12	2
21	2018-10-17 13:12:53.419434+00	10	Extra-points vêm sendo um problema na Superliga Nacional	1	[{"added": {}}]	12	2
22	2018-10-17 13:15:10.493088+00	10	Extra-points vêm sendo um problema na Superliga Nacional	2	[{"changed": {"fields": ["text"]}}]	12	2
23	2018-10-17 13:16:51.763391+00	10	Extra-points vêm sendo um problema na Superliga Nacional	2	[]	12	2
24	2018-10-17 14:59:37.940011+00	11	Superliga Nacional terá patrocinador master e passará a ser gerida pelos times	1	[{"added": {}}]	12	2
25	2018-10-17 15:02:13.692885+00	12	Recife Mariners perde decisão da Superliga Nordeste na Arena Pernambuco	1	[{"added": {}}]	12	2
26	2018-10-17 15:13:07.046717+00	4	Brasil Onças é convocado para Copa do Mundo de Futebol Americano	2	[{"changed": {"fields": ["text"]}}]	12	2
27	2018-10-17 15:15:55.894421+00	5	Brasil Onças anuncia reestruturação na comissão técnica	2	[{"changed": {"fields": ["text"]}}]	12	2
28	2018-10-17 15:16:39.036411+00	4	Brasil Onças é convocado para Copa do Mundo de Futebol Americano	2	[{"changed": {"fields": ["text"]}}]	12	2
29	2018-10-17 15:17:04.503819+00	3	Divulgada tabela do Campeonato Mundial de Futebol Americano	2	[{"changed": {"fields": ["text"]}}]	12	2
30	2018-10-17 15:17:44.052721+00	4	Brasil Onças é convocado para Copa do Mundo de Futebol Americano	2	[{"changed": {"fields": ["text"]}}]	12	2
31	2018-10-17 15:17:56.507865+00	3	Divulgada tabela do Campeonato Mundial de Futebol Americano	2	[{"changed": {"fields": ["text"]}}]	12	2
32	2018-10-17 15:18:14.539197+00	5	Brasil Onças anuncia reestruturação na comissão técnica	2	[]	12	2
33	2018-10-17 15:21:51.720566+00	6	Saiba como funcionará o campeonato unificado de futebol americano do Brasil	2	[{"changed": {"fields": ["text"]}}]	12	2
34	2018-10-17 15:23:47.193849+00	8	CBFA confirma Liga Nacional com 33 times e divulga formato	2	[{"changed": {"fields": ["text"]}}]	12	2
35	2018-10-17 15:25:24.70616+00	9	Os cinco maiores públicos de futebol americano no Brasil	2	[{"changed": {"fields": ["text"]}}]	12	2
36	2018-10-17 15:25:43.537144+00	7	Entenda como será o formato de disputa da Superliga Nacional	2	[{"changed": {"fields": ["text"]}}]	12	2
37	2018-10-17 15:26:41.132102+00	10	Extra-points vêm sendo um problema na Superliga Nacional	2	[{"changed": {"fields": ["text"]}}]	12	2
38	2018-10-17 15:27:42.020978+00	1	Unificação foi o melhor caminho para a Superliga Nacional	2	[{"changed": {"fields": ["text"]}}]	12	2
39	2018-10-17 15:28:36.193765+00	2	Fluminense voltará a ter time de futebol americano em 2017	2	[{"changed": {"fields": ["text"]}}]	12	2
40	2018-10-17 15:29:40.009219+00	11	Superliga Nacional terá patrocinador master e passará a ser gerida pelos times	2	[{"changed": {"fields": ["text"]}}]	12	2
41	2018-10-17 15:31:18.403084+00	1	Unificação foi o melhor caminho para a Superliga Nacional	2	[{"changed": {"fields": ["text"]}}]	12	2
42	2018-10-17 15:31:47.092517+00	9	Os cinco maiores públicos de futebol americano no Brasil	2	[{"changed": {"fields": ["text"]}}]	12	2
43	2018-10-17 17:58:23.514199+00	13	Espectros faz história, vence Crocodiles e fatura Brasil Bowl	1	[{"added": {}}]	12	2
44	2018-10-17 17:59:09.196369+00	13	Espectros faz história, vence Crocodiles e fatura Brasil Bowl	2	[{"changed": {"fields": ["text"]}}]	12	2
45	2018-10-17 18:01:05.832015+00	14	Soberano, Espectros conquista o hexa da Superliga Nordeste	1	[{"added": {}}]	12	2
46	2018-10-17 18:01:54.298186+00	13	Espectros faz história, vence Crocodiles e fatura Brasil Bowl	2	[{"changed": {"fields": ["text"]}}]	12	2
47	2018-10-18 13:24:46.374259+00	15	Field Goal de Diego Aranha entraria no Top 10 da NFL	1	[{"added": {}}]	12	2
48	2018-10-18 13:34:01.413482+00	16	Everaldo Marques comenta sobre NFL no Brasil e unificação de campeonatos no FABR	1	[{"added": {}}]	12	2
49	2018-10-18 13:37:13.187692+00	17	Recife Pirates anuncia quarterback Dominique White	1	[{"added": {}}]	12	2
50	2018-10-18 13:40:52.164774+00	18	Recife Pirates acerta com o linebacker americano Darrick Dillard	1	[{"added": {}}]	12	2
51	2018-10-18 13:43:44.914595+00	19	João Pessoa Espectros anuncia contratação do americano Jeron Jones	1	[{"added": {}}]	12	2
52	2018-10-18 13:50:41.241931+00	20	Superliga Nordeste levou mais de 18 mil torcedores aos estádios em 2015	1	[{"added": {}}]	12	2
53	2018-10-20 20:33:46.728147+00	1	Brasil Futebol Americano	1	[{"added": {}}]	16	1
54	2018-10-20 20:34:49.731276+00	2	Liga Nacional de Futebol Americano	1	[{"added": {}}]	16	1
55	2018-10-20 23:53:27.310235+00	104	Porto Alegre - RS	1	[{"added": {}}]	8	1
56	2018-10-20 23:57:09.135178+00	1	América Locomotiva	1	[{"added": {}}]	15	1
57	2018-10-20 23:58:10.285475+00	2	Arcoverde Templários	1	[{"added": {}}]	15	1
1018	2019-02-23 01:29:10.805458+00	9	SLN 2011	3		21	2
58	2018-10-20 23:58:30.643964+00	1	América Locomotiva	2	[{"changed": {"fields": ["primaryColor", "secundaryColor", "terciaryColor"]}}]	15	1
59	2018-10-20 23:59:11.11516+00	3	Armada	1	[{"added": {}}]	15	1
60	2018-10-20 23:59:51.10788+00	4	Belém Titans	1	[{"added": {}}]	15	1
61	2018-10-21 00:00:36.48648+00	5	Bento Gonçalves Snakes	1	[{"added": {}}]	15	1
62	2018-10-21 00:01:12.00197+00	6	Betim Bulldogs	1	[{"added": {}}]	15	1
63	2018-10-21 00:01:51.135592+00	7	Black Hawks	1	[{"added": {}}]	15	1
64	2018-10-21 00:02:23.619512+00	8	Blaze	1	[{"added": {}}]	15	1
65	2018-10-21 00:03:05.628149+00	9	Botafogo Reptiles	1	[{"added": {}}]	15	1
66	2018-10-21 00:03:44.07491+00	10	Brasília Templários	1	[{"added": {}}]	15	1
67	2018-10-21 00:04:16.968255+00	11	Brown Spiders	1	[{"added": {}}]	15	1
68	2018-10-21 00:05:03.66668+00	12	Bulls Potiguares	1	[{"added": {}}]	15	1
69	2018-10-21 00:05:32.34371+00	13	Campo Grande Predadores	1	[{"added": {}}]	15	1
70	2018-10-21 00:06:02.329406+00	14	Carrancas	1	[{"added": {}}]	15	1
71	2018-10-21 00:06:31.439964+00	15	Caruaru Wolves	1	[{"added": {}}]	15	1
72	2018-10-21 00:06:59.932027+00	16	Cavalaria 2 de Julho	1	[{"added": {}}]	15	1
73	2018-10-21 00:07:34.094714+00	17	Ceará Caçadores	1	[{"added": {}}]	15	1
74	2018-10-21 00:08:10.772028+00	18	Challengers	1	[{"added": {}}]	15	1
75	2018-10-21 00:08:56.158439+00	19	Contagem Incofidentes	1	[{"added": {}}]	15	1
76	2018-10-21 00:09:34.47971+00	20	Corinthians Steamrollers	1	[{"added": {}}]	15	1
77	2018-10-21 00:10:11.194429+00	21	Coritiba Crocodiles	1	[{"added": {}}]	15	1
78	2018-10-21 00:10:50.385122+00	22	Corupá Búffalos	1	[{"added": {}}]	15	1
79	2018-10-21 00:11:24.042925+00	23	CSA Guerreiros	1	[{"added": {}}]	15	1
80	2018-10-21 00:11:53.026728+00	24	Cuiabá Arsenal	1	[{"added": {}}]	15	1
81	2018-10-21 00:12:20.712706+00	25	Dark Owls	1	[{"added": {}}]	15	1
82	2018-10-21 00:12:51.34551+00	26	Espírito Santo Black Knights	1	[{"added": {}}]	15	1
83	2018-10-21 00:13:52.591001+00	27	Flamengo Imperadores	1	[{"added": {}}]	15	1
84	2018-10-21 00:14:20.799226+00	28	Foz do Iguaçu Black Sharks	1	[{"added": {}}]	15	1
85	2018-10-21 00:14:48.140359+00	29	Galaxy	1	[{"added": {}}]	15	1
86	2018-10-21 00:15:25.146605+00	30	Galo	1	[{"added": {}}]	15	1
87	2018-10-21 00:16:06.021073+00	31	Goiânia Saints	1	[{"added": {}}]	15	1
88	2018-10-21 00:16:39.854925+00	32	Ijuí Drones	1	[{"added": {}}]	15	1
89	2018-10-21 00:17:15.120547+00	33	Jaraguá Breakers	1	[{"added": {}}]	15	1
90	2018-10-21 00:18:15.450183+00	34	João Pessoa Espectros	1	[{"added": {}}]	15	1
91	2018-10-21 00:18:49.48905+00	35	Juventude	1	[{"added": {}}]	15	1
92	2018-10-21 00:19:21.237426+00	36	Leões de Judá	1	[{"added": {}}]	15	1
93	2018-10-21 00:19:54.431917+00	37	Lobos Guerreiros	1	[{"added": {}}]	15	1
94	2018-10-21 00:20:27.333285+00	38	Macaé Oilers	1	[{"added": {}}]	15	1
95	2018-10-21 00:20:54.91114+00	39	Maceió Marechais	1	[{"added": {}}]	15	1
96	2018-10-21 00:21:25.489608+00	40	Manaus Broncos	1	[{"added": {}}]	15	1
97	2018-10-21 03:32:45.997953+00	2	Arcoverde Templários	2	[{"changed": {"fields": ["logo"]}}]	15	1
98	2018-10-21 03:32:54.40835+00	3	Armada	2	[{"changed": {"fields": ["logo"]}}]	15	1
99	2018-10-21 03:33:02.947248+00	4	Belém Titans	2	[{"changed": {"fields": ["logo"]}}]	15	1
100	2018-10-21 03:33:11.915207+00	5	Bento Gonçalves Snakes	2	[{"changed": {"fields": ["logo"]}}]	15	1
101	2018-10-21 03:33:23.102271+00	6	Betim Bulldogs	2	[{"changed": {"fields": ["logo"]}}]	15	1
102	2018-10-21 03:33:54.258928+00	8	Blaze	2	[{"changed": {"fields": ["logo"]}}]	15	1
103	2018-10-21 03:34:04.799353+00	9	Botafogo Reptiles	2	[{"changed": {"fields": ["logo"]}}]	15	1
104	2018-10-21 03:34:15.468579+00	10	Brasília Templários	2	[{"changed": {"fields": ["logo"]}}]	15	1
105	2018-10-21 03:34:25.418683+00	11	Brown Spiders	2	[{"changed": {"fields": ["logo"]}}]	15	1
106	2018-10-21 03:34:36.544158+00	12	Bulls Potiguares	2	[{"changed": {"fields": ["logo"]}}]	15	1
107	2018-10-21 03:34:47.149041+00	13	Campo Grande Predadores	2	[{"changed": {"fields": ["logo"]}}]	15	1
108	2018-10-21 03:35:16.823494+00	15	Caruaru Wolves	2	[{"changed": {"fields": ["logo"]}}]	15	1
109	2018-10-21 03:35:28.899727+00	16	Cavalaria 2 de Julho	2	[{"changed": {"fields": ["logo"]}}]	15	1
110	2018-10-21 03:35:39.434725+00	17	Ceará Caçadores	2	[{"changed": {"fields": ["logo"]}}]	15	1
111	2018-10-21 03:35:51.147152+00	18	Challengers	2	[{"changed": {"fields": ["logo"]}}]	15	1
112	2018-10-21 03:36:03.405461+00	19	Contagem Incofidentes	2	[{"changed": {"fields": ["logo"]}}]	15	1
113	2018-10-21 03:36:13.899153+00	20	Corinthians Steamrollers	2	[{"changed": {"fields": ["logo"]}}]	15	1
114	2018-10-21 03:36:25.633462+00	21	Coritiba Crocodiles	2	[{"changed": {"fields": ["logo"]}}]	15	1
115	2018-10-21 03:36:40.656213+00	22	Corupá Búffalos	2	[{"changed": {"fields": ["logo"]}}]	15	1
116	2018-10-21 03:36:52.047665+00	23	CSA Guerreiros	2	[{"changed": {"fields": ["logo"]}}]	15	1
117	2018-10-21 03:37:05.476235+00	24	Cuiabá Arsenal	2	[{"changed": {"fields": ["logo"]}}]	15	1
118	2018-10-21 03:37:19.647158+00	25	Dark Owls	2	[{"changed": {"fields": ["logo"]}}]	15	1
119	2018-10-21 03:37:34.0047+00	26	Espírito Santo Black Knights	2	[{"changed": {"fields": ["logo"]}}]	15	1
120	2018-10-21 03:37:46.703252+00	27	Flamengo Imperadores	2	[{"changed": {"fields": ["logo"]}}]	15	1
121	2018-10-21 03:38:00.193384+00	28	Foz do Iguaçu Black Sharks	2	[{"changed": {"fields": ["logo"]}}]	15	1
122	2018-10-21 03:38:35.52712+00	30	Galo	2	[{"changed": {"fields": ["logo"]}}]	15	1
123	2018-10-21 03:41:08.513868+00	33	Jaraguá Breakers	2	[{"changed": {"fields": ["logo"]}}]	15	1
124	2018-10-21 03:45:47.719291+00	34	João Pessoa Espectros	2	[{"changed": {"fields": ["logo"]}}]	15	1
125	2018-10-21 03:46:04.097899+00	35	Juventude	2	[{"changed": {"fields": ["logo"]}}]	15	1
126	2018-10-21 03:46:32.535141+00	36	Leões de Judá	2	[{"changed": {"fields": ["logo"]}}]	15	1
127	2018-10-21 03:53:30.23148+00	41	Manaus Cavaliers	1	[{"added": {}}]	15	1
128	2018-10-21 03:54:07.940168+00	42	Manaus Raptors	1	[{"added": {}}]	15	1
129	2018-10-21 03:54:39.799673+00	43	Maringá Pyros	1	[{"added": {}}]	15	1
130	2018-10-21 03:55:16.980185+00	44	Mooca Destroyers	1	[{"added": {}}]	15	1
131	2018-10-21 03:55:44.639045+00	45	Natal Scorpions	1	[{"added": {}}]	15	1
132	2018-10-21 03:56:16.625589+00	46	North Lions	1	[{"added": {}}]	15	1
133	2018-10-21 03:56:51.13648+00	47	Nova Serrana Forgeds	1	[{"added": {}}]	15	1
134	2018-10-21 03:57:24.645897+00	48	Olinda Sharks	1	[{"added": {}}]	15	1
135	2018-10-21 03:57:53.96467+00	49	Palmeiras Locomotives	1	[{"added": {}}]	15	1
136	2018-10-21 03:59:54.624062+00	50	Paraná HP	1	[{"added": {}}]	15	1
137	2018-10-21 04:00:28.969301+00	51	Paysandu Lobos	1	[{"added": {}}]	15	1
138	2018-10-21 04:01:01.544346+00	52	Porto Alegre Gorillas	1	[{"added": {}}]	15	1
139	2018-10-21 04:01:38.16591+00	53	Portuguesa	1	[{"added": {}}]	15	1
140	2018-10-21 04:02:16.956413+00	54	Pouso Alegre Gladiadores	1	[{"added": {}}]	15	1
141	2018-10-21 04:02:47.704441+00	55	Recife Apaches	1	[{"added": {}}]	15	1
142	2018-10-21 04:03:12.533627+00	56	Recife Mariners	1	[{"added": {}}]	15	1
143	2018-10-21 04:03:43.442716+00	57	Recife Vikings	1	[{"added": {}}]	15	1
144	2018-10-21 04:04:11.757192+00	58	Remo Lions	1	[{"added": {}}]	15	1
145	2018-10-21 04:04:37.868864+00	59	Roma Gladiadores	1	[{"added": {}}]	15	1
146	2018-10-21 04:05:37.323245+00	60	Rondonópolis Hawks	1	[{"added": {}}]	15	1
147	2018-10-21 04:07:47.634426+00	61	Santa Cruz Chacais	1	[{"added": {}}]	15	1
148	2018-10-21 04:08:18.630608+00	62	Santa Cruz Pirates	1	[{"added": {}}]	15	1
149	2018-10-21 04:08:54.731731+00	63	Santa Maria Soldiers	1	[{"added": {}}]	15	1
150	2018-10-21 04:09:22.855132+00	64	São José Istepôs	1	[{"added": {}}]	15	1
151	2018-10-21 04:09:52.796565+00	65	São Luís Sharks	1	[{"added": {}}]	15	1
152	2018-10-21 04:10:27.829067+00	66	São Paulo Monsters	1	[{"added": {}}]	15	1
153	2018-10-21 04:10:55.404962+00	67	São Paulo Storm	1	[{"added": {}}]	15	1
154	2018-10-21 04:11:21.661528+00	68	Sergipe Redentores	1	[{"added": {}}]	15	1
155	2018-10-21 04:11:54.366473+00	69	Sinop Coyotes	1	[{"added": {}}]	15	1
156	2018-10-21 04:12:28.157269+00	70	Sorocaba Vipers	1	[{"added": {}}]	15	1
157	2018-10-21 04:12:58.664769+00	71	Sorriso Hornets	1	[{"added": {}}]	15	1
158	2018-10-21 04:13:36.577699+00	72	Spartans	1	[{"added": {}}]	15	1
159	2018-10-21 04:14:04.603383+00	73	Timbó Rex	1	[{"added": {}}]	15	1
160	2018-10-21 04:14:30.940581+00	74	Tritões	1	[{"added": {}}]	15	1
161	2018-10-21 04:14:58.29716+00	75	Tropa Campina	1	[{"added": {}}]	15	1
162	2018-10-21 04:15:22.00911+00	76	Tubarões do Cerrado	1	[{"added": {}}]	15	1
163	2018-10-21 04:15:47.632881+00	77	Tupinambás	1	[{"added": {}}]	15	1
164	2018-10-21 04:16:12.751471+00	78	Ufersa Petroleiros	1	[{"added": {}}]	15	1
165	2018-10-21 04:16:37.683925+00	79	Vasco da Gama Patriotas	1	[{"added": {}}]	15	1
166	2018-10-21 04:17:01.564248+00	80	Vingadores	1	[{"added": {}}]	15	1
167	2018-10-21 04:17:27.28654+00	81	Volta Redonda Falcons	1	[{"added": {}}]	15	1
168	2018-10-21 05:33:44.971825+00	1	LNFA 2018	1	[{"added": {}}]	21	1
169	2018-10-21 05:34:09.58829+00	1	LNFA 2018	3		21	1
170	2018-10-21 13:34:20.854472+00	BFA	BFA	1	[{"added": {}}]	22	2
171	2018-10-21 13:34:29.752087+00	11	Superliga Nacional terá patrocinador master e passará a ser gerida pelos times	2	[{"changed": {"fields": ["tag"]}}]	12	2
172	2018-10-21 13:34:47.848322+00	LNFA	LNFA	1	[{"added": {}}]	22	2
173	2018-10-21 13:35:17.104542+00	2	Fluminense voltará a ter time de futebol americano em 2017	2	[{"changed": {"fields": ["tag"]}}]	12	2
174	2018-10-21 13:35:25.308834+00	1	Unificação foi o melhor caminho para a Superliga Nacional	2	[{"changed": {"fields": ["tag"]}}]	12	2
175	2018-10-21 13:35:36.650913+00	11	Superliga Nacional terá patrocinador master e passará a ser gerida pelos times	2	[]	12	2
176	2018-10-21 13:35:52.927734+00	Recife Pirates	Recife Pirates	1	[{"added": {}}]	22	2
177	2018-10-21 13:35:56.970702+00	17	Recife Pirates anuncia quarterback Dominique White	2	[{"changed": {"fields": ["tag"]}}]	12	2
178	2018-10-22 11:00:52.395549+00	50	Paraná HP	2	[{"changed": {"fields": ["logo"]}}]	15	2
179	2018-10-22 11:01:05.654161+00	53	Portuguesa	2	[{"changed": {"fields": ["logo"]}}]	15	2
180	2018-10-22 11:01:14.930931+00	63	Santa Maria Soldiers	2	[{"changed": {"fields": ["logo"]}}]	15	2
181	2018-10-22 11:01:45.648434+00	64	São José Istepôs	2	[{"changed": {"fields": ["logo"]}}]	15	2
182	2018-10-22 11:01:55.565544+00	67	São Paulo Storm	2	[{"changed": {"fields": ["logo"]}}]	15	2
183	2018-10-22 11:02:05.418939+00	71	Sorriso Hornets	2	[{"changed": {"fields": ["logo"]}}]	15	2
184	2018-10-22 11:02:13.646745+00	73	Timbó Rex	2	[{"changed": {"fields": ["logo"]}}]	15	2
185	2018-10-22 11:02:24.002233+00	74	Tritões	2	[{"changed": {"fields": ["logo"]}}]	15	2
186	2018-10-22 11:02:32.326645+00	75	Tropa Campina	2	[{"changed": {"fields": ["logo"]}}]	15	2
187	2018-10-22 11:02:40.761716+00	76	Tubarões do Cerrado	2	[{"changed": {"fields": ["logo"]}}]	15	2
188	2018-10-22 11:02:49.116105+00	78	Ufersa Petroleiros	2	[{"changed": {"fields": ["logo"]}}]	15	2
189	2018-10-22 11:02:56.4545+00	79	Vasco da Gama Patriotas	2	[{"changed": {"fields": ["logo"]}}]	15	2
190	2018-10-22 11:05:54.505755+00	2	BFA 2018	1	[{"added": {}}]	21	2
191	2018-10-22 11:12:06.018057+00	1	Nordeste da BFA 2018	1	[{"added": {}}]	17	2
192	2018-10-22 11:12:15.300654+00	2	Sudeste da BFA 2018	1	[{"added": {}}]	17	2
193	2018-10-22 11:12:45.931657+00	3	Sul da BFA 2018	1	[{"added": {}}]	17	2
194	2018-10-22 11:12:55.123821+00	4	Centro-Oeste da BFA 2018	1	[{"added": {}}]	17	2
195	2018-10-22 11:13:38.889179+00	1	Nordeste da BFA 2018	2	[{"changed": {"fields": ["weeks"]}}]	17	2
196	2018-10-22 11:13:44.086703+00	4	Centro-Oeste da BFA 2018	2	[{"changed": {"fields": ["weeks"]}}]	17	2
197	2018-10-22 11:13:49.535377+00	2	Sudeste da BFA 2018	2	[{"changed": {"fields": ["weeks"]}}]	17	2
198	2018-10-22 11:13:55.162615+00	3	Sul da BFA 2018	2	[{"changed": {"fields": ["weeks"]}}]	17	2
199	2018-10-22 11:20:14.389042+00	1	Grupo Ùnico - BFA 2018	1	[{"added": {}}]	18	2
200	2018-10-22 11:22:52.301552+00	2	Grupo Único - BFA 2018	1	[{"added": {}}]	18	2
201	2018-10-22 11:26:26.549568+00	3	Grupo 1 - BFA 2018	1	[{"added": {}}]	18	2
202	2018-10-22 11:27:11.108577+00	4	Grupo 2 - BFA 2018	1	[{"added": {}}]	18	2
203	2018-10-22 11:27:49.739733+00	5	Grupo 1 - BFA 2018	1	[{"added": {}}]	18	2
204	2018-10-22 11:28:27.246995+00	6	Grupo 2 - BFA 2018	1	[{"added": {}}]	18	2
205	2018-10-22 11:31:17.279063+00	Semana 12 (20 e 21/10)	Rodada Semana 12 (20 e 21/10) da BFA 2018	1	[{"added": {}}]	20	2
206	2018-10-22 11:31:45.533184+00	Semana 11 (13 e 14/10)	Rodada Semana 11 (13 e 14/10) da BFA 2018	1	[{"added": {}}]	20	2
207	2018-10-22 11:32:21.114807+00	Semana 10 (29 e 30/09)	Rodada Semana 10 (29 e 30/09) da BFA 2018	1	[{"added": {}}]	20	2
208	2018-10-22 11:33:04.112376+00	Semana 9 (15 e 16/09)	Rodada Semana 9 (15 e 16/09) da BFA 2018	1	[{"added": {}}]	20	2
209	2018-10-22 11:33:40.79218+00	Semana 8 (8 e 9/09	Rodada Semana 8 (8 e 9/09 da BFA 2018	1	[{"added": {}}]	20	2
210	2018-10-22 11:33:50.454647+00	Semana 8 (08 e 09/09	Rodada Semana 8 (08 e 09/09 da BFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	2
211	2018-10-22 11:33:58.885703+00	Semana 8 (08 e 09/09)	Rodada Semana 8 (08 e 09/09) da BFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	2
212	2018-10-22 11:34:08.49982+00	Semana 8 (8 e 9/09	Rodada Semana 8 (8 e 9/09 da BFA 2018	3		20	2
213	2018-10-22 11:34:08.505663+00	Semana 8 (08 e 09/09	Rodada Semana 8 (08 e 09/09 da BFA 2018	3		20	2
214	2018-10-22 11:35:03.967201+00	Semana 7 (01 e 02/09)	Rodada Semana 7 (01 e 02/09) da BFA 2018	1	[{"added": {}}]	20	2
215	2018-10-22 11:35:33.770514+00	Semana 6 (25 e 26/08)	Rodada Semana 6 (25 e 26/08) da BFA 2018	1	[{"added": {}}]	20	2
216	2018-10-22 11:36:06.270229+00	Semana 5 (18 e 19/08)	Rodada Semana 5 (18 e 19/08) da BFA 2018	1	[{"added": {}}]	20	2
217	2018-10-22 11:36:33.429999+00	Semana 4 (11 e 12/08)	Rodada Semana 4 (11 e 12/08) da BFA 2018	1	[{"added": {}}]	20	2
218	2018-10-22 11:37:02.494412+00	Semana 3 (04 e 05/08)	Rodada Semana 3 (04 e 05/08) da BFA 2018	1	[{"added": {}}]	20	2
219	2018-10-22 11:37:28.77007+00	Semana 2 (28 e 29/07)	Rodada Semana 2 (28 e 29/07) da BFA 2018	1	[{"added": {}}]	20	2
220	2018-10-22 11:37:54.794586+00	Semana 1 (21 e 22/07)	Rodada Semana 1 (21 e 22/07) da BFA 2018	1	[{"added": {}}]	20	2
221	2018-10-22 11:41:14.625965+00	1	None:Coritiba Crocodiles x Paraná HP	1	[{"added": {}}]	19	2
222	2018-10-22 11:41:46.836022+00	2	None:Cavalaria 2 de Julho x Recife Mariners	1	[{"added": {}}]	19	2
223	2018-10-22 11:42:07.728507+00	3	None:Leões de Judá x Brasília Templários	1	[{"added": {}}]	19	2
224	2018-10-22 11:43:15.928129+00	4	None:América Locomotiva x Botafogo Reptiles	1	[{"added": {}}]	19	2
225	2018-10-22 11:43:36.458565+00	5	None:Bulls Potiguares x Natal Scorpions	1	[{"added": {}}]	19	2
226	2018-10-22 11:44:10.225246+00	6	None:Ufersa Petroleiros x Ceará Caçadores	1	[{"added": {}}]	19	2
227	2018-10-22 11:44:48.906766+00	7	None:Timbó Rex x Juventude	1	[{"added": {}}]	19	2
228	2018-10-22 11:45:13.90127+00	8	None:João Pessoa Espectros x Tropa Campina	1	[{"added": {}}]	19	2
229	2018-10-22 11:46:05.990753+00	9	None:Santa Maria Soldiers x São José Istepôs	1	[{"added": {}}]	19	2
230	2018-10-22 11:46:12.460798+00	10	None:Santa Maria Soldiers x São José Istepôs	1	[{"added": {}}]	19	2
231	2018-10-22 11:46:23.938135+00	10	None:Santa Maria Soldiers x São José Istepôs	3		19	2
232	2018-10-22 11:47:16.785562+00	11	None:Tritões x Galo	1	[{"added": {}}]	19	2
233	2018-10-22 11:48:23.039625+00	12	None:Portuguesa x Flamengo Imperadores	1	[{"added": {}}]	19	2
234	2018-10-22 11:48:46.688928+00	13	None:Cuiabá Arsenal x Sorriso Hornets	1	[{"added": {}}]	19	2
235	2018-10-22 11:49:24.295102+00	14	None:São Paulo Storm x Corinthians Steamrollers	1	[{"added": {}}]	19	2
236	2018-10-22 11:49:37.178696+00	12	None:Portuguesa x Flamengo Imperadores	2	[{"changed": {"fields": ["scoreA", "scoreB"]}}]	19	2
237	2018-10-22 17:14:14.22671+00	15	None:Tubarões do Cerrado x Cuiabá Arsenal	1	[{"added": {}}]	19	2
238	2018-10-22 17:14:34.42765+00	16	None:Paraná HP x Santa Maria Soldiers	1	[{"added": {}}]	19	2
239	2018-10-22 17:14:54.572784+00	17	None:Sorriso Hornets x Campo Grande Predadores	1	[{"added": {}}]	19	2
240	2018-10-22 17:15:20.13655+00	18	None:São José Istepôs x Coritiba Crocodiles	1	[{"added": {}}]	19	2
241	2018-10-22 17:15:37.128993+00	19	None:Jaraguá Breakers x Timbó Rex	1	[{"added": {}}]	19	2
242	2018-10-22 17:15:55.062136+00	20	None:Recife Mariners x Ufersa Petroleiros	1	[{"added": {}}]	19	2
243	2018-10-22 17:16:16.787976+00	21	None:Tropa Campina x Bulls Potiguares	1	[{"added": {}}]	19	2
244	2018-10-22 17:16:39.278594+00	22	None:Natal Scorpions x Cavalaria 2 de Julho	1	[{"added": {}}]	19	2
245	2018-10-22 17:17:02.646926+00	23	None:Ceará Caçadores x João Pessoa Espectros	1	[{"added": {}}]	19	2
246	2018-10-22 17:18:56.554505+00	24	None:América Locomotiva x Flamengo Imperadores	1	[{"added": {}}]	19	2
247	2018-10-22 17:19:23.302085+00	25	None:São Paulo Storm x Vasco da Gama Patriotas	1	[{"added": {}}]	19	2
248	2018-10-22 17:19:41.61831+00	26	None:Tritões x Botafogo Reptiles	1	[{"added": {}}]	19	2
249	2018-10-22 17:20:02.096492+00	27	None:Corinthians Steamrollers x Portuguesa	1	[{"added": {}}]	19	2
250	2018-10-22 17:20:37.498409+00	28	None:Santa Maria Soldiers x Timbó Rex	1	[{"added": {}}]	19	2
251	2018-10-22 17:21:29.271136+00	29	None:Tubarões do Cerrado x Brasília Templários	1	[{"added": {}}]	19	2
252	2018-10-22 17:21:53.921351+00	30	None:Cavalaria 2 de Julho x Tropa Campina	1	[{"added": {}}]	19	2
253	2018-10-22 17:22:52.774203+00	31	None:João Pessoa Espectros x Recife Mariners	1	[{"added": {}}]	19	2
254	2018-10-22 17:23:20.165079+00	32	None:Campo Grande Predadores x Cuiabá Arsenal	1	[{"added": {}}]	19	2
255	2018-10-22 17:23:40.404537+00	33	None:Coritiba Crocodiles x Jaraguá Breakers	1	[{"added": {}}]	19	2
256	2018-10-22 17:23:59.89605+00	34	None:São José Istepôs x Juventude	1	[{"added": {}}]	19	2
257	2018-10-22 17:24:19.291135+00	35	None:Bulls Potiguares x Ceará Caçadores	1	[{"added": {}}]	19	2
258	2018-10-22 17:24:37.519712+00	36	None:Ufersa Petroleiros x Natal Scorpions	1	[{"added": {}}]	19	2
259	2018-10-22 17:25:45.437324+00	37	None:Galo x América Locomotiva	1	[{"added": {}}]	19	2
260	2018-10-22 17:26:15.161198+00	38	None:Botafogo Reptiles x Corinthians Steamrollers	1	[{"added": {}}]	19	2
261	2018-10-22 17:26:29.260627+00	39	None:Vasco da Gama Patriotas x Flamengo Imperadores	1	[{"added": {}}]	19	2
262	2018-10-22 17:27:59.603731+00	40	None:Portuguesa x São Paulo Storm	1	[{"added": {}}]	19	2
263	2018-10-22 17:28:28.568024+00	41	None:Recife Mariners x Cavalaria 2 de Julho	1	[{"added": {}}]	19	2
264	2018-10-22 17:28:49.684729+00	42	None:Tropa Campina x João Pessoa Espectros	1	[{"added": {}}]	19	2
265	2018-10-22 17:29:04.853097+00	43	None:Juventude x Paraná HP	1	[{"added": {}}]	19	2
266	2018-10-22 17:29:24.972266+00	44	None:Brasília Templários x Campo Grande Predadores	1	[{"added": {}}]	19	2
267	2018-10-22 17:30:04.442718+00	45	None:Santa Maria Soldiers x Jaraguá Breakers	1	[{"added": {}}]	19	2
268	2018-10-22 17:30:22.874565+00	46	None:Ceará Caçadores x Ufersa Petroleiros	1	[{"added": {}}]	19	2
269	2018-10-22 17:30:40.43514+00	47	None:Leões de Judá x Tubarões do Cerrado	1	[{"added": {}}]	19	2
270	2018-10-22 17:30:57.184138+00	48	None:Natal Scorpions x Bulls Potiguares	1	[{"added": {}}]	19	2
271	2018-10-22 17:31:41.358819+00	49	None:Flamengo Imperadores x Botafogo Reptiles	1	[{"added": {}}]	19	2
272	2018-10-22 17:31:57.928861+00	50	None:Vasco da Gama Patriotas x Portuguesa	1	[{"added": {}}]	19	2
273	2018-10-22 17:32:26.618895+00	51	None:Coritiba Crocodiles x Santa Maria Soldiers	1	[{"added": {}}]	19	2
274	2018-10-22 17:32:46.810956+00	52	None:Galo x São Paulo Storm	1	[{"added": {}}]	19	2
275	2018-10-22 17:33:14.704895+00	53	None:Cavalaria 2 de Julho x Bulls Potiguares	1	[{"added": {}}]	19	2
276	2018-10-22 17:33:37.394191+00	54	None:Sorriso Hornets x Brasília Templários	1	[{"added": {}}]	19	2
277	2018-10-22 17:33:59.555778+00	55	None:Campo Grande Predadores x Leões de Judá	1	[{"added": {}}]	19	2
278	2018-10-22 17:34:21.591341+00	56	None:Tritões x Corinthians Steamrollers	1	[{"added": {}}]	19	2
279	2018-10-22 17:34:37.914503+00	57	None:Jaraguá Breakers x Juventude	1	[{"added": {}}]	19	2
280	2018-10-22 17:34:55.093754+00	58	None:Recife Mariners x Ceará Caçadores	1	[{"added": {}}]	19	2
281	2018-10-22 17:35:12.013699+00	59	None:São José Istepôs x Paraná HP	1	[{"added": {}}]	19	2
282	2018-10-22 17:35:34.703473+00	60	None:Natal Scorpions x Tropa Campina	1	[{"added": {}}]	19	2
283	2018-10-22 17:35:49.513879+00	61	None:Ufersa Petroleiros x João Pessoa Espectros	1	[{"added": {}}]	19	2
284	2018-10-22 17:36:20.84792+00	62	None:Brasília Templários x Cuiabá Arsenal	1	[{"added": {}}]	19	2
285	2018-10-22 17:36:37.802163+00	63	None:Tropa Campina x Recife Mariners	1	[{"added": {}}]	19	2
286	2018-10-22 17:37:18.630623+00	64	None:Juventude x Coritiba Crocodiles	1	[{"added": {}}]	19	2
287	2018-10-22 17:37:46.943126+00	65	None:Botafogo Reptiles x Vasco da Gama Patriotas	1	[{"added": {}}]	19	2
288	2018-10-22 17:37:56.589293+00	65	None:Botafogo Reptiles x Vasco da Gama Patriotas	2	[{"changed": {"fields": ["scoreA", "scoreB"]}}]	19	2
289	2018-10-22 17:38:42.839539+00	66	None:América Locomotiva x Tritões	1	[{"added": {}}]	19	2
290	2018-10-22 17:39:46.212617+00	67	None:Tubarões do Cerrado x Campo Grande Predadores	1	[{"added": {}}]	19	2
291	2018-10-22 17:40:06.660785+00	68	None:Corinthians Steamrollers x Flamengo Imperadores	1	[{"added": {}}]	19	2
292	2018-10-22 17:40:23.825519+00	69	None:Leões de Judá x Sorriso Hornets	1	[{"added": {}}]	19	2
293	2018-10-22 17:40:48.814836+00	70	None:Portuguesa x Galo	1	[{"added": {}}]	19	2
294	2018-10-22 17:41:06.75607+00	71	None:João Pessoa Espectros x Cavalaria 2 de Julho	1	[{"added": {}}]	19	2
295	2018-10-22 17:41:28.137553+00	72	None:Paraná HP x Jaraguá Breakers	1	[{"added": {}}]	19	2
296	2018-10-22 17:41:49.828919+00	73	None:Ceará Caçadores x Natal Scorpions	1	[{"added": {}}]	19	2
297	2018-10-22 17:42:11.123323+00	74	None:Timbó Rex x São José Istepôs	1	[{"added": {}}]	19	2
298	2018-10-22 17:42:28.625467+00	75	None:Bulls Potiguares x Ufersa Petroleiros	1	[{"added": {}}]	19	2
299	2018-10-22 17:42:57.012406+00	76	None:Juventude x Santa Maria Soldiers	1	[{"added": {}}]	19	2
300	2018-10-22 17:43:17.430543+00	77	None:Jaraguá Breakers x São José Istepôs	1	[{"added": {}}]	19	2
301	2018-10-22 17:43:38.218155+00	78	None:Sorriso Hornets x Tubarões do Cerrado	1	[{"added": {}}]	19	2
302	2018-10-22 17:43:53.944551+00	79	None:Cuiabá Arsenal x Leões de Judá	1	[{"added": {}}]	19	2
303	2018-10-22 17:44:11.172414+00	80	None:Paraná HP x Timbó Rex	1	[{"added": {}}]	19	2
304	2018-10-22 17:44:27.09881+00	81	None:Recife Mariners x Bulls Potiguares	1	[{"added": {}}]	19	2
305	2018-10-22 17:44:42.204136+00	82	None:João Pessoa Espectros x Ceará Caçadores	1	[{"added": {}}]	19	2
306	2018-10-22 17:45:06.99928+00	83	None:Flamengo Imperadores x Tritões	1	[{"added": {}}]	19	2
307	2018-10-22 17:45:22.893496+00	84	None:Botafogo Reptiles x São Paulo Storm	1	[{"added": {}}]	19	2
308	2018-10-22 17:45:37.925211+00	85	None:Galo x Vasco da Gama Patriotas	1	[{"added": {}}]	19	2
309	2018-10-22 17:45:52.304267+00	86	None:Corinthians Steamrollers x América Locomotiva	1	[{"added": {}}]	19	2
310	2018-10-22 17:46:23.17651+00	87	None:Coritiba Crocodiles x Timbó Rex	1	[{"added": {}}]	19	2
311	2018-10-22 17:46:53.832335+00	Oitavas de Final (semifinal de conferência)	Rodada Oitavas de Final (semifinal de conferência) da BFA 2018	1	[{"added": {}}]	20	2
312	2018-10-22 17:47:08.097599+00	Quartas de Final (finais de conferência)	Rodada Quartas de Final (finais de conferência) da BFA 2018	1	[{"added": {}}]	20	2
313	2018-10-22 17:47:15.732805+00	Oitavas de Final (semifinais de conferência)	Rodada Oitavas de Final (semifinais de conferência) da BFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	2
314	2018-10-22 17:47:25.617044+00	Oitavas de Final (semifinal de conferência)	Rodada Oitavas de Final (semifinal de conferência) da BFA 2018	3		20	2
315	2018-10-22 17:47:56.878781+00	Semifinal (semifinais nacionais)	Rodada Semifinal (semifinais nacionais) da BFA 2018	1	[{"added": {}}]	20	2
316	2018-10-22 17:48:05.704427+00	Final (Brasil Bowl)	Rodada Final (Brasil Bowl) da BFA 2018	1	[{"added": {}}]	20	2
317	2018-10-22 17:49:09.244196+00	88	None:Recife Mariners x Bulls Potiguares	1	[{"added": {}}]	19	2
318	2018-10-22 17:49:22.143869+00	89	None:João Pessoa Espectros x Ceará Caçadores	1	[{"added": {}}]	19	2
319	2018-10-22 17:49:36.385533+00	82	None:João Pessoa Espectros x Ceará Caçadores	3		19	2
320	2018-10-22 17:49:36.391308+00	81	None:Recife Mariners x Bulls Potiguares	3		19	2
321	2018-10-22 17:49:51.689488+00	90	None:Timbó Rex x Santa Maria Soldiers	1	[{"added": {}}]	19	2
322	2018-10-22 17:50:02.377697+00	91	None:Coritiba Crocodiles x Paraná HP	1	[{"added": {}}]	19	2
323	2018-10-22 17:50:14.700938+00	92	None:Tubarões do Cerrado x Leões de Judá	1	[{"added": {}}]	19	2
324	2018-10-22 17:50:23.902014+00	93	None:Sorriso Hornets x Cuiabá Arsenal	1	[{"added": {}}]	19	2
325	2018-10-22 17:50:41.941047+00	94	None:Galo x Botafogo Reptiles	1	[{"added": {}}]	19	2
326	2018-10-22 17:50:49.949248+00	95	None:Tritões x América Locomotiva	1	[{"added": {}}]	19	2
327	2018-10-22 17:52:48.95589+00	12	Bulls Potiguares	2	[{"changed": {"fields": ["foundation"]}}]	15	2
328	2018-10-22 17:53:30.954205+00	1	América Locomotiva	2	[{"changed": {"fields": ["foundation"]}}]	15	2
329	2018-10-22 17:54:50.451469+00	16	Cavalaria 2 de Julho	2	[{"changed": {"fields": ["foundation"]}}]	15	2
330	2018-10-22 17:55:19.150776+00	17	Ceará Caçadores	2	[{"changed": {"fields": ["foundation"]}}]	15	2
331	2018-10-22 17:56:39.988272+00	20	Corinthians Steamrollers	2	[{"changed": {"fields": ["foundation"]}}]	15	2
332	2018-10-22 17:57:36.865673+00	21	Coritiba Crocodiles	2	[{"changed": {"fields": ["foundation"]}}]	15	2
333	2018-10-22 18:00:50.741917+00	20	Corinthians Steamrollers	2	[{"changed": {"fields": ["foundation"]}}]	15	2
334	2018-10-22 18:01:31.955298+00	9	Botafogo Reptiles	2	[{"changed": {"fields": ["foundation"]}}]	15	2
335	2018-10-22 18:02:29.753019+00	24	Cuiabá Arsenal	2	[{"changed": {"fields": ["foundation"]}}]	15	2
336	2018-10-22 18:05:46.019955+00	33	Jaraguá Breakers	2	[{"changed": {"fields": ["foundation"]}}]	15	2
337	2018-10-22 18:06:09.84026+00	34	João Pessoa Espectros	2	[{"changed": {"fields": ["foundation"]}}]	15	2
338	2018-10-22 18:07:35.30388+00	30	Galo	2	[{"changed": {"fields": ["foundation"]}}]	15	2
339	2018-10-22 18:10:35.476895+00	36	Leões de Judá	2	[{"changed": {"fields": ["foundation"]}}]	15	2
340	2018-10-22 18:11:45.723656+00	45	Natal Scorpions	2	[{"changed": {"fields": ["foundation"]}}]	15	2
341	2018-10-22 18:12:12.99719+00	13	Campo Grande Predadores	2	[{"changed": {"fields": ["foundation"]}}]	15	2
342	2018-10-22 18:14:56.259703+00	56	Recife Mariners	2	[{"changed": {"fields": ["foundation"]}}]	15	2
343	2018-10-22 18:16:04.251678+00	63	Santa Maria Soldiers	2	[{"changed": {"fields": ["foundation"]}}]	15	2
344	2018-10-22 18:16:54.462778+00	64	São José Istepôs	2	[{"changed": {"fields": ["foundation"]}}]	15	2
345	2018-10-22 18:17:34.467706+00	67	São Paulo Storm	2	[{"changed": {"fields": ["foundation"]}}]	15	2
346	2018-10-22 18:20:44.245055+00	73	Timbó Rex	2	[{"changed": {"fields": ["foundation"]}}]	15	2
347	2018-10-22 18:21:16.370002+00	74	Tritões	2	[{"changed": {"fields": ["foundation"]}}]	15	2
348	2018-10-22 18:21:58.564576+00	76	Tubarões do Cerrado	2	[{"changed": {"fields": ["foundation"]}}]	15	2
349	2018-10-22 18:22:32.237953+00	78	Ufersa Petroleiros	2	[{"changed": {"fields": ["foundation"]}}]	15	2
350	2018-10-22 18:28:39.558715+00	79	Vasco da Gama Patriotas	2	[{"changed": {"fields": ["foundation"]}}]	15	2
351	2018-10-22 18:29:44.817927+00	10	Brasília Templários	2	[{"changed": {"fields": ["foundation"]}}]	15	2
352	2018-10-22 18:35:39.925347+00	50	Paraná HP	2	[{"changed": {"fields": ["foundation"]}}]	15	2
353	2018-10-23 16:49:40.407654+00	75	Tropa Campina	2	[{"changed": {"fields": ["foundation"]}}]	15	2
354	2018-10-23 16:50:14.785722+00	71	Sorriso Hornets	2	[{"changed": {"fields": ["foundation"]}}]	15	2
355	2018-10-23 17:14:23.171437+00	35	Juventude	2	[{"changed": {"fields": ["foundation"]}}]	15	2
356	2018-10-23 17:39:51.438724+00	12	Bulls Potiguares	2	[{"changed": {"fields": ["foundation"]}}]	15	2
357	2018-10-23 19:01:26.897317+00	Semana 9 (15 e 16/099)	Rodada Semana 9 (15 e 16/099) da BFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	2
358	2018-10-23 19:01:37.854151+00	Semana 9 (15 e 16/099)	Rodada Semana 9 (15 e 16/099) da BFA 2018	3		20	2
359	2018-10-23 21:48:56.47299+00	Semana 9 (15 e 17/09)	Rodada Semana 9 (15 e 17/09) da BFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	1
360	2018-10-23 21:49:34.687765+00	63	Santa Maria Soldiers	2	[]	15	2
361	2018-10-23 21:49:47.044952+00	Semana 9 (15 e 17/09)	Rodada Semana 9 (15 e 17/09) da BFA 2018	3		20	1
362	2018-10-23 22:47:36.319264+00	16	Everaldo Marques comenta sobre NFL no Brasil e unificação de campeonatos no FABR	2	[{"changed": {"fields": ["text", "tag"]}}]	12	2
363	2018-10-23 22:49:14.670185+00	16	Everaldo Marques comenta sobre NFL no Brasil e unificação de campeonatos no FABR	2	[{"changed": {"fields": ["text"]}}]	12	2
364	2018-10-24 16:22:38.826987+00	1	América Locomotiva	2	[{"changed": {"fields": ["logo"]}}]	15	2
365	2018-10-24 16:23:44.327379+00	7	Black Hawks	2	[{"changed": {"fields": ["logo"]}}]	15	2
366	2018-10-24 16:25:46.432668+00	14	Carrancas	2	[{"changed": {"fields": ["logo"]}}]	15	2
367	2018-10-24 16:26:40.769105+00	17	Ceará Caçadores	2	[{"changed": {"fields": ["logo"]}}]	15	2
368	2018-10-24 16:27:24.748137+00	18	Challengers	2	[{"changed": {"fields": ["logo"]}}]	15	2
369	2018-10-24 16:28:40.840808+00	29	Galaxy	2	[{"changed": {"fields": ["logo"]}}]	15	2
370	2018-10-24 16:29:22.589299+00	31	Goiânia Saints	2	[{"changed": {"fields": ["logo"]}}]	15	2
371	2018-10-24 16:30:03.665372+00	32	Ijuí Drones	2	[{"changed": {"fields": ["logo"]}}]	15	2
372	2018-10-24 16:30:45.807728+00	37	Lobos Guerreiros	2	[{"changed": {"fields": ["logo"]}}]	15	2
373	2018-10-24 16:32:29.367274+00	38	Macaé Oilers	2	[{"changed": {"fields": ["logo"]}}]	15	2
374	2018-10-24 16:33:17.49589+00	39	Maceió Marechais	2	[{"changed": {"fields": ["logo"]}}]	15	2
375	2018-10-24 16:33:57.586749+00	40	Manaus Broncos	2	[{"changed": {"fields": ["logo"]}}]	15	2
376	2018-10-24 16:34:52.973661+00	41	Manaus Cavaliers	2	[{"changed": {"fields": ["logo"]}}]	15	2
377	2018-10-24 16:35:33.218512+00	42	Manaus Raptors	2	[{"changed": {"fields": ["logo"]}}]	15	2
378	2018-10-24 16:36:11.206835+00	43	Maringá Pyros	2	[{"changed": {"fields": ["logo"]}}]	15	2
379	2018-10-24 16:36:41.871422+00	44	Mooca Destroyers	2	[{"changed": {"fields": ["logo"]}}]	15	2
380	2018-10-24 16:37:14.653005+00	45	Natal Scorpions	2	[{"changed": {"fields": ["logo"]}}]	15	2
381	2018-10-24 16:37:47.554883+00	46	North Lions	2	[{"changed": {"fields": ["logo"]}}]	15	2
382	2018-10-24 16:38:15.794565+00	47	Nova Serrana Forgeds	2	[{"changed": {"fields": ["logo"]}}]	15	2
383	2018-10-24 16:38:47.977181+00	48	Olinda Sharks	2	[{"changed": {"fields": ["logo"]}}]	15	2
384	2018-10-24 16:39:19.893753+00	49	Palmeiras Locomotives	2	[{"changed": {"fields": ["logo"]}}]	15	2
385	2018-10-24 16:39:56.510641+00	51	Paysandu Lobos	2	[{"changed": {"fields": ["logo"]}}]	15	2
386	2018-10-24 16:40:30.478118+00	52	Porto Alegre Gorillas	2	[{"changed": {"fields": ["logo"]}}]	15	2
387	2018-10-24 16:41:09.767237+00	54	Pouso Alegre Gladiadores	2	[{"changed": {"fields": ["logo"]}}]	15	2
388	2018-10-24 16:47:22.862975+00	81	Volta Redonda Falcons	2	[{"changed": {"fields": ["logo"]}}]	15	2
389	2018-10-24 16:47:54.595619+00	55	Recife Apaches	2	[{"changed": {"fields": ["logo"]}}]	15	2
390	2018-10-24 16:48:27.951759+00	56	Recife Mariners	2	[{"changed": {"fields": ["logo"]}}]	15	2
391	2018-10-24 16:48:56.240649+00	57	Recife Vikings	2	[{"changed": {"fields": ["logo"]}}]	15	2
392	2018-10-24 16:49:26.115688+00	58	Remo Lions	2	[{"changed": {"fields": ["logo"]}}]	15	2
393	2018-10-24 16:49:53.741752+00	59	Roma Gladiadores	2	[{"changed": {"fields": ["logo"]}}]	15	2
394	2018-10-24 16:50:35.571184+00	60	Rondonópolis Hawks	2	[{"changed": {"fields": ["logo"]}}]	15	2
395	2018-10-24 16:51:08.922641+00	61	Santa Cruz Chacais	2	[{"changed": {"fields": ["logo"]}}]	15	2
396	2018-10-24 16:51:45.791867+00	62	Santa Cruz Pirates	2	[{"changed": {"fields": ["logo"]}}]	15	2
397	2018-10-24 16:52:51.902588+00	65	São Luís Sharks	2	[{"changed": {"fields": ["logo"]}}]	15	2
398	2018-10-24 16:53:23.031543+00	66	São Paulo Monsters	2	[{"changed": {"fields": ["logo"]}}]	15	2
399	2018-10-24 16:54:08.486696+00	68	Sergipe Redentores	2	[{"changed": {"fields": ["logo"]}}]	15	2
400	2018-10-24 16:54:34.568169+00	69	Sinop Coyotes	2	[{"changed": {"fields": ["logo"]}}]	15	2
401	2018-10-24 16:55:11.529557+00	70	Sorocaba Vipers	2	[{"changed": {"fields": ["logo"]}}]	15	2
402	2018-10-24 16:55:40.134934+00	72	Spartans	2	[{"changed": {"fields": ["logo"]}}]	15	2
403	2018-10-24 16:56:16.190288+00	77	Tupinambás	2	[{"changed": {"fields": ["logo"]}}]	15	2
404	2018-10-24 16:56:50.360882+00	80	Vingadores	2	[{"changed": {"fields": ["logo"]}}]	15	2
405	2018-10-25 23:45:51.48241+00	1	América Locomotiva	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
406	2018-10-25 23:46:53.699248+00	2	Arcoverde Templários	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
407	2018-10-25 23:47:37.211636+00	3	Armada	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
408	2018-10-25 23:59:48.647938+00	4	Belém Titans	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
409	2018-10-26 00:00:21.959899+00	5	Bento Gonçalves Snakes	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
410	2018-10-26 00:00:48.549953+00	6	Betim Bulldogs	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
411	2018-10-26 00:01:14.043842+00	7	Black Hawks	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
412	2018-10-26 00:02:49.40532+00	8	Blaze	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
413	2018-10-26 00:03:49.758875+00	9	Botafogo Reptiles	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
414	2018-10-26 00:04:29.331627+00	10	Brasília Templários	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
1019	2019-02-23 01:29:10.813433+00	7	SLN 2011	3		21	2
415	2018-10-26 00:04:52.075424+00	11	Brown Spiders	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
416	2018-10-26 00:05:18.596977+00	12	Bulls Potiguares	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
417	2018-10-26 00:10:21.659575+00	13	Campo Grande Predadores	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
418	2018-10-26 00:10:43.638058+00	14	Carrancas	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
419	2018-10-26 00:11:07.286923+00	15	Caruaru Wolves	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
420	2018-10-26 00:11:45.282873+00	16	Cavalaria 2 de Julho	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
421	2018-10-26 00:12:05.493521+00	17	Ceará Caçadores	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
422	2018-10-26 00:12:28.359439+00	18	Challengers	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
423	2018-10-26 00:13:00.094539+00	19	Contagem Incofidentes	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
424	2018-10-26 00:14:53.859276+00	20	Corinthians Steamrollers	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
425	2018-10-26 00:15:32.042495+00	21	Coritiba Crocodiles	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
426	2018-10-26 00:16:04.055157+00	22	Corupá Búffalos	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
427	2018-10-26 00:16:41.756888+00	23	CSA Guerreiros	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
428	2018-10-26 00:17:29.220718+00	24	Cuiabá Arsenal	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
429	2018-10-26 00:18:08.972734+00	25	Dark Owls	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
430	2018-10-26 00:18:34.234077+00	26	Espírito Santo Black Knights	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
431	2018-10-26 00:18:56.242959+00	27	Flamengo Imperadores	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
432	2018-10-26 00:19:23.757689+00	28	Foz do Iguaçu Black Sharks	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
433	2018-10-26 00:20:09.463934+00	29	Sinop Galaxy	2	[{"changed": {"fields": ["name", "facebook", "instagram"]}}]	15	2
434	2018-10-26 00:20:31.93294+00	30	Galo	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
435	2018-10-26 00:21:16.103739+00	31	Goiânia Saints	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
436	2018-10-26 00:21:39.559086+00	32	Ijuí Drones	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
437	2018-10-26 00:22:40.949817+00	33	Jaraguá Breakers	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
438	2018-10-26 00:23:03.863623+00	34	João Pessoa Espectros	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
439	2018-10-26 00:23:48.715489+00	35	Juventude	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
440	2018-10-26 00:24:16.916135+00	36	Leões de Judá	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
441	2018-10-26 00:24:47.605789+00	37	Lobos Guerreiros	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
442	2018-10-26 00:25:11.860282+00	38	Macaé Oilers	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
443	2018-10-26 00:25:48.727127+00	39	Maceió Marechais	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
444	2018-10-26 00:26:21.588689+00	40	Manaus Broncos	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
445	2018-10-26 00:26:52.420429+00	41	Manaus Cavaliers	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
446	2018-10-26 00:27:17.16939+00	42	Manaus Raptors	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
447	2018-10-26 00:28:56.207667+00	43	Maringá Pyros	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
448	2018-10-26 00:29:20.077882+00	44	Mooca Destroyers	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
449	2018-10-26 00:29:47.2865+00	45	Natal Scorpions	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
450	2018-10-26 00:30:17.520531+00	46	North Lions	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
451	2018-10-26 00:30:54.412426+00	47	Nova Serrana Forgeds	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
452	2018-10-26 00:31:46.161425+00	48	Olinda Sharks	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
453	2018-10-26 00:32:12.482071+00	49	Palmeiras Locomotives	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
454	2018-10-26 00:32:39.847065+00	50	Paraná HP	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
455	2018-10-26 00:33:20.487002+00	51	Paysandu Lobos	2	[{"changed": {"fields": ["shortName", "facebook", "instagram"]}}]	15	2
456	2018-10-26 00:33:44.280496+00	52	Porto Alegre Gorillas	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
457	2018-10-26 00:34:10.173036+00	53	Portuguesa	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
458	2018-10-26 00:34:40.848253+00	54	Pouso Alegre Gladiadores	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
459	2018-10-26 00:36:22.716944+00	55	Recife Apaches	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
460	2018-10-26 00:36:47.126181+00	56	Recife Mariners	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
461	2018-10-26 00:37:15.249237+00	57	Recife Vikings	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
462	2018-10-26 00:37:41.150016+00	58	Remo Lions	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
463	2018-10-26 00:38:04.309739+00	59	Roma Gladiadores	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
464	2018-10-26 00:38:30.977183+00	60	Rondonópolis Hawks	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
465	2018-10-26 00:42:24.238912+00	81	Volta Redonda Falcons	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
466	2018-10-26 00:42:55.665393+00	61	Santa Cruz Chacais	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
467	2018-10-26 00:43:24.365498+00	62	Santa Cruz Pirates	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
468	2018-10-26 00:43:46.314193+00	63	Santa Maria Soldiers	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
469	2018-10-26 00:44:06.597322+00	64	São José Istepôs	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
470	2018-10-26 00:44:33.042108+00	65	São Luís Sharks	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
471	2018-10-26 00:45:03.484918+00	66	São Paulo Monsters	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
472	2018-10-26 00:45:40.28286+00	67	São Paulo Storm	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
473	2018-10-26 00:46:45.49699+00	68	Sergipe Redentores	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
474	2018-10-26 00:47:08.783604+00	69	Sinop Coyotes	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
475	2018-10-26 00:47:30.250934+00	70	Sorocaba Vipers	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
818	2018-11-01 23:54:57.041974+00	146	Piracicaba Cane Cutters	1	[{"added": {}}]	15	3
476	2018-10-26 00:47:55.397815+00	71	Sorriso Hornets	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
477	2018-10-26 00:48:25.178936+00	72	Spartans	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
478	2018-10-26 00:48:45.886546+00	73	Timbó Rex	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
479	2018-10-26 00:49:11.347076+00	74	Tritões	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
480	2018-10-26 00:49:33.080566+00	75	Tropa Campina	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
481	2018-10-26 00:49:56.388165+00	76	Tubarões do Cerrado	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
482	2018-10-26 00:50:27.299232+00	77	Tupinambás	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
483	2018-10-26 00:50:51.142613+00	78	Ufersa Petroleiros	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
484	2018-10-26 00:51:22.899963+00	79	Vasco da Gama Patriotas	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
485	2018-10-26 00:51:46.695006+00	80	Vingadores	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	15	2
486	2018-10-26 00:53:05.930049+00	3	LNFA 2018	1	[{"added": {}}]	21	2
487	2018-10-26 00:56:04.889573+00	5	Norte da LNFA 2018	1	[{"added": {}}]	17	2
488	2018-10-26 00:58:46.817534+00	6	Sul da LNFA 2018	1	[{"added": {}}]	17	2
489	2018-10-26 00:59:16.51179+00	7	Sudeste da LNFA 2018	1	[{"added": {}}]	17	2
490	2018-10-26 00:59:28.373628+00	8	Centro-Oeste da LNFA 2018	1	[{"added": {}}]	17	2
491	2018-10-26 01:01:05.88915+00	7	Grupo Único - LNFA 2018	1	[{"added": {}}]	18	2
492	2018-10-26 01:01:25.481919+00	2	Grupo Único - BFA 2018	2	[]	18	2
493	2018-10-26 01:02:23.550519+00	8	Grupo 1 - LNFA 2018	1	[{"added": {}}]	18	2
494	2018-10-26 01:02:37.670202+00	7	Grupo Único - LNFA 2018	2	[{"changed": {"fields": ["playoffs"]}}]	18	2
495	2018-10-26 01:03:11.118856+00	9	Grupo 2 - LNFA 2018	1	[{"added": {}}]	18	2
496	2018-10-26 01:03:45.760076+00	10	Grupo 1 - LNFA 2018	1	[{"added": {}}]	18	2
497	2018-10-26 01:04:16.860263+00	11	Grupo 2 - LNFA 2018	1	[{"added": {}}]	18	2
498	2018-10-26 01:05:07.682108+00	12	Grupo 3 - LNFA 2018	1	[{"added": {}}]	18	2
499	2018-10-26 01:05:36.433378+00	13	Grupo 1 - LNFA 2018	1	[{"added": {}}]	18	2
500	2018-10-26 01:06:06.603853+00	14	Grupo 2 - LNFA 2018	1	[{"added": {}}]	18	2
501	2018-10-26 01:06:37.068215+00	15	Grupo 3 - LNFA 2018	1	[{"added": {}}]	18	2
502	2018-10-26 01:07:05.070711+00	16	Grupo 4 - LNFA 2018	1	[{"added": {}}]	18	2
503	2018-10-26 02:05:43.492693+00	82	Operário Gravediggers	1	[{"added": {}}]	15	2
504	2018-10-26 02:06:18.234975+00	7	Grupo Único - LNFA 2018	2	[{"changed": {"fields": ["teams"]}}]	18	2
505	2018-10-26 02:07:44.952911+00	Semana 13 (29 e 30/10)	Rodada Semana 13 (29 e 30/10) da LNFA 2018	1	[{"added": {}}]	20	2
506	2018-10-26 02:09:08.030891+00	Semana 12 (23 e 23/09)	Rodada Semana 12 (23 e 23/09) da LNFA 2018	1	[{"added": {}}]	20	2
507	2018-10-26 02:09:39.649399+00	Semana 11 (15 e 16/09)	Rodada Semana 11 (15 e 16/09) da LNFA 2018	1	[{"added": {}}]	20	2
508	2018-10-26 02:10:21.160427+00	Semana 10 (08 e 09/09)	Rodada Semana 10 (08 e 09/09) da LNFA 2018	1	[{"added": {}}]	20	2
509	2018-10-26 02:11:14.447937+00	Semana 9 (01 e 02/09)	Rodada Semana 9 (01 e 02/09) da LNFA 2018	1	[{"added": {}}]	20	2
510	2018-10-26 02:12:02.852127+00	Semana 8 (25 e 26/08)	Rodada Semana 8 (25 e 26/08) da LNFA 2018	1	[{"added": {}}]	20	2
511	2018-10-26 02:12:55.336858+00	Semana 7 (18 e 19/08)	Rodada Semana 7 (18 e 19/08) da LNFA 2018	1	[{"added": {}}]	20	2
512	2018-10-26 02:13:43.299696+00	Semana 6 (11 e 12/08)	Rodada Semana 6 (11 e 12/08) da LNFA 2018	1	[{"added": {}}]	20	2
513	2018-10-26 02:14:19.224495+00	Semana 5 (04 e 05/08)	Rodada Semana 5 (04 e 05/08) da LNFA 2018	1	[{"added": {}}]	20	2
514	2018-10-26 02:14:54.395849+00	Semana 4 (28 e 29/07)	Rodada Semana 4 (28 e 29/07) da LNFA 2018	1	[{"added": {}}]	20	2
515	2018-10-26 02:15:27.378858+00	Semana 3 (21 e 22/07)	Rodada Semana 3 (21 e 22/07) da LNFA 2018	1	[{"added": {}}]	20	2
516	2018-10-26 02:17:11.505595+00	Semana 2 (07 e 08/07)	Rodada Semana 2 (07 e 08/07) da LNFA 2018	1	[{"added": {}}]	20	2
517	2018-10-26 02:17:37.476725+00	Semana 1 (30/06 e 01/07)	Rodada Semana 1 (30/06 e 01/07) da LNFA 2018	1	[{"added": {}}]	20	2
518	2018-10-26 02:18:12.962782+00	Wildcard	Rodada Wildcard da LNFA 2018	1	[{"added": {}}]	20	2
519	2018-10-26 02:18:50.644397+00	Oitavas de Final (Semifinais de Conferência)	Rodada Oitavas de Final (Semifinais de Conferência) da LNFA 2018	1	[{"added": {}}]	20	2
520	2018-10-26 02:19:02.602199+00	Quartas de Final (Finais de Conferência)	Rodada Quartas de Final (Finais de Conferência) da LNFA 2018	1	[{"added": {}}]	20	2
521	2018-10-26 02:19:18.748915+00	Semifinal (Semifinais Nacionais)	Rodada Semifinal (Semifinais Nacionais) da LNFA 2018	1	[{"added": {}}]	20	2
522	2018-10-26 02:19:28.0046+00	Final (Nacional Bowl)	Rodada Final (Nacional Bowl) da LNFA 2018	1	[{"added": {}}]	20	2
523	2018-10-26 03:13:02.103375+00	105	Juiz de Fora - MG	1	[{"added": {}}]	8	2
524	2018-10-26 03:19:04.702+00	83	Juiz de Fora Imperadores	1	[{"added": {}}]	15	2
525	2018-10-26 03:20:28.949365+00	84	Goiânia Rednecks	1	[{"added": {}}]	15	2
526	2018-10-26 03:21:55.756132+00	85	Curitiba Lions	1	[{"added": {}}]	15	2
527	2018-10-26 03:24:20.572075+00	86	Uberaba Zebus	1	[{"added": {}}]	15	2
528	2018-10-26 03:25:59.66103+00	87	Criciúma Miners	1	[{"added": {}}]	15	2
529	2018-10-27 03:48:53.121363+00	94	Taquaritinga - SP	2	[{"changed": {"fields": ["name"]}}]	8	2
530	2018-10-27 17:14:47.488708+00	João Pessoa Espectros	João Pessoa Espectros	1	[{"added": {}}]	22	2
531	2018-10-27 17:14:56.103627+00	21	Espectros anuncia Heron Azevedo, ex-Cuiabá Arsenal	1	[{"added": {}}]	12	2
532	2018-10-27 17:16:07.7022+00	Ceará Caçadores	Ceará Caçadores	1	[{"added": {}}]	22	2
533	2018-10-27 17:16:13.41533+00	Contratação	Contratação	1	[{"added": {}}]	22	2
534	2018-10-27 17:17:50.695312+00	22	Mike Lima é o novo head coach do Ceará Caçadores	1	[{"added": {}}]	12	2
535	2018-10-27 17:18:06.0136+00	19	João Pessoa Espectros anuncia contratação do americano Jeron Jones	2	[{"changed": {"fields": ["tag"]}}]	12	2
536	2018-10-27 17:18:29.06578+00	21	Espectros anuncia Heron Azevedo, ex-Cuiabá Arsenal	2	[{"changed": {"fields": ["tag"]}}]	12	2
537	2018-10-27 17:20:28.406041+00	23	Recife Pirates acerta com o runningback Sanchez Holder	1	[{"added": {}}]	12	2
538	2018-10-27 17:22:17.717651+00	24	Americano Phil Avalos é o novo head coach do Recife Pirates	1	[{"added": {}}]	12	2
539	2018-10-27 17:24:42.684141+00	25	Ceará Caçadores anuncia wide receiver gringo para Superliga	1	[{"added": {}}]	12	2
540	2018-10-27 17:26:32.644499+00	Ufersa Petroleiros	Ufersa Petroleiros	1	[{"added": {}}]	22	2
541	2018-10-27 17:26:50.086932+00	26	Ufersa Petroleiros contrata dois americanos visando a Superliga	1	[{"added": {}}]	12	2
542	2018-10-27 17:29:22.388755+00	Cuiabá Arsenal	Cuiabá Arsenal	1	[{"added": {}}]	22	2
543	2018-10-27 17:29:27.240824+00	27	Cuiabá Arsenal anuncia quarterback americano	1	[{"added": {}}]	12	2
544	2018-10-27 17:30:59.445966+00	São Paulo Storm	São Paulo Storm	1	[{"added": {}}]	22	2
545	2018-10-27 17:31:08.068237+00	28	De olho na Suprliga, Storm anuncia runningback gringo	1	[{"added": {}}]	12	2
546	2018-10-27 17:35:26.378752+00	29	CBFA confirma LNFA com 33 times e divulga formato de disputa	1	[{"added": {}}]	12	2
547	2018-10-27 17:38:58.612381+00	30	NX Zero fará show na abertura da Superliga na Arena Pantanal‏	1	[{"added": {}}]	12	2
548	2018-10-27 17:51:09.76411+00	Sergipe Redentores	Sergipe Redentores	1	[{"added": {}}]	22	2
549	2018-10-27 17:51:15.075302+00	31	Sem verba, Sergipe Redentores desiste da Conferência Nordeste	1	[{"added": {}}]	12	2
550	2018-10-27 17:53:12.544038+00	32	Conheça Andrew Griffin, o novo quarterback do Recife Pirates	1	[{"added": {}}]	12	2
551	2018-10-27 17:55:42.355937+00	Recife Mariners	Recife Mariners	1	[{"added": {}}]	22	2
552	2018-10-27 17:55:47.069325+00	33	Após duas temporadas, Recife Mariners tem novo quarterback	1	[{"added": {}}]	12	2
553	2018-10-27 18:22:52.04619+00	96	None:Challengers x Contagem Incofidentes	1	[{"added": {}}]	19	2
554	2018-10-27 18:23:13.78958+00	97	None:Nova Serrana Forgeds x Pouso Alegre Gladiadores	1	[{"added": {}}]	19	2
555	2018-10-27 18:23:28.960595+00	98	None:Maringá Pyros x Ijuí Drones	1	[{"added": {}}]	19	2
556	2018-10-27 18:23:45.549167+00	99	None:Santa Cruz Chacais x Armada	1	[{"added": {}}]	19	2
557	2018-10-27 18:24:11.746235+00	100	None:Volta Redonda Falcons x Betim Bulldogs	1	[{"added": {}}]	19	2
558	2018-10-27 18:24:35.702559+00	101	None:Macaé Oilers x São Paulo Monsters	1	[{"added": {}}]	19	2
559	2018-10-27 18:25:07.091836+00	102	None:Vingadores x Belém Titans	1	[{"added": {}}]	19	2
560	2018-10-27 18:25:32.469343+00	103	None:Challengers x Pouso Alegre Gladiadores	1	[{"added": {}}]	19	2
561	2018-10-27 18:26:18.977795+00	104	None:Manaus Cavaliers x North Lions	1	[{"added": {}}]	19	2
562	2018-10-27 18:26:43.752029+00	105	None:Black Hawks x Armada	1	[{"added": {}}]	19	2
563	2018-10-27 18:27:02.891368+00	106	None:Porto Alegre Gorillas x Maringá Pyros	1	[{"added": {}}]	19	2
564	2018-10-27 18:27:16.29664+00	107	None:Macaé Oilers x Volta Redonda Falcons	1	[{"added": {}}]	19	2
565	2018-10-27 18:29:12.849119+00	89	None:João Pessoa Espectros x Ceará Caçadores	2	[{"changed": {"fields": ["week"]}}]	19	2
566	2018-10-27 18:30:17.441331+00	105	None:Black Hawks x Armada	2	[{"changed": {"fields": ["week"]}}]	19	2
567	2018-10-27 18:31:22.419288+00	108	None:João Pessoa Espectros x Recife Mariners	1	[{"added": {}}]	19	2
568	2018-10-27 18:32:26.16308+00	109	None:Rondonópolis Hawks x Sinop Coyotes	1	[{"added": {}}]	19	2
569	2018-10-27 18:32:40.717966+00	110	None:Black Hawks x Porto Alegre Gorillas	1	[{"added": {}}]	19	2
570	2018-10-27 18:33:00.564239+00	111	None:Vingadores x Manaus Cavaliers	1	[{"added": {}}]	19	2
571	2018-10-27 18:37:24.702433+00	107	None:Macaé Oilers x Volta Redonda Falcons	2	[{"changed": {"fields": ["scoreA", "scoreB"]}}]	19	2
572	2018-10-27 18:37:38.325316+00	112	None:Challengers x Macaé Oilers	1	[{"added": {}}]	19	2
573	2018-10-27 22:09:23.890734+00	1	Wide Receiver	1	[{"added": {}}]	14	1
574	2018-10-27 22:09:32.124762+00	2	Quarterback	1	[{"added": {}}]	14	1
575	2018-10-27 22:09:44.950767+00	3	Running Back	1	[{"added": {}}]	14	1
576	2018-10-27 22:09:54.354217+00	4	Fullback	1	[{"added": {}}]	14	1
577	2018-10-27 22:10:02.71912+00	5	Center	1	[{"added": {}}]	14	1
578	2018-10-27 22:10:11.8395+00	6	Offensive Tackle	1	[{"added": {}}]	14	1
579	2018-10-27 22:10:19.395693+00	7	Offensive Guard	1	[{"added": {}}]	14	1
580	2018-10-27 22:10:24.636804+00	8	Tight End	1	[{"added": {}}]	14	1
581	2018-10-27 22:10:37.388586+00	9	Kicker	1	[{"added": {}}]	14	1
582	2018-10-27 22:10:43.674366+00	10	Punter	1	[{"added": {}}]	14	1
583	2018-10-27 22:11:05.542507+00	11	Long Snapper	1	[{"added": {}}]	14	1
584	2018-10-27 22:11:22.619894+00	12	Defensive Tackle	1	[{"added": {}}]	14	1
585	2018-10-27 22:11:27.82181+00	13	Defensive End	1	[{"added": {}}]	14	1
586	2018-10-27 22:11:36.656282+00	14	Linebacker	1	[{"added": {}}]	14	1
587	2018-10-27 22:11:44.675642+00	15	Cornerback	1	[{"added": {}}]	14	1
588	2018-10-27 22:11:50.80867+00	16	Strong Safety	1	[{"added": {}}]	14	1
589	2018-10-27 22:11:55.792374+00	17	Free Safety	1	[{"added": {}}]	14	1
590	2018-10-27 22:12:05.843785+00	18	Punt Returner	1	[{"added": {}}]	14	1
591	2018-10-27 22:12:15.457062+00	19	Kick Returner	1	[{"added": {}}]	14	1
592	2018-10-27 23:12:11.33278+00	12	Recife Mariners perde decisão da Conferência Nordeste na Arena Pernambuco	2	[{"changed": {"fields": ["title", "tagChampionship", "tagTeam"]}}]	12	2
593	2018-10-27 23:15:42.329545+00	34	Ex-Mariners, Drew Banks acerta com Crocodiles para Superliga	1	[{"added": {}}]	12	2
594	2018-10-27 23:17:41.729794+00	35	Ceará Caçadores contrata mais um receiver americano	1	[{"added": {}}]	12	2
595	2018-10-27 23:19:26.109436+00	36	Juventude acerta o retorno do wide receiver Diego Oliveira	1	[{"added": {}}]	12	2
596	2018-10-28 00:18:56.428027+00	20	Outside Linebacker	1	[{"added": {}}]	14	1
597	2018-10-28 00:19:02.605428+00	21	Middle Linebacker	1	[{"added": {}}]	14	1
598	2018-10-28 00:20:38.559299+00	1	Teste	1	[{"added": {}}]	13	1
599	2018-10-28 00:34:29.123855+00	1	Teste	3		13	1
600	2018-10-28 01:48:37.88621+00	2	Teste	1	[{"added": {}}]	13	1
601	2018-10-28 01:48:43.291346+00	2	Teste	2	[{"changed": {"fields": ["birthdate"]}}]	13	1
602	2018-10-28 01:49:18.229109+00	2	Teste	3		13	1
603	2018-10-28 02:09:41.326808+00	9	Abraão Coelho Figueiredo Carvalho	2	[{"changed": {"fields": ["photo"]}}]	13	1
604	2018-10-30 01:28:12.871283+00	37	Ônibus do Vitória é assaltado à caminho de Recife	1	[{"added": {}}]	12	2
605	2018-10-30 01:32:04.129411+00	38	Timbó Rex apresenta projeto do primeiro estádio de futebol americano do Brasil	1	[{"added": {}}]	12	2
606	2018-10-30 01:34:58.647775+00	39	Superliga Nacional mostra que gringos são apenas a cereja do bolo	1	[{"added": {}}]	12	2
607	2018-10-30 01:38:42.404266+00	40	Head Coach do Brasil Onças avalia temporada da Superliga Nacional	1	[{"added": {}}]	12	2
608	2018-10-30 01:41:07.405749+00	41	Drew Hill desembarca em Timbó e se reapresenta ao Rex	1	[{"added": {}}]	12	2
609	2018-10-30 01:42:49.78093+00	42	Special teams: o detalhe que faria a diferença na Superliga Nacional	1	[{"added": {}}]	12	2
610	2018-10-30 01:47:18.582661+00	43	CBFA faz teste de transmissão para TV fechada visando 2017	1	[{"added": {}}]	12	2
611	2018-10-30 01:49:23.428824+00	44	Top 30: O ranking geral da Superliga Nacional	1	[{"added": {}}]	12	2
612	2018-10-30 01:50:11.591334+00	44	Top 30: O ranking geral da Superliga Nacional	2	[{"changed": {"fields": ["text"]}}]	12	2
613	2018-10-30 01:52:39.921131+00	45	No Brasil, Futebol Americano já tem 77% da média de público do Basquete e 50% do Vôlei	1	[{"added": {}}]	12	2
614	2018-10-30 01:52:55.220836+00	45	No Brasil, Futebol Americano já tem 77% da média de público do Basquete e 50% do Vôlei	2	[{"changed": {"fields": ["text"]}}]	12	2
615	2018-10-30 18:59:57.040164+00	113	None:Vingadores x Belém Titans	1	[{"added": {}}]	19	2
616	2018-10-30 19:00:17.162749+00	114	None:Sinop Galaxy x Rondonópolis Hawks	1	[{"added": {}}]	19	2
617	2018-10-30 19:00:33.782335+00	115	None:Remo Lions x Tupinambás	1	[{"added": {}}]	19	2
618	2018-10-30 19:00:53.605316+00	116	None:Palmeiras Locomotives x Volta Redonda Falcons	1	[{"added": {}}]	19	2
619	2018-10-30 19:01:22.113542+00	117	None:Nova Serrana Forgeds x Pouso Alegre Gladiadores	1	[{"added": {}}]	19	2
620	2018-10-30 19:01:40.343119+00	118	None:Ijuí Drones x Foz do Iguaçu Black Sharks	1	[{"added": {}}]	19	2
621	2018-10-30 19:01:57.293116+00	119	None:Brown Spiders x Maringá Pyros	1	[{"added": {}}]	19	2
622	2018-10-30 19:02:18.048214+00	120	None:Sorocaba Vipers x São Paulo Monsters	1	[{"added": {}}]	19	2
623	2018-10-30 19:02:39.993305+00	121	None:Betim Bulldogs x Spartans	1	[{"added": {}}]	19	2
624	2018-10-30 19:03:02.745845+00	122	None:Contagem Incofidentes x Dark Owls	1	[{"added": {}}]	19	2
625	2018-10-30 19:03:18.171119+00	123	None:Santa Cruz Chacais x Bento Gonçalves Snakes	1	[{"added": {}}]	19	2
626	2018-10-30 19:06:57.167854+00	124	None:Blaze x Mooca Destroyers	1	[{"added": {}}]	19	2
627	2018-10-30 19:07:14.869374+00	125	None:Corupá Búffalos x Black Hawks	1	[{"added": {}}]	19	2
628	2018-10-30 19:07:37.266136+00	126	None:Operário Gravediggers x Goiânia Saints	1	[{"added": {}}]	19	2
629	2018-10-30 19:08:04.806359+00	127	None:Tupinambás x Vingadores	1	[{"added": {}}]	19	2
630	2018-10-30 19:08:19.605981+00	128	None:Belém Titans x Paysandu Lobos	1	[{"added": {}}]	19	2
631	2018-10-30 19:08:54.590948+00	129	None:North Lions x Manaus Broncos	1	[{"added": {}}]	19	2
632	2018-10-30 19:09:13.761837+00	130	None:Manaus Raptors x Manaus Cavaliers	1	[{"added": {}}]	19	2
633	2018-10-30 19:09:43.9636+00	131	None:São Paulo Monsters x Palmeiras Locomotives	1	[{"added": {}}]	19	2
634	2018-10-30 19:10:01.311164+00	132	None:Dark Owls x Espírito Santo Black Knights	1	[{"added": {}}]	19	2
635	2018-10-30 19:10:17.036912+00	133	None:Spartans x Challengers	1	[{"added": {}}]	19	2
636	2018-10-30 19:11:27.142836+00	2	Grupo Único - BFA 2018	2	[{"changed": {"fields": ["teams"]}}]	18	2
637	2018-10-30 19:12:16.219877+00	134	None:Campo Grande Predadores x Goiânia Rednecks	1	[{"added": {}}]	19	2
638	2018-10-30 19:12:56.253971+00	135	None:Goiânia Rednecks x Leões de Judá	1	[{"added": {}}]	19	2
639	2018-10-30 19:13:25.803012+00	136	None:Goiânia Rednecks x Sorriso Hornets	1	[{"added": {}}]	19	2
640	2018-10-30 19:13:54.724174+00	137	None:Goiânia Rednecks x Tubarões do Cerrado	1	[{"added": {}}]	19	2
641	2018-10-30 19:14:34.935512+00	138	None:Brasília Templários x Goiânia Rednecks	1	[{"added": {}}]	19	2
642	2018-10-30 19:16:26.415348+00	137	None:Cuiabá Arsenal x Goiânia Rednecks	2	[{"changed": {"fields": ["teamA", "teamB", "scoreA", "scoreB"]}}]	19	2
643	2018-10-30 19:17:56.713242+00	139	None:Goiânia Rednecks x Tubarões do Cerrado	1	[{"added": {}}]	19	2
644	2018-10-30 19:19:31.563782+00	5	Grupo 1 - BFA 2018	2	[{"changed": {"fields": ["teams", "playoffs"]}}]	18	2
645	2018-10-30 19:19:40.120126+00	6	Grupo 2 - BFA 2018	2	[{"changed": {"fields": ["playoffs"]}}]	18	2
646	2018-10-30 19:24:13.696535+00	140	None:Vasco da Gama Patriotas x Juiz de Fora Imperadores	1	[{"added": {}}]	19	2
647	2018-10-30 19:24:33.835996+00	141	None:Juiz de Fora Imperadores x Galo	1	[{"added": {}}]	19	2
648	2018-10-30 19:24:58.336462+00	142	None:Juiz de Fora Imperadores x Tritões	1	[{"added": {}}]	19	2
649	2018-10-30 19:25:20.41973+00	143	None:América Locomotiva x Juiz de Fora Imperadores	1	[{"added": {}}]	19	2
650	2018-10-30 19:25:46.289772+00	144	None:São Paulo Storm x Juiz de Fora Imperadores	1	[{"added": {}}]	19	2
651	2018-10-30 19:26:08.449475+00	145	None:Juiz de Fora Imperadores x Portuguesa	1	[{"added": {}}]	19	2
652	2018-10-31 00:54:38.418379+00	3	papel	1	[{"added": {}}]	4	1
653	2018-10-31 00:55:04.548666+00	3	papel	2	[{"changed": {"fields": ["first_name", "last_name", "is_staff", "is_superuser"]}}]	4	1
654	2018-10-31 00:59:15.991865+00	88	Araxá Redwolves	1	[{"added": {}}]	15	3
655	2018-10-31 01:08:55.494564+00	89	Boa Vista Nordics	1	[{"added": {}}]	15	3
656	2018-10-31 01:10:37.445128+00	90	Brasília V8	1	[{"added": {}}]	15	3
657	2018-10-31 01:11:41.385072+00	91	Brasília Wizards	1	[{"added": {}}]	15	3
658	2018-10-31 01:12:54.328886+00	92	Camboriú Broqueiros	1	[{"added": {}}]	15	3
659	2018-10-31 01:14:05.781475+00	93	Cascavel Olympians	1	[{"added": {}}]	15	3
660	2018-10-31 01:15:16.940296+00	94	Cronos	1	[{"added": {}}]	15	3
661	2018-10-31 01:16:28.694866+00	95	Fortaleza Tritões	1	[{"added": {}}]	15	3
662	2018-10-31 01:17:43.958505+00	96	Franca Carrascos	1	[{"added": {}}]	15	3
663	2018-10-31 01:19:31.001756+00	97	Ipatinga Tigres	1	[{"added": {}}]	15	3
664	2018-10-31 01:21:38.66375+00	98	Itaiópolis Xoklengs	1	[{"added": {}}]	15	3
665	2018-10-31 01:22:42.798224+00	99	Joinville Gladiators	1	[{"added": {}}]	15	3
666	2018-10-31 01:23:34.999437+00	100	Londrina Bristlebacks	1	[{"added": {}}]	15	3
667	2018-10-31 01:24:27.898407+00	101	Mauá Vikings	1	[{"added": {}}]	15	3
668	2018-10-31 01:25:28.49702+00	102	Monte Alto Rippers	1	[{"added": {}}]	15	3
669	2018-10-31 01:26:24.456845+00	103	Nêmesis	1	[{"added": {}}]	15	3
670	2018-10-31 01:27:14.358218+00	104	Norte Paraná	1	[{"added": {}}]	15	3
671	2018-10-31 01:29:11.497204+00	105	Nova Friburgo Yetis	1	[{"added": {}}]	15	3
672	2018-10-31 01:30:07.145963+00	106	Osasco Soldiers	1	[{"added": {}}]	15	3
673	2018-10-31 01:31:00.242759+00	107	Outland Soldiers	1	[{"added": {}}]	15	3
674	2018-10-31 01:31:45.376488+00	108	Palotina Celtics	1	[{"added": {}}]	15	3
675	2018-10-31 01:32:29.495873+00	109	Passos Madbulls	1	[{"added": {}}]	15	3
676	2018-10-31 01:33:22.325991+00	110	Patos Red Dragons	1	[{"added": {}}]	15	3
677	2018-10-31 01:34:25.672727+00	111	Prudente Coronéis	1	[{"added": {}}]	15	3
678	2018-10-31 01:35:11.854751+00	112	Recife Horses	1	[{"added": {}}]	15	3
679	2018-10-31 01:43:39.947339+00	113	Santana Red Bulls	1	[{"added": {}}]	15	3
680	2018-10-31 01:45:30.352836+00	114	São Bento Snakes	1	[{"added": {}}]	15	3
681	2018-10-31 01:47:22.4161+00	115	São Miguel Indians	1	[{"added": {}}]	15	3
682	2018-10-31 01:48:29.044177+00	116	Taquaritinga Defenders	1	[{"added": {}}]	15	3
683	2018-10-31 01:50:52.558577+00	117	Uberlândia Lobos	1	[{"added": {}}]	15	3
684	2018-10-31 01:51:59.993411+00	118	Votuporanga Mohawks	1	[{"added": {}}]	15	3
685	2018-10-31 01:53:48.823049+00	119	ABC Corsários	1	[{"added": {}}]	15	3
686	2018-10-31 01:54:26.894098+00	120	Amazon Black Hawks	1	[{"added": {}}]	15	3
687	2018-10-31 01:55:08.426357+00	121	Araçatuba Touros	1	[{"added": {}}]	15	3
1020	2019-02-23 01:29:10.818293+00	5	SLN 2010	3		21	2
688	2018-10-31 01:55:48.452819+00	122	Barões de Ribeirão Preto	1	[{"added": {}}]	15	3
689	2018-10-31 01:56:31.177432+00	123	Bulldogs	1	[{"added": {}}]	15	3
690	2018-10-31 01:57:21.684009+00	124	Buriers	1	[{"added": {}}]	15	3
691	2018-10-31 01:58:11.595715+00	125	Canoas Bulls	1	[{"added": {}}]	15	3
692	2018-10-31 01:58:57.315591+00	126	Canoas Jaguars	1	[{"added": {}}]	15	3
693	2018-10-31 01:59:45.172106+00	127	Caraguá Ghost Ship	1	[{"added": {}}]	15	3
694	2018-10-31 02:00:36.531279+00	128	Carlos Barbosa Ximangos	1	[{"added": {}}]	15	3
695	2018-10-31 02:05:14.179909+00	129	Castanhal Yellow Blacks	1	[{"added": {}}]	15	3
696	2018-10-31 02:06:58.796028+00	130	Curitiba Guardian Saints	1	[{"added": {}}]	15	3
697	2018-10-31 02:11:20.183813+00	131	Teste	1	[{"added": {}}]	15	1
698	2018-10-31 02:11:54.582067+00	131	Teste	3		15	1
699	2018-10-31 02:13:15.07273+00	132	Dourados Redlands	1	[{"added": {}}]	15	3
700	2018-10-31 19:02:01.552847+00	46	Imponente, Timbó Rex vence Flamengo e conquista Brasil Bowl	1	[{"added": {}}]	12	2
701	2018-10-31 19:04:13.777096+00	47	Timbó Rex quebra invencibilidade do Arsenal e está no Brasil Bowl	1	[{"added": {}}]	12	2
702	2018-10-31 19:06:32.061526+00	48	Flamengo vence Espectros e buscará o bicampeonato brasileiro	1	[{"added": {}}]	12	2
703	2018-10-31 19:09:33.675044+00	49	Timbó Rex destrona Crocodiles e levanta taça da Conferência Sul	1	[{"added": {}}]	12	2
704	2018-10-31 19:11:24.023025+00	50	Flamengo confirma favoritismo e é campeão em cima do Patriotas	1	[{"added": {}}]	12	2
705	2018-10-31 19:17:45.715118+00	51	Espectros conquista o hexa e mostra que ainda reina no NE	1	[{"added": {}}]	12	2
706	2018-10-31 19:19:16.609171+00	52	Cuiabá Arsenal não dá chances para o Lusa e é campeão invicto na Oeste	1	[{"added": {}}]	12	2
707	2018-10-31 19:20:03.783634+00	20	Superliga Nordeste levou mais de 18 mil torcedores aos estádios em 2015	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
708	2018-10-31 19:20:49.957909+00	13	Espectros faz história, vence Crocodiles e fatura Brasil Bowl	2	[{"changed": {"fields": ["text", "subtitle"]}}]	12	2
709	2018-10-31 19:20:58.896435+00	22	Mike Lima é o novo head coach do Ceará Caçadores	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
710	2018-10-31 19:22:26.001399+00	21	Espectros anuncia Heron Azevedo, ex-Cuiabá Arsenal	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
711	2018-10-31 19:22:38.166471+00	10	Extra-points vêm sendo um problema na Superliga Nacional	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
712	2018-10-31 19:22:49.673407+00	39	Superliga Nacional mostra que gringos são apenas a cereja do bolo	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
713	2018-10-31 19:23:00.947232+00	42	Special teams: o detalhe que faria a diferença na Superliga Nacional	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
714	2018-10-31 19:23:06.012537+00	1	Unificação foi o melhor caminho para a Superliga Nacional	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
715	2018-10-31 19:23:15.626015+00	44	Top 30: O ranking geral da Superliga Nacional	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
716	2018-10-31 19:23:21.886009+00	43	CBFA faz teste de transmissão para TV fechada visando 2017	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
717	2018-10-31 19:23:37.596513+00	45	No Brasil, Futebol Americano já tem 77% da média de público do Basquete e 50% do Vôlei	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
718	2018-10-31 19:23:42.874984+00	11	Superliga Nacional terá patrocinador master e passará a ser gerida pelos times	2	[{"changed": {"fields": ["subtitle"]}}]	12	2
719	2018-10-31 19:31:33.442781+00	53	Get Eagles sobe para Superliga após eliminar o Gorilas	1	[{"added": {}}]	12	2
720	2018-10-31 19:32:52.555864+00	54	Coyotes vence Hornets e avança à semifinal da Liga Nacional	1	[{"added": {}}]	12	2
721	2018-10-31 19:33:47.407427+00	54	Coyotes vence Hornets e avança à semifinal da Liga Nacional	2	[{"changed": {"fields": ["date"]}}]	12	2
722	2018-10-31 19:33:54.449466+00	53	Get Eagles sobe para Superliga após eliminar o Gorilas	2	[{"changed": {"fields": ["date"]}}]	12	2
723	2018-10-31 19:36:00.367438+00	55	Soldiers confirma ótimo ano e sobe para a Superliga Nacional	1	[{"added": {}}]	12	2
724	2018-10-31 19:37:50.960649+00	56	Com show de Fadini, Eagles vence Coyotes e leva o Nacional Bowl	1	[{"added": {}}]	12	2
725	2018-10-31 19:38:06.296218+00	55	Soldiers confirma ótimo ano e sobe para a Superliga Nacional	2	[{"changed": {"fields": ["tagChampionship"]}}]	12	2
726	2018-10-31 19:38:11.661161+00	54	Coyotes vence Hornets e avança à semifinal da Liga Nacional	2	[{"changed": {"fields": ["tagChampionship"]}}]	12	2
727	2018-10-31 19:38:15.215228+00	53	Get Eagles sobe para Superliga após eliminar o Gorilas	2	[{"changed": {"fields": ["tagChampionship"]}}]	12	2
728	2018-10-31 19:39:51.810241+00	57	Minas Locomotiva conquista o Minas Bowl e mantém a hegemonia	1	[{"added": {}}]	12	2
729	2018-10-31 19:41:22.712684+00	58	Santa Maria Soldiers joga simples e fatura o Gigante Bowl	1	[{"added": {}}]	12	2
730	2018-10-31 19:44:48.757054+00	59	Após imbróglio, CBFA confirma Lusa Lions como finalista	1	[{"added": {}}]	12	2
731	2018-10-31 19:45:53.275341+00	60	Invicto, Arsenal vence Rednecks e disputará mais um título na Oeste	1	[{"added": {}}]	12	2
732	2018-10-31 19:47:14.660762+00	61	Crocodiles vinga Estadual, elimina HP e vai à decisão no Sul	1	[{"added": {}}]	12	2
733	2018-10-31 19:48:31.279703+00	62	Rex confirma favoritismo, vence WSI e fará sua primeira decisão na Superliga	1	[{"added": {}}]	12	2
734	2018-10-31 19:50:51.732882+00	63	Espectros mantém escrita contra o Mariners e vai para mais uma final no NE	1	[{"added": {}}]	12	2
735	2018-10-31 19:52:11.745409+00	64	Caçadores atropela Bulls e decidirá título inédito em Fortaleza	1	[{"added": {}}]	12	2
736	2018-10-31 19:53:18.495117+00	65	Imbatível, Flamengo vence Reptiles e chega à decisão na Leste	1	[{"added": {}}]	12	2
737	2018-10-31 19:54:27.495096+00	66	Em jogo emocionante, Patriotas vence Tritões e fará final contra Flamengo	1	[{"added": {}}]	12	2
738	2018-11-01 18:18:07.488222+00	Quartas de Final (02 e 03/11)	Rodada Quartas de Final (02 e 03/11) da LNFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	2
739	2018-11-01 18:18:40.374185+00	Oitavas de Final (02 e 03/11)	Rodada Oitavas de Final (02 e 03/11) da BFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	2
740	2018-11-01 18:19:05.312797+00	Oitavas de Final (semifinal de conferência)	Rodada Oitavas de Final (semifinal de conferência) da BFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	2
741	2018-11-01 18:25:47.684781+00	146	None:Maringá Pyros x Corupá Búffalos	1	[{"added": {}}]	19	2
742	2018-11-01 18:26:14.054571+00	147	None:Goiânia Saints x Sinop Coyotes	1	[{"added": {}}]	19	2
743	2018-11-01 18:26:31.239356+00	148	None:Foz do Iguaçu Black Sharks x Santa Cruz Chacais	1	[{"added": {}}]	19	2
744	2018-11-01 18:26:53.041883+00	149	None:Volta Redonda Falcons x Sorocaba Vipers	1	[{"added": {}}]	19	2
745	2018-11-01 18:27:06.458353+00	150	None:Macaé Oilers x Contagem Incofidentes	1	[{"added": {}}]	19	2
819	2018-11-01 23:55:39.59946+00	147	Piratas da Serra	1	[{"added": {}}]	15	3
746	2018-11-01 18:27:26.247916+00	151	None:Ijuí Drones x Bento Gonçalves Snakes	1	[{"added": {}}]	19	2
747	2018-11-01 18:27:43.880653+00	152	None:Brown Spiders x Black Hawks	1	[{"added": {}}]	19	2
748	2018-11-01 18:27:59.043251+00	153	None:Paysandu Lobos x Vingadores	1	[{"added": {}}]	19	2
749	2018-11-01 18:28:18.568843+00	154	None:Blaze x Pouso Alegre Gladiadores	1	[{"added": {}}]	19	2
750	2018-11-01 18:28:35.580315+00	155	None:Belém Titans x Remo Lions	1	[{"added": {}}]	19	2
751	2018-11-01 18:29:06.266651+00	154	None:Blaze x Pouso Alegre Gladiadores	2	[{"changed": {"fields": ["week"]}}]	19	2
752	2018-11-01 18:29:44.469648+00	156	None:Volta Redonda Falcons x São Paulo Monsters	1	[{"added": {}}]	19	2
753	2018-11-01 18:30:07.026555+00	157	None:Dark Owls x Macaé Oilers	1	[{"added": {}}]	19	2
754	2018-11-01 18:43:21.866634+00	158	None:Santa Cruz Chacais x Ijuí Drones	1	[{"added": {}}]	19	2
755	2018-11-01 18:43:39.552683+00	159	None:Brown Spiders x Corupá Búffalos	1	[{"added": {}}]	19	2
756	2018-11-01 18:43:56.485723+00	160	None:Manaus Cavaliers x North Lions	1	[{"added": {}}]	19	2
757	2018-11-01 18:44:10.109745+00	161	None:Paysandu Lobos x Tupinambás	1	[{"added": {}}]	19	2
758	2018-11-01 18:44:25.09613+00	162	None:Palmeiras Locomotives x Sorocaba Vipers	1	[{"added": {}}]	19	2
759	2018-11-01 18:44:38.51075+00	163	None:Contagem Incofidentes x Espírito Santo Black Knights	1	[{"added": {}}]	19	2
760	2018-11-01 18:44:52.254195+00	164	None:Pouso Alegre Gladiadores x Mooca Destroyers	1	[{"added": {}}]	19	2
761	2018-11-01 18:45:08.652885+00	165	None:Nova Serrana Forgeds x Blaze	1	[{"added": {}}]	19	2
762	2018-11-01 18:45:23.3919+00	166	None:Manaus Broncos x Lobos Guerreiros	1	[{"added": {}}]	19	2
763	2018-11-01 18:45:36.920887+00	167	None:Vingadores x Remo Lions	1	[{"added": {}}]	19	2
764	2018-11-01 18:45:49.395414+00	168	None:Sinop Coyotes x Sinop Galaxy	1	[{"added": {}}]	19	2
765	2018-11-01 18:46:06.923044+00	169	None:Maringá Pyros x Black Hawks	1	[{"added": {}}]	19	2
766	2018-11-01 18:46:21.939089+00	170	None:Rondonópolis Hawks x Goiânia Saints	1	[{"added": {}}]	19	2
767	2018-11-01 18:46:38.344336+00	171	None:Manaus Raptors x Manaus Broncos	1	[{"added": {}}]	19	2
768	2018-11-01 18:47:23.254643+00	172	None:Bento Gonçalves Snakes x Foz do Iguaçu Black Sharks	1	[{"added": {}}]	19	2
769	2018-11-01 18:47:37.971939+00	173	None:Armada x Porto Alegre Gorillas	1	[{"added": {}}]	19	2
770	2018-11-01 18:48:01.948833+00	174	None:Mooca Destroyers x Betim Bulldogs	1	[{"added": {}}]	19	2
771	2018-11-01 18:48:14.259548+00	175	None:Challengers x Palmeiras Locomotives	1	[{"added": {}}]	19	2
772	2018-11-01 18:48:29.276341+00	176	None:Macaé Oilers x Blaze	1	[{"added": {}}]	19	2
773	2018-11-01 18:48:47.290841+00	177	None:Espírito Santo Black Knights x Volta Redonda Falcons	1	[{"added": {}}]	19	2
774	2018-11-01 18:49:08.706198+00	178	None:São Paulo Monsters x Spartans	1	[{"added": {}}]	19	2
775	2018-11-01 18:49:21.96425+00	179	None:Lobos Guerreiros x North Lions	1	[{"added": {}}]	19	2
776	2018-11-01 18:49:49.330488+00	180	None:Sorocaba Vipers x Dark Owls	1	[{"added": {}}]	19	2
777	2018-11-01 18:50:04.249907+00	181	None:Goiânia Saints x Sinop Coyotes	1	[{"added": {}}]	19	2
778	2018-11-01 18:50:19.581383+00	182	None:Manaus Cavaliers x Lobos Guerreiros	1	[{"added": {}}]	19	2
779	2018-11-01 18:50:38.027245+00	183	None:Tupinambás x Belém Titans	1	[{"added": {}}]	19	2
780	2018-11-01 18:50:53.897965+00	184	None:Remo Lions x Paysandu Lobos	1	[{"added": {}}]	19	2
781	2018-11-01 18:51:08.357268+00	185	None:Pouso Alegre Gladiadores x Contagem Incofidentes	1	[{"added": {}}]	19	2
782	2018-11-01 18:51:26.009767+00	186	None:North Lions x Manaus Raptors	1	[{"added": {}}]	19	2
783	2018-11-01 18:51:48.493609+00	187	None:Porto Alegre Gorillas x Ijuí Drones	1	[{"added": {}}]	19	2
784	2018-11-01 18:52:08.108071+00	188	None:Corupá Búffalos x Armada	1	[{"added": {}}]	19	2
785	2018-11-01 18:52:43.355443+00	189	None:Foz do Iguaçu Black Sharks x Maringá Pyros	1	[{"added": {}}]	19	2
786	2018-11-01 18:53:20.441038+00	190	None:Mooca Destroyers x Nova Serrana Forgeds	1	[{"added": {}}]	19	2
787	2018-11-01 18:53:33.722992+00	191	None:Betim Bulldogs x Challengers	1	[{"added": {}}]	19	2
788	2018-11-01 18:54:50.400905+00	192	None:Manaus Broncos x Manaus Cavaliers	1	[{"added": {}}]	19	2
789	2018-11-01 18:55:08.762598+00	193	None:Bento Gonçalves Snakes x Brown Spiders	1	[{"added": {}}]	19	2
790	2018-11-01 18:55:22.963185+00	194	None:Lobos Guerreiros x Manaus Raptors	1	[{"added": {}}]	19	2
791	2018-11-01 18:59:07.145306+00	195	None:Operário Gravediggers x Rondonópolis Hawks	1	[{"added": {}}]	19	2
792	2018-11-01 18:59:37.100221+00	196	None:Sinop Coyotes x Operário Gravediggers	1	[{"added": {}}]	19	2
793	2018-11-01 19:00:09.566219+00	197	None:Sinop Coyotes x Operário Gravediggers	1	[{"added": {}}]	19	2
794	2018-11-01 19:03:18.418723+00	198	None:Challengers x Uberaba Zebus	1	[{"added": {}}]	19	2
795	2018-11-01 19:03:30.112591+00	199	None:Uberaba Zebus x Betim Bulldogs	1	[{"added": {}}]	19	2
796	2018-11-01 19:03:43.264333+00	200	None:Spartans x Uberaba Zebus	1	[{"added": {}}]	19	2
797	2018-11-01 19:03:57.604817+00	201	None:Uberaba Zebus x Nova Serrana Forgeds	1	[{"added": {}}]	19	2
798	2018-11-01 19:07:12.443852+00	202	None:Curitiba Lions x Porto Alegre Gorillas	1	[{"added": {}}]	19	2
799	2018-11-01 19:07:30.949101+00	203	None:Armada x Curitiba Lions	1	[{"added": {}}]	19	2
800	2018-11-01 19:07:52.746692+00	204	None:Criciúma Miners x Curitiba Lions	1	[{"added": {}}]	19	2
801	2018-11-01 19:08:09.144121+00	205	None:Curitiba Lions x Santa Cruz Chacais	1	[{"added": {}}]	19	2
802	2018-11-01 19:14:20.70719+00	206	None:Criciúma Miners x Armada	1	[{"added": {}}]	19	2
803	2018-11-01 19:14:48.752151+00	207	None:Porto Alegre Gorillas x Criciúma Miners	1	[{"added": {}}]	19	2
804	2018-11-01 19:15:55.273319+00	208	None:Black Hawks x Criciúma Miners	1	[{"added": {}}]	19	2
805	2018-11-01 23:39:00.227626+00	133	Dourados Tenentes	1	[{"added": {}}]	15	3
806	2018-11-01 23:40:05.46463+00	134	Francisco Beltrão Red Feet	1	[{"added": {}}]	15	3
807	2018-11-01 23:40:52.280171+00	135	Gravataí Spartans	1	[{"added": {}}]	15	3
808	2018-11-01 23:41:40.81754+00	136	Guarani Indians	1	[{"added": {}}]	15	3
809	2018-11-01 23:43:45.264903+00	137	Guarapuva Dark Wolves	1	[{"added": {}}]	15	3
810	2018-11-01 23:45:26.981726+00	138	Inter Limeira Tomahawk	1	[{"added": {}}]	15	3
811	2018-11-01 23:46:15.466898+00	139	Itajaí Dockers	1	[{"added": {}}]	15	3
812	2018-11-01 23:46:56.064488+00	140	Jundiaí Ocelots	1	[{"added": {}}]	15	3
813	2018-11-01 23:47:37.938209+00	141	Legião	1	[{"added": {}}]	15	3
814	2018-11-01 23:51:27.026573+00	142	Leme Lizards	1	[{"added": {}}]	15	3
815	2018-11-01 23:52:13.560924+00	143	Luverdense Jaguars	1	[{"added": {}}]	15	3
816	2018-11-01 23:53:29.257477+00	144	Moon Howlers	1	[{"added": {}}]	15	3
817	2018-11-01 23:54:13.234058+00	145	Paraíso Miners	1	[{"added": {}}]	15	3
820	2018-11-01 23:56:26.673767+00	148	Ponte Preta Gorilas	1	[{"added": {}}]	15	3
821	2018-11-01 23:57:14.954453+00	149	Rio Football Academy	1	[{"added": {}}]	15	3
822	2018-11-01 23:57:59.398609+00	150	Rio Preto Weilers	1	[{"added": {}}]	15	3
823	2018-11-01 23:58:39.330044+00	151	Santos Tsunami	1	[{"added": {}}]	15	3
824	2018-11-01 23:59:20.167819+00	152	São José Jets	1	[{"added": {}}]	15	3
825	2018-11-02 00:00:00.345969+00	153	Street Dogs	1	[{"added": {}}]	15	3
826	2018-11-02 00:00:36.299781+00	154	Tubarão Predadores	1	[{"added": {}}]	15	3
827	2018-11-02 00:01:17.04053+00	155	União Snakes	1	[{"added": {}}]	15	3
828	2018-11-02 00:01:52.552439+00	156	Viamão Raptors	1	[{"added": {}}]	15	3
829	2018-11-02 23:04:21.585539+00	2	BFA 2018	2	[]	21	1
830	2018-11-02 23:14:51.143885+00	0	Não Informado	2	[{"changed": {"fields": ["initials"]}}]	14	1
831	2018-11-03 02:45:28.22597+00	30	Rodada Wildcar da LNFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	1
832	2018-11-03 02:45:33.415394+00	30	Rodada Wildcard da LNFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	1
833	2018-11-03 03:41:58.111473+00	1	None:Coritiba Crocodiles x Paraná HP	3		19	1
834	2018-11-03 04:07:50.861081+00	33	Rodada Semifinal (Semifinais Nacionais da LNFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	1
835	2018-11-03 04:07:57.438906+00	33	Rodada Semifinal (Semifinais Nacionais) da LNFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	1
836	2018-11-06 17:25:28.803731+00	27	Flamengo Imperadores	2	[{"changed": {"fields": ["foundation"]}}]	15	2
837	2018-11-25 23:48:05.68778+00	2	BFA 2018	2	[]	21	1
838	2018-11-25 23:48:14.02826+00	3	LNFA 2018	2	[]	21	1
839	2018-11-26 00:21:23.172182+00	1	Sorriso Hornets	1	[{"added": {}}]	23	1
840	2018-11-26 00:24:09.360326+00	33	Rodada (Semifinais Nacionais) da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	1
841	2018-11-26 00:25:01.253848+00	15	Rodada (semifinais nacionais) da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	1
842	2018-11-26 00:25:22.035409+00	21	Rodada (01 e 02/09) da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	1
843	2018-11-26 00:27:49.542204+00	22	Rodada (25 e 26/08) da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	1
844	2018-11-26 00:29:38.34258+00	15	Rodada None da BFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	1
845	2018-11-26 00:30:58.584951+00	15	Rodada None da BFA 2018	2	[]	20	1
846	2018-11-26 04:26:50.878167+00	1	Caçadores atropela Bulls e decidirá título inédito em Fortaleza	1	[{"added": {}}]	24	1
847	2018-11-26 04:27:33.791071+00	2	m jogo emocionante, Patriotas vence Tritões e fará final contra Flamengo	1	[{"added": {}}]	24	1
848	2018-11-26 04:27:52.823888+00	3	Ex-Mariners, Drew Banks acerta com Crocodiles para Superliga	1	[{"added": {}}]	24	1
849	2018-11-26 11:12:05.493808+00	64	Caçadores atropela Bulls e decidirá título inédito em Fortaleza	2	[{"changed": {"fields": ["date"]}}]	12	2
850	2018-11-26 11:12:13.279371+00	66	Em jogo emocionante, Patriotas vence Tritões e fará final contra Flamengo	2	[{"changed": {"fields": ["date"]}}]	12	2
851	2018-11-26 11:14:54.216623+00	23	Rodada 18 e 19/08 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
852	2018-11-26 11:15:09.155801+00	24	Rodada 11 e 12/08 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
853	2018-11-26 11:15:21.085236+00	25	Rodada 04 e 05/08 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
854	2018-11-26 11:15:34.638175+00	26	Rodada 28 e 29/07 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
855	2018-11-26 11:15:46.300478+00	27	Rodada 21 e 22/07 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
856	2018-11-26 11:15:59.071943+00	28	Rodada 07 e 08/07 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
857	2018-11-26 11:16:10.115308+00	17	Rodada 29 e 30/10 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
858	2018-11-26 11:16:25.058529+00	29	Rodada 30/06 e 01/07 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
859	2018-11-26 11:16:37.149828+00	18	Rodada 22 e 23/09 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
860	2018-11-26 11:16:48.559846+00	19	Rodada 15 e 16/09 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
861	2018-11-26 11:17:04.788548+00	20	Rodada 08 e 09/09 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
862	2018-11-26 11:17:24.047516+00	35	Rodada 02 e 03/11 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
863	2018-11-26 11:17:37.488081+00	31	Rodada None da LNFA 2018	2	[{"changed": {"fields": ["phase"]}}]	20	2
864	2018-11-26 11:18:05.641406+00	34	Rodada 02/12 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
865	2018-11-26 11:18:27.690351+00	31	Rodada None da LNFA 2018	3		20	2
866	2018-11-26 11:19:09.713041+00	33	Rodada 17 e 18/11 da LNFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	2
867	2018-11-26 11:21:10.796937+00	32	Rodada 03 e 04/11 da LNFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
868	2018-11-26 11:21:25.403263+00	33	Rodada 17 e 18/11 da LNFA 2018	2	[{"changed": {"fields": ["phase"]}}]	20	2
869	2018-11-26 11:21:46.603961+00	32	Rodada 03 e 04/11 da LNFA 2018	3		20	2
870	2018-11-26 11:21:56.095432+00	33	Rodada 17 e 18/11 da LNFA 2018	2	[{"changed": {"fields": ["phase"]}}]	20	2
871	2018-11-26 11:24:39.664713+00	30	Rodada 12 e 13/10 da LNFA 2018	2	[{"changed": {"fields": ["week"]}}]	20	2
872	2018-11-26 11:24:54.052503+00	33	Rodada 17 e 18/11 da LNFA 2018	2	[{"changed": {"fields": ["phase"]}}]	20	2
873	2018-11-26 11:25:03.755815+00	35	Rodada 02 e 03/11 da LNFA 2018	2	[{"changed": {"fields": ["phase"]}}]	20	2
874	2018-11-26 11:25:49.749998+00	38	Rodada 20 e 21/10 da LNFA 2018	1	[{"added": {}}]	20	2
875	2018-11-26 11:26:33.870433+00	37	Rodada None da BFA 2018	3		20	2
876	2018-11-26 11:27:21.502583+00	15	Rodada 01 e 02/11 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
877	2018-11-26 11:27:47.838311+00	16	Rodada 16/12 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
878	2018-11-26 11:28:05.137846+00	36	Rodada 02 e 03/11 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
879	2018-11-26 11:28:24.822783+00	3	Rodada 29 e 30/09 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
880	2018-11-26 11:28:34.715812+00	2	Rodada 13 e 14/10 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
881	2018-11-26 11:28:46.524889+00	12	Rodada 21 e 22/07 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
882	2018-11-26 11:28:57.374356+00	1	Rodada 20 e 21/10 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
883	2018-11-26 11:29:10.778146+00	11	Rodada 28 e 29/07 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
884	2018-11-26 11:29:20.999321+00	10	Rodada 04 e 05/08 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
906	2019-01-29 01:31:56.369+00	1	Sorriso Hornets	3		23	2
885	2018-11-26 11:29:31.403742+00	9	Rodada 11 e 12/08 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
886	2018-11-26 11:29:41.36906+00	8	Rodada 18 e 19/08 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
887	2018-11-26 11:29:50.439791+00	7	Rodada 25 e 26/08 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
888	2018-11-26 11:30:00.881037+00	6	Rodada 01 e 02/09 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
889	2018-11-26 11:30:11.251057+00	5	Rodada 08 e 09/09 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
890	2018-11-26 11:30:22.629903+00	4	Rodada 15 e 16/09 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
891	2018-11-26 11:30:58.734128+00	13	Rodada 17 e 18/11 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
892	2018-11-26 11:31:18.017909+00	14	Rodada 03 e 04/11 da BFA 2018	2	[{"changed": {"fields": ["phase", "week"]}}]	20	2
893	2018-11-26 11:31:40.594249+00	13	Rodada 17 e 18/11 da BFA 2018	2	[{"changed": {"fields": ["phase"]}}]	20	2
894	2018-11-26 11:31:53.935014+00	36	Rodada 02 e 03/11 da BFA 2018	3		20	2
895	2018-11-28 01:12:43.58682+00	4	Brasil Onças é convocado para Copa do Mundo de Futebol Americano	2	[{"changed": {"fields": ["text"]}}]	12	2
896	2018-11-28 03:24:15.926232+00	2	m jogo emocionante, Patriotas vence Tritões e fará final contra FlamengoE	2	[{"changed": {"fields": ["description", "subtitle"]}}]	24	1
897	2018-11-28 03:24:28.101021+00	2	Em jogo emocionante, Patriotas vence Tritões e fará final contra FlamengoE	2	[{"changed": {"fields": ["description"]}}]	24	1
898	2018-11-29 10:58:49.249264+00	24	Cuiabá Arsenal	2	[{"changed": {"fields": ["logo"]}}]	15	2
899	2018-11-29 10:59:58.972406+00	56	Recife Mariners	2	[{"changed": {"fields": ["logo"]}}]	15	2
900	2018-11-29 11:01:14.663873+00	67	São Paulo Storm	2	[{"changed": {"fields": ["logo"]}}]	15	2
901	2018-11-29 11:02:54.958943+00	67	São Paulo Storm	2	[{"changed": {"fields": ["logo"]}}]	15	2
902	2019-01-28 14:41:10.964789+00	1	filipe	2	[{"changed": {"fields": ["email"]}}]	4	1
903	2019-01-28 14:45:07.006807+00	2	haim	2	[{"changed": {"fields": ["password"]}}]	4	1
904	2019-01-29 01:23:01.338139+00	1	1ª Divisão	2	[{"changed": {"fields": ["name", "shortName"]}}]	16	2
905	2019-01-29 01:23:49.041539+00	2	2ª Divisão	2	[{"changed": {"fields": ["name", "shortName", "logo", "facebook", "instagram"]}}]	16	2
907	2019-02-05 02:37:34.192058+00	56	Recife Mariners	2	[{"changed": {"fields": ["logo"]}}]	15	1
908	2019-02-05 03:34:17.033885+00	56	Recife Mariners	2	[{"changed": {"fields": ["logo"]}}]	15	1
909	2019-02-07 04:23:31.61702+00	24	Cuiabá Arsenal	2	[{"changed": {"fields": ["logo"]}}]	15	1
910	2019-02-07 04:23:59.73983+00	96	Franca Carrascos	2	[{"changed": {"fields": ["logo"]}}]	15	1
911	2019-02-07 04:25:24.027172+00	67	São Paulo Storm	2	[{"changed": {"fields": ["logo"]}}]	15	1
912	2019-02-15 14:39:03.609696+00	56	Recife Mariners	2	[{"changed": {"fields": ["logo"]}}]	15	2
913	2019-02-15 14:40:15.654083+00	42	Manaus Raptors	2	[{"changed": {"fields": ["logo"]}}]	15	2
914	2019-02-15 14:40:18.36208+00	42	Manaus Raptors	2	[{"changed": {"fields": ["logo"]}}]	15	2
915	2019-02-15 14:41:34.613977+00	67	São Paulo Storm	2	[{"changed": {"fields": ["logo"]}}]	15	2
916	2019-02-15 14:45:38.289911+00	67	São Paulo Storm	2	[{"changed": {"fields": ["logo"]}}]	15	2
917	2019-02-15 14:46:55.989961+00	117	Uberlândia Lobos	2	[{"changed": {"fields": ["logo"]}}]	15	2
918	2019-02-15 14:47:29.994884+00	117	Uberlândia Lobos	2	[{"changed": {"fields": ["logo"]}}]	15	2
919	2019-02-15 14:50:24.737589+00	54	Pouso Alegre Gladiadores	2	[{"changed": {"fields": ["logo"]}}]	15	2
920	2019-02-15 14:51:36.83065+00	96	Franca Carrascos	2	[{"changed": {"fields": ["logo"]}}]	15	2
921	2019-02-15 14:52:24.203316+00	96	Franca Carrascos	2	[{"changed": {"fields": ["logo"]}}]	15	2
922	2019-02-15 14:55:37.49446+00	122	Barões de Ribeirão Preto	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
923	2019-02-15 14:56:40.653573+00	122	Barões de Ribeirão Preto	2	[{"changed": {"fields": ["logo"]}}]	15	2
924	2019-02-15 14:59:38.714938+00	73	Timbó Rex	2	[{"changed": {"fields": ["terciaryColor"]}}]	15	2
925	2019-02-15 15:00:23.339248+00	73	Timbó Rex	2	[{"changed": {"fields": ["logo"]}}]	15	2
926	2019-02-15 15:01:21.224727+00	150	Rio Preto Weilers	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
927	2019-02-15 15:01:37.017633+00	150	Rio Preto Weilers	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
928	2019-02-15 15:02:43.08461+00	119	ABC Corsários	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
929	2019-02-15 15:04:29.515965+00	120	Amazon Black Hawks	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
930	2019-02-15 15:04:46.704137+00	121	Araçatuba Touros	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
931	2019-02-15 15:05:06.367859+00	3	Armada	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
932	2019-02-15 15:05:24.525187+00	8	Blaze	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
933	2019-02-15 15:06:36.250378+00	8	Blaze	2	[{"changed": {"fields": ["logo"]}}]	15	2
934	2019-02-15 15:06:56.125168+00	8	Blaze	2	[{"changed": {"fields": ["logo"]}}]	15	2
935	2019-02-15 15:07:25.613628+00	8	Blaze	2	[{"changed": {"fields": ["logo"]}}]	15	2
936	2019-02-15 15:09:14.729784+00	3	Armada	2	[{"changed": {"fields": ["logo"]}}]	15	2
937	2019-02-15 15:09:37.312003+00	28	Foz do Iguaçu Black Sharks	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
938	2019-02-15 15:09:59.505702+00	26	Espírito Santo Black Knights	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
939	2019-02-15 15:10:18.649701+00	141	Legião	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
940	2019-02-15 15:10:57.30741+00	45	Natal Scorpions	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
941	2019-02-15 15:11:02.237165+00	82	Operário Gravediggers	2	[{"changed": {"fields": ["secundaryColor"]}}]	15	2
942	2019-02-15 15:11:27.019059+00	148	Ponte Preta Gorilas	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
943	2019-02-15 15:11:42.103503+00	150	Rio Preto Weilers	2	[{"changed": {"fields": ["secundaryColor"]}}]	15	2
944	2019-02-15 15:11:55.637601+00	79	Vasco da Gama Patriotas	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
945	2019-02-15 15:12:31.685614+00	20	Corinthians Steamrollers	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
946	2019-02-15 15:14:16.957429+00	149	Rio Football Academy	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
947	2019-02-15 15:16:39.762271+00	58	Remo Lions	2	[{"changed": {"fields": ["logo", "primaryColor"]}}]	15	2
948	2019-02-15 15:17:43.201092+00	58	Remo Lions	2	[{"changed": {"fields": ["secundaryColor"]}}]	15	2
949	2019-02-15 15:19:28.213792+00	53	Portuguesa	2	[{"changed": {"fields": ["logo"]}}]	15	2
950	2019-02-15 15:20:32.964401+00	63	Santa Maria Soldiers	2	[{"changed": {"fields": ["logo", "primaryColor", "secundaryColor"]}}]	15	2
951	2019-02-15 15:21:04.281953+00	63	Santa Maria Soldiers	2	[{"changed": {"fields": ["logo"]}}]	15	2
952	2019-02-15 15:22:43.934073+00	84	Universo Rednecks	2	[{"changed": {"fields": ["name", "logo", "primaryColor", "secundaryColor", "terciaryColor"]}}]	15	2
953	2019-02-15 15:23:17.40126+00	84	Universo Rednecks	2	[{"changed": {"fields": ["terciaryColor"]}}]	15	2
954	2019-02-15 15:28:21.037342+00	157	Vasco Almirantes	1	[{"added": {}}]	15	2
987	2019-02-17 23:25:25.644365+00	66	Tatuapé Monsters	2	[{"changed": {"fields": ["name"]}}]	15	2
988	2019-02-17 23:33:17.270607+00	55	Recife Apaches	2	[{"changed": {"fields": ["terciaryColor"]}}]	15	2
989	2019-02-18 00:05:28.278966+00	1	1ª Divisão	3		16	2
990	2019-02-18 00:05:28.284256+00	2	2ª Divisão	3		16	2
991	2019-02-18 00:12:53.107728+00	935	Rodrigo De Medeiros Dantas	2	[{"changed": {"fields": ["photo"]}}]	13	2
992	2019-02-18 00:14:15.811918+00	935	Rodrigo De Medeiros Dantas	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	13	2
993	2019-02-18 00:15:08.28159+00	935	Rodrigo De Medeiros Dantas	2	[]	13	2
994	2019-02-21 11:49:10.341367+00	3	Armada Lions	2	[{"changed": {"fields": ["name", "logo"]}}]	15	2
995	2019-02-21 11:54:17.498186+00	138	Tomahawk	2	[{"changed": {"fields": ["name"]}}]	15	2
996	2019-02-21 11:55:30.554899+00	140	Ocelots	2	[{"changed": {"fields": ["name"]}}]	15	2
997	2019-02-21 12:01:28.452543+00	79	Vasco Patriotas	2	[{"changed": {"fields": ["name"]}}]	15	2
998	2019-02-21 12:04:52.089717+00	89	Boa Vista Nordics	2	[{"changed": {"fields": ["logo"]}}]	15	2
999	2019-02-21 12:06:13.732039+00	24	Cuiabá Arsenal	2	[{"changed": {"fields": ["logo"]}}]	15	2
1000	2019-02-21 12:15:26.116326+00	190	América Big Riders	1	[{"added": {}}]	15	2
1001	2019-02-21 12:21:36.108841+00	191	Delta	1	[{"added": {}}]	15	2
1002	2019-02-21 12:23:22.863527+00	106	Erechim - RS	1	[{"added": {}}]	8	2
1003	2019-02-21 12:24:39.803427+00	192	Erechim Coroados	1	[{"added": {}}]	15	2
1004	2019-02-21 12:27:38.205323+00	107	Blumenau - SC	1	[{"added": {}}]	8	2
1005	2019-02-21 12:29:04.813386+00	193	Blumenau Vikings	1	[{"added": {}}]	15	2
1006	2019-02-21 12:31:28.51455+00	194	Piratas de Copacabana	1	[{"added": {}}]	15	2
1007	2019-02-21 12:33:04.777645+00	195	Rio de Janeiro Islanders	1	[{"added": {}}]	15	2
1008	2019-02-23 01:21:43.5048+00	3	Torneio Touchdown 2009	1	[{"added": {}}]	16	2
1009	2019-02-23 01:22:25.077676+00	4	TTD 2009	1	[{"added": {}}]	21	2
1010	2019-02-23 01:22:36.176039+00	3	Torneio Touchdown	2	[{"changed": {"fields": ["name"]}}]	16	2
1011	2019-02-23 01:24:27.791078+00	4	Brasil Futebol Americano	1	[{"added": {}}]	16	2
1012	2019-02-23 01:25:52.638776+00	5	Superliga Nacional	1	[{"added": {}}]	16	2
1013	2019-02-23 01:27:05.086026+00	5	SLN 2010	1	[{"added": {}}]	21	2
1014	2019-02-23 01:27:18.9629+00	6	TTD 2010	1	[{"added": {}}]	21	2
1015	2019-02-23 01:27:33.558298+00	7	SLN 2011	1	[{"added": {}}]	21	2
1016	2019-02-23 01:27:44.892476+00	8	TTD 2011	1	[{"added": {}}]	21	2
1017	2019-02-23 01:28:01.571663+00	9	SLN 2011	1	[{"added": {}}]	21	2
1021	2019-02-23 01:29:30.749028+00	10	TTD 2012	1	[{"added": {}}]	21	2
1022	2019-02-23 01:29:48.9837+00	11	TTD 2013	1	[{"added": {}}]	21	2
1023	2019-02-23 01:30:04.980213+00	12	TTD 2014	1	[{"added": {}}]	21	2
1024	2019-02-23 01:30:18.800206+00	13	TTD 2015	1	[{"added": {}}]	21	2
1025	2019-02-23 01:30:39.424985+00	14	BFA 2017	1	[{"added": {}}]	21	2
1026	2019-02-23 01:30:53.937801+00	15	BFA 2018	1	[{"added": {}}]	21	2
1027	2019-02-23 01:31:09.593001+00	16	SLN 2016	1	[{"added": {}}]	21	2
1028	2019-02-23 01:31:27.634712+00	17	SLN 2010	1	[{"added": {}}]	21	2
1029	2019-02-23 01:31:49.256833+00	18	SLN 2011	1	[{"added": {}}]	21	2
1030	2019-02-23 01:32:07.701831+00	19	SLN 2012	1	[{"added": {}}]	21	2
1031	2019-02-23 01:32:22.608895+00	20	SLN 2013	1	[{"added": {}}]	21	2
1032	2019-02-23 01:32:40.891415+00	21	SLN 2014	1	[{"added": {}}]	21	2
1033	2019-02-23 01:32:58.85881+00	22	SLN 2015	1	[{"added": {}}]	21	2
1034	2019-02-23 01:35:04.836085+00	9	Conferência Sul da TTD 2009	1	[{"added": {}}]	17	2
1035	2019-02-23 01:35:15.91241+00	10	Conferência Leste da TTD 2009	1	[{"added": {}}]	17	2
1036	2019-02-23 01:35:25.291149+00	11	Conferência Oeste da TTD 2009	1	[{"added": {}}]	17	2
1037	2019-02-23 14:22:18.757107+00	20	Divisão teste - Conferência Sul da TTD 2009	1	[{"added": {}}]	18	1
1038	2019-02-23 15:17:04.253399+00	20	Divisão teste - Conferência Sul da TTD 2009	3		18	1
1039	2019-02-23 15:17:19.35548+00	21	Divisão teste - Conferência Leste da TTD 2009	1	[{"added": {}}]	18	1
1040	2019-02-23 15:17:54.610298+00	21	Divisão teste - Conferência Leste da TTD 2009	3		18	1
1041	2019-02-24 02:29:58.332261+00	22	Grupo - Conferência Sul da TTD 2009	1	[{"added": {}}]	18	2
1042	2019-02-24 02:30:20.140746+00	23	Grupo - Conferência Oeste da TTD 2009	1	[{"added": {}}]	18	2
1043	2019-02-24 02:30:43.890635+00	24	Grupo - Conferência Leste da TTD 2009	1	[{"added": {}}]	18	2
1044	2019-02-24 02:31:28.015685+00	39	Rodada 1 da TTD 2009	1	[{"added": {}}]	20	2
1045	2019-02-24 02:31:44.536142+00	40	Rodada 2 da TTD 2009	1	[{"added": {}}]	20	2
1046	2019-02-24 02:31:57.483367+00	41	Rodada 3 da TTD 2009	1	[{"added": {}}]	20	2
1047	2019-02-24 02:32:34.676226+00	42	Rodada 4 da TTD 2009	1	[{"added": {}}]	20	2
1048	2019-02-24 02:32:50.583278+00	43	Rodada 5 da TTD 2009	1	[{"added": {}}]	20	2
1049	2019-02-24 02:33:11.182125+00	44	Rodada 6 da TTD 2009	1	[{"added": {}}]	20	2
1050	2019-02-24 02:33:30.689115+00	45	Rodada 7 da TTD 2009	1	[{"added": {}}]	20	2
1051	2019-02-24 02:34:04.310087+00	46	Rodada 8 da TTD 2009	1	[{"added": {}}]	20	2
1052	2019-02-24 02:34:25.053139+00	47	Rodada 9 da TTD 2009	1	[{"added": {}}]	20	2
1053	2019-02-24 02:34:42.477581+00	48	Rodada 10 da TTD 2009	1	[{"added": {}}]	20	2
1054	2019-02-24 02:35:05.875322+00	49	Rodada 11 da TTD 2009	1	[{"added": {}}]	20	2
1055	2019-02-24 02:38:17.610819+00	40	Rodada 2 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1056	2019-02-24 02:38:28.587667+00	41	Rodada 3 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1057	2019-02-24 02:38:44.493089+00	42	Rodada 4 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1058	2019-02-24 02:38:57.662029+00	43	Rodada 5 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1059	2019-02-24 02:39:07.416738+00	44	Rodada 6 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1060	2019-02-24 02:39:20.222533+00	45	Rodada 7 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1061	2019-02-24 02:39:42.81246+00	46	Rodada 8 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1062	2019-02-24 02:40:00.256628+00	48	Rodada 10 da TTD 2009	3		20	2
1063	2019-02-24 02:40:00.268343+00	49	Rodada 11 da TTD 2009	3		20	2
1064	2019-02-24 02:40:00.276471+00	47	Rodada 9 da TTD 2009	3		20	2
1065	2019-02-24 02:41:41.83226+00	39	Rodada 1 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1066	2019-02-24 02:41:53.152759+00	40	Rodada 2 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1067	2019-02-24 02:42:03.891328+00	41	Rodada 3 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1068	2019-02-24 02:42:14.627913+00	42	Rodada 4 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1069	2019-02-24 02:42:28.981319+00	43	Rodada 5 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1070	2019-02-24 02:42:41.464085+00	44	Rodada 6 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1071	2019-02-24 02:42:52.79329+00	45	Rodada 7 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1072	2019-02-24 02:43:03.711785+00	46	Rodada 8 da TTD 2009	3		20	2
1073	2019-02-24 02:43:36.229346+00	50	Rodada 8 da TTD 2009	1	[{"added": {}}]	20	2
1074	2019-02-24 02:44:05.792165+00	51	Rodada 9 da TTD 2009	1	[{"added": {}}]	20	2
1075	2019-02-24 02:44:25.292718+00	52	Rodada 10 da TTD 2009	1	[{"added": {}}]	20	2
1076	2019-02-24 02:45:00.04019+00	53	Rodada 11 da TTD 2009	1	[{"added": {}}]	20	2
1077	2019-02-24 02:45:24.04558+00	54	Rodada 12 da TTD 2009	1	[{"added": {}}]	20	2
1078	2019-02-24 02:45:47.645612+00	55	Rodada Semifinal da TTD 2009	1	[{"added": {}}]	20	2
1079	2019-02-24 02:46:18.326295+00	56	Rodada Final da TTD 2009	1	[{"added": {}}]	20	2
1080	2019-02-24 02:46:25.868799+00	55	Rodada Semifinal da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1081	2019-02-24 02:47:41.485074+00	39	Rodada Semana 1 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1082	2019-02-24 02:47:57.22964+00	39	Rodada 1 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1083	2019-02-24 02:59:10.766257+00	6	Liga Nacional	1	[{"added": {}}]	16	2
1084	2019-02-24 03:01:45.059022+00	7	Liga Brasileira	1	[{"added": {}}]	16	2
1085	2019-02-24 03:02:54.432601+00	8	Campeonato Brasileiro	1	[{"added": {}}]	16	2
1086	2019-02-24 03:03:13.468108+00	22	SLN 2015	3		21	2
1087	2019-02-24 03:03:13.473928+00	21	SLN 2014	3		21	2
1088	2019-02-24 03:03:13.481412+00	20	SLN 2013	3		21	2
1089	2019-02-24 03:03:13.485971+00	19	SLN 2012	3		21	2
1090	2019-02-24 03:03:13.490985+00	18	SLN 2011	3		21	2
1091	2019-02-24 03:03:13.49806+00	17	SLN 2010	3		21	2
1092	2019-02-24 03:03:32.968434+00	23	LBFA 2010	1	[{"added": {}}]	21	2
1093	2019-02-24 03:03:45.48257+00	24	LBFA 2011	1	[{"added": {}}]	21	2
1094	2019-02-24 03:04:05.096127+00	25	CB 2012	1	[{"added": {}}]	21	2
1095	2019-02-24 03:04:21.442809+00	26	CB 2013	1	[{"added": {}}]	21	2
1096	2019-02-24 03:05:14.76088+00	27	SLN 2014	1	[{"added": {}}]	21	2
1097	2019-02-24 03:05:27.000967+00	28	SLN 2015	1	[{"added": {}}]	21	2
1098	2019-02-24 03:05:59.831733+00	29	LNFA 2014	1	[{"added": {}}]	21	2
1099	2019-02-24 03:06:10.700735+00	30	LNFA 2015	1	[{"added": {}}]	21	2
1100	2019-02-24 03:06:22.244557+00	31	LNFA 2016	1	[{"added": {}}]	21	2
1101	2019-02-24 03:06:36.239978+00	32	LNFA 2017	1	[{"added": {}}]	21	2
1102	2019-02-24 03:06:46.916123+00	33	LNFA 2018	1	[{"added": {}}]	21	2
1103	2019-02-24 03:58:17.48922+00	1514	Edilson Kovaleski	2	[{"changed": {"fields": ["photo"]}}]	13	2
1104	2019-02-24 04:01:58.73524+00	422	Jeymes Kaleo Santos De Melo	2	[{"changed": {"fields": ["nickname", "photo"]}}]	13	2
1105	2019-02-24 04:02:37.377125+00	422	Jeymes Kaléo Santos De Melo	2	[{"changed": {"fields": ["name", "nickname"]}}]	13	2
1106	2019-02-24 04:03:15.955678+00	348	Diego Dias Fiaes	2	[{"changed": {"fields": ["photo"]}}]	13	2
1107	2019-02-24 05:17:30.586001+00	24	Grupo 1 - Conferência Leste da TTD 2009	2	[{"changed": {"fields": ["name"]}}]	18	1
1108	2019-02-24 05:17:40.473127+00	23	Grupo 2 - Conferência Oeste da TTD 2009	2	[{"changed": {"fields": ["name"]}}]	18	1
1109	2019-02-24 05:18:00.484108+00	22	Grupo 3 - Conferência Sul da TTD 2009	2	[{"changed": {"fields": ["name"]}}]	18	1
1110	2019-02-24 20:42:03.692219+00	24	Grupo - Conferência Leste da TTD 2009	2	[{"changed": {"fields": ["name"]}}]	18	1
1111	2019-02-24 20:42:11.422133+00	23	Grupo - Conferência Oeste da TTD 2009	2	[{"changed": {"fields": ["name"]}}]	18	1
1112	2019-02-24 20:42:18.049144+00	22	Grupo - Conferência Sul da TTD 2009	2	[{"changed": {"fields": ["name"]}}]	18	1
1113	2019-02-24 21:04:49.00678+00	1	None:Joinville Gladiators x Brown Spiders	1	[{"added": {}}]	19	2
1114	2019-02-24 21:06:22.0511+00	2	None:São Paulo Storm x Sorocaba Vipers	1	[{"added": {}}]	19	2
1115	2019-02-24 21:07:31.334706+00	39	Rodada Semana 1 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1116	2019-02-24 21:09:33.6986+00	40	Rodada Semana 2 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1117	2019-02-24 21:15:05.492589+00	422	Jeymes Kaléo Santos De Melo	2	[{"changed": {"fields": ["facebook", "instagram"]}}]	13	2
1118	2019-02-26 16:27:20.095194+00	108	Brusque - SC	1	[{"added": {}}]	8	2
1119	2019-02-26 16:27:52.187319+00	196	Brusque Weavers	1	[{"added": {}}]	15	2
1120	2019-02-26 16:31:19.091881+00	8	Blaze	2	[{"changed": {"fields": ["logo"]}}]	15	2
1121	2019-02-26 16:31:30.32681+00	8	Blaze	2	[{"changed": {"fields": ["terciaryColor"]}}]	15	2
1122	2019-02-27 17:51:07.65749+00	197	Ajuricaba Warriors	1	[{"added": {}}]	15	2
1123	2019-02-27 17:52:11.5204+00	109	Angra dos Reis - RJ	1	[{"added": {}}]	8	2
1124	2019-02-27 17:53:12.644083+00	198	Angra Destroyers	1	[{"added": {}}]	15	2
1125	2019-02-27 17:56:01.554724+00	110	Arcos - MG	1	[{"added": {}}]	8	2
1126	2019-02-27 17:56:33.154067+00	199	Arcos Pegasus	1	[{"added": {}}]	15	2
1127	2019-02-27 17:58:08.805687+00	200	Armada	1	[{"added": {}}]	15	2
1128	2019-02-28 10:38:32.483224+00	111	Avaré - SP	1	[{"added": {}}]	8	2
1129	2019-02-28 10:39:23.832292+00	201	Avaré Mustangs	1	[{"added": {}}]	15	2
1130	2019-02-28 10:41:09.932317+00	112	Balneário Camboriu - SC	1	[{"added": {}}]	8	2
1131	2019-02-28 10:42:02.352443+00	202	Balneário Lobos do Mar	1	[{"added": {}}]	15	2
1132	2019-02-28 10:44:32.94733+00	203	Bárbaros do Vale	1	[{"added": {}}]	15	2
1133	2019-02-28 10:47:43.169359+00	204	Baronato	1	[{"added": {}}]	15	2
1134	2019-02-28 10:48:51.112075+00	205	Blumenau Riesen	1	[{"added": {}}]	15	2
1135	2019-02-28 10:50:37.968089+00	206	Brasil Devilz	1	[{"added": {}}]	15	2
1136	2019-02-28 10:55:11.439996+00	207	Brasília Alligators	1	[{"added": {}}]	15	2
1137	2019-02-28 10:56:12.891353+00	208	Brusque Admirals	1	[{"added": {}}]	15	2
1138	2019-02-28 11:05:16.896006+00	113	Ponta Grossa - PR	1	[{"added": {}}]	8	2
1139	2019-02-28 11:05:39.972124+00	209	Ponta Grossa Phantoms	1	[{"added": {}}]	15	2
1140	2019-02-28 11:06:50.210788+00	210	Porto Alegre Pumpkins	1	[{"added": {}}]	15	2
1141	2019-02-28 11:12:00.739054+00	12	Sudeste da TTD 2010	1	[{"added": {}}]	17	2
1142	2019-02-28 11:12:43.990173+00	10	Leste da TTD 2009	2	[{"changed": {"fields": ["name"]}}]	17	2
1143	2019-02-28 11:12:50.597386+00	9	Sul da TTD 2009	2	[{"changed": {"fields": ["name"]}}]	17	2
1144	2019-02-28 11:12:57.452226+00	11	Oeste da TTD 2009	2	[{"changed": {"fields": ["name"]}}]	17	2
1145	2019-02-28 11:15:58.240416+00	13	Sul da TTD 2010	1	[{"added": {}}]	17	2
1146	2019-02-28 11:17:15.326531+00	14	Walter Camp da TTD 2011	1	[{"added": {}}]	17	2
1147	2019-02-28 11:17:32.719763+00	15	George Halas da TTD 2011	1	[{"added": {}}]	17	2
1148	2019-02-28 11:24:25.022786+00	211	Curitiba Hurricanes	1	[{"added": {}}]	15	2
1149	2019-02-28 11:25:03.356456+00	25	Grupo - Sul da TTD 2010	1	[{"added": {}}]	18	2
1150	2019-02-28 11:25:35.500468+00	26	Grupo - Sudeste da TTD 2010	1	[{"added": {}}]	18	2
1151	2019-02-28 11:36:40.172129+00	212	Botafogo Mamutes	1	[{"added": {}}]	15	2
1152	2019-02-28 11:38:21.397575+00	213	Curitiba Predadores	1	[{"added": {}}]	15	2
1153	2019-02-28 11:40:12.352165+00	27	Grupo - Walter Camp da TTD 2011	1	[{"added": {}}]	18	2
1154	2019-02-28 11:41:05.492232+00	28	Grupo - George Halas da TTD 2011	1	[{"added": {}}]	18	2
1155	2019-02-28 16:09:31.007252+00	16	George Halas da TTD 2012	1	[{"added": {}}]	17	2
1156	2019-02-28 16:09:46.210284+00	17	Walter Camp da TTD 2012	1	[{"added": {}}]	17	2
1157	2019-02-28 16:09:58.908628+00	18	Bill Walsh da TTD 2012	1	[{"added": {}}]	17	2
1158	2019-02-28 16:10:53.811072+00	29	Grupo - Walter Camp da TTD 2012	1	[{"added": {}}]	18	2
1159	2019-02-28 16:14:19.032421+00	114	Vitória - ES	1	[{"added": {}}]	8	2
1160	2019-02-28 16:14:43.762338+00	214	Vitória Antares	1	[{"added": {}}]	15	2
1161	2019-02-28 16:15:45.265024+00	29	Grupo - Walter Camp da TTD 2012	2	[{"changed": {"fields": ["teams"]}}]	18	2
1162	2019-02-28 16:19:08.218662+00	30	Grupo - George Halas da TTD 2012	1	[{"added": {}}]	18	2
1163	2019-02-28 16:25:10.736184+00	212	Mamutes	2	[{"changed": {"fields": ["name", "logo", "primaryColor", "secundaryColor"]}}]	15	2
1164	2019-02-28 16:26:05.298373+00	204	Magé Barões	2	[{"changed": {"fields": ["name", "shortName", "city"]}}]	15	2
1165	2019-02-28 16:26:42.556506+00	30	Grupo - George Halas da TTD 2012	2	[{"changed": {"fields": ["teams"]}}]	18	2
1166	2019-02-28 16:27:52.377543+00	31	Grupo - Bill Walsh da TTD 2012	1	[{"added": {}}]	18	2
1167	2019-02-28 16:28:56.933127+00	19	George Halas da TTD 2013	1	[{"added": {}}]	17	2
1168	2019-02-28 16:29:06.553021+00	20	Bill Walsh da TTD 2013	1	[{"added": {}}]	17	2
1169	2019-02-28 16:29:14.891598+00	21	Walter Camp da TTD 2013	1	[{"added": {}}]	17	2
1170	2019-02-28 16:29:29.674596+00	22	Vince Lombardi da TTD 2013	1	[{"added": {}}]	17	2
1171	2019-02-28 16:33:56.417563+00	215	Salvador All Saints	1	[{"added": {}}]	15	2
1172	2019-02-28 16:34:08.178248+00	32	Grupo - Walter Camp da TTD 2013	1	[{"added": {}}]	18	2
1173	2019-02-28 16:34:15.970025+00	32	Grupo - Walter Camp da TTD 2013	2	[{"changed": {"fields": ["teams"]}}]	18	2
1174	2019-02-28 16:35:41.302103+00	33	Grupo - George Halas da TTD 2013	1	[{"added": {}}]	18	2
1175	2019-02-28 16:36:46.579378+00	34	Grupo - Bill Walsh da TTD 2013	1	[{"added": {}}]	18	2
1176	2019-02-28 16:37:20.780506+00	23	Norte da TTD 2014	1	[{"added": {}}]	17	2
1177	2019-02-28 16:37:34.741083+00	24	Sul da TTD 2014	1	[{"added": {}}]	17	2
1178	2019-02-28 16:37:44.077664+00	25	Leste da TTD 2014	1	[{"added": {}}]	17	2
1179	2019-02-28 16:37:53.638062+00	26	Oeste da TTD 2014	1	[{"added": {}}]	17	2
1180	2019-02-28 16:38:44.658359+00	35	Grupo - Norte da TTD 2014	1	[{"added": {}}]	18	2
1181	2019-02-28 16:39:39.563833+00	36	Grupo - Sul da TTD 2014	1	[{"added": {}}]	18	2
1182	2019-02-28 16:40:21.4594+00	37	Grupo - Leste da TTD 2014	1	[{"added": {}}]	18	2
1183	2019-02-28 16:42:03.797065+00	38	Grupo - Oeste da TTD 2014	1	[{"added": {}}]	18	2
1184	2019-02-28 16:42:34.34803+00	27	Norte da TTD 2015	1	[{"added": {}}]	17	2
1185	2019-02-28 16:42:43.642672+00	28	Sul da TTD 2015	1	[{"added": {}}]	17	2
1186	2019-02-28 16:46:39.694959+00	216	Cabritos	1	[{"added": {}}]	15	2
1187	2019-02-28 16:46:49.096977+00	39	Grupo 1 - Norte da TTD 2015	1	[{"added": {}}]	18	2
1188	2019-02-28 16:47:01.1325+00	39	Grupo 1 - Norte da TTD 2015	2	[{"changed": {"fields": ["teams"]}}]	18	2
1189	2019-02-28 16:47:29.404333+00	40	Grupo 2 - Norte da TTD 2015	1	[{"added": {}}]	18	2
1190	2019-02-28 16:47:59.986174+00	41	Grupo 1 - Sul da TTD 2015	1	[{"added": {}}]	18	2
1191	2019-02-28 16:48:32.074309+00	42	Grupo 2 - Sul da TTD 2015	1	[{"added": {}}]	18	2
1192	2019-03-01 01:54:29.492172+00	29	Norte da LBFA 2010	1	[{"added": {}}]	17	2
1193	2019-03-01 01:54:40.155001+00	30	Sul da LBFA 2010	1	[{"added": {}}]	17	2
1194	2019-03-01 01:55:41.901126+00	43	Grupo 1 - Norte da LBFA 2010	1	[{"added": {}}]	18	2
1195	2019-03-01 01:56:08.132502+00	44	Grupo 2 - Norte da LBFA 2010	1	[{"added": {}}]	18	2
1196	2019-03-01 01:57:12.261995+00	45	Grupo 1 - Sul da LBFA 2010	1	[{"added": {}}]	18	2
1197	2019-03-01 01:57:43.217411+00	46	Grupo 2 - Sul da LBFA 2010	1	[{"added": {}}]	18	2
1198	2019-03-01 01:58:33.851367+00	31	Norte da LBFA 2011	1	[{"added": {}}]	17	2
1199	2019-03-01 01:58:46.008258+00	32	Sul da LBFA 2011	1	[{"added": {}}]	17	2
1200	2019-03-01 01:59:45.627532+00	47	Grupo - Norte da LBFA 2011	1	[{"added": {}}]	18	2
1201	2019-03-01 02:00:27.625688+00	48	Grupo - Sul da LBFA 2011	1	[{"added": {}}]	18	2
1202	2019-03-01 02:01:50.774634+00	33	Sul da CB 2012	1	[{"added": {}}]	17	2
1203	2019-03-01 02:02:00.768583+00	34	Central da CB 2012	1	[{"added": {}}]	17	2
1204	2019-03-01 02:02:09.292605+00	35	Nordeste da CB 2012	1	[{"added": {}}]	17	2
1205	2019-03-01 02:02:47.466064+00	52	Rodada Semana 10 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1206	2019-03-01 02:02:51.999171+00	53	Rodada Semana 11 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1207	2019-03-01 02:02:56.679635+00	54	Rodada Semana 12 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1208	2019-03-01 02:03:00.773469+00	41	Rodada Semana 3 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1209	2019-03-01 02:03:05.294399+00	42	Rodada Semana 4 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1210	2019-03-01 02:03:10.007153+00	43	Rodada Semana 5 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1211	2019-03-01 02:03:14.224718+00	44	Rodada Semana 6 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1212	2019-03-01 02:03:26.183546+00	45	Rodada Semana 7 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1213	2019-03-01 02:03:30.902399+00	50	Rodada Semana 8 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1214	2019-03-01 02:03:35.282826+00	51	Rodada Semana 9 da TTD 2009	2	[{"changed": {"fields": ["phase"]}}]	20	2
1215	2019-03-01 02:06:17.447424+00	49	Grupo 1 - Sul da CB 2012	1	[{"added": {}}]	18	2
1216	2019-03-01 02:11:48.709413+00	217	UFPR Legends	1	[{"added": {}}]	15	2
1217	2019-03-01 02:12:47.007102+00	49	Grupo 1 - Sul da CB 2012	2	[{"changed": {"fields": ["teams"]}}]	18	2
1218	2019-03-01 02:13:48.512646+00	50	Grupo 2 - Sul da CB 2012	1	[{"added": {}}]	18	2
1219	2019-03-01 02:15:16.088366+00	51	Grupo 1 - Central da CB 2012	1	[{"added": {}}]	18	2
1220	2019-03-01 02:15:55.943679+00	52	Grupo 2 - Central da CB 2012	1	[{"added": {}}]	18	2
1221	2019-03-01 02:16:48.496548+00	53	Grupo 1 - Nordeste da CB 2012	1	[{"added": {}}]	18	2
1222	2019-03-01 02:35:20.507199+00	218	Dragões do Mar	1	[{"added": {}}]	15	2
1223	2019-03-01 02:35:59.961151+00	219	Ceará Cangaceiros	1	[{"added": {}}]	15	2
1224	2019-03-01 02:36:42.576238+00	53	Grupo 1 - Nordeste da CB 2012	2	[{"changed": {"fields": ["teams"]}}]	18	2
1225	2019-03-01 02:37:05.053718+00	54	Grupo 2 - Nordeste da CB 2012	1	[{"added": {}}]	18	2
1226	2019-03-01 02:37:25.679327+00	55	Grupo 3 - Nordeste da CB 2012	1	[{"added": {}}]	18	2
1227	2019-03-01 02:38:29.483324+00	1	None:Joinville Gladiators x Brown Spiders	3		19	2
1228	2019-03-01 02:38:29.48847+00	2	None:São Paulo Storm x Sorocaba Vipers	3		19	2
1229	2019-03-01 22:27:40.512124+00	36	Central da CB 2013	1	[{"added": {}}]	17	2
1230	2019-03-01 22:27:51.077417+00	37	Nordeste da CB 2013	1	[{"added": {}}]	17	2
1231	2019-03-01 22:28:03.274025+00	38	Sul da CB 2013	1	[{"added": {}}]	17	2
1232	2019-03-01 22:28:12.7233+00	39	Norte da CB 2013	1	[{"added": {}}]	17	2
1233	2019-03-01 22:38:30.431823+00	220	Jacarés do Pantanal	1	[{"added": {}}]	15	2
1234	2019-03-01 22:38:39.131069+00	56	Grupo - Central da CB 2013	1	[{"added": {}}]	18	2
1235	2019-03-01 22:38:51.007471+00	56	Grupo - Central da CB 2013	2	[{"changed": {"fields": ["teams"]}}]	18	2
1236	2019-03-01 22:39:56.834572+00	57	Grupo 1 - Nordeste da CB 2013	1	[{"added": {}}]	18	2
1237	2019-03-01 22:41:30.062197+00	58	Grupo 2 - Nordeste da CB 2013	1	[{"added": {}}]	18	2
1238	2019-03-01 22:43:30.174125+00	59	G - Sul da CB 2013	1	[{"added": {}}]	18	2
1239	2019-03-01 22:43:48.112276+00	60	Grupo - Norte da CB 2013	1	[{"added": {}}]	18	2
1240	2019-03-01 23:01:20.048562+00	221	Ceará Fênix	1	[{"added": {}}]	15	2
1241	2019-03-01 23:03:50.209572+00	222	Treze Roosters	1	[{"added": {}}]	15	2
1242	2019-03-01 23:04:57.731906+00	223	Salvador Kings	1	[{"added": {}}]	15	2
1243	2019-03-01 23:05:49.329975+00	224	Confiança Imortais	1	[{"added": {}}]	15	2
1244	2019-03-01 23:08:08.419484+00	57	Grupo 1 - Nordeste da CB 2013	2	[{"changed": {"fields": ["teams"]}}]	18	2
1245	2019-03-01 23:08:40.608905+00	58	Grupo 2 - Nordeste da CB 2013	2	[{"changed": {"fields": ["teams"]}}]	18	2
1246	2019-03-01 23:09:22.950434+00	40	Centro-Sul da SLN 2014	1	[{"added": {}}]	17	2
1247	2019-03-01 23:09:32.284714+00	41	Nordeste da SLN 2014	1	[{"added": {}}]	17	2
1248	2019-03-01 23:09:46.187675+00	42	Centro-Sul da SLN 2015	1	[{"added": {}}]	17	2
1249	2019-03-01 23:09:55.352529+00	43	Nordeste da SLN 2015	1	[{"added": {}}]	17	2
1250	2019-03-01 23:10:13.823846+00	44	Leste da SLN 2016	1	[{"added": {}}]	17	2
1251	2019-03-01 23:10:22.257809+00	45	Oeste da SLN 2016	1	[{"added": {}}]	17	2
1252	2019-03-01 23:10:30.450925+00	46	Sul da SLN 2016	1	[{"added": {}}]	17	2
1253	2019-03-01 23:10:45.666825+00	47	Nordeste da SLN 2016	1	[{"added": {}}]	17	2
1254	2019-03-01 23:11:10.286451+00	48	Nordeste da BFA 2017	1	[{"added": {}}]	17	2
1255	2019-03-01 23:11:18.112332+00	49	Nordeste da BFA 2018	1	[{"added": {}}]	17	2
1256	2019-03-01 23:11:25.149757+00	50	Sul da BFA 2017	1	[{"added": {}}]	17	2
1257	2019-03-01 23:11:33.234763+00	51	Sul da BFA 2018	1	[{"added": {}}]	17	2
1258	2019-03-01 23:11:50.698902+00	52	Centro-Oeste da BFA 2018	1	[{"added": {}}]	17	2
1259	2019-03-01 23:12:00.78776+00	53	Centro-Oeste da BFA 2017	1	[{"added": {}}]	17	2
1260	2019-03-01 23:12:11.05493+00	54	Sudeste da BFA 2018	1	[{"added": {}}]	17	2
1261	2019-03-01 23:12:22.719031+00	55	Sudeste da BFA 2018	1	[{"added": {}}]	17	2
1262	2019-03-01 23:12:31.828232+00	55	Sudeste da BFA 2017	2	[{"changed": {"fields": ["season"]}}]	17	2
1263	2019-03-02 02:27:24.636624+00	61	Grupo - Centro-Sul da SLN 2014	1	[{"added": {}}]	18	2
1264	2019-03-02 02:28:36.393449+00	62	Grupo 1 - Nordeste da SLN 2014	1	[{"added": {}}]	18	2
1265	2019-03-02 02:29:04.416114+00	63	Grupo 2 - Nordeste da SLN 2014	1	[{"added": {}}]	18	2
1266	2019-03-02 02:30:42.259121+00	64	Grupo 1 - Nordeste da SLN 2015	1	[{"added": {}}]	18	2
1267	2019-03-02 02:31:11.980515+00	65	Grupo 2 - Nordeste da SLN 2015	1	[{"added": {}}]	18	2
1268	2019-03-02 02:39:53.652692+00	116	Itapema - SC	1	[{"added": {}}]	8	2
1269	2019-03-02 02:40:24.042163+00	225	Itapema White Sharks	1	[{"added": {}}]	15	2
1270	2019-03-02 02:41:37.105828+00	66	Grupo - Centro-Sul da SLN 2015	1	[{"added": {}}]	18	2
1271	2019-03-02 02:45:01.98483+00	59	Grupo - Sul da CB 2013	2	[{"changed": {"fields": ["name"]}}]	18	2
1272	2019-03-02 02:46:28.0649+00	67	Grupo - Vince Lombardi da TTD 2013	1	[{"added": {}}]	18	2
1273	2019-03-02 02:49:55.585906+00	7	Liga Brasileira	2	[]	16	2
1274	2019-03-02 02:50:01.512238+00	8	Campeonato Brasileiro	2	[{"changed": {"fields": ["shortName"]}}]	16	2
1275	2019-03-02 02:50:18.565261+00	5	Superliga Nacional	2	[{"changed": {"fields": ["logo"]}}]	16	2
1276	2019-03-02 02:52:12.972835+00	68	Grupo 1 - Leste da SLN 2016	1	[{"added": {}}]	18	2
1277	2019-03-02 02:52:40.335832+00	69	Grupo 2 - Leste da SLN 2016	1	[{"added": {}}]	18	2
1278	2019-03-02 02:53:08.83775+00	70	Grupo 1 - Oeste da SLN 2016	1	[{"added": {}}]	18	2
1279	2019-03-02 02:53:41.470321+00	71	Grupo 2 - Oeste da SLN 2016	1	[{"added": {}}]	18	2
1280	2019-03-02 02:54:48.99943+00	72	Grupo - Nordeste da SLN 2016	1	[{"added": {}}]	18	2
1281	2019-03-02 02:55:24.869348+00	73	Grupo - Sul da SLN 2016	1	[{"added": {}}]	18	2
1282	2019-03-02 02:59:42.014658+00	226	São José WSI	1	[{"added": {}}]	15	2
1283	2019-03-02 03:01:03.852858+00	73	Grupo - Sul da SLN 2016	2	[{"changed": {"fields": ["teams"]}}]	18	2
1284	2019-03-02 03:06:51.084225+00	74	Grupo - Sul da BFA 2017	1	[{"added": {}}]	18	2
1285	2019-03-02 03:07:27.77848+00	75	Grupo - Centro-Oeste da BFA 2017	1	[{"added": {}}]	18	2
1286	2019-03-02 03:07:59.338783+00	76	Grupo 1 - Nordeste da BFA 2017	1	[{"added": {}}]	18	2
1287	2019-03-02 03:08:23.527768+00	77	Grupo 2 - Nordeste da BFA 2017	1	[{"added": {}}]	18	2
1288	2019-03-02 03:08:56.524384+00	78	Grupo 1 - Sudeste da BFA 2017	1	[{"added": {}}]	18	2
1289	2019-03-02 03:09:39.030589+00	79	Grupo 2 - Sudeste da BFA 2017	1	[{"added": {}}]	18	2
1290	2019-03-02 03:11:28.872559+00	80	Grupo - Sul da BFA 2018	1	[{"added": {}}]	18	2
1291	2019-03-02 03:12:34.591096+00	81	Grupo - Centro-Oeste da BFA 2018	1	[{"added": {}}]	18	2
1292	2019-03-02 03:13:27.924134+00	82	Grupo 1 - Nordeste da BFA 2018	1	[{"added": {}}]	18	2
1293	2019-03-02 03:14:00.443991+00	83	Grupo 2 - Nordeste da BFA 2018	1	[{"added": {}}]	18	2
1294	2019-03-02 03:15:06.553457+00	84	Grupo 1 - Sudeste da BFA 2018	1	[{"added": {}}]	18	2
1295	2019-03-02 03:15:34.97586+00	85	Grupo 2 - Sudeste da BFA 2018	1	[{"added": {}}]	18	2
1296	2019-03-02 03:15:58.371153+00	84	Grupo 1 - Sudeste da BFA 2018	2	[{"changed": {"fields": ["teams"]}}]	18	2
1297	2019-03-02 03:16:19.661959+00	84	Grupo 1 - Sudeste da BFA 2018	2	[{"changed": {"fields": ["teams"]}}]	18	2
1298	2019-03-02 03:20:40.576023+00	56	Sul da LNFA 2014	1	[{"added": {}}]	17	2
1299	2019-03-02 03:20:49.247114+00	57	Sudeste da LNFA 2014	1	[{"added": {}}]	17	2
1300	2019-03-02 03:20:57.811893+00	58	Centro-Oeste da LNFA 2014	1	[{"added": {}}]	17	2
1301	2019-03-02 03:21:17.051081+00	59	Sul da LNFA 2015	1	[{"added": {}}]	17	2
1302	2019-03-02 03:21:24.177591+00	60	Sudeste da LNFA 2015	1	[{"added": {}}]	17	2
1303	2019-03-02 03:21:30.40576+00	61	Centro-Oeste da LNFA 2015	1	[{"added": {}}]	17	2
1304	2019-03-02 03:22:08.951607+00	62	Sul da LNFA 2016	1	[{"added": {}}]	17	2
1305	2019-03-02 03:22:17.910655+00	63	Sudeste da LNFA 2016	1	[{"added": {}}]	17	2
1306	2019-03-02 03:22:25.322869+00	64	Centro-Oeste da LNFA 2016	1	[{"added": {}}]	17	2
1307	2019-03-02 03:22:31.86311+00	65	Nordeste da LNFA 2016	1	[{"added": {}}]	17	2
1308	2019-03-02 03:22:44.279025+00	66	Sul da LNFA 2017	1	[{"added": {}}]	17	2
1309	2019-03-02 03:22:49.930123+00	67	Sudeste da LNFA 2017	1	[{"added": {}}]	17	2
1310	2019-03-02 03:22:55.881231+00	68	Centro-Oeste da LNFA 2017	1	[{"added": {}}]	17	2
1311	2019-03-02 03:23:02.1297+00	69	Nordeste da LNFA 2017	1	[{"added": {}}]	17	2
1312	2019-03-02 03:23:18.126744+00	70	Nordeste da LNFA 2018	1	[{"added": {}}]	17	2
1313	2019-03-02 03:23:24.293638+00	71	Sudeste da LNFA 2018	1	[{"added": {}}]	17	2
1314	2019-03-02 03:23:30.135005+00	72	Sul da LNFA 2018	1	[{"added": {}}]	17	2
1315	2019-03-02 03:23:37.326236+00	73	Centro-Oeste da LNFA 2018	1	[{"added": {}}]	17	2
1316	2019-03-02 03:23:43.218902+00	74	Norte da LNFA 2018	1	[{"added": {}}]	17	2
1317	2019-03-02 03:30:35.793088+00	86	Grupo - Sul da LNFA 2014	1	[{"added": {}}]	18	2
1318	2019-03-02 03:43:07.643296+00	227	Desportiva Piratas	1	[{"added": {}}]	15	2
1319	2019-03-02 03:43:41.318253+00	228	Goiânia Tigres	1	[{"added": {}}]	15	2
1320	2019-03-02 03:43:56.773394+00	228	Goiânia Tigres	2	[{"changed": {"fields": ["secundaryColor", "terciaryColor"]}}]	15	2
1321	2019-03-02 03:44:59.462954+00	87	Grupo - Sudeste da LNFA 2014	1	[{"added": {}}]	18	2
1322	2019-03-02 03:45:51.001514+00	88	Grupo - Centro-Oeste da LNFA 2014	1	[{"added": {}}]	18	2
1323	2019-03-02 03:48:40.907967+00	229	Campo Grande Cobras	1	[{"added": {}}]	15	2
1324	2019-03-02 03:49:06.836002+00	88	Grupo - Centro-Oeste da LNFA 2014	2	[{"changed": {"fields": ["teams"]}}]	18	2
1325	2019-03-02 03:50:04.251023+00	229	Campo Grande Cobras	2	[{"changed": {"fields": ["logo"]}}]	15	2
1326	2019-03-02 18:59:15.120091+00	89	Grupo - Sul da LNFA 2015	1	[{"added": {}}]	18	2
1327	2019-03-02 18:59:43.563955+00	90	Grupo - Sudeste da LNFA 2015	1	[{"added": {}}]	18	2
1328	2019-03-02 19:00:29.354691+00	91	Grupo 1 - Centro-Oeste da LNFA 2015	1	[{"added": {}}]	18	2
1329	2019-03-02 19:00:54.506437+00	92	Grupo 2 - Centro-Oeste da LNFA 2015	1	[{"added": {}}]	18	2
1330	2019-03-02 19:04:24.007014+00	93	Grupo 1 - Sudeste da LNFA 2016	1	[{"added": {}}]	18	2
1331	2019-03-02 19:05:08.268487+00	94	Grupo 2 - Sudeste da LNFA 2016	1	[{"added": {}}]	18	2
1332	2019-03-02 19:07:47.086971+00	95	Grupo - Sul da SLN 2016	1	[{"added": {}}]	18	2
1333	2019-03-02 19:08:19.907105+00	96	Grupo 1 - Centro-Oeste da LNFA 2016	1	[{"added": {}}]	18	2
1334	2019-03-02 19:08:45.251268+00	97	Grupo 2 - Centro-Oeste da LNFA 2016	1	[{"added": {}}]	18	2
1335	2019-03-02 19:09:34.207431+00	98	Grupo 1 - Nordeste da LNFA 2016	1	[{"added": {}}]	18	2
1336	2019-03-02 19:10:02.970383+00	99	Grupo 2 - Nordeste da LNFA 2016	1	[{"added": {}}]	18	2
1337	2019-03-02 19:11:54.989592+00	100	Grupo 1 - Sudeste da LNFA 2017	1	[{"added": {}}]	18	2
1338	2019-03-02 19:13:56.243851+00	101	Grupo 2 - Sudeste da LNFA 2017	1	[{"added": {}}]	18	2
1339	2019-03-02 19:21:49.420391+00	102	Grupo 3 - Sudeste da LNFA 2017	1	[{"added": {}}]	18	2
1340	2019-03-02 19:33:43.508269+00	103	Grupo 1 - Sul da LNFA 2017	1	[{"added": {}}]	18	2
1341	2019-03-02 19:36:42.305468+00	104	Grupo 2 - Sul da LNFA 2017	1	[{"added": {}}]	18	2
1342	2019-03-02 19:37:52.909374+00	105	Grupo - Centro-Oeste da LNFA 2017	1	[{"added": {}}]	18	2
1343	2019-03-02 19:38:32.388835+00	106	Grupo 1 - Nordeste da LNFA 2017	1	[{"added": {}}]	18	2
1344	2019-03-02 19:39:22.375221+00	107	Grupo 2 - Nordeste da LNFA 2017	1	[{"added": {}}]	18	2
1345	2019-03-02 19:44:24.724778+00	108	Grupo 1 - Sudeste da LNFA 2018	1	[{"added": {}}]	18	2
1346	2019-03-02 19:45:20.444611+00	109	Grupo 2 - Sudeste da LNFA 2018	1	[{"added": {}}]	18	2
1347	2019-03-02 19:45:57.402695+00	110	Grupo 3 - Sudeste da LNFA 2018	1	[{"added": {}}]	18	2
1348	2019-03-02 19:46:41.506634+00	111	Grupo 4 - Sudeste da LNFA 2018	1	[{"added": {}}]	18	2
1349	2019-03-02 19:47:29.76005+00	112	Grupo 1 - Sul da LNFA 2018	1	[{"added": {}}]	18	2
1350	2019-03-02 19:47:59.674995+00	32	Ijuí Drones	2	[]	15	2
1351	2019-03-02 19:48:55.843474+00	113	Grupo 2 - Sul da LNFA 2018	1	[{"added": {}}]	18	2
1352	2019-03-02 19:49:35.192714+00	114	Grupo 3 - Sul da LNFA 2018	1	[{"added": {}}]	18	2
1353	2019-03-02 19:50:32.001735+00	115	Grupo - Centro-Oeste da LNFA 2018	1	[{"added": {}}]	18	2
1354	2019-03-02 19:52:32.080381+00	116	Grupo 1 - Nordeste da LNFA 2018	1	[{"added": {}}]	18	2
1355	2019-03-02 19:53:03.113761+00	117	Grupo 2 - Nordeste da LNFA 2018	1	[{"added": {}}]	18	2
1356	2019-03-02 19:53:47.929026+00	118	Grupo 3 - Nordeste da LNFA 2018	1	[{"added": {}}]	18	2
1357	2019-03-02 19:54:49.765545+00	119	Grupo 1 - Norte da LNFA 2018	1	[{"added": {}}]	18	2
1358	2019-03-02 19:55:56.359253+00	120	Grupo 2 - Norte da LNFA 2018	1	[{"added": {}}]	18	2
1359	2019-03-02 20:48:23.130681+00	230	Joinville Panzers	1	[{"added": {}}]	15	2
1360	2019-03-02 20:50:27.094557+00	117	Paulínia - SP	1	[{"added": {}}]	8	2
1361	2019-03-02 20:51:02.906238+00	231	Paulínia Mavericks	1	[{"added": {}}]	15	2
1362	2019-03-02 20:51:48.542333+00	232	Fluminense Guerreiros	1	[{"added": {}}]	15	2
1363	2019-03-02 20:52:48.066312+00	118	São Leopoldo - RS	1	[{"added": {}}]	8	2
1364	2019-03-02 20:53:08.784351+00	233	São Leopoldo Mustangs	1	[{"added": {}}]	15	2
1365	2019-03-02 20:53:59.764965+00	95	Grupo - Sul da SLN 2016	2	[{"changed": {"fields": ["teams"]}}]	18	2
1366	2019-03-02 20:54:25.79326+00	104	Grupo 2 - Sul da LNFA 2017	2	[{"changed": {"fields": ["teams"]}}]	18	2
1367	2019-03-02 20:54:48.388403+00	94	Grupo 2 - Sudeste da LNFA 2016	2	[{"changed": {"fields": ["teams"]}}]	18	2
1368	2019-03-02 20:55:06.165646+00	100	Grupo 1 - Sudeste da LNFA 2017	2	[{"changed": {"fields": ["teams"]}}]	18	2
1369	2019-03-02 20:56:21.423013+00	34	BFA 2019	1	[{"added": {}}]	21	2
1370	2019-03-02 20:56:31.224017+00	35	LNFA 2019	1	[{"added": {}}]	21	2
1371	2019-03-02 20:56:50.185438+00	75	Centro-Oeste da BFA 2019	1	[{"added": {}}]	17	2
1372	2019-03-02 20:56:56.585028+00	76	Nordeste da BFA 2019	1	[{"added": {}}]	17	2
1373	2019-03-02 20:57:02.091414+00	77	Sul da BFA 2019	1	[{"added": {}}]	17	2
1374	2019-03-02 20:57:09.541811+00	78	Sudeste da BFA 2019	1	[{"added": {}}]	17	2
1375	2019-03-02 20:57:22.519037+00	79	Centro-Oeste da LNFA 2019	1	[{"added": {}}]	17	2
1376	2019-03-02 20:57:35.080343+00	80	Nordeste da LNFA 2019	1	[{"added": {}}]	17	2
1377	2019-03-02 20:57:50.67679+00	81	Norte da LNFA 2019	1	[{"added": {}}]	17	2
1378	2019-03-02 20:58:00.15103+00	82	Sul da LNFA 2019	1	[{"added": {}}]	17	2
1379	2019-03-02 20:58:09.833994+00	83	Sudeste da LNFA 2019	1	[{"added": {}}]	17	2
1380	2019-03-02 20:59:55.117842+00	121	Grupo 1 - Norte da LNFA 2019	1	[{"added": {}}]	18	2
1381	2019-03-02 21:00:40.695701+00	122	Grupo 2 - Norte da LNFA 2019	1	[{"added": {}}]	18	2
1382	2019-03-02 21:01:43.650415+00	37	Lobos Guerreiros	2	[{"changed": {"fields": ["logo"]}}]	15	2
1383	2019-03-02 21:05:48.238511+00	123	Grupo 1 - Sul da LNFA 2019	1	[{"added": {}}]	18	2
1384	2019-03-02 21:06:54.877894+00	124	Grupo 2 - Sul da LNFA 2019	1	[{"added": {}}]	18	2
1385	2019-03-03 04:01:45.569781+00	125	Grupo - Sul da BFA 2019	1	[{"added": {}}]	18	2
1386	2019-03-03 04:03:08.457925+00	126	Grupo - Centro-Oeste da BFA 2019	1	[{"added": {}}]	18	2
1387	2019-03-03 04:09:30.915994+00	146	Cane Cutters	2	[{"changed": {"fields": ["name"]}}]	15	2
1388	2019-03-03 04:09:56.273124+00	29	Galaxy	2	[{"changed": {"fields": ["name"]}}]	15	2
1389	2019-03-09 20:45:52.242292+00	18	Challengers	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1390	2019-03-09 20:46:45.973978+00	84	Universo Rednecks	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1391	2019-03-09 20:47:12.832907+00	7	Black Hawks	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1392	2019-03-09 20:47:36.793431+00	41	Manaus Cavaliers	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1393	2019-03-09 20:48:35.964287+00	53	Portuguesa	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1394	2019-03-09 20:50:14.735151+00	60	Rondonópolis Hawks	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1395	2019-03-09 20:50:43.115007+00	62	Santa Cruz Pirates	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1396	2019-03-09 20:52:06.537226+00	70	Sorocaba Vipers	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1397	2019-03-09 20:52:36.144059+00	80	Vingadores	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1398	2019-03-09 20:53:17.10692+00	99	Joinville Gladiators	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1399	2019-03-09 20:54:04.14839+00	11	Brown Spiders	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1400	2019-03-09 20:54:18.98409+00	28	Foz do Iguaçu Black Sharks	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1401	2019-03-09 20:54:31.84157+00	69	Sinop Coyotes	2	[{"changed": {"fields": ["foundation"]}}]	15	2
1402	2019-03-25 00:09:16.908316+00	207	Brasília Alligators	2	[{"changed": {"fields": ["logo"]}}]	15	2
1403	2019-04-01 14:59:59.544011+00	53	Semana 11	3		20	1
1404	2019-04-01 14:59:59.558806+00	42	Semana 4	3		20	1
1405	2019-04-01 14:59:59.565575+00	45	Semana 7	3		20	1
1406	2019-04-01 14:59:59.570294+00	52	Semana 10	3		20	1
1407	2019-04-01 14:59:59.577431+00	56	Final	3		20	1
1408	2019-04-01 14:59:59.582462+00	41	Semana 3	3		20	1
1409	2019-04-01 14:59:59.587461+00	55	Semifinal	3		20	1
1410	2019-04-01 14:59:59.59196+00	51	Semana 9	3		20	1
1411	2019-04-01 14:59:59.596495+00	40	Semana 2	3		20	1
1412	2019-04-01 14:59:59.600948+00	44	Semana 6	3		20	1
1413	2019-04-01 14:59:59.60526+00	50	Semana 8	3		20	1
1414	2019-04-01 14:59:59.612546+00	39	Semana 1	3		20	1
1415	2019-04-01 14:59:59.622602+00	54	Semana 12	3		20	1
1416	2019-04-01 14:59:59.632263+00	43	Semana 5	3		20	1
1417	2019-04-01 15:02:04.98773+00	57	Semana 1	1	[{"added": {}}]	20	1
1418	2019-04-01 15:02:19.09829+00	58	Semana 2	1	[{"added": {}}]	20	1
1419	2019-04-01 15:02:30.431293+00	59	Semana 3	1	[{"added": {}}]	20	1
1420	2019-04-03 03:19:01.478336+00	3	papel	2	[]	4	1
1421	2019-04-03 03:19:40.818709+00	3	papel	2	[{"changed": {"fields": ["password"]}}]	4	1
1422	2019-04-04 02:19:26.982994+00	59	Semana 3	3		20	2
1423	2019-04-04 02:19:26.991013+00	58	Semana 2	3		20	2
1424	2019-04-04 02:19:26.997088+00	57	Semana 1	3		20	2
1425	2019-04-04 02:20:52.990998+00	60	Semana 1	1	[{"added": {}}]	20	2
1426	2019-04-04 02:21:10.941153+00	61	Semana 2	1	[{"added": {}}]	20	2
1427	2019-04-04 02:21:28.263801+00	62	Semana 3	1	[{"added": {}}]	20	2
1428	2019-04-04 02:21:45.02074+00	63	Semana 4	1	[{"added": {}}]	20	2
1429	2019-04-04 02:22:08.634525+00	64	Semana 5	1	[{"added": {}}]	20	2
1430	2019-04-04 02:22:29.901531+00	65	Semana 6	1	[{"added": {}}]	20	2
1431	2019-04-04 02:23:15.668378+00	65	Semana 6	2	[{"changed": {"fields": ["week"]}}]	20	2
1432	2019-04-04 02:23:32.403553+00	66	Semana 7	1	[{"added": {}}]	20	2
1433	2019-04-04 02:23:52.859454+00	67	Semana 8	1	[{"added": {}}]	20	2
1434	2019-04-04 02:24:09.150625+00	68	Semana 9	1	[{"added": {}}]	20	2
1435	2019-04-04 02:24:37.477123+00	69	Semana 10	1	[{"added": {}}]	20	2
1436	2019-04-04 02:24:56.600863+00	70	Semana 11	1	[{"added": {}}]	20	2
1437	2019-04-04 02:25:20.726783+00	71	Semana 12	1	[{"added": {}}]	20	2
1438	2019-04-04 02:25:43.476865+00	72	Semana 13	1	[{"added": {}}]	20	2
1439	2019-04-04 02:26:08.241832+00	68	Semana 9	2	[{"changed": {"fields": ["week"]}}]	20	2
1440	2019-04-04 02:26:25.000391+00	67	Semana 8	2	[{"changed": {"fields": ["week"]}}]	20	2
1441	2019-04-04 02:27:24.743405+00	73	Semana 14	1	[{"added": {}}]	20	2
1442	2019-04-04 02:27:46.254444+00	74	Semana 15	1	[{"added": {}}]	20	2
1443	2019-04-04 02:28:09.886585+00	75	Semana 16	1	[{"added": {}}]	20	2
1444	2019-04-04 02:57:51.40664+00	3	None:Brasília Templários x Campo Grande Predadores	1	[{"added": {}}]	19	1
1445	2019-04-04 02:59:58.167438+00	3	None:Brasília Templários x Campo Grande Predadores	3		19	2
1446	2019-04-04 03:04:08.975392+00	4	None:Campo Grande Predadores x Brasília Templários	1	[{"added": {}}]	19	1
1447	2019-04-04 03:04:34.61235+00	4	None:Campo Grande Predadores x Brasília Templários	3		19	1
1448	2019-04-04 03:04:57.461369+00	516	Campo Grande Predadores	2	[{"changed": {"fields": ["draws"]}}]	23	1
1449	2019-04-04 03:05:09.525551+00	514	Brasília Templários	2	[{"changed": {"fields": ["draws"]}}]	23	1
1450	2019-04-04 03:39:51.205568+00	5	None:Jaraguá Breakers x Santa Maria Soldiers	1	[{"added": {}}]	19	1
1451	2019-04-04 03:40:22.151674+00	5	None:Jaraguá Breakers x Santa Maria Soldiers	3		19	1
1452	2019-04-09 20:20:41.714619+00	126	Grupo 1 - Centro-Oeste da BFA 2019	2	[{"changed": {"fields": ["name", "teams"]}}]	18	2
1453	2019-04-09 20:20:57.404084+00	126	Grupo 1 - Centro-Oeste da BFA 2019	2	[{"changed": {"fields": ["teams"]}}]	18	2
1454	2019-04-09 20:22:23.456157+00	127	Grupo 2 - Centro-Oeste da BFA 2019	1	[{"added": {}}]	18	2
1455	2019-04-09 20:30:09.308367+00	73	Timbó Rex	2	[{"changed": {"fields": ["logo"]}}]	15	2
1456	2019-04-09 20:31:03.518027+00	128	Grupo 1 - Nordeste da BFA 2019	1	[{"added": {}}]	18	2
1457	2019-04-09 20:32:20.541875+00	129	Grupo 2 - Nordeste da BFA 2019	1	[{"added": {}}]	18	2
1458	2019-04-09 20:33:13.39524+00	130	Grupo 1 - Sudeste da BFA 2019	1	[{"added": {}}]	18	2
1459	2019-04-09 20:35:46.780555+00	131	Grupo 2 - Sudeste da BFA 2019	1	[{"added": {}}]	18	2
1460	2019-04-09 20:36:39.509314+00	6	None:Rondonópolis Hawks x Sinop Coyotes	1	[{"added": {}}]	19	2
1461	2019-04-09 20:36:57.049288+00	7	None:Galo x Tritões	1	[{"added": {}}]	19	2
1462	2019-04-09 20:37:45.286359+00	8	None:João Pessoa Espectros x Santa Cruz Pirates	1	[{"added": {}}]	19	2
1463	2019-04-09 20:38:00.185162+00	9	None:Cavalaria 2 de Julho x Recife Mariners	1	[{"added": {}}]	19	2
1464	2019-04-09 20:39:43.448776+00	10	None:Ceará Caçadores x Ufersa Petroleiros	1	[{"added": {}}]	19	2
1465	2019-04-09 20:39:58.07539+00	11	None:Bulls Potiguares x Natal Scorpions	1	[{"added": {}}]	19	2
1466	2019-04-09 20:41:29.088364+00	12	None:Sorriso Hornets x Cuiabá Arsenal	1	[{"added": {}}]	19	2
1467	2019-04-09 20:41:45.576573+00	13	None:Brasília Templários x Tubarões do Cerrado	1	[{"added": {}}]	19	2
1468	2019-04-09 20:42:03.138028+00	14	None:Campo Grande Predadores x Leões de Judá	1	[{"added": {}}]	19	2
1469	2019-04-14 04:48:23.591791+00	4	rafael	1	[{"added": {}}]	4	1
1470	2019-04-14 04:48:58.011789+00	4	rafael	2	[{"changed": {"fields": ["is_staff", "is_superuser"]}}]	4	1
1471	2019-04-15 16:12:05.666736+00	76	Semana 1 da TTD 2009	1	[{"added": {}}]	20	3
1472	2019-04-15 16:12:38.985891+00	77	Semana 2 da TTD 2009	1	[{"added": {}}]	20	3
1473	2019-04-15 16:13:27.727883+00	78	Semana 3 da TTD 2009	1	[{"added": {}}]	20	3
1474	2019-04-15 16:13:41.68202+00	76	Semana 1 da TTD 2009	2	[]	20	3
1475	2019-04-15 16:15:27.039496+00	79	Semana 4 da TTD 2009	1	[{"added": {}}]	20	3
1476	2019-04-15 16:15:46.817593+00	80	Semana 5 da TTD 2009	1	[{"added": {}}]	20	3
1477	2019-04-15 16:16:01.480662+00	80	Semana 5 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	3
1478	2019-04-15 16:16:53.175637+00	81	Semana 6 da TTD 2009	1	[{"added": {}}]	20	3
1479	2019-04-15 16:17:25.449847+00	82	Semana 7 da TTD 2009	1	[{"added": {}}]	20	3
1480	2019-04-15 16:17:38.375633+00	79	Semana 4 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1481	2019-04-15 16:17:44.860665+00	76	Semana 1 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1482	2019-04-15 16:17:51.417279+00	77	Semana 2 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1483	2019-04-15 16:18:10.520239+00	83	Semana 8 da TTD 2009	1	[{"added": {}}]	20	3
1484	2019-04-15 16:18:21.174498+00	84	Semana 9 da TTD 2009	1	[{"added": {}}]	20	3
1485	2019-04-15 16:19:34.775438+00	84	Semana 9 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	3
1486	2019-04-15 16:19:59.892654+00	85	Semana 10 da TTD 2009	1	[{"added": {}}]	20	3
1487	2019-04-15 16:20:12.573847+00	86	Semana 11 da TTD 2009	1	[{"added": {}}]	20	3
1488	2019-04-15 16:20:32.353694+00	87	Semana 12 da TTD 2009	1	[{"added": {}}]	20	3
1489	2019-04-15 16:20:49.031781+00	88	Semifinal da TTD 2009	1	[{"added": {}}]	20	3
1490	2019-04-15 16:21:03.466154+00	89	Final da TTD 2009	1	[{"added": {}}]	20	3
1491	2019-04-15 16:24:10.91563+00	87	Semana 12 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1492	2019-04-15 16:24:16.956774+00	86	Semana 11 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1493	2019-04-15 16:24:23.721198+00	85	Semana 10 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1494	2019-04-15 16:24:28.830841+00	82	Semana 7 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1495	2019-04-15 16:24:33.660968+00	80	Semana 5 da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	2
1496	2019-04-15 16:24:50.245446+00	15	None:Joinville Gladiators x Brown Spiders	1	[{"added": {}}]	19	3
1497	2019-04-15 16:25:24.049935+00	16	None:São Paulo Storm x Sorocaba Vipers	1	[{"added": {}}]	19	3
1498	2019-04-15 16:26:55.127322+00	17	None:Brown Spiders x Coritiba Crocodiles	1	[{"added": {}}]	19	3
1499	2019-04-15 16:27:33.194753+00	18	None:Flamengo Imperadores x São Paulo Storm	1	[{"added": {}}]	19	3
1500	2019-04-15 16:28:14.163392+00	19	None:Tubarões do Cerrado x Cuiabá Arsenal	1	[{"added": {}}]	19	3
1501	2019-04-15 16:28:44.700189+00	20	None:Coritiba Crocodiles x Joinville Gladiators	1	[{"added": {}}]	19	3
1502	2019-04-15 16:29:09.584286+00	21	None:São Paulo Storm x Flamengo Imperadores	1	[{"added": {}}]	19	3
1503	2019-04-15 16:29:36.690641+00	22	None:Sorocaba Vipers x Flamengo Imperadores	1	[{"added": {}}]	19	3
1504	2019-04-15 16:30:08.733469+00	23	None:Coritiba Crocodiles x Brown Spiders	1	[{"added": {}}]	19	3
1505	2019-04-15 16:31:39.513065+00	24	None:Flamengo Imperadores x Sorocaba Vipers	1	[{"added": {}}]	19	3
1506	2019-04-15 16:32:12.701309+00	25	None:Joinville Gladiators x Coritiba Crocodiles	1	[{"added": {}}]	19	3
1507	2019-04-15 16:32:39.00778+00	26	None:Cuiabá Arsenal x Tubarões do Cerrado	1	[{"added": {}}]	19	3
1508	2019-04-15 16:33:02.306863+00	27	None:Sorocaba Vipers x São Paulo Storm	1	[{"added": {}}]	19	3
1509	2019-04-15 16:33:29.414853+00	28	None:Brown Spiders x Joinville Gladiators	1	[{"added": {}}]	19	3
1510	2019-04-15 16:33:57.589331+00	29	None:São Paulo Storm x Cuiabá Arsenal	1	[{"added": {}}]	19	3
1511	2019-04-15 16:34:24.6788+00	30	None:Coritiba Crocodiles x Flamengo Imperadores	1	[{"added": {}}]	19	3
1512	2019-04-15 16:34:49.06915+00	31	None:São Paulo Storm x Flamengo Imperadores	1	[{"added": {}}]	19	3
1513	2019-04-15 16:59:42.338482+00	88	Semifinal da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	1
1514	2019-04-15 17:00:35.756117+00	88	Semifinal da TTD 2009	2	[{"changed": {"fields": ["week"]}}]	20	1
1515	2019-04-21 00:00:53.355565+00	1	Nacional	1	[{"added": {}}]	25	1
1516	2019-04-21 00:00:57.801902+00	2	Estadual	1	[{"added": {}}]	25	1
1517	2019-04-21 00:01:01.901124+00	3	Outros	1	[{"added": {}}]	25	1
1518	2019-04-21 00:01:16.677434+00	4	Brasil Futebol Americano	2	[{"changed": {"fields": ["category"]}}]	16	1
1519	2019-04-21 00:01:27.951794+00	3	Torneio Touchdown	2	[{"changed": {"fields": ["category"]}}]	16	1
1520	2019-04-21 00:01:41.704783+00	5	Superliga Nacional	2	[{"changed": {"fields": ["category"]}}]	16	1
1521	2019-04-21 00:01:49.620183+00	6	Liga Nacional	2	[{"changed": {"fields": ["category"]}}]	16	1
1522	2019-04-21 00:01:57.304307+00	7	Liga Brasileira	2	[{"changed": {"fields": ["category"]}}]	16	1
1523	2019-04-21 00:02:04.779665+00	8	Campeonato Brasileiro	2	[{"changed": {"fields": ["category"]}}]	16	1
1524	2019-05-05 05:37:54.127374+00	1	1º Divisão	1	[{"added": {}}]	26	1
1525	2019-05-05 05:37:58.418787+00	2	2º Divisão	1	[{"added": {}}]	26	1
1526	2019-05-05 05:38:04.151121+00	3	Outros	1	[{"added": {}}]	26	1
1527	2019-05-05 05:38:12.042134+00	4	Inativos	1	[{"added": {}}]	26	1
1528	2019-05-05 05:38:42.279004+00	56	Recife Mariners	2	[{"changed": {"fields": ["category"]}}]	15	1
1529	2019-05-05 05:38:58.19668+00	55	Recife Apaches	2	[{"changed": {"fields": ["category"]}}]	15	1
1530	2019-05-05 05:39:11.727661+00	48	Olinda Sharks	2	[{"changed": {"fields": ["category"]}}]	15	1
1531	2019-05-05 05:39:35.027564+00	2	Arcoverde Templários	2	[{"changed": {"fields": ["category"]}}]	15	1
1532	2019-05-05 20:18:39.024956+00	1	1º Divisão	2	[]	26	2
1533	2019-05-05 20:19:03.373698+00	1	América Locomotiva	2	[{"changed": {"fields": ["category"]}}]	15	2
1534	2019-05-05 20:19:37.905209+00	10	Brasília Templários	2	[{"changed": {"fields": ["category"]}}]	15	2
1535	2019-05-05 20:19:43.063641+00	12	Bulls Potiguares	2	[{"changed": {"fields": ["category"]}}]	15	2
1536	2019-05-05 20:19:47.97942+00	13	Campo Grande Predadores	2	[{"changed": {"fields": ["category"]}}]	15	2
1537	2019-05-06 12:49:08.615088+00	24	Cuiabá Arsenal	2	[{"changed": {"fields": ["category"]}}]	15	2
1538	2019-05-06 12:49:15.08576+00	69	Sinop Coyotes	2	[{"changed": {"fields": ["category"]}}]	15	2
1539	2019-05-06 12:49:21.263891+00	60	Rondonópolis Hawks	2	[{"changed": {"fields": ["category"]}}]	15	2
1540	2019-05-06 12:49:28.694471+00	71	Sorriso Hornets	2	[{"changed": {"fields": ["category"]}}]	15	2
1541	2019-05-06 12:52:05.677704+00	36	Leões de Judá	2	[{"changed": {"fields": ["category"]}}]	15	2
1542	2019-05-06 16:50:28.26532+00	76	Tubarões do Cerrado	2	[{"changed": {"fields": ["category"]}}]	15	2
1543	2019-05-06 16:50:36.468164+00	17	Ceará Caçadores	2	[{"changed": {"fields": ["category"]}}]	15	2
1544	2019-05-06 16:50:43.316815+00	16	Cavalaria 2 de Julho	2	[{"changed": {"fields": ["category"]}}]	15	2
1545	2019-05-06 16:50:50.206642+00	34	João Pessoa Espectros	2	[{"changed": {"fields": ["category"]}}]	15	2
1546	2019-05-06 16:50:59.531103+00	78	Ufersa Petroleiros	2	[{"changed": {"fields": ["category"]}}]	15	2
1547	2019-05-06 16:51:07.05493+00	62	Santa Cruz Pirates	2	[{"changed": {"fields": ["category"]}}]	15	2
1548	2019-05-06 16:51:15.977644+00	45	Natal Scorpions	2	[{"changed": {"fields": ["category"]}}]	15	2
1549	2019-05-06 16:51:39.167198+00	20	Corinthians Steamrollers	2	[{"changed": {"fields": ["category"]}}]	15	2
1550	2019-05-06 16:51:46.909732+00	27	Flamengo Imperadores	2	[{"changed": {"fields": ["category"]}}]	15	2
1551	2019-05-06 16:52:00.165805+00	30	Galo	2	[{"changed": {"fields": ["category"]}}]	15	2
1552	2019-05-06 16:52:14.629194+00	38	Macaé Oilers	2	[{"changed": {"fields": ["category"]}}]	15	2
1553	2019-05-06 16:52:26.973562+00	18	Ribeirão Preto Challengers	2	[{"changed": {"fields": ["name", "category"]}}]	15	2
1554	2019-05-06 16:52:34.400349+00	53	Portuguesa	2	[{"changed": {"fields": ["category"]}}]	15	2
1555	2019-05-06 16:52:40.673605+00	67	São Paulo Storm	2	[{"changed": {"fields": ["category"]}}]	15	2
1556	2019-05-06 16:52:48.217094+00	74	Tritões	2	[{"changed": {"fields": ["category"]}}]	15	2
1557	2019-05-06 16:52:56.930521+00	157	Vasco Almirantes	2	[{"changed": {"fields": ["category"]}}]	15	2
1558	2019-05-06 16:53:03.475832+00	33	Jaraguá Breakers	2	[{"changed": {"fields": ["category"]}}]	15	2
1559	2019-05-06 16:53:11.295651+00	21	Coritiba Crocodiles	2	[{"changed": {"fields": ["category"]}}]	15	2
1560	2019-05-06 16:53:21.295719+00	7	Black Hawks	2	[{"changed": {"fields": ["category"]}}]	15	2
1561	2019-05-06 16:53:29.442722+00	50	Paraná HP	2	[{"changed": {"fields": ["category"]}}]	15	2
1562	2019-05-06 16:53:41.932153+00	64	Istepôs	2	[{"changed": {"fields": ["name", "category"]}}]	15	2
1563	2019-05-06 16:53:48.318724+00	73	Timbó Rex	2	[{"changed": {"fields": ["category"]}}]	15	2
1564	2019-05-06 16:53:55.02237+00	63	Santa Maria Soldiers	2	[{"changed": {"fields": ["category"]}}]	15	2
1565	2019-05-06 17:27:15.754489+00	234	Leões de Judá Development	1	[{"added": {}}]	15	2
1566	2019-05-06 17:28:17.901447+00	235	Recife Mariners Development	1	[{"added": {}}]	15	2
1567	2019-05-06 17:45:28.864801+00	90	Brasília V8	2	[{"changed": {"fields": ["category"]}}]	15	2
1568	2019-05-06 17:45:36.435904+00	91	Brasília Wizards	2	[{"changed": {"fields": ["category"]}}]	15	2
1569	2019-05-06 17:45:46.195946+00	57	Recife Vikings	2	[{"changed": {"fields": ["category"]}}]	15	2
1570	2019-05-06 17:45:59.331962+00	14	Carrancas	2	[{"changed": {"fields": ["category"]}}]	15	2
1571	2019-05-06 17:46:11.524752+00	59	Roma Gladiadores	2	[{"changed": {"fields": ["category"]}}]	15	2
1572	2019-05-06 17:46:18.67545+00	39	Maceió Marechais	2	[{"changed": {"fields": ["category"]}}]	15	2
1573	2019-05-06 17:46:25.980037+00	68	Sergipe Redentores	2	[{"changed": {"fields": ["category"]}}]	15	2
1574	2019-05-06 17:47:02.046017+00	65	São Luís Sharks	2	[{"changed": {"fields": ["category"]}}]	15	2
1575	2019-05-06 17:47:09.005201+00	95	Fortaleza Tritões	2	[{"changed": {"fields": ["category"]}}]	15	2
1576	2019-05-06 17:47:12.94229+00	75	Tropa Campina	2	[{"changed": {"fields": ["category"]}}]	15	2
1577	2019-05-06 17:47:16.505088+00	15	Caruaru Wolves	2	[{"changed": {"fields": ["category"]}}]	15	2
1578	2019-05-06 17:47:19.949941+00	31	Goiânia Saints	2	[{"changed": {"fields": ["category"]}}]	15	2
1579	2019-05-06 17:49:07.765565+00	120	Amazon Black Hawks	2	[{"changed": {"fields": ["category"]}}]	15	2
1580	2019-05-06 17:49:15.772541+00	40	Manaus Broncos	2	[{"changed": {"fields": ["category"]}}]	15	2
1581	2019-05-06 17:49:22.172312+00	41	Manaus Cavaliers	2	[{"changed": {"fields": ["category"]}}]	15	2
1582	2019-05-06 17:49:28.510466+00	42	Manaus Raptors	2	[{"changed": {"fields": ["category"]}}]	15	2
1583	2019-05-06 17:49:34.628858+00	46	North Lions	2	[{"changed": {"fields": ["category"]}}]	15	2
1584	2019-05-06 17:49:41.253394+00	51	Paysandu Lobos	2	[{"changed": {"fields": ["category"]}}]	15	2
1585	2019-05-06 17:49:47.103258+00	58	Remo Lions	2	[{"changed": {"fields": ["category"]}}]	15	2
1586	2019-05-06 17:49:52.932974+00	58	Remo Lions	2	[]	15	2
1587	2019-05-06 17:49:58.608963+00	77	Tupinambás	2	[{"changed": {"fields": ["category"]}}]	15	2
1588	2019-05-06 17:50:04.804661+00	80	Vingadores	2	[{"changed": {"fields": ["category"]}}]	15	2
1589	2019-05-06 17:50:59.042984+00	3	Armada Lions	2	[{"changed": {"fields": ["category"]}}]	15	2
1590	2019-05-06 17:51:04.709119+00	125	Canoas Bulls	2	[{"changed": {"fields": ["category"]}}]	15	2
1591	2019-05-06 17:51:32.068359+00	61	Santa Cruz Chacais	2	[{"changed": {"fields": ["category"]}}]	15	2
1592	2019-05-06 17:51:39.517311+00	52	Porto Alegre Gorillas	2	[{"changed": {"fields": ["category"]}}]	15	2
1593	2019-05-06 17:51:46.994716+00	35	Juventude	2	[{"changed": {"fields": ["category"]}}]	15	2
1594	2019-05-06 17:51:53.125228+00	5	Bento Gonçalves Snakes	2	[{"changed": {"fields": ["category"]}}]	15	2
1595	2019-05-06 17:51:59.88475+00	43	Maringá Pyros	2	[{"changed": {"fields": ["category"]}}]	15	2
1596	2019-05-06 17:52:07.986432+00	11	Brown Spiders	2	[{"changed": {"fields": ["category"]}}]	15	2
1597	2019-05-06 17:54:23.23618+00	8	Blaze	2	[{"changed": {"fields": ["category"]}}]	15	2
1598	2019-05-06 17:54:29.19576+00	6	Betim Bulldogs	2	[{"changed": {"fields": ["category"]}}]	15	2
1599	2019-05-06 17:54:36.202697+00	191	Delta	2	[{"changed": {"fields": ["category"]}}]	15	2
1600	2019-05-06 17:54:42.440948+00	44	Mooca Destroyers	2	[{"changed": {"fields": ["category"]}}]	15	2
1601	2019-05-06 17:54:48.213827+00	47	Nova Serrana Forgeds	2	[{"changed": {"fields": ["category"]}}]	15	2
1602	2019-05-06 17:54:56.99473+00	54	Univás Gladiadores	2	[{"changed": {"fields": ["name"]}}]	15	2
1603	2019-05-06 17:55:02.951884+00	19	Contagem Incofidentes	2	[{"changed": {"fields": ["category"]}}]	15	2
1604	2019-05-06 17:55:09.032098+00	26	Espírito Santo Black Knights	2	[{"changed": {"fields": ["category"]}}]	15	2
1605	2019-05-06 17:55:23.84818+00	66	Tatuapé Monsters	2	[{"changed": {"fields": ["category"]}}]	15	2
1606	2019-05-06 17:55:29.883762+00	25	Dark Owls	2	[{"changed": {"fields": ["category"]}}]	15	2
1607	2019-05-06 17:55:35.185141+00	49	Palmeiras Locomotives	2	[{"changed": {"fields": ["category"]}}]	15	2
1608	2019-05-06 17:55:40.885684+00	72	Spartans	2	[{"changed": {"fields": ["category"]}}]	15	2
1609	2019-05-06 17:56:08.218201+00	97	Tigres	2	[{"changed": {"fields": ["name", "shortName", "category"]}}]	15	2
1610	2019-05-06 17:56:14.850327+00	138	Tomahawk	2	[{"changed": {"fields": ["category"]}}]	15	2
1611	2019-05-06 17:56:20.425848+00	70	Sorocaba Vipers	2	[{"changed": {"fields": ["category"]}}]	15	2
1612	2019-05-06 17:56:26.541872+00	150	Rio Preto Weilers	2	[{"changed": {"fields": ["category"]}}]	15	2
1613	2019-05-06 17:57:27.387071+00	4	Belém Titans	2	[{"changed": {"fields": ["category"]}}]	15	2
1614	2019-05-06 17:59:24.106664+00	54	Univás Gladiadores	2	[{"changed": {"fields": ["category"]}}]	15	2
1615	2019-05-06 18:05:58.668134+00	144	Moon Howlers	2	[{"changed": {"fields": ["category"]}}]	15	2
1616	2019-05-06 18:08:09.819375+00	27	Flamengo Imperadores	2	[{"changed": {"fields": ["logo"]}}]	15	2
1617	2019-05-06 18:08:58.785521+00	38	Macaé Oilers	2	[{"changed": {"fields": ["logo"]}}]	15	2
1618	2019-05-06 18:09:01.529991+00	38	Macaé Oilers	2	[{"changed": {"fields": ["logo"]}}]	15	2
1619	2019-05-06 18:10:13.110107+00	61	Santa Cruz Chacais	2	[{"changed": {"fields": ["primaryColor", "secundaryColor", "terciaryColor"]}}]	15	2
1620	2019-05-06 18:10:34.147579+00	61	Santa Cruz Chacais	2	[{"changed": {"fields": ["logo"]}}]	15	2
1621	2019-05-06 18:11:09.431851+00	61	Santa Cruz Chacais	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
1622	2019-05-06 18:12:10.22841+00	138	Tomahawk	2	[{"changed": {"fields": ["logo"]}}]	15	2
1623	2019-05-07 22:19:10.665598+00	64	Istepôs	2	[{"changed": {"fields": ["logo"]}}]	15	2
1624	2019-05-07 22:20:55.160659+00	36	Leões de Judá	2	[{"changed": {"fields": ["logo"]}}]	15	2
1625	2019-05-07 22:21:13.29779+00	234	Leões de Judá Development	2	[{"changed": {"fields": ["logo"]}}]	15	2
1626	2019-05-07 22:22:36.95755+00	69	Sinop Coyotes	2	[{"changed": {"fields": ["logo"]}}]	15	2
1627	2019-05-07 22:28:03.354624+00	73	Timbó Rex	2	[{"changed": {"fields": ["logo"]}}]	15	2
1628	2019-05-07 22:28:43.724534+00	73	Timbó Rex	2	[{"changed": {"fields": ["logo"]}}]	15	2
1629	2019-05-07 22:28:58.912161+00	73	Timbó Rex	2	[{"changed": {"fields": ["terciaryColor"]}}]	15	2
1630	2019-05-07 22:29:26.082916+00	74	Tritões	2	[{"changed": {"fields": ["terciaryColor"]}}]	15	2
1631	2019-05-07 22:31:41.769553+00	76	Tubarões do Cerrado	2	[{"changed": {"fields": ["logo"]}}]	15	2
1632	2019-05-07 22:33:13.776654+00	30	Galo	2	[{"changed": {"fields": ["logo"]}}]	15	2
1633	2019-05-07 22:33:18.260732+00	30	Galo	2	[{"changed": {"fields": ["logo"]}}]	15	2
1634	2019-05-07 22:34:01.850271+00	119	ABC Corsários	2	[{"changed": {"fields": ["primaryColor"]}}]	15	2
1635	2019-05-07 22:34:15.117685+00	119	ABC Corsários	2	[{"changed": {"fields": ["primaryColor"]}}]	15	2
1636	2019-05-07 22:34:22.863392+00	30	Galo	2	[{"changed": {"fields": ["primaryColor", "secundaryColor"]}}]	15	2
1637	2019-05-07 22:35:55.508844+00	21	Coritiba Crocodiles	2	[{"changed": {"fields": ["logo", "terciaryColor"]}}]	15	2
1638	2019-05-07 22:36:18.515355+00	21	Coritiba Crocodiles	2	[{"changed": {"fields": ["terciaryColor"]}}]	15	2
1639	2019-05-07 22:37:38.596674+00	20	Corinthians Steamrollers	2	[{"changed": {"fields": ["logo"]}}]	15	2
1640	2019-05-07 22:39:15.316878+00	13	Campo Grande Predadores	2	[{"changed": {"fields": ["logo"]}}]	15	2
1641	2019-05-07 22:40:31.149306+00	10	Brasília Templários	2	[{"changed": {"fields": ["logo"]}}]	15	2
1642	2019-05-07 22:48:27.115475+00	119	ABC Corsários	2	[{"changed": {"fields": ["category"]}}]	15	2
1643	2019-05-07 22:48:41.282505+00	197	Ajuricaba Warriors	2	[{"changed": {"fields": ["category"]}}]	15	2
1644	2019-05-07 22:48:54.70387+00	190	América Big Riders	2	[{"changed": {"fields": ["category"]}}]	15	2
1645	2019-05-07 22:49:09.228791+00	198	Angra Destroyers	2	[{"changed": {"fields": ["category"]}}]	15	2
1646	2019-05-07 22:49:20.346106+00	121	Araçatuba Touros	2	[{"changed": {"fields": ["category"]}}]	15	2
1647	2019-05-07 22:49:48.991958+00	88	Araxá Redwolves	2	[{"changed": {"fields": ["category"]}}]	15	2
1648	2019-05-07 22:50:03.110409+00	199	Arcos Pegasus	2	[{"changed": {"fields": ["category"]}}]	15	2
1649	2019-05-07 22:50:12.848152+00	200	Armada	2	[{"changed": {"fields": ["category"]}}]	15	2
1650	2019-05-07 22:50:23.68511+00	201	Avaré Mustangs	2	[{"changed": {"fields": ["category"]}}]	15	2
1651	2019-05-07 22:53:48.655164+00	197	Ajuricaba Warriors	2	[{"changed": {"fields": ["logo"]}}]	15	2
1652	2019-05-07 22:55:22.530024+00	190	América Big Riders	2	[{"changed": {"fields": ["logo", "primaryColor", "secundaryColor", "terciaryColor"]}}]	15	2
1653	2019-05-07 22:55:40.511129+00	190	América Big Riders	2	[{"changed": {"fields": ["logo"]}}]	15	2
1654	2019-05-07 22:57:45.051375+00	202	Balneário Lobos do Mar	2	[{"changed": {"fields": ["category"]}}]	15	2
1655	2019-05-07 22:57:52.490274+00	203	Bárbaros do Vale	2	[{"changed": {"fields": ["category"]}}]	15	2
1656	2019-05-07 22:58:37.613369+00	122	Barões de Ribeirão Preto	2	[{"changed": {"fields": ["category"]}}]	15	2
1657	2019-05-07 22:58:45.251358+00	205	Blumenau Riesen	2	[{"changed": {"fields": ["category"]}}]	15	2
1658	2019-05-07 22:58:57.767059+00	193	Blumenau Vikings	2	[{"changed": {"fields": ["category"]}}]	15	2
1659	2019-05-07 22:59:05.681749+00	89	Boa Vista Nordics	2	[{"changed": {"fields": ["category"]}}]	15	2
1660	2019-05-07 22:59:12.83271+00	9	Botafogo Reptiles	2	[{"changed": {"fields": ["category"]}}]	15	2
1661	2019-05-07 22:59:25.040291+00	206	Brasil Devilz	2	[{"changed": {"fields": ["category"]}}]	15	2
1662	2019-05-07 22:59:33.871378+00	207	Brasília Alligators	2	[{"changed": {"fields": ["category"]}}]	15	2
1663	2019-05-07 23:00:04.145949+00	208	Brusque Admirals	2	[{"changed": {"fields": ["category"]}}]	15	2
1664	2019-05-07 23:00:11.033163+00	196	Brusque Weavers	2	[{"changed": {"fields": ["category"]}}]	15	2
1665	2019-05-07 23:00:19.953666+00	123	Bulldogs	2	[{"changed": {"fields": ["category"]}}]	15	2
1666	2019-05-07 23:00:26.255324+00	124	Buriers	2	[{"changed": {"fields": ["category"]}}]	15	2
1667	2019-05-07 23:35:44.710038+00	216	Cabritos	2	[{"changed": {"fields": ["category"]}}]	15	2
1668	2019-05-07 23:36:10.610166+00	92	Camboriú Broqueiros	2	[{"changed": {"fields": ["category"]}}]	15	2
1669	2019-05-07 23:36:25.409171+00	229	Campo Grande Cobras	2	[{"changed": {"fields": ["category"]}}]	15	2
1670	2019-05-07 23:36:37.120185+00	146	Cane Cutters	2	[{"changed": {"fields": ["category"]}}]	15	2
1671	2019-05-07 23:37:06.169372+00	126	Canoas Jaguars	2	[{"changed": {"fields": ["category"]}}]	15	2
1672	2019-05-07 23:37:17.402663+00	127	Caraguá Ghost Ship	2	[{"changed": {"fields": ["category"]}}]	15	2
1673	2019-05-07 23:37:23.968156+00	128	Carlos Barbosa Ximangos	2	[{"changed": {"fields": ["category"]}}]	15	2
1674	2019-05-07 23:37:34.871484+00	93	Cascavel Olympians	2	[{"changed": {"fields": ["category"]}}]	15	2
1675	2019-05-07 23:37:42.415821+00	129	Castanhal Yellow Blacks	2	[{"changed": {"fields": ["category"]}}]	15	2
1676	2019-05-07 23:37:53.062325+00	219	Ceará Cangaceiros	2	[{"changed": {"fields": ["category"]}}]	15	2
1677	2019-05-07 23:37:59.132288+00	221	Ceará Fênix	2	[{"changed": {"fields": ["category"]}}]	15	2
1678	2019-05-07 23:38:06.010005+00	224	Confiança Imortais	2	[{"changed": {"fields": ["category"]}}]	15	2
1679	2019-05-07 23:38:17.206692+00	22	Corupá Búffalos	2	[{"changed": {"fields": ["category"]}}]	15	2
1680	2019-05-07 23:38:23.868592+00	87	Criciúma Miners	2	[{"changed": {"fields": ["category"]}}]	15	2
1681	2019-05-07 23:38:31.117568+00	94	Cronos	2	[{"changed": {"fields": ["category"]}}]	15	2
1682	2019-05-07 23:38:45.828263+00	23	CSA Guerreiros	2	[{"changed": {"fields": ["category"]}}]	15	2
1683	2019-05-07 23:38:54.701965+00	130	Curitiba Guardian Saints	2	[{"changed": {"fields": ["category"]}}]	15	2
1684	2019-05-07 23:39:02.207737+00	211	Curitiba Hurricanes	2	[{"changed": {"fields": ["category"]}}]	15	2
1685	2019-05-07 23:39:08.62958+00	85	Curitiba Lions	2	[{"changed": {"fields": ["category"]}}]	15	2
1686	2019-05-07 23:39:15.942655+00	213	Curitiba Predadores	2	[{"changed": {"fields": ["category"]}}]	15	2
1687	2019-05-07 23:40:43.748057+00	227	Desportiva Piratas	2	[{"changed": {"fields": ["category"]}}]	15	2
1688	2019-05-07 23:40:50.976361+00	132	Dourados Redlands	2	[{"changed": {"fields": ["category"]}}]	15	2
1689	2019-05-07 23:40:58.600859+00	133	Dourados Tenentes	2	[{"changed": {"fields": ["category"]}}]	15	2
1690	2019-05-07 23:41:07.479866+00	218	Dragões do Mar	2	[{"changed": {"fields": ["category"]}}]	15	2
1691	2019-05-07 23:41:15.039033+00	192	Erechim Coroados	2	[{"changed": {"fields": ["category"]}}]	15	2
1692	2019-05-07 23:43:09.535122+00	232	Fluminense Guerreiros	2	[{"changed": {"fields": ["category"]}}]	15	2
1693	2019-05-07 23:43:19.208954+00	28	Foz do Iguaçu Black Sharks	2	[{"changed": {"fields": ["category"]}}]	15	2
1694	2019-05-07 23:43:41.024866+00	96	Franca Carrascos	2	[{"changed": {"fields": ["category"]}}]	15	2
1695	2019-05-07 23:44:00.985094+00	134	Francisco Beltrão Red Feet	2	[{"changed": {"fields": ["category"]}}]	15	2
1696	2019-05-07 23:44:07.622518+00	29	Galaxy	2	[{"changed": {"fields": ["category"]}}]	15	2
1697	2019-05-07 23:44:29.710865+00	228	Goiânia Tigres	2	[{"changed": {"fields": ["category"]}}]	15	2
1698	2019-05-07 23:44:38.656474+00	135	Gravataí Spartans	2	[{"changed": {"fields": ["category"]}}]	15	2
1699	2019-05-07 23:44:46.282682+00	136	Guarani Indians	2	[{"changed": {"fields": ["category"]}}]	15	2
1700	2019-05-07 23:44:54.178575+00	137	Guarapuva Dark Wolves	2	[{"changed": {"fields": ["category"]}}]	15	2
1701	2019-05-07 23:45:00.670734+00	32	Ijuí Drones	2	[{"changed": {"fields": ["category"]}}]	15	2
1702	2019-05-07 23:45:07.187935+00	98	Itaiópolis Xoklengs	2	[{"changed": {"fields": ["category"]}}]	15	2
1703	2019-05-07 23:45:15.989303+00	139	Itajaí Dockers	2	[{"changed": {"fields": ["category"]}}]	15	2
1704	2019-05-07 23:45:23.350209+00	225	Itapema White Sharks	2	[{"changed": {"fields": ["category"]}}]	15	2
1705	2019-05-07 23:45:31.069765+00	220	Jacarés do Pantanal	2	[{"changed": {"fields": ["category"]}}]	15	2
1706	2019-05-07 23:45:38.291317+00	99	Joinville Gladiators	2	[{"changed": {"fields": ["category"]}}]	15	2
1707	2019-05-07 23:45:49.677571+00	230	Joinville Panzers	2	[{"changed": {"fields": ["category"]}}]	15	2
1708	2019-05-07 23:45:57.463711+00	83	Juiz de Fora Imperadores	2	[{"changed": {"fields": ["category"]}}]	15	2
1709	2019-05-07 23:46:11.419173+00	141	Legião	2	[{"changed": {"fields": ["category"]}}]	15	2
1710	2019-05-07 23:46:28.178467+00	142	Leme Lizards	2	[{"changed": {"fields": ["category"]}}]	15	2
1711	2019-05-07 23:46:37.119618+00	37	Lobos Guerreiros	2	[{"changed": {"fields": ["category"]}}]	15	2
1712	2019-05-07 23:46:43.847328+00	100	Londrina Bristlebacks	2	[{"changed": {"fields": ["category"]}}]	15	2
1713	2019-05-07 23:46:54.732446+00	143	Luverdense Jaguars	2	[{"changed": {"fields": ["category"]}}]	15	2
1714	2019-05-07 23:47:08.145535+00	204	Magé Barões	2	[{"changed": {"fields": ["category"]}}]	15	2
1715	2019-05-07 23:47:26.042974+00	212	Mamutes	2	[{"changed": {"fields": ["category"]}}]	15	2
1716	2019-05-07 23:47:38.661511+00	101	Mauá Vikings	2	[{"changed": {"fields": ["category"]}}]	15	2
1717	2019-05-07 23:47:45.472504+00	102	Monte Alto Rippers	2	[{"changed": {"fields": ["category"]}}]	15	2
1718	2019-05-07 23:47:57.894362+00	103	Nêmesis	2	[{"changed": {"fields": ["category"]}}]	15	2
1719	2019-05-07 23:48:04.22344+00	104	Norte Paraná	2	[{"changed": {"fields": ["category"]}}]	15	2
1720	2019-05-07 23:48:16.178497+00	105	Nova Friburgo Yetis	2	[{"changed": {"fields": ["category"]}}]	15	2
1721	2019-05-07 23:48:24.935416+00	140	Ocelots	2	[{"changed": {"fields": ["category"]}}]	15	2
1722	2019-05-07 23:49:33.559848+00	82	Operário Gravediggers	2	[{"changed": {"fields": ["category"]}}]	15	2
1723	2019-05-07 23:49:40.243321+00	106	Osasco Soldiers	2	[{"changed": {"fields": ["category"]}}]	15	2
1724	2019-05-07 23:49:47.539816+00	107	Outland Soldiers	2	[{"changed": {"fields": ["category"]}}]	15	2
1725	2019-05-07 23:50:05.01472+00	108	Palotina Celtics	2	[{"changed": {"fields": ["category"]}}]	15	2
1726	2019-05-07 23:50:13.348358+00	145	Paraíso Miners	2	[{"changed": {"fields": ["category"]}}]	15	2
1727	2019-05-07 23:50:30.081684+00	109	Passos Madbulls	2	[{"changed": {"fields": ["category"]}}]	15	2
1728	2019-05-07 23:50:47.335266+00	110	Patos Red Dragons	2	[{"changed": {"fields": ["category"]}}]	15	2
1729	2019-05-07 23:50:54.866809+00	231	Paulínia Mavericks	2	[{"changed": {"fields": ["category"]}}]	15	2
1730	2019-05-07 23:52:44.265693+00	118	Votuporanga Mohawks	2	[{"changed": {"fields": ["category"]}}]	15	2
1731	2019-05-07 23:52:52.990844+00	147	Piratas da Serra	2	[{"changed": {"fields": ["category"]}}]	15	2
1732	2019-05-07 23:53:00.834423+00	194	Piratas de Copacabana	2	[{"changed": {"fields": ["category"]}}]	15	2
1733	2019-05-07 23:53:17.263648+00	209	Ponta Grossa Phantoms	2	[{"changed": {"fields": ["category"]}}]	15	2
1734	2019-05-07 23:53:24.097138+00	148	Ponte Preta Gorilas	2	[{"changed": {"fields": ["category"]}}]	15	2
1735	2019-05-07 23:53:30.096232+00	210	Porto Alegre Pumpkins	2	[{"changed": {"fields": ["category"]}}]	15	2
1736	2019-05-07 23:53:41.411322+00	111	Prudente Coronéis	2	[{"changed": {"fields": ["category"]}}]	15	2
1737	2019-05-07 23:53:47.817551+00	112	Recife Horses	2	[{"changed": {"fields": ["category"]}}]	15	2
1738	2019-05-07 23:56:32.361492+00	195	Rio de Janeiro Islanders	2	[{"changed": {"fields": ["category"]}}]	15	2
1739	2019-05-07 23:56:39.231081+00	149	Rio Football Academy	2	[{"changed": {"fields": ["category"]}}]	15	2
1740	2019-05-07 23:56:45.196461+00	215	Salvador All Saints	2	[{"changed": {"fields": ["category"]}}]	15	2
1741	2019-05-07 23:56:53.392144+00	223	Salvador Kings	2	[{"changed": {"fields": ["category"]}}]	15	2
1742	2019-05-07 23:57:00.487239+00	113	Santana Red Bulls	2	[{"changed": {"fields": ["category"]}}]	15	2
1743	2019-05-07 23:57:07.465332+00	151	Santos Tsunami	2	[{"changed": {"fields": ["category"]}}]	15	2
1744	2019-05-07 23:57:13.739259+00	114	São Bento Snakes	2	[{"changed": {"fields": ["category"]}}]	15	2
1745	2019-05-07 23:57:20.201207+00	152	São José Jets	2	[{"changed": {"fields": ["category"]}}]	15	2
1746	2019-05-07 23:57:29.155282+00	226	São José WSI	2	[{"changed": {"fields": ["category"]}}]	15	2
1747	2019-05-07 23:57:43.491062+00	233	São Leopoldo Mustangs	2	[{"changed": {"fields": ["category"]}}]	15	2
1748	2019-05-07 23:57:50.284795+00	115	São Miguel Indians	2	[{"changed": {"fields": ["category"]}}]	15	2
1749	2019-05-07 23:57:56.397864+00	116	Taquaritinga Defenders	2	[{"changed": {"fields": ["category"]}}]	15	2
1750	2019-05-07 23:58:02.699567+00	222	Treze Roosters	2	[{"changed": {"fields": ["category"]}}]	15	2
1751	2019-05-07 23:58:09.965507+00	154	Tubarão Predadores	2	[{"changed": {"fields": ["category"]}}]	15	2
1752	2019-05-07 23:58:17.110195+00	86	Uberaba Zebus	2	[{"changed": {"fields": ["category"]}}]	15	2
1753	2019-05-07 23:58:23.360675+00	117	Uberlândia Lobos	2	[{"changed": {"fields": ["category"]}}]	15	2
1754	2019-05-07 23:58:23.942995+00	117	Uberlândia Lobos	2	[]	15	2
1755	2019-05-07 23:58:30.640695+00	217	UFPR Legends	2	[{"changed": {"fields": ["category"]}}]	15	2
1756	2019-05-07 23:58:37.307367+00	155	União Snakes	2	[{"changed": {"fields": ["category"]}}]	15	2
1757	2019-05-07 23:58:44.927737+00	84	Universo Rednecks	2	[{"changed": {"fields": ["category"]}}]	15	2
1758	2019-05-07 23:58:53.398068+00	79	Vasco Patriotas	2	[{"changed": {"fields": ["category"]}}]	15	2
1759	2019-05-07 23:59:31.161581+00	156	Viamão Raptors	2	[{"changed": {"fields": ["category"]}}]	15	2
1760	2019-05-07 23:59:38.556116+00	214	Vitória Antares	2	[{"changed": {"fields": ["category"]}}]	15	2
1761	2019-05-07 23:59:47.245822+00	81	Volta Redonda Falcons	2	[{"changed": {"fields": ["category"]}}]	15	2
1762	2019-05-08 00:01:21.427207+00	230	Joinville Panzers	2	[{"changed": {"fields": ["logo"]}}]	15	2
1763	2019-05-08 00:02:16.205312+00	153	Street Dogs	2	[{"changed": {"fields": ["category"]}}]	15	2
1764	2019-05-08 00:03:56.587694+00	46	North Lions	2	[{"changed": {"fields": ["logo"]}}]	15	2
1765	2019-05-08 00:10:35.971646+00	236	Paraná HP Development	1	[{"added": {}}]	15	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	django_summernote	attachment
8	core	city
9	core	nationality
10	core	region
11	core	state
12	news	news
13	team	player
14	team	position
15	team	team
16	championship	championship
17	championship	conference
18	championship	division
19	championship	game
20	championship	round
21	championship	season
22	news	tag
23	championship	campaign
24	core	slide
25	championship	championshipcategory
26	team	teamcategory
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-10-16 03:14:59.122385+00
2	auth	0001_initial	2018-10-16 03:14:59.251534+00
3	admin	0001_initial	2018-10-16 03:14:59.291823+00
4	admin	0002_logentry_remove_auto_add	2018-10-16 03:14:59.306041+00
5	contenttypes	0002_remove_content_type_name	2018-10-16 03:14:59.336922+00
6	auth	0002_alter_permission_name_max_length	2018-10-16 03:14:59.351506+00
7	auth	0003_alter_user_email_max_length	2018-10-16 03:14:59.370525+00
8	auth	0004_alter_user_username_opts	2018-10-16 03:14:59.384626+00
9	auth	0005_alter_user_last_login_null	2018-10-16 03:14:59.404202+00
10	auth	0006_require_contenttypes_0002	2018-10-16 03:14:59.411199+00
11	auth	0007_alter_validators_add_error_messages	2018-10-16 03:14:59.425241+00
12	auth	0008_alter_user_username_max_length	2018-10-16 03:14:59.462739+00
13	auth	0009_alter_user_last_name_max_length	2018-10-16 03:14:59.484512+00
14	core	0001_initial	2018-10-16 03:14:59.534828+00
15	team	0001_initial	2018-10-16 03:14:59.64239+00
16	championship	0001_initial	2018-10-16 03:14:59.855172+00
17	django_summernote	0001_initial	2018-10-16 03:14:59.87233+00
18	django_summernote	0002_update-help_text	2018-10-16 03:14:59.88155+00
19	news	0001_initial	2018-10-16 03:14:59.92169+00
20	sessions	0001_initial	2018-10-16 03:14:59.94942+00
21	core	0002_delete_nationality	2018-10-20 20:04:35.672129+00
22	team	0002_remove_player_nationality	2018-10-20 20:04:35.706739+00
23	core	0003_auto_20181020_2050	2018-10-20 23:50:46.498677+00
24	team	0003_remove_team_state	2018-10-20 23:50:46.545978+00
25	news	0002_auto_20181021_0020	2018-10-21 03:26:36.709883+00
26	championship	0002_season_champion	2018-10-27 19:36:59.569633+00
27	championship	0003_auto_20181021_0205	2018-10-27 19:36:59.606727+00
28	news	0003_auto_20181027_1630	2018-10-27 19:36:59.715654+00
29	news	0004_auto_20181027_1632	2018-10-27 19:36:59.807913+00
30	news	0005_delete_tag	2018-11-02 23:04:01.044474+00
31	news	0006_auto_20181030_1807	2018-11-02 23:04:01.207404+00
32	news	0007_auto_20181030_1905	2018-11-02 23:04:01.261622+00
33	championship	0004_auto_20181102_2327	2018-11-03 02:43:24.469616+00
34	championship	0005_auto_20181102_2329	2018-11-03 02:43:24.579375+00
35	championship	0006_auto_20181102_2330	2018-11-03 02:43:24.600922+00
36	championship	0007_auto_20181102_2356	2018-11-03 02:58:56.511611+00
37	championship	0008_auto_20181102_2356	2018-11-03 02:58:56.574446+00
38	championship	0009_auto_20181103_0052	2018-11-25 23:47:01.97659+00
39	championship	0010_auto_20181111_0550	2018-11-25 23:47:02.103864+00
40	championship	0011_division_teams	2018-11-25 23:47:02.129742+00
41	championship	0012_auto_20181111_0554	2018-11-25 23:47:02.159663+00
42	championship	0013_auto_20181118_0013	2018-11-25 23:47:02.197181+00
43	championship	0014_auto_20181118_0015	2018-11-25 23:47:02.226523+00
44	championship	0015_auto_20181126_0055	2018-11-26 04:24:40.942159+00
45	core	0004_slide	2018-11-26 04:24:40.967212+00
46	championship	0002_round_slug	2019-04-01 14:59:24.089982+00
47	championship	0003_auto_20190325_0059	2019-04-01 15:00:39.118937+00
48	championship	0004_auto_20190420_2026	2019-04-21 00:00:32.216882+00
49	team	0002_auto_20190505_0124	2019-05-05 05:37:16.899071+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
0qj2iatplgh3zklq4kkk65qg8yxtf8j0	OTllOGY3MDNjMmUxZGM3ZWVjMGYzZDNmNDIxNWMwZjM4MzljNjU0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzAzOWUzNDcwMjViZDdkNGM5NjkwNjE3NjM3YWJkMmFmM2RhMDBiIn0=	2018-10-30 19:01:09.795789+00
t6ghh08gwewzmuzm36zfx5k1rc7rd2x9	OTllOGY3MDNjMmUxZGM3ZWVjMGYzZDNmNDIxNWMwZjM4MzljNjU0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzAzOWUzNDcwMjViZDdkNGM5NjkwNjE3NjM3YWJkMmFmM2RhMDBiIn0=	2018-11-05 10:34:51.5209+00
2mvweeomrlglw8c4h73t5wgg6z6vv3yr	N2YwZmI5NmQ2ZWRmNmIwN2I4MGVkNmRhYTc2ZWIzMzc4MTgwMjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjcxY2I1NTk0NDhmNmQ5MTYwYzM1N2E4ZDY2NmQ0NzhkY2M1MTI0In0=	2018-11-06 21:48:14.543381+00
lwygrouacaizzlbtldg2u4psz6loy84a	N2YwZmI5NmQ2ZWRmNmIwN2I4MGVkNmRhYTc2ZWIzMzc4MTgwMjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjcxY2I1NTk0NDhmNmQ5MTYwYzM1N2E4ZDY2NmQ0NzhkY2M1MTI0In0=	2018-11-06 21:59:53.789827+00
srb4jmg6p5nyoz87sd7ime80qzhlx78v	OTllOGY3MDNjMmUxZGM3ZWVjMGYzZDNmNDIxNWMwZjM4MzljNjU0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzAzOWUzNDcwMjViZDdkNGM5NjkwNjE3NjM3YWJkMmFmM2RhMDBiIn0=	2018-11-13 01:15:36.223713+00
ejwsbchljgsyuw4yt4quslm880540u6z	OTllOGY3MDNjMmUxZGM3ZWVjMGYzZDNmNDIxNWMwZjM4MzljNjU0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzAzOWUzNDcwMjViZDdkNGM5NjkwNjE3NjM3YWJkMmFmM2RhMDBiIn0=	2018-11-13 18:57:35.058284+00
yt53ngzo1hfrpvyikohacu2fnuag9mej	N2YwZmI5NmQ2ZWRmNmIwN2I4MGVkNmRhYTc2ZWIzMzc4MTgwMjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjcxY2I1NTk0NDhmNmQ5MTYwYzM1N2E4ZDY2NmQ0NzhkY2M1MTI0In0=	2018-11-14 00:54:17.390693+00
uc02f4k6ryd1hqslsorlhzpwxmhd3io8	YTEwMDQ4MTljNTk5ZTdkNWQ0NjdkNzg5YzA1YTUwNjU5NmRjZDcwNzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYzBjODJhYWZmMWQ4ZGQzZGMzNTVkNDBkYzA2MTEzYWRiNzkyYmYzIn0=	2018-11-14 00:55:41.251945+00
9m5pvx2v6635sjlt3rldr88kdofz7xt6	N2YwZmI5NmQ2ZWRmNmIwN2I4MGVkNmRhYTc2ZWIzMzc4MTgwMjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjcxY2I1NTk0NDhmNmQ5MTYwYzM1N2E4ZDY2NmQ0NzhkY2M1MTI0In0=	2018-11-15 12:48:15.209432+00
plepgi4dowdihco5lkc0746qe6mj9dbe	OTllOGY3MDNjMmUxZGM3ZWVjMGYzZDNmNDIxNWMwZjM4MzljNjU0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzAzOWUzNDcwMjViZDdkNGM5NjkwNjE3NjM3YWJkMmFmM2RhMDBiIn0=	2018-11-15 18:06:19.095812+00
lnar6jg7zs4uac63f5h34pmk6mqel2wx	N2YwZmI5NmQ2ZWRmNmIwN2I4MGVkNmRhYTc2ZWIzMzc4MTgwMjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjcxY2I1NTk0NDhmNmQ5MTYwYzM1N2E4ZDY2NmQ0NzhkY2M1MTI0In0=	2018-11-16 23:14:28.701956+00
90nfztb2e28deq791i9jvlbt4jutei0h	N2YwZmI5NmQ2ZWRmNmIwN2I4MGVkNmRhYTc2ZWIzMzc4MTgwMjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjcxY2I1NTk0NDhmNmQ5MTYwYzM1N2E4ZDY2NmQ0NzhkY2M1MTI0In0=	2018-11-20 23:15:55.514813+00
j3mfrazhnklf6x4hfxtivso5ui5lldc8	N2YwZmI5NmQ2ZWRmNmIwN2I4MGVkNmRhYTc2ZWIzMzc4MTgwMjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjcxY2I1NTk0NDhmNmQ5MTYwYzM1N2E4ZDY2NmQ0NzhkY2M1MTI0In0=	2018-12-02 02:12:44.237917+00
wfqhm5m93w9gbrkh0tkft5gheg0vf21l	OTllOGY3MDNjMmUxZGM3ZWVjMGYzZDNmNDIxNWMwZjM4MzljNjU0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzAzOWUzNDcwMjViZDdkNGM5NjkwNjE3NjM3YWJkMmFmM2RhMDBiIn0=	2018-12-10 11:11:09.174424+00
8t2vh6pwjpqcybkdsrupf3her6lxsnxb	N2YwZmI5NmQ2ZWRmNmIwN2I4MGVkNmRhYTc2ZWIzMzc4MTgwMjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjcxY2I1NTk0NDhmNmQ5MTYwYzM1N2E4ZDY2NmQ0NzhkY2M1MTI0In0=	2018-12-12 03:24:01.674199+00
thxcpz343s24st48ubplqsd6t29aa5wb	OTllOGY3MDNjMmUxZGM3ZWVjMGYzZDNmNDIxNWMwZjM4MzljNjU0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzAzOWUzNDcwMjViZDdkNGM5NjkwNjE3NjM3YWJkMmFmM2RhMDBiIn0=	2018-12-13 10:54:57.031239+00
3xyjxz1cw50dgw3bp6bg76rn821lm3c1	N2YwZmI5NmQ2ZWRmNmIwN2I4MGVkNmRhYTc2ZWIzMzc4MTgwMjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjcxY2I1NTk0NDhmNmQ5MTYwYzM1N2E4ZDY2NmQ0NzhkY2M1MTI0In0=	2019-02-11 14:45:07.02551+00
zy2hw68s35ipr68fq0lck5z779phorr0	MzU0OWZmMDg4MDNmMmM3NzUzOTBmN2QyMjI5MTM5ZDg3ZDc2NGM1ODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZmQ4M2I5NGNjMzA1YTMxMDE4MjNmN2JlOTU2ZmI1ZGEyOWY5MjExIn0=	2019-02-11 17:33:49.144454+00
zpnaojm5ms6jmvivvpxmolm5feomx34y	ZDc1ZjFjZWM5NjAzM2Q1NTk0YjRiNWExZTNkZmNmZTMxNDkxYmQyZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZWRmZjlmNTRiNDE3MjE1NDYxMmE5Zjg5YjNiY2YwNmFkOGNhMjcxIn0=	2019-02-19 02:36:25.392454+00
34lm3efasorn9qt0o7e0th3rdizwhvqf	ZDc1ZjFjZWM5NjAzM2Q1NTk0YjRiNWExZTNkZmNmZTMxNDkxYmQyZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZWRmZjlmNTRiNDE3MjE1NDYxMmE5Zjg5YjNiY2YwNmFkOGNhMjcxIn0=	2019-02-21 02:26:11.288685+00
pvwqseiigin8wgb6ttsa67hnax85eqr4	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-03-01 14:35:08.945411+00
6nxdc09k8xgcazsndgds1ip6v0cmp3ty	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-03-07 11:45:44.020584+00
iga86xtrsi0tpfvbwldhvhmapb2sianl	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-03-09 01:15:03.863365+00
gme5ilg39loqlfparv5fhj2hgudhdqjq	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-03-09 05:06:09.249098+00
oawz3fedq536a6o3voxghrj57eczti9d	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-03-09 15:16:52.858707+00
g6q6a27h1dfqt37jm4gbhe69nunugwy4	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-03-10 02:21:53.419767+00
zx5s2ubo11soa1ams59poekf0iqsa04y	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-03-10 05:26:55.574007+00
oydhifhrs2fb7gfxs1aj527iklb7yqec	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-03-13 17:43:30.42435+00
5m1sslht1k0fb6j8zlkinx1429wzwwq0	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-03-17 03:57:19.863231+00
keysrqw5iqn7q142d71a6v5vmgdt5k58	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-03-17 18:59:45.159956+00
ru11q5hdzeafz6ny00gv8tqixjkr4pgr	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-03-23 20:43:13.220396+00
6dv8vmtjr79ubgkikg0wqznbknhosuxl	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-04-08 00:02:14.284092+00
rqegbaep768a6dnvkabvqmm4du36h191	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-04-08 00:03:13.052869+00
k5gv2n63crzwwokqg0qtpg9tfs875pav	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-04-18 02:17:36.344802+00
ooyc9gujngv8pna59gqyrr48q4aezvt2	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-04-18 02:55:07.62493+00
726t43zaj7pap7rjjojr2789zyh1tmxa	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-04-23 20:05:42.456637+00
ep43a9zng5am6kobl2wm5sxg8fmaivhm	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-04-27 05:12:41.351032+00
eecjshjl83iwbzolg7euocubv4g6ocou	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-04-27 20:40:57.996008+00
cser7or3i5u5n04zz25un7522datvrya	ZDIyMWUyNmEzYWFjZTc4MmFiMmU5OTNjNDg3YWI5YTE1NjYwMTdmZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMDY4MWY0YjJjZThkMDI3ZjBhOWMyN2JhN2ExNDU5MmY2Y2QwMjJhIn0=	2019-04-29 16:03:54.884085+00
gjmenuqbf3bo3y8ykdcnabox0nvfx3lu	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-04-29 16:09:05.367492+00
1zpzzaf9lsgl17pvx0xccumn1dxq0qr9	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-04-29 16:59:20.32412+00
b8uj8n7dus74pu2018xapa3sg2s0f5rq	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-05-04 19:47:27.998642+00
e07h2ygiy0n95x8672ca5ai70clbgnxa	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-05-05 00:00:43.806479+00
v637kwjt3kaaaxjj5ns2qdaobg2jsd29	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-05-19 05:37:30.491378+00
013gonn7zq1prfzfeuvrng59fxprnuhp	NWQ2MmNkMThjZmNlMTI4OTdhMzIwM2Y1MGVmZTBkOWQyOWFlOTExNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjdjNDZlY2Q0ZDlkNGYxZjgxYmNmMzUyMGQyOTUxOGM5YzVlMTc2In0=	2019-05-19 06:38:28.284113+00
czl4gm36hkn49zcwc8dnhpgxt1iq3k92	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-05-19 20:17:56.335385+00
arwef5f7gzzli6ccdey6ipn16zjkds50	YzQ5NWE1YzYwNTFiMmFmNmUxMTM0NDhlZDJlODg1NjE4OGQzY2NjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWFlYWNjYTVhMTFlYzQ0ODQwNTdiOTZmNTRlMTdjOGE3Nzg5MTA5In0=	2019-05-20 11:51:16.863841+00
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Data for Name: news_news; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.news_news (id, date, title, slug, text, subtitle, photo, created, modified, author_id) FROM stdin;
1	2016-10-09	Unificação foi o melhor caminho para a Superliga Nacional	unificacao-foi-o-melhor-caminho-para-a-superliga-nacional	<p><span style="font-size: 18px;">﻿</span><font face="Open Sans"><span style="font-size: 18px;">Falar que o nível do futebol americano do Brasil subiu em 2016 já se tornou algo repetitivo. Os números da Superliga Nacional – o primeiro campeonato unificado da modalidade no País – mostram isso por si só. Porém, ao conhecermos os 16 times que se classificaram aos playoffs da competição, neste fim de semana, uma constatação pode ser feita sem medo: a unificação foi o melhor caminho para o crescimento da bola oval em nosso território.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>LEIA TAMBÉM:<br></b>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/extra-points-vem-sendo-um-problema-na-superliga-nacional" target="_blank">Extra-points vêm sendo um problema na Superliga Nacional</a><br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">&gt;&nbsp;</span><a href="http://fabrnetwork.com/noticias/os-cinco-maiores-publicos-de-futebol-americano-no-brasil" target="_blank" style="font-size: 18px; font-family: &quot;Open Sans&quot;; background-color: rgb(255, 255, 255);">Os cinco maiores públicos de futebol americano no Brasil</a></p><p><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">O FABR Network separou três fatores que comprovam esta afirmação. O primeiro são as vagas na pós-temporada, que ficaram divididas em exatamente em 50% entre as equipes que integravam o antigo Torneio Touchdown (TTD) e as que já atuavam pelo campeonato organizado pela Confederação Brasileira de Futebol Americano (CBFA).</span></p><p><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">O segundo foi o equilíbrio nos confrontos diretos entre os dois grupos. Ao todo, novos confederados e antigos se enfrentaram 23 vezes na temporada regular. Foram 12 vitórias para os times que já integravam a Superliga e 11 trunfos dos clubes que vieram do TTD (equipes que subiram da segunda divisão não foram consideradas).</span></p><p><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">O terceiro, e não menos importante, serão os mandantes nas oitavas de final da Superliga. Os times que jogarão em casa também ficaram divididos igualmente: quatro da CBFA terão o kickoff diante da sua torcida e quatro ex-TTD também.</span></p><p><span style="font-size: 18px;">﻿</span><b><font face="Open Sans"><span style="font-size: 18px;">NOVOS PARTICIPANTES:<br></span></font></b><font face="Open Sans"><span style="font-size: 18px;">-Timbó Rex<br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Paraná HP<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Flamengo F.A<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Vasco da Gama Patriotas<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Botafogo Reptiles<br></span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">-Vila Velha Tritões<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Tubarões do Cerrado<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Lusa Lions</span><b><font face="Open Sans"><span style="font-size: 18px;"><br></span></font></b></p><p><span style="font-size: 18px;">﻿</span><b style="font-size: 18px; font-family: &quot;Open Sans&quot;;">ANTIGOS PARTICIPANTES:<br></b><font face="Open Sans"><span style="font-size: 18px;">-Recife Mariners<br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Ceará Caçadores<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-João Pessoa Espectros<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-América Bulls<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-São José WSI<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Coritiba Crocodiles<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Cuiabá Arsenal<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-Goiânia Rednecks</span><b style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><br></b></p>	Foto: Mirella Melo	news/2018/10/16/3Caçadores-x-Espectros-100716.jpg	2018-10-16 19:09:07.479034+00	2018-10-31 19:23:06.003637+00	2
6	2016-03-18	Saiba como funcionará o campeonato unificado de futebol americano do Brasil	saiba-como-funcionara-o-campeonato-unificado-de-futebol-americano-do-brasil	<p><font face="Open Sans"><span style="font-size: 18px;">Há dias que ficam marcados na história de diversas modalidades. O 8 de julho de 2014, por exemplo, eternizou o futebol brasileiro com a lendária derrota por 7×1 para a Alemanha, pela Copa do Mundo. Para o futebol americano do País, que ainda luta arduamente pelo seu espaço, é difícil citar uma data grandiosa.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>LEIA TAMBÉM:<br></b></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">&gt; <a href="http://fabrnetwork.com/noticias/brasil-oncas-anuncia-reestruturacao-na-comissao-tecnica" target="_blank">Brasil Onças anuncia reestruturação na comissão técnica</a><br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">&gt; <a href="http://fabrnetwork.com/noticias/brasil-oncas-e-convocado-para-copa-do-mundo-de-futebol-americano" target="_blank">Brasil Onças é convocado para Copa do Mundo de Futebol Americano</a></span></p><p><font face="Open Sans"><span style="font-size: 18px;">Isso, até hoje. O dia 18 de março de 2016 entrou para a história da bola oval verde amarela. Foi nesta data que a Confederação Brasileira de futebol americano oficializou, como já havíamos adiantado aqui no FABR Network, a fusão com os times do Torneio Touchdown (TTD), criando um torneio unificado.</span></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">PARTICIPANTES</span></b><br><span style="font-size: 18px;">Segundo nota divulgada na página oficial da CBFA no Facebook, ao todo, as 32 equipes participarão da competição. Confirmadas, até o momento, estão apenas as&nbsp; oito da Superliga Nordeste e oito da Superliga Centro-Sul. As demais 16 virão do TTD e, caso algumas destas desista, serão substituídas por equipes da Liga Nacional (equivalente à segunda divisão).</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">De acordo com o presidente da CBFA, Guto Sousa, nenhuma informação pode ser confirmada. Segundo o paraibano, o momento, agora, é de alinhar os últimos detalhes com os clubes.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">"Estamos trabalhando para inscrever estas equipes que vieram do TTD na CBFA. Esse o nosso principal objetivo neste momento", disse Guto Sousa, presidente da entidade.</span><br></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">TABELA</span></b><br><span style="font-size: 18px;">A nota oficial da CBFA confirmou que a divisão principal contará com 32 equipes, à exemplo de como acontece na NFL, mas não falou em como os times serão divididos. Imaginando que seja adotada uma forma de disputa também semelhante à da liga profissional americana, podemos prever que os 32 times serão divididos em 2 conferências, cada uma com 4 divisões de 4 times cada.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Em contato com o FABR Network, a CBFA não confirmou como será a divisão dos times entre os grupos, nem mesmo se serão mantidos grupos com 4 times cada, como estava previsto para a Superliga 2016 antes da entrada dos novos times. A entidade apenas informou que os grupos e confrontos serão definidos em conjunto pelos times e divulgados em breve.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">A tendência, segundo o blog apurou, é que haja uma mescla dos times da Superliga Centro-Sul com os novos integrantes, formando novos grupos. O Nordeste deve permanecer com seus grupos originais.</span><br></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">FORMATO</span><br></b><span style="font-size: 18px;">Um outro ponto que precisará de acordo é em relação ao número de jogos da temporada regular, pois no TTD os times realizavam 7 partidas na primeira fase contra seis da Superliga da CBFA.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Caso o modelo da Superliga prevaleça, o formato de disputas funcionará da seguinte maneira. Todas as equipes jogarão contra todas dentro dos próprios grupos, apenas em partidas de ida. Além disso, os clubes irão enfrentar três adversários de uma outra chave, baseados na classificação do último ano.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Os melhores de cada divisão realizarão os playoffs nacionais. Tanto as semifinais, quando o Brasil Bowl, a grande decisão do torneio, serão definidos em partida única. Os critérios para o mando de campo ainda não foram definidos.</span><br></font></p><p><br></p>	Foto: Reprodução da Internet	news/2018/10/17/12141130_955474937824230_7714035837912704113_o.jpg	2018-10-17 12:54:24.615729+00	2018-10-17 15:21:51.717712+00	2
3	2015-02-11	Divulgada tabela do Campeonato Mundial de Futebol Americano	divulgada-tabela-do-campeonato-mundial-de-futebol-americano	<p><font face="Open Sans"><span style="font-size: 18px;">A Federação Internacional de Futebol Americano (IFAF) divulgou, no início desta semana, a tabela do Campeonato Mundial da modalidade, que será disputado entre os dias 8 e 19 de julho, na cidade de Canton, em Ohio, nos Estados Unidos.&nbsp;</span></font><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">As partidas vão acontecer no estádio Tom Benson Hall of Fame Stadium, que recebe as partidas de estreia da pré-temporada da NFL, principal campeonato de futebol americano dos EUA.</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Ao todo, oito seleções irão participar da competição. O Grupo A, formado pelas equipes mais bem ranqueadas do mundo, vai contar com Estados Unidos, Canadá, México e Japão. O Brasil Onças, apelido carinhoso da equipe verde e amarela, acabou caindo no Grupo B, assim como a Austrália, Coreia do Sul e França – este último, adversário da estreia dos brasileiros.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Quanto ao formato de disputas, o torneio vai funcionar no sistema de mata-mata. Os três melhores colocados da primeira chave e o líder da segunda chave avançam às semifinais. Essa será a primeira vez que o Brasil irá participar do Campeonato Mundial.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em tempo, Pernambuco será representado no torneio com a presença de Lucas Cisneiros, técnico do Recife Mariners/Náutico. O coach vai ser responsável por coordenar a linha defensiva do Brasil Onças. Confiante, ele afirmou que, apesar do Brasil não aparecer como favorito no Grupo B, a equipe está pronta para o desafio.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Nenhum adversário vai ser fácil. Logo na estreia vamos enfrentar a França, que tem um time muito experiente. A liga deles também é profissionalizada e muito forte. Quanto a Austrália, são os de maior tradição, até pelo Rugbi, que é muito semelhante ao futebol americano. Quanto à Coreia, ela aparece conosco como zebra. Mas não vamos entrar pra brincadeira, acreditamos na equipe e que podemos avançar de fase", comentou Lucas Cisneiros, coordenador defensivo do Brasil Onças.</span><br></p><div><br></div>	Foto: Reprodução da Internet	news/2018/10/17/1o34d5ab0bxmfe1cegagnvu1i.jpg	2018-10-17 12:31:16.620982+00	2018-10-17 15:17:56.505324+00	2
2	2016-12-22	Fluminense voltará a ter time de futebol americano em 2017	fluminense-voltara-a-ter-time-de-futebol-americano-em-2017	<p style="text-align: justify; "><font color="#333333" face="Open Sans"><span style="font-size: 18px;">O futebol americano ganha mais um time no Rio de Janeiro. O Fluminense volta a ter um elenco, onde se junta ao Botafogo Reptiles, Flamengo, Rio de Janeiro Islanders e Vasco da Gama Patriotas. O tricolor carioca passará a se chamar Fluminense Guerreiros.</span></font></p><p style="text-align: justify; "><font color="#333333" face="Open Sans"><span style="font-size: 18px;"><b>LEIA TAMBÉM:<br></b></span></font><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">&gt; </span><a href="http://fabrnetwork.com/noticias/unificacao-foi-o-melhor-caminho-para-a-superliga-nacional" target="_blank" style="font-size: 18px; font-family: &quot;Open Sans&quot;; background-color: rgb(255, 255, 255);">Unificação foi o melhor caminho para a Superliga Nacional</a></p><p style="text-align: justify; "><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">Os Guerreiros treinarão e sediarão mandos de campo no tradicional estádio das Laranjeiras. O próximo tryout está agendado para o mês de janeiro de 2017. A infraestrutura oferecida desta vez está entre as melhores do Brasil. A base apresentada será um atrativo para trazer novos prospectos e atletas mais experientes. Além disso, o elenco do Rio de Janeiro Cariocas, time feminino, está em negociação a fazer parte do projeto.</span><br></p><p style="text-align: justify; "><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">O projeto é inovador: os atletas selecionados terão equipamentos profissionais novos emprestados pelo clube. O que alivia a situação financeira de muito jogador, que por não ter condições de adquirir o shoulder pad ou helmet, deixa de praticar o futebol americano de contato.</span><br></p><p style="text-align: justify; "><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">"Treinar num estádio histórico, num gramado em excelentes condições, com vestiários confortáveis e contar com a estrutura de um clube como o Fluminense é algo muito especial. Por incrível que pareça, nosso esporte ainda sofre com condições precárias de treinos e muitos times penam para conseguir um campo. Jogar nas Laranjeiras é o sonho de qualquer atleta brasileiro de futebol americano", disse Sandro Cox, head coach do Fluminense Guerreiros.</span><br></p><p style="text-align: justify; "><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">Duas pessoas foram cruciais na formação da nova do Fluminense: Frederico Castro (do esporte amador) e o presidente eleito Pedro Abad, que sabem o quanto apostar no futebol americano pode ser benéfico para o clube. O próprio presidente é um dos maiores entusiastas da empreitada. Em tempos de austeridade a empreitada se mostrou adequada, pois, todo o investimento inicial veio do apoio de atletas e torcedores, o que não onera, portanto os cofres do clube.</span><br></p><p style="text-align: justify; "><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">Vale lembrar que o time das laranjeiras já teve um bom time da bola oval, chegando à conquistar dois títulos nacionais em 2009 e 2011, quando o time se chamava Fluminense Imperadores (antes RJ Imperadores).</span></p><p style="text-align: justify; "><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;"><i>Com informações de Henrique Riffel, do Futebol Americano Brasil</i></span></p>	Foto: Reprodução da Internet	news/2018/10/17/ert.jpg	2018-10-17 12:28:17.889565+00	2018-10-21 13:35:17.093619+00	2
7	2016-05-14	Entenda como será o formato de disputa da Superliga Nacional	entenda-como-sera-o-formato-de-disputa-da-superliga-nacional	<p><font face="Open Sans"><span style="font-size: 18px;">Os 31 times serão divididos em quatro conferências: Leste, Oeste, Sul e Nordeste. Cada uma destas conferências terá oito equipes (apenas a Sul terá sete), divididas em dois grupos, com quatro participantes.</span></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">TEMPORADA REGULAR</span></b><br><span style="font-size: 18px;">Na temporada regular, só haverão confrontos entre times das mesmas conferências e cada time realizará, obrigatoriamente, seis jogos. Serão três jogos contra os adversários do seu grupo e mais três contra times da outra chave.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Os duelos com os clubes do outro grupo serão definidos mediante nível técnico. Por exemplo, a equipe mais forte do Grupo 1 enfrentará o 1º, 2º e 3º time mais competitivo da outra chave. O segundo mais forte, por sua vez, enfrentará o 1º, 2º e 4º. O objetivo é deixar o campeonato o mais disputado possível.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Critérios de confrontos na temporada regular:</span></font></p><ul><li><font face="Open Sans"><span style="font-size: 18px;">1ª mais forte enfrenta: 1º, 2º e 3º</span></font></li><li><font face="Open Sans"><span style="font-size: 18px;">2ª mais forte enfrenta: 1º, 2º e 4º</span></font></li><li><font face="Open Sans"><span style="font-size: 18px;">3ª mais forte enfrenta: 1º, 3º e 4º</span></font></li><li><font face="Open Sans"><span style="font-size: 18px;">4ª mais forte enfrenta: 2º, 3º e 4º</span></font></li></ul><p><font face="Open Sans"><b><span style="font-size: 18px;">PLAYOFF DE CONFERÊNCIA</span></b><br><span style="font-size: 18px;">Os playoffs de Conferência serão disputados por quatro equipes, no sistema de semifinais e em jogos únicos. Se classificam as equipes com mais vitórias de cada grupo, além das outras duas com mais vitórias, independente do grupo.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Ou seja, se uma equipe do Grupo 1 tiver terminado o torneio na segunda colocação da sua chave, com campanha de 3-3, mas o terceiro colocado do grupo 2 tiver um 4-2, se classificará este último.</span><br></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">PLAYOFF NACIONAL</span></b><br><span style="font-size: 18px;">As grandes decisões nacionais serão realizadas entre os campeões das quatro Conferências. Os duelos acontecerão em uma única sede e em partidas únicas. Os respectivos vencedores das semifinais realizarão o Brasil Bowl.</span></font></p>	Foto: Reprodução da Internet	news/2018/10/17/Espectros_Crocodilles_02_AndersonSilva.jpg	2018-10-17 12:58:54.372029+00	2018-10-17 15:25:43.53445+00	2
5	2015-11-16	Brasil Onças anuncia reestruturação na comissão técnica	brasil-oncas-anuncia-reestruturacao-na-comissao-tecnica	<p><font face="Open Sans"><span style="font-size: 18px;">A Confederação Brasileira de Futebol Americano (CBFA) divulgou, no último fim de semana, o nome dos assistentes técnicos e coordenadores de posição da comissão técnica da seleção brasileira, com foco na Copa do Mundo de 2019.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>LEIA TAMBÉM:</b><br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/divulgada-tabela-do-campeonato-mundial-de-futebol-americano" target="_blank">Divulgada tabela do Campeonato Mundial de Futebol Americano</a><br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/brasil-oncas-e-convocado-para-copa-do-mundo-de-futebol-americano" target="_blank">Brasil Onças é convocado para Copa do Mundo de Futebol Americano</a></span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Dentre os nove convocados, quatro representam times nordestinos. São eles: Lucas Cisneiros, do Recife Mariners e Kevin Veloso, do João Pessoa Espectros, que permanecem na comissão e ocupam respectivamente as funções de Assistente Defensivo e Coordenador de Wide Receivers.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Além disso, Marcelo Becker, ex-Espectros, hoje, no Rio Grande do Sul e Bruno Rocha, do Ceará Caçadores, ocuparão as funções de Coordenador de Linha Defensiva e Coordenador de runningnacks.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Entre os outros convocados estão o carioca Anselmo Brauer, como Coordenador da Linha Defensiva, o catarinense Bertu Fernandez, como Coordenador de Tight Ends, o curitibano Fernando Alves, como Coordenador de Linebackers, o capixaba Fernando Giovannotti, como Coordenador de Defensive Backs, e o catarinense Amadeo Salvador, como Assistente Defensivo.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">"Para o desenvolvimento do esporte no Brasil como um todo, é importante ter pessoas envolvidas em todas as regiões, pois isso vai permitir potencializar e aproveitar a grande oferta de talento atlético que temos no País", falou Lucas Cisneiros, head coach do Recife Mariners e assistente defensivo do Brasil Onças.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Para Kevin Veloso, ser chamado pela segunda vez para participar da Comissão Técnica da Seleção, é uma prova que seu trabalho no ano anterior foi aprovado e ele está ansioso para continuar aprendendo e dando o melhor de si para alcançar os melhores resultados.&nbsp;</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">“É muito bom ter mais uma oportunidade de aprender com os técnicos Gabriel, Brian e Clayton. Assim como eles, sou apaixonado pelo jogo e suas táticas e darei o meu melhor para ajudar a seleção e o futebol americano no Brasil”.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Já Bruno Rocha comenta sobre o desafio de melhorar cada vez mais o nível do futebol americano no país e como pretende ajudar a seleção nesse sentido.&nbsp;</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">“Temos um objetivo claro focado na copa de 2019 que é desenvolver o futebol americano em todo o país para poder ter uma base maior e mais competitiva de atletas para representar o Brasil Onças na próxima copa”.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Em tempo, vale lembrar que, na semana passada, a CBFA já havia divulgado os cargos principais da comissão técnica. Entre os convocados está mais um representante nordestino, o head coach do João Pessoa Espectros, Brian Guzman, que permanecerá na seleção comandando o time ofensivo. Também foram divulgados os nomes de Gabriel Mendes, do Vasco da Gama Patriotas-RJ,que estréia como head coach e o americano Clayton Lovett, responsável pela defesa da Brasil Onças.</span></font></p><p><font face="Open Sans"><iframe frameborder="0" src="//www.youtube.com/embed/dGNeH9IstW8" width="640" height="360" class="note-video-clip"></iframe></font><br></p>	Foto: Reprodução da Internet	news/2018/10/17/10943654_840513846007185_8532815778085896166_n.jpg	2018-10-17 12:42:43.709971+00	2018-10-17 15:18:14.536373+00	2
8	2016-05-18	CBFA confirma Liga Nacional com 33 times e divulga formato	cbfa-confirma-liga-nacional-com-33-times-e-divulga-formato	<p><font face="Open Sans"><span style="font-size: 18px;">O presidente da Confederação Brasileira de Futebol Americano (CBFA), Guto Sousa, confirmou a tabela da temporada 2016 da Liga Nacional na noite desta terça-feira (17). O certame de acesso a Superliga Nacional terá 33 equipes, divididas em quatro Conferências– Sul, Sudeste, Centro-Oeste e Nordeste. As Conferências Sudeste, Centro-Oeste e Nordeste terão duas divisões cada, diferente do Sul, que terá divisão única.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>LEIA TAMBÉM:</b><br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/saiba-como-funcionara-o-campeonato-unificado-de-futebol-americano-do-brasil" target="_blank">Saiba como funcionará o campeonato unificado de futebol americano do Brasil</a><br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">&gt;&nbsp;</span><a href="http://fabrnetwork.com/noticias/brasil-oncas-anuncia-reestruturacao-na-comissao-tecnica" target="_blank" style="font-size: 18px; font-family: &quot;Open Sans&quot;; background-color: rgb(255, 255, 255);">Brasil Onças anuncia reestruturação na comissão técnica</a></p><p><font face="Open Sans"><span style="font-size: 18px;">No Sul estão: Joinville Gladiators, Porto Alegre Pumpkins, Santa Maria Soldiers, os estreantes Bento Gonçalves Snakes, Curitiba Lions, Joinville Redlions e Santa Cruz Chacais. Este último retoma a disputa de competições de nível nacional.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">No Sudeste, a divisão A conta somente com estreantes: Belo Horizonte Get Eagles, Mooca Destroyers, Palmeiras Locomotives, Uberaba Zebus eUberlândia Lobos. Na divisão B têm: Leme Lizards, Paulínia Mavericks, Ponte Preta Gorilas, Prudente Coronéis e Rio Preto Weilers. Fora Gorilas e Weilers, os demais são estreantes em competições da CBFA. Locomotives e Lobos já atuaram no Torneio Touchdown.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">No Centro-Oeste, a divisão A terá: Brasília Alligators, Brasília Leões de Judá, Sinop Coyotes e Sorriso Hornets. O grupo B contará com: Brasília V8,Campo Grande Gravediggers e os estreantes Brasília Templários e Rondonópolis Hawks.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">No Nordeste, a divisão A terá: Caruaru Wolves, Maceió Marechais, Náutico Horses e Olinda Sharks. No B terão: ABC Scorpions, Arcoverde Templários, Roma Gladiadores e Tropa Campina.</span><br></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">FÓRMULA</span><br></b><span style="font-size: 18px;">Na temporada regular, cada equipe fará quatro partidas – duas como mandante e duas como visitante. Classificam-se oito equipes somadas no Sul, Sudeste e Centro-Oeste, e quatro no Nordeste. Os campeões das divisões A e B de Sudeste e Centro-Oeste, mais o campeão e vice do Sul. No Nordeste passam o campeão e vice de cada divisão.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Os classificados para os playoffs e chaveamentos ainda estão sendo discutidos pelas equipes participantes de Sul, Sudeste e Centro-Oeste. Crê-se que ainda nesta semana será definido o método de disputa. Sabe-se que o campeão da Conferência Nordeste terá acesso a Conferência Nordeste da Superliga Nacional, enquanto que as Conferências Sul, Sudeste e Centro-Oeste disputam três – ou quatro – vagas na elite do campeonato brasileiro. Para apresentar o cenário, o playoff entre Sul, Sudeste e Centro-Oeste é independente do Nordeste. A inviabilidade logística impede a criação de uma final única na Liga Nacional.</span></font></p><p><i><font face="Open Sans"><span style="font-size: 18px;">Com informações de Henrique Riffel, do Futebol Americano Brasil.</span></font></i><br></p>	Foto: Reprodução da Internet	news/2018/10/17/12973492_843275922450693_3193691638630306528_o.jpg	2018-10-17 13:02:27.643687+00	2018-10-17 15:23:47.19102+00	1
12	2014-11-30	Recife Mariners perde decisão da Conferência Nordeste na Arena Pernambuco	recife-mariners-perde-decisao-da-conferencia-nordeste-na-arena-pernambuco	<p><font face="Open Sans"><span style="font-size: 18px;">Foi suado, sofrido e com todos os ingredientes que um duelo entre Recife Mariners e João Pessoa Espectros poderia oferecer. Em um dia histórico – 7.056 pessoas compareceram à Arena Pernambuco na tarde deste domingo, batendo o recorde de público de futebol americano no Brasil -, os paraibanos mantiveram a hegemonia regional e venceram os pernambucanos por 38 x 12, conquistando o pentacampeonato da Superliga Nordeste. No próximo dia 14 de dezembro, a equipe vai até Curitiba, onde enfrenta o Coritiba Crocodiles, campeão da conferência Centro-Sul, pelo Brasil Bowl.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Quanto ao jogo, com boas atuações dos quarterbacks Drew Banks e Rodrigo Dantas, o placar não demorou a sair do zero. Logo na primeira campanha do ataque paraibano, o primeiro touchdown do jogo, com Ednaldo Massu Júnior. O avanço foi respondido à altura na campanha seguinte dos pernambucanos, onde, em field goal, o kicker dos marinheiros, Rafael Bandeira marcou os três primeiros pontos dos donos da casa.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com a vantagem nos períodos iniciais, o Espectros optou pela cautela e um verdadeira muralha foi formada pela line defense dos reds. Melhor retornador da temporada regular da Superliga Nordeste, o cornerback do Mariners, TL Edwards – dono da marca de 372 jardas corridas em quatro partidas -, foi anulado pelos paraibanos nos retornos para touchdown. E a estratégia mostrou-se eficiente. Aproveitando o baixo rendimento do americano, o time de João Pessoa ampliou o placar com novo touchdown, mais uma vez, com Mussum. Restando sete segundos para o intervalo, os pernambucanos ainda diminuiram o placar com a primeira pontuação máxima. Vinicius Angelo foi o responsável pelo TD, fechando a primeira etapa em desvantagem: 17×10.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com a boa superioridade adquirida no primeiro tempo de partida, os paraibanos só precisaram administrar o resultado na etapa complementar. Com apenas um safety em todo o segundo tempo, o Mariners não se encontrou em campo e o resultado se refletiu no placar. Com eficiência nos tackles defensivos, o Espectros ainda conseguiram mais dois touchdowns, dando números finais à decisão: 38x12.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"O nosso time teve alguns lapsos psicológicos e isso prejudicou muito as nossas chances. A verdade é que o Espectros fez um grande jogo e estava extremamente preparado. Eles vieram com um esquema completo e não soubemos responder à altura. Os créditos são todos deles, tiveram uma vitória maiúscula", disse Lucas Cisneiros, técnico do Recife Mariners.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Já para o treinador do João Pessoa Espectros, Marcão, a superação foi o diferencial dos paraibanos para a conquista do pentacampeonato.&nbsp;</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">“Esse esporte exige muito dos atletas. Há lesões, derrotas, mas nos fortalecemos. Se você não se supera a cada dia, você está fadado à derrotas. Hoje mostramos que somos um novo Espectros, renovados e com vigor. Se não fosse o espírito aguerrido dos atletas, não teríamos chegado a lugar nenhum”, finalizou o comandante.</span><br></p>	Foto: Diego Nigro/JC Imagem	news/2018/10/17/2D301114108.jpg	2018-10-17 15:02:13.690763+00	2018-10-27 23:12:11.316082+00	2
10	2016-07-28	Extra-points vêm sendo um problema na Superliga Nacional	extra-points-vem-sendo-um-problema-na-superliga-nacional	<p><font face="Open Sans"><span style="font-size: 18px;">Apesar de apenas duas rodadas da Superliga Nacional terem sido realizadas, não restam dúvidas que o primeiro campeonato unificado de futebol americano do Brasil está sendo um sucesso. Bons públicos, resultados inesperados e alto nível técnico são apenas alguns dos fatores que comprovam esta afirmativa.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>LEIA TAMBÉM:</b><br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/os-cinco-maiores-publicos-de-futebol-americano-no-brasil" target="_blank">Os cinco maiores públicos de futebol americano no Brasil</a></span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No entanto, para os especial teams, o torneio não vem tendo o aproveitamento esperado em um fundamento: os extra-points. O FABR Network fez o acompanhamento de todas as pontuações das duas primeiras semanas de jogos e identificou que os índices de erros foram consideráveis.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Ao todo, de 87 tentativas nas quatro conferências, 26 não entraram entre as traves. Os números representam uma margem de falha de 29% nos chutes. Independente de quem cometa os deslizes, sejam eles o kicker, holder ou long snaper, em um torneio nivelado como o desta temporada, não se pode negar que deixar de pontuar pode custar a vitória.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Um bom exemplo para ratificar isto aconteceu em duas partidas, que foram decididas por apenas dois pontos na primeira rodada. O Minas Locomotiva perdeu para o Botafogo Reptiles por 35 x 32, enquanto o Timbó Rex – campeão do último Torneio Touchdown – foi derrotado pelo São José WSI por 21 x 19.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Curiosamente, a Conferência com o pior aproveitamento é justamente a que foi decidida por um kicker no ano passado: a Nordeste. Em 2015, pela final do campeonato regional, Diego Aranha, do João Pessoa Espectros, acertou um field goal de 52 jardas contra o Recife Mariners, na Arena Pernambuco. Neste ano, de 21 touchdowns marcados na região, apenas seis xp’s foram bons.</span></p><p><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;"><b>CONFERÊNCIA NORDESTE:<br></b></span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">-21 touchdowns<br></span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">-2 conversões de dois pontos<br></span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">-6 extra-points</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>CONFERÊNCIA LESTE:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-33 touchdowns<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-3 conversões de dois pontos<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-23 extra-points</span></p><p><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;"><b>CONFERÊNCIA OESTE:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-22 touchdowns<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-0 conversões de dois pontos<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-14 extra-points</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>CONFERÊNCIA SUL:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-26 touchdowns<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-0 conversões de dois pontos<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-18 extra-points</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>TOTAL<br></b></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-102 touchdowns<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">-61/87 extra-points</span></p>	Foto: Tiago Giordani	news/2018/10/17/13725032_644781582364516_144605712154732623_o.jpg	2018-10-17 13:12:53.417234+00	2018-10-31 19:22:38.158539+00	2
45	2016-12-26	No Brasil, Futebol Americano já tem 77% da média de público do Basquete e 50% do Vôlei	no-brasil-futebol-americano-ja-tem-77-da-media-de-publico-do-basquete-e-50-do-volei	<p style="user-select: text; text-align: justify;"><font color="#333333" face="Open Sans"><span style="font-size: 18px;">A temporada 2016 da Superliga Nacional de futebol americano chegou ao fim há pouco mais de uma semana, com o título do Timbó Rex-SC, mas ainda promete dar muito o que falar graças à um dado exclusivo do FABR Network. Desde a primeira rodada do torneio, realizamos a contagem dos públicos de todas as partidas da competição.</span></font></p><p style="user-select: text; text-align: justify;"><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">Foram seis meses de apuração junto aos 30 times, trazendo um resultado expressivo: 64.281 pessoas compareceram aos estádios no primeiro torneio unificado da modalidade no Brasil. Os números representam uma média de 656 fãs da bola oval por partida e já fazem sombra em consolidadas ligas de outras modalidades.</span><br></p><p style="user-select: text; text-align: justify;"><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">Os números foram informados pela Liga Nacional de Basquete e pela Confederação Brasileira de Vôlei nos últimos balanços. Se ampliarmos o quadro comparativo para o soccer, a SLN teve mais torcida no campo do que sete campeonatos estaduais: Tocantins, Espírito Santo, Amapá, Acre, Rondônia, Amazonas e Roraíma.</span><br></p><p style="user-select: text; text-align: justify;"><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">Ao todo, o calendário da Confederação Brasileira de Futebol Americano (CBFA) previa 102 jogos, entre temporada regular e playoffs. Com a desistência do Botafogo Challengers-SP, apenas 98 foram realizados – 83 na etapa classificatória e 15 no mata-mata. Destes duelos, apenas 11 não foram contabilizados pelas equipes.</span><br></p><p style="user-select: text; text-align: justify;"><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">A Conferência que mais levou fãs aos estádios foi a Nordeste com 22.421 torcedores, seguida da Oeste, com 20.247. Sul e Leste vieram na sequência, com 9.067 e 8.685, respectivamente. O time com a melhor média de público do Brasil foi o Cuiabá Arsenal, que teve 2.750 torcedores por partida. O time do Mato Grosso ainda detém o recorde de público do torneio, quando 11.798 pessoas lotaram a Arena Pantanal na primeira rodada, contra o Corinthians Steamrollers.</span><br></p><p style="user-select: text; text-align: justify;"><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">"Não somos o esporte preferido do brasileiro e, mesmo assim, conseguimos mobilizar uma boa quantia de torcedores para dentro dos estádios. Isso nos deixa realmente emocionados. Ouvir o som da arquibancada cheia é incrível. Só temos que agradecer ao público por torcer por nós", disse Paulo César Machado, presidente do Cuiabá Arsenal.</span><br></p><p style="user-select: text; text-align: justify;"></p><p style="user-select: text; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;"><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Confira o ranking completo das melhores&nbsp;média de público na Superliga Nacional 2016:</span></p><p style="user-select: text; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;"><br></p><table border="2" style="background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); width: 688px; border-color: rgb(0, 0, 0); user-select: text !important;"><tbody style="user-select: text !important;"><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">TIME</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">MÉDIA</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">JOGOS</font></strong></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">1</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Cuiabá Arsenal-MT</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2.750</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">9</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">2</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">João Pessoa Espectros-PB</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1.593</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">9</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">3</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Vila Velha Tritões-ES</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1.474</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">7</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">4</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Ceará Caçadores-CE</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1.370</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">8</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">5</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Recife Mariners-PE</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1.321</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">7</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">6</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Timbó Rex-SC</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">760</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">10</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">7</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Vitória-BA</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">700</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">8</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Flamengo F.A-RJ</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">549</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">10</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 9&nbsp;</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Goiânia Rednecks-GO</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;527</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">10</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Recife Pirates-PE</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">483</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">11</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Paraná HP-PR</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">466</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">7</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">12</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Tubarões do Cerrado-DF</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">441</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">7</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">13</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Coritiba Crocodiles-PR</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">432</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">8</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">14</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">América Bulls-RN</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">375</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">7</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">15</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Brown Spiders F.A-PR</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">329</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">16</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Campo Grande Predadores-MS</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">320</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">17</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Lusa Lions-SP</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">276</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">8</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">18</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Ufersa Petroleiros-RN</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">275</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">19</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Cabritos F.A-ES</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">252</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">20</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Minas Locomotiva-MG</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">250</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">21</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Santos Tsunami-SP</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">197</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">22</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Corinthians Steamrollers-SP</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">183</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">23</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">São José WSI-SC</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">166</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">7</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">24</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Juventude F.A-RS</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">133</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">25</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">São Paulo Storm-SP</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">116</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">26</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Botafogo Reptiles-RJ</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Não contabilizaram</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">7</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">27</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Foz do Iguaçu Black Sharks-PR</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Não contabilizaram</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">28</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Vasco da Gama Patriotas-RJ</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Não contabilizaram</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">8</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">29</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Sorocaba Vipers-SP</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Não contabilizaram</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td></tr><tr style="height: 24px; user-select: text !important;"><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">30</font></strong></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Botafogo Challengers-SP</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Não contabilizaram</font></span></td><td style="width: 10px; height: 24px; text-align: center; user-select: text !important;"><span style="color: rgb(0, 0, 0); user-select: text !important;"><font face="Open Sans"><span style="font-size: 18px;">0</span><br><br></font></span></td></tr></tbody></table>	Foto: Tiago Giordani	news/2018/10/29/12310022_536635516512457_8156108915806700928_o.jpg	2018-10-30 01:52:39.905762+00	2018-10-31 19:23:37.586596+00	2
11	2017-02-15	Superliga Nacional terá patrocinador master e passará a ser gerida pelos times	superliga-nacional-tera-patrocinador-master-e-passara-a-ser-gerida-pelos-times	<p><font face="Open Sans"><span style="font-size: 18px;">A Superliga Nacional de Futebol Americano foi um sucesso em 2016. A frase não sai da boca dos amantes da bola oval. Mais de 65 mil torcedores nos estádios, partidas em alto nível e um formato que, enfim, encontrou seu encaixe no primeiro campeonato unificado da modalidade.</span></font></p><p><font face="Open Sans"><b style="font-size: 18px;">LEIA TAMBÉM:</b><br><span style="font-size: 18px;">&gt; <a href="http://fabrnetwork.com/noticias/unificacao-foi-o-melhor-caminho-para-a-superliga-nacional" target="_blank">Unificação foi o melhor caminho para a Superliga Nacional</a></span><br><span style="font-size: 18px;">&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/os-cinco-maiores-publicos-de-futebol-americano-no-brasil" target="_blank">Os cinco maiores públicos de futebol americano no Brasil</a></span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Para a temporada 2017, no entanto, o certame sofrerá mudanças radicais. Conforme apuração do FABR Network, a Confederação Brasileira de Futebol Americano (CBFA), entidade que comanda o esporte no País, passará a gestão do torneio para as equipes. Desde outubro do ano passado as conversas já haviam sido iniciadas. Até provável nome a competição já tem: Brazil Football League ou BFL, à espelho da nossa querida NFL. Esta ideia já era um desejo antigo da confederação, que se dedicará exclusivamente à fomentação do esporte, além do Brasil Onças.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com isso, o campeonato passa a funcionar no sistema de liga e não mais no federativo, como sempre ocorreu. Isso dará total autonomia para as conferências organizarem tabelas e formatos de disputa na sua região. A logística seria exatamente a mesma usada pela LINEFA, que coordena a bola oval no Nordeste há sete anos de maneira independente.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No lançamento da Superliga, ano passado, o presidente da CBFA, Guto Sousa, já havia afirmado o desejo de fomentar a criação de uma liga independente, para que os clubes pudesse se auto-gerir, citando, inclusive, exemplos bem sucedidos como a NFL, NBA e até o Novo Basquete Brasil (NBB).</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">É importante lembrar que a CBFA continuará chancelando o campeonato, o que significa que o torneio permanece oficial, porém, com a concepção de Liga.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Até o momento, aproximadamente 2/3 das equipes que disputaram a Superliga (1ª divisão) e a Liga (2ª divisão) no ano passado já sinalizaram positivamente para o novo formato. Um grande investidor também já teria acertado o patrocínio master da competição, financiando os custos das equipes, como viagens e outros. O modelo é bastante semelhante ao usado pelo NBB e que vem funcionando ao longo das últimas temporadas.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Como a ideia de Liga será adotada, após cobrir as despesas do campeonato, como arbitragem, transporte e etc, todos os valores destinados aos clubes seriam divididos igualmente.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No que se refere ao formato de disputas, a tendência é que os moldes da Superliga Nacional 2016 seja mantidos, com conferências regionalizadas e seus campeões disputando os playoffs nacionais. O esquema de descenso e acesso, idem. A cereja do bolo, porém, estará no Brasil Bowl. Um evento como jamais foi visto no País estão nos planos da cúpula.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Outra grande mudança, estará na revisão na quantidade de jogadores de “nível estrangeiro” por partida. Conforme o artigo 14 do regulamento nacional, os jogadores são ranqueados de acordo com a sua experiência prévia no futebol americano. Por exemplo, um ex-NFL tem peso de 8 pontos, enquanto um ex-NCAA de 5 pontos. Grande maioria dos atletas que atuam no Brasil tem nível 4. Cada equipe só pode ter 12 pontos por estrangeiro a cada partida. Em 2017, esta margem aumentaria.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Quanto à transmissões, o FABR Network já havía falado que a CBFA havia realizado testes na decisão da Conferência Nordeste com a empresa que faz a geração de imagens para o Esporte Interativo. A informação que temos que é que novas empresas se interessaram em passar o campeonato na TV, inclusive canais abertos.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em tempo, nenhum clube ou a CBFA se posicionaram sobre os assuntos confirmam as informações.</span><br></p>	Foto: Takahiro Takahashi	news/2018/10/17/14823398498210.jpg	2018-10-17 14:59:37.92829+00	2018-10-31 19:23:42.866772+00	2
9	2016-06-21	Os cinco maiores públicos de futebol americano no Brasil	os-cinco-maiores-publicos-de-futebol-americano-no-brasil	<p><font face="Open Sans"><span style="font-size: 18px;">No último fim de semana, dois grandes Bowls voltaram a colocar o futebol americano em evidência no Brasil. No Rio Grande do Sul, o Santa Maria Soldiers conquistou o título do Campeonato Gaúcho na primeira partida da modalidade na Arena Beira-Rio, o chamado Gigante Bowl. Mais de 12 mil fãs da bola oval estiveram presentes no estádio do Internacional.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>LEIA TAMBÉM:</b><br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/entenda-como-sera-o-formato-de-disputa-da-superliga-nacional" target="_blank">Entenda como será o formato de disputa da Superliga Nacional</a><br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">&gt;&nbsp;</span><a href="http://fabrnetwork.com/noticias/saiba-como-funcionara-o-campeonato-unificado-de-futebol-americano-do-brasil" target="_blank" style="font-size: 18px; font-family: &quot;Open Sans&quot;; background-color: rgb(255, 255, 255);">Saiba como funcionará o campeonato unificado de futebol americano do Brasil</a></p><p><font face="Open Sans"><span style="font-size: 18px;">Outra partida de grande repercussão foi a decisão do Campeonato Mineiro, vencido pelo Minas Locomotiva, no Mineirão – mais um palco que viu as 100 jardas tomarem o lugar das quatro linhas. Ao todo, quase nove mil torcedores foram ao local.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Ambos os jogos entraram para o hall dos maiores públicos do futebol americano no Brasil. Confiram quais foram os outros pelo levantamento do FABR Network:</span><br></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">1.</span></b><span style="font-size: 18px;"> Cuiabá Arsenal 7×13 Coritiba Crocodiles</span><br><span style="font-size: 18px;">Público: 15.000 pessoas</span><br><span style="font-size: 18px;">Torneio: Superliga Centro-Sul 2015</span></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">2.</span></b><span style="font-size: 18px;"> Santa Maria Soldiers 21×3 Juventude F.A</span><br><span style="font-size: 18px;">Público: 12.000 pessoas</span><br><span style="font-size: 18px;">Torneio: Campeonato Gaúcho 2016</span></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">3.</span></b><span style="font-size: 18px;"> Minas Locomotiva x Get Eagles</span><br><span style="font-size: 18px;">Público: 8.700 pessoas</span><br><span style="font-size: 18px;">Torneio: Campeonato Mineiro 2016</span></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">4.</span></b><span style="font-size: 18px;"> Coritiba Crocodiles x Fluminense Imperadores</span><br><span style="font-size: 18px;">Público: 8 mil pessoas</span><br><span style="font-size: 18px;">Torneio: Brasil Bowl 2011</span></font></p><p><font face="Open Sans"><b><span style="font-size: 18px;">5.</span></b><span style="font-size: 18px;"> Recife Mariners x João Pessoa Espectros</span><br><span style="font-size: 18px;">Público: 7.000 pessoas</span><br><span style="font-size: 18px;">Torneio: Superliga Nordeste 2014</span></font></p>	Foto: Reprodução da Internet	news/2018/10/17/img_3897.jpg	2018-10-17 13:07:15.697251+00	2018-10-17 15:31:47.08986+00	2
14	2015-11-22	Soberano, Espectros conquista o hexa da Superliga Nordeste	soberano-espectros-conquista-o-hexa-da-superliga-nordeste	<p>Quebrando a invencibilidade do Recife Mariners na temporada, o João Pessoa Espectros sagrou-se hexacampeão da Superliga Nordeste de futebol americano ao vencer os azuis por 16×14, neste domingo (22), na Arena Pernambuco.</p><p>Pode se dizer que o feitiço virou contra o feiticeiro. Após vencer duas vezes os paraibanos nos últimos segundos , os pernambucanos provaram do próprio veneno e viram o kicker Diego Aranha acertar um field goal de 52 jardas restando meio minuto para o fim do jogo.<br></p><p>Agora, os fantasmas farão a final do Brasil Bowl contra o Coritiba Crocodiles, campeão da Superliga Centro-Sul, dia 13 de dezembro, no estádio Almeidão, em João Pessoa.<br></p><p><b>O JOGO<br></b>Velocidade. Essa é a palavra que resume o primeiro tempo de jogo. Sem muitos huddles, os times apostaram na sequência contínua de jogadas para abrir o marcador. Mais eficiente, o Mariners colocou suas fichas no jogo corrido, principalmente, com o runningback Lucas Adolfo, maior pontuador da temporada com 10 touchdowns. Mas foi através do passe que os azuis tiraram o placar do zero. O quarterback Drew Banks precisou de apenas duas conexões para encontrar o wide receiver Ricardo Teixeira na endzone, anotando o primeiro touchdown da partida: 7×0.</p><p>Após o vacilo, a defesa do Espectros acordou. Com o linebacker americano Jeron Jones inspirado, os avanços terrestres dos marinheiros foram anulados, enquanto as corridas do Espectros passaram a funcionar. Vale o destaque para as boas descidas para firts down de Alisson Morais, sempre deixando o quarterback Rodrigo Dantas em boas condições de lançamento. Em uma destas, o paraibano teve boa visão de jogo para encontrar Vitor Ramalho, que, mesmo sob forte marcação, diminuiu o marcador: 7×6.</p><p>No fim do período, aparentemente, a insistência no jogo corrido acabou cansando a defesa do Mariners, o que se refletiu no marcador. Vendo que os donos da casa não conseguiam acompanhar os avanços dos runningbacks do Espectros, Rodrigo Dantas passou a apostar nos passes de longa distância. O prêmio para a perseverança foi uma linda conexão com Antonio Diniz, virando o marcador na Arena: 13×7. No retorno do intervalo, o Mariners voltou mais atento. Decisivo, Drew Banks voltou a chamar a responsabilidade e assumir papel de protagonismo. Num momento chave do jogo, os azuis estavam numa quarta descida para 12, porém, ao invés do punt, o americano arriscou o passe para TL Edwards. Obteve sucesso. O camisa seis subiu no terceiro andar e deixou os azuis dentro da redzone.</p><p>Na jogada seguinte, Drew não perdoou e lançou para Ricardo Teixeira marcar o seu segundo TD do jogo. Como Rafael Bandeira não costuma perder extra-points, os donos da casa viraram o jogo a menos de cinco minutos para o fim do jogo: 14×13. O destino, no entanto, guardava os louros da vitória para outro kicker e o melhor estava guardado para o final. Restando 30 segundos para o fim da partida, o Espectros não converteu a terceira descida e precisou arriscar um field goal da linha das 50 jardas. Fazendo inveja a muitos chutadores da NFL, Diego Aranha acertou o chute e garantiu o hexacampeonato para os paraibanos: 16×14.</p>	Foto: Tato Rocha/JC Imagem	news/2018/10/17/42.jpg	2018-10-17 18:01:05.829928+00	2018-10-17 18:01:05.82995+00	2
15	2015-11-23	Field Goal de Diego Aranha entraria no Top 10 da NFL	field-goal-de-diego-aranha-entraria-no-top-10-da-nfl	<p><font color="#333333" face="Lato, sans-serif"><span style="font-size: 16px;">Para os que não conhecem o futebol americano à fundo, a posição de kicker pode parece a mais fácil de todas. “É só entrar e chutar”, dizem os mais desavisados. De certa maneira, a frase não está errada. Você está (quase) livre de tackles, não precisa enfrentar as trincheiras e sua principal função é acertar a bola oval entre o “Y” para garantir o field goal ou extra-point.</span></font></p><p><font color="#333333" face="Lato, sans-serif"><span style="font-size: 16px;">LEIA TAMBÉM:<br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/soberano-espectros-conquista-o-hexa-da-superliga-nordeste" target="_blank">Soberano, Espectros conquista o hexa da Superliga Nordeste</a></span></font></p><p><span style="font-size: 16px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;">Porém, a pressão e a responsabilidade que recaem sob as costas deste atleta, talvez, só seja superada pela do quarterback. No último domingo (22), na decisão da Superliga Nordeste de futebol americano, Diego Aranha, kicker do João Pessoa Espectros colocou esta afirmativa à prova.</span><br></p><p><span style="font-size: 16px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;">O cenário não poderia ser mais dramático. Os paraibanos perdiam por um ponto e o relógio marcava 14 minutos e 36 segundos. Faltavam apenas 24 para o fim do jogo. O objetivo do camisa 3: acertar uma bola de aproximadamente 400 gramas entre 5,64 metros, a uma distância 52 jardas (47,32 m). Sucesso!</span><br></p><p><span style="font-size: 16px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;">“Não me senti pressionado. Eu estava muito confiante. Sabia de todo o trabalho que tinha sido feito pelo time ao longo do ano. Tudo conspirava pra que o chute saísse certo”, disse Aranha.</span><br></p><p><span style="font-size: 16px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;">A façanha feita por Aranha poderia colocar inveja em muitos chutadores da NFL, a liga americana da modalidade. Na temporada atual, o chute do paraibano ficaria no Top-10 de 2015 da franquia, ocupando a 8ª colocação. Para se ter ideia, nem o kicker Cairo Santos, único jogador brasileiro a atuar na NFL, conseguiu a marca nesta temporada. A maior distância que o atleta do Kansas City Chiefs conseguiu foi de 51 jardas.</span><br></p><p><span style="font-size: 16px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;">"É bom saber que alcancei uma marca dessas. Mas a NFL é diferente. É um mundo diferente. O nível e a pressão deles é muito maior. Independente disso, meu foco vai ser continuar treinando pra melhorar ainda mais", complementou o camisa 3.</span><br></p><p><span style="font-size: 16px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;">Na edição 2015 da Superliga Nordeste, Diego Aranha foi responsável por 43 dos 220 pontos do João Pessoa Espectros. Foram 22 extra points e 7 field goals.</span><br></p><p><span style="font-size: 16px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;">“Foi uma temporada muito produtiva. Tudo que conquistamos foi fruto dos treinos. O sucesso não é só meu, é de todo mundo. Eu não havia estabelecido uma meta de pontos, mas fiquei feliz com meus números. Espero continuar ajudando o Espectros a ganhar outros jogos”, complementou o kicker.</span><br></p><p><span style="font-size: 16px; color: rgb(51, 51, 51); font-family: Lato, sans-serif;">Agora, Aranha espera voltara ser decisivo para o Espectros contra o Coritiba Crocodiles, próximo dia 13 de dezembro, pela decisão do Brasil Bowl, no estádio Almeidão.</span><br></p>	Foto: Tato Rocha/JC Imagem	news/2018/10/18/TR221115055.jpg	2018-10-18 13:24:46.367997+00	2018-10-18 13:24:46.36802+00	1
18	2015-08-06	Recife Pirates acerta com o linebacker americano Darrick Dillard	recife-pirates-acerta-com-o-linebacker-americano-darrick-dillard	<p>Pouco mais de um mês após anunciar a contratação do primeiro americano da sua história, o quarterback Dominique White (confira aqui entrevista como jogador), o Recife Pirates acertou, na manhã desta quinta-feira (6), a chegada de mais um gringo para a disputa da Superliga Nordeste de futebol americano. Trata-se do linebacker Darrick Dillard, de 24 anos. Nascido na cidade Hopkinsville, no Kentucky, mas radicado no Estado do Tennessee, o atleta era companheiro de Dominique no Clarksville Wolfpack e Tri-City Diesel, seu último clube.</p><p><b>LEIA TAMBÉM:</b><br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/recife-pirates-anuncia-quarterback-dominique-white" target="_blank">Recife Pirates anuncia quarterback Dominique White</a></p><p>Ele ficará no time pernambucano até o fim da temporada. A estreia do jogador acontecerá já no próximo dia 15 de agosto, quando os piratas buscarão a reabilitação no torneio regional contra o Ceará Caçadores-CE, às 15h, no estádio dos Aflitos. Na última rodada, os blacks acabaram sendo derrotados por 21 x 13 pelo América-Bulls-RN.<br></p><p>"Foi uma contratação pra elevar o nosso nível e nos dar mais condições de chegar aos playoffs. Todo o time está fazendo um grande esforço pra atingir esse objetivo", disse Rodrigo Azevedo, presidente do time.<br></p><p>Apesar da pouca idade, Darrick é experiente e já passou pelo college americano, quando atuou pela Austin Peay State University, de Clarksville. Assim como Dominique – que fez grande atuação na sua estreia -, Dillard é um jogador multiuso e pode ser utilizado em várias posições, tanto no ataque como na defesa. Além de linebacker, ele também já jogou como tight end, wide receiver, runningback, safety e corner.<br></p><p>“Esperamos que ele ajude a equipe tanto no setor defensivo como no ofensivo. Como ele tem um entrosamento com Dominique, por ter jogado com e contra ele, não vai ser necessário tempo para se entrosar. São jogadores que se conhecem, são amigos, e isso vai ajudar muito em campo”, complementou Rodrigo Azevedo, que também é presidente do clube.<br></p><p>Ciente da responsabilidade que terá no Recife Pirates, Darrick Dillard disse estar confiante em repetir a parceria com Dominique White.<br></p><p>"Eu e Dominique jogamos juntos por três anos em times semi-amadores dos Estados Unidos. Ele é um jogador maduro e que sempre coloca o time em primeiro lugar nas suas prioridades. Espero repetir essa parceria", disse o jogador.<br></p><p>Vale lembrar que, segundo o regulamento da Superliga Nordeste, cada time só pode contar com dois americanos em seu elenco. O objetivo é permitir que haja um intercâmbio de experiências com os gringos, mas sem perder e essência de revelar jogadores brasileiros.<br></p>	Foto: Reprodução da Internet	news/2018/10/18/12.jpg	2018-10-18 13:40:52.162455+00	2018-10-18 13:40:52.162477+00	2
17	2015-06-23	Recife Pirates anuncia quarterback Dominique White	recife-pirates-anuncia-quarterback-dominique-white	<p>Nunca foi segredo que o Recife Pirates tinha um desejo antigo de contar com um jogador estrangeiro para comandar o seu setor ofensivo. No último fim de semana, o sonho tornou-se realidade. Já era quase madrugada do sábado (20) quando, através de uma rede social, os blacks confirmaram o acerto com o quarterback americano Dominique White, de 28 anos.</p><p>Primeiro gringo a vestir a camisa dos Piratas, ele ficará na equipe pernambucana até o fim do mês de novembro, período previsto para os playoffs da Superliga Nordeste de futebol americano. Natural de Kentucky, mas radicado na Virgínia, o último time que o atleta vestiu a camisa foi o Tri-City Diesel, da cidade de Clarksville, onde atuou nos últimos dois anos.<br></p><p>Além disso, White – que também já jogou como safety, wide receiver, running back -, ainda acumula passagens pelo Clarksville Outlaws e Clarksville Wolfpack. O quarterback também tem experiência no College americano, na qual atuou pela Western Kentucky University e Tusculum College of Tennessee.<br></p><p>Em entrevista ao FABR Network, Dominique falou a respeito das suas características. “Gosto do contato e de fazer a jogada. Também curto prolongar a jogada e arremessar de longas distâncias. Acredito que poderei ajudar a equipe com isso. Toda vez que tenho a bola, espero que os meus receivers possam pontuar. Quero que eles confiem em mim, afinal, meu objetivo deixa-los sempre em posição boa de pontuar”, afirmou Dominique, que tem 1,84m e 109 kg.<br></p><p>Ciente da responsabilidade que terá à frente dos blacks, o americano, que já realizou um treinamento com o elenco pirata, disse ter se encantado com a receptividade do grupo.<br></p><p>"Achei a energia do grupo muito intensa. Adorei mesmo. Os jogadores foram muito acolhedores e fizeram com que eu me sentisse em casa. Se sentir encaixado no primeiro treino é sempre um ponto positivo. No momento, estou satisfeito com o time e sabemos que podemos trabalhar para tudo ficar bom", comentou o americano.<br></p><p>Apesar do curto período em que está na capital pernambucana, o atleta disse estar se sentindo em casa. </p><p>“É um lugar lindo. As árvores são diferentes dos Estados Unidos, de Tenesse. A praia é bonita, o clima tem chovido muito todos os dias desde que cheguei. Não tem problema, pois ajuda com o calor. Eu curti a cidade. Pode ver a cultura na cidade, não é toda remodelada para as expectativas modernas do dia a dia. Gostei muito”, complementou.<br></p><p>Para Rodrigo Azevedo, presidente e head coach do Recife Pirates, a chegada do americano representa um grande passo para o desenvolvimento do time.<br></p><p>"A chegada de Dominique traz muita confiança para o time. Não queremos apenas jogar para sobreviver no campeonato, agora, o nosso objetivo são os playoffs", disse o gestor.<br></p><p>A estreia do americano vai acontecer no próximo dia 12 de julho, quando o Recife Pirates enfrenta o UFERSA Petroleiros-RN, às 15h, nos Aflitos, pela primeira rodada do Grupo Norte da Superliga Nordeste.<br></p>	Foto: Bobby Fabisak/JC Imagem	news/2018/10/18/2.jpg	2018-10-18 13:37:13.18538+00	2018-10-21 13:35:56.961961+00	2
20	2015-10-22	Superliga Nordeste levou mais de 18 mil torcedores aos estádios em 2015	superliga-nordeste-levou-mais-de-18-mil-torcedores-aos-estadios-em-2015	<p>Com o fim da temporada regular da Superliga Nordeste de futebol americano, o FABR Network apresenta o levantamento da média de público da competição em 2015. Ao todo, 18.486 pessoas foram à campo nos 24 jogos da primeira fase, rendendo uma média de 770 torcedores por partida.</p><p>Assim como no ano passado, o clube com a maior média foi o Recife Mariners/Náutico, que levou 4.700 torcedores aos seus três jogos, no estádio dos Aflitos, resultando numa média de 1.566 pessoas por partida. Os azuis também são os detentores do maior público do ano, quando 2.400 pessoas assistiram à Mariners 25 x 19 Espectros, dia 12 de outubro.<br></p><p>"Atribuo esse sucesso ao trabalho extra-campo. Tanto eu como Lucas (head coach do Mariners) pudemos observar muitas coisas quando viajamos com a Seleção para o Mundial. Incorporamos muita coisa dentro do Mariners e o público assimilou muito bem. A manutenção de uma equipe competitiva também ajuda muito nesse processo", Júlio Adeodato, presidente do Recife Mariners.<br></p><p>A vice-liderança ficou o Ceará Caçadores, que chegou perto dos marinheiros e teve média de 1.411 fãs por partida no estádio Presidente Vargas, em Fortaleza. A principal surpresa foi o Vitória-BA, que, apesar da segunda pior campanha da Superliga, ficou na quarta colocação, inclusive, à frente do atual pentacampeão da competição, o João Pessoa Espectros. Os baianos levaram 1.960 pessoas (média de 653), enquanto os paraibanos colocaram 1.792 (média de 597).<br></p><p>“Isso tudo é fruto do trabalho em conjunto. A Superliga é feita por todos os times e o fruto está sendo colhido com esses números”, comentou o presidente da Liga Nordestina de Futebol Americano, Felipe Jardim.<br></p><p>O gestor ainda explicou, na sua visão, qual foi a fórmula para o sucesso da edição 2015 da Superliga Nordeste de futebol americano.<br></p><p>"Nas nossas reuniões, sempre colocamos o entretenimento como um ponto chave. Muitos técnicos e jogadores que atuam na Superliga já foram pra jogos ou participaram de campeonatos fora do País. Isso nos trouxe um “know how” muito positivo. Acredito que esse esteja sendo o nosso diferencial. O torneio consegue trazer muitos atrativos além da partida em si", complementou.<br></p><p>Em tempo, vale lembrar que o maior público de um jogo de futebol americano no Brasil foi em um jogo entre nordestinos. No ano passado, na decisão da Superliga Nordeste, entre Recife Mariners/Náutico e João Pessoa Espectros-PB, 7.056 torcedores estiveram presentes na Arena Pernambuco e presenciaram o pentacampeonato do time paraibano.</p><p><br></p><table class="table table-bordered" style="text-align: center;"><tbody><tr><td style="text-align: center; "><b>RANKING</b></td><td style="text-align: center; "><b>PÚBLICO TOTAL</b></td><td style="text-align: center; "><b>MÉDIA POR PARTIDA</b></td></tr><tr><td style="text-align: center;">1. Recife Mariners</td><td style="text-align: center;">4.700</td><td style="text-align: center;">1.566</td></tr><tr><td style="text-align: center;">2. Ceará Caçadores</td><td style="text-align: center;">4.235</td><td style="text-align: center;">1.411</td></tr><tr><td style="text-align: center;">3. Recife Pirates</td><td style="text-align: center;">3.086</td><td style="text-align: center;">1.028</td></tr><tr><td style="text-align: center;">4. Vitória</td><td style="text-align: center;">1.960</td><td style="text-align: center;">653</td></tr><tr><td style="text-align: center;">5. João Pessoa Espetros</td><td style="text-align: center;">1.792</td><td style="text-align: center;">597</td></tr><tr><td style="text-align: center;">6. Ufersa Petroleiros</td><td style="text-align: center;">1.510</td><td style="text-align: center;">503</td></tr><tr><td style="text-align: center;">7. América Bulls</td><td style="text-align: center;">1.392</td><td style="text-align: center;">464</td></tr><tr><td style="text-align: center;">8. Sergipe Bravos</td><td style="text-align: center;">223</td><td style="text-align: center;">74</td></tr></tbody></table>	Foto: Tiago Giordani	news/2018/10/18/12088484_524809707695038_4713255916898719282_n.jpg	2018-10-18 13:50:41.239612+00	2018-10-31 19:20:03.77526+00	2
16	2015-11-13	Everaldo Marques comenta sobre NFL no Brasil e unificação de campeonatos no FABR	everaldo-marques-comenta-sobre-nfl-no-brasil-e-unificacao-de-campeonatos-no-fabr	<p>O futebol americano no Brasil, hoje, é uma febre. Isto é fato. Porém, algumas perguntas, como quando e de onde surgiu esta paixão, ainda não têm respostas. No entanto, quando o assunto são os possíveis responsáveis por este sucesso, aí sim “temos um djogo”.</p><p><b>LEIA TAMBÉM:</b><br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/brasil-oncas-e-convocado-para-copa-do-mundo-de-futebol-americano" target="_blank">Brasil Onças é convocado para Copa do Mundo de Futebol Americano</a></p><p>Logo de cara, alguns nomes vêm à mente. Para os da velha guarda, o narrador Luciano do Valle, responsável pelas primeiras transmissões da NFL no Brasil, talvez seja a primeira pessoa. Para os mais novos, quem sabe, o kicker do Kansas City Chiefs, o paulista Cairo Santos, ou até a top model Gisele Bündchen, esposa do astro Tom Brady.<br></p><p>Mas, se tem alguém que consegue ser lembrado por todos, sem dúvidas, é Everaldo Marques. Falar em futebol americano no Brasil e não citar o narrador da ESPN é tão grave quanto errar um snap na redzone. Há 10 anos sendo o porta-voz do esporte da bola oval na ESPN, o jornalista de 38 anos já narrou nove temporadas da National Football League (NFL), além de sete Super Bowls.<br></p><p>Graças às suas transmissões didáticas e descontraídas, sempre ao lado de Paulo Antunes, o Brasil chegou à incrível marca de 19,7 milhões de fãs, se consolidando com terceira maior audiência do mundo, atrás apenas dos Estados Unidos e do México. Os números representam um crescimento de 800% nos últimos anos, rendendo uma média de 123 mil espectadores por partida.<br></p><p>Nesta semana, o FABR Network bateu um papo com o paulista à respeito do desenvolvimento da modalidade no País, o crescimento do futebol americano no Nordeste, as suas projeções quanto à temporada da NFL e muito mais.&nbsp;</p><p><b style="white-space: pre-wrap;">NETWORK – Hoje, o Brasil já é o terceiro país em audiência na NFL. Esse é um dos sinais que mostram que o futebol americano chegou para ficar?</b></p><p>Sim. Como atração de televisão, está funcionando bem. Virou algo que as pessoas gostam de ver. É aquela coisa, quando você gosta de uma coisa, você se empolga, espalha para os amigos e tenta fazer com que eles assistam também. Com isso, o público vai aumentando. O espaço do futebol americano está se consolidando na TV por assinatura e vai ficar com espaço razoável como alternativa de entretenimento pro pessoal que gosta de esportes.</p><p><b>NETWORK – Diante deste sucesso no País e com todos os números de audiência, já chegou a hora de recebermos um jogo da NFL?</b><br>Acho que eles virão. A NFL está de olho nisso há muito tempo, afinal, eles sabem que o mercado aqui pode ser interessante. Eles estão analisando as possibilidades reais de negócio que podem existir por aqui. Se fala muito do Pro-Bowl vir em 2017. Acredito que seja uma possibilidade real, quem sabe no Maracanã. Se já tem jogo da temporada regular em Londres, porque aqui não? O nosso fuso horário é muito mais próximo da costa-leste dos EUA. É também uma viagem mais curta do que pra Inglaterra. Então, esse pode ser um primeiro passo.</p><p><b>NETWORK –&nbsp; Qual seria o local ideal para a realização desta partida? Pernambuco entraria nesta fatia?<br></b>Há 14 estádios no Brasil que poderiam receber a NFL tranquilamente. Os 12 da Copa do Mundo, mais a Arena do Palmeiras e a do Grêmio. Qualquer um destes teria suporte para montar a estrutura e a logística do jogo. Acredito que, como chamariz, a porta de entrada no Brasil tem que ser o Maracanã. Mas, na minha opinião, a maior chance de sucesso seria em São Paulo, num estádio não tão grande. Apostaria no estádio do Palmeiras, que tem capacidade pra 40 mil pessoas. Esse seria o público ideal. Não sei se o Maracanã com 70 mil lugares lotaria num jogo de NFL. Mas, como chamariz, o local é o Rio. Se você está indo pro Brasil, tem que ir no Maracanã. É um símbolo do futebol e um ícone do esporte. Pra você ver, quando eles foram pra Inglaterra, foram logo pra Wembley. Acho que o caminho vai ser mais ou menos este aqui no Brasil. Sinceramente, não sei se qualquer outro estádio teria tanto peso pra NFL. Depois que as coisas acontecerem e caminharem, podemos pensar em outras alternativas. Aí sim Recife poderia se encaixar no perfil.</p><p><b>NETWORK – Atualmente, só temos um brasileiro jogando na NFL, o kicker Cairo Santos, no Kansas City Chiefs. O que falta para emplacarmos mais atletas?<br></b>É um trabalho que demora um pouco. Primeiro você precisa ir pros Estados Unidos e estudar lá. Há muitos garotos do Brasil que pensam em ir fazer high school, college e ter oportunidade de jogar. Realmente, esse é o caminho, o futebol universitário. Há um kicker em Wisconsin, Rafael Gaglianone, que pode seguir os passos do Cairo. Também já&nbsp; tivemos o Maikon Bonani, que chegou a treinar no Tennessee Titans, mas não passava no corte final de elenco. Pra termos jogadores de habilidade, no entanto, pode ser que demore um pouco mais. Pra termos quarterbacks, runningbacks, wide receivers, dependeria de fazer esse trajeto que eu falei. Tem que jogar desde criança pra desenvolver as habilidades. Não adianta ficar se iludindo achando que você jogando futebol americano aqui, um time da NFL vai lhe levar para lá.</p><p><b>NETWORK – Hoje, existem duas grandes ligas semi-amadoras no Brasil, o torneio Touchdown e a Superliga. Como você vê o desenvolvimento destes dois campeonatos?</b><br>Não deveriam haver dois, era pra ser um só. Desde que o futebol americano começou a ser jogado aqui no Brasil, há uma disputa pelo poder. Sempre tiveram pessoas querendo se apropriar da modalidade. Já começa errado daí. Ao invés de todo mundo puxar a corda pro mesmo lado e, depois que a coisa crescer, você repartir o bolo, o pessoal fica com olho grande antes mesmo de se estabelecer. Também é preciso ter consciência de que se isso acontecesse, teria num tamanho limitado. Infelizmente, o único esporte que vai pra frente no Brasil é o futebol. O vôlei tem dificuldades, o basquete também. Há times da NBB que saíram do campeonato por falta de patrocínio. Se esses esportes tem dificuldade, imaginar que o futebol americano vá ser uma coisa diferente, é se iludir. Realmente, as dificuldades vão existir, assim como existem para todos os esportes. Pra se estabelecer uma liga, vai ser complicado. É preciso ter consciência e não querer dar um passo maior do que a perna.</p><p><b>NETWORK – Está acontecendo um boom de atletas americanos no Brasil. Em Recife, por exemplo, há quatro atletas nos dois maiores times da cidade. O caminho para profissionalizar é este?</b><br>É importante pra crescer o nível do que você faz. Basta você ver o que aconteceu com as meninas do handebol. Quase dez atletas que se transferiram para clubes de ponta da Europa nos últimos anos. Elas cresceram, o Brasil evoluiu e foi campeão mundial. O intercâmbio com os americanos é fundamental para adquirir experiência. Muitos destes jogadores já passaram por college e tem muito à acrescentar.</p><p><b>NETWORK – Neste ano, a ESPN transmitiu os jogos da seleção brasileira de futebol americano na Copa do Mundo da modalidade. É de interesse da emissora cobrir eventos nacionais?</b><br>Ainda há um caminho muito longo para isto. Tudo isso tem um custo. Colocar um caminhão de transmissão num estádio custa caro. A TV não fará nenhum investimento que não vá ter retorno. Afinal de contas, isso aqui é um negócio e visa o lucro. Claro que sempre haverá espaço para divulgação, mas investir em transmissões é uma coisa mais complicada, afinal, envolve um custo que, talvez, a TV não consiga recuperar. A NFL vai bem e atrai patrocínio nas nossas transmissões. Não dá pra dizer que o futebol americano brasileiro faria a mesma coisa. Ainda vai levar um tempo pra mudar isso.</p><p><b>NETWORK – Como você prevê o futebol americano no Brasil a longo prazo, tanto em termos de audiência como em número de praticantes?</b><br>Em 2007, eu nunca imaginaria que o Brasil estaria disputando uma Copa do Mundo de futebol americano. Em 2015, não imaginaria ter tantos times amadores e quase profissionais. Para a NFL, a coisa tende a crescer, porque há muitos artigos sendo vendidos aqui e a liga quer expandir e aparecer mais aqui. Pros times brasileiros, não tenho como projetar.</p>	Foto: ESPN Brasil	news/2018/10/18/maxresdefault.jpg	2018-10-18 13:34:01.410347+00	2018-10-23 22:49:14.664765+00	2
19	2015-09-03	João Pessoa Espectros anuncia contratação do americano Jeron Jones	joao-pessoa-espectros-anuncia-contratacao-do-americano-jeron-jones	<p>Após a frustração com o defensive back Lucky Dozier, que chegou a ser anunciado, mas nem chegou a embarcar para o Brasil, devido a problemas pessoais, o João Pessoa Espectros-PB – atual pentacampeão da Superliga Nordeste -, acertou, na tarde desta quinta-feira (3), a contratação do primeiro americano da sua história, o linebacker Jeron Jones.</p><p><b>LEIA TAMBÉM:</b><br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/recife-pirates-anuncia-quarterback-dominique-white" target="_blank">Recife Pirates anuncia quarterback Dominique White</a></p><p>O experiente jogador de 32 anos tem experiência no College dos Estados Unidos pela Virginia Union University, da&nbsp; NCAA, porém, desde 2013, estava na Liga Sérvia, onde atuou pelo Nis Imperatori e pelo Indjija Indians, seu último clube. Sem tempo para descanso, Jones fará a sua estreia com a camisa dos fantasmas já neste domingo (6), quando o time paraibano enfrenta o América Bulls-RN, às 15h, no estádio Almeidão, em João Pessoa.<br></p><p>Quanto às suas características, Jeron é um jogador bastante versátil. Ao longo da sua carreira, o gringo já atuou como inside linebacker, outside linebacker, defensive end, fullback, ofensive lineman, além de também estar ambientado ao especial team.<br></p><p>Para o técnico do Espectros, Brian Guzman, a experiência vivida por Jones acrescentará muito ao time e principalmente à posição que ele irá ocupar, já que alguns linebackers dos fantasmas estão em processo de recuperação.<br></p><p>"A versatilidade e o tamanho do Jeron permitirá que ele jogue em qualquer ponto tanto na linha defensiva quanto como linebacker. Isso nos dará uma flexibilidade muito grande dentro de campo", afirmou.<br></p><p>Vale lembrar que o linebacker teve uma experiência, mesmo que curta, em um time da National Footbal League (NFL), quando participou de um rápido período de treinamentos no Baltimore Ravens, em 2013, mas acabou não sendo aprovado nas peneiras regionais.<br></p><p>Além disso, o atleta tem uma característica particular que os times brasileiros e, antes de tudo, nordestinos, procuram: docência. No ano passado, Jones foi nomeado coordenador defensivo do Indjija Indians pelo head coach James Fayed.<br></p><p>“Quando eu estive nos Estados Unidos com o Brasil Onças, conversei com pessoas experientes do futebol americano mundial e uma dicas que eles repetiam muito era a necessidade de contar com jogadores que, além de jogar, pudessem passar experiências para o grupo. Jones se encaixa nesse perfil. Ele já foi treinador e conhece muito do esporte. Esperamos que ele nos ajude dentro e, principalmente, fora de campo”, disse o presidente do João Pessoa Espectros, Guto Souza.<br></p>	Foto: Reprodução da Internet	news/2018/10/18/1382767307_0_25953_4.jpg	2018-10-18 13:43:44.912353+00	2018-10-27 17:18:06.001743+00	2
13	2015-12-14	Espectros faz história, vence Crocodiles e fatura Brasil Bowl	espectros-faz-historia-vence-crocodiles-e-fatura-brasil-bowl	<p><font face="Open Sans"><span style="font-size: 18px;">“Eu sou muito feliz, eu sou paraibano”, cantou a torcida, em coro, no intervalo, sem prever que essa felicidade só seria concretizada nos últimos segundos da partida. Quem saiu de casa neste domingo (13), para assistir a decisão do Brasil Bowl, no estádio Almeidão, sabia que o jogo seria disputado e emocionante entre o João Pessoa Espectros e o Coritiba Crocodiles.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>LEIA TAMBÉM:</b><br>&gt;&nbsp;<a href="http://fabrnetwork.com/noticias/soberano-espectros-conquista-o-hexa-da-superliga-nordeste/" target="_blank">Soberano, Espectros conquista o hexa da Superliga Nordeste</a></span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O time paraibano, pentacampeão nordestino, buscava o título mais importante do País na modalidade e entrou com tudo em jogo para levantar pela primeira vez a taça, depois de ter sido vice em 2013 e 2014, perdendo justamente para os paranaenses. Já o Croco viajou até a Paraíba para manter o feito dos últimos dois anos e soltar o grito de tricampeão.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em frente a um público de aproximadamente seis mil pessoas, os dois times entraram em campo para um jogo cheio de reviravoltas, apreensão e emoção. A torcida, que mais uma vez fez um show à parte, alternada entre o grito e o silêncio, o roer de unhas e as palmas, entre a mão na cabeça e o soco no ar. Até que, nos últimos segundos do jogo, entre gritos, choro e alívio, o time e a torcida sabiam que o João Pessoa Espectros era o mais novo campeão brasileiro de futebol americano.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>O JOGO<br></b></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em um primeiro quarto disputado, a primeira pontuação só foi sair faltando 3 minutos para o fim. Após interceptação, o time paranaense abriu o placar marcando touchdown com Lucas Mullet e Adan converteu o ponto extra. Até o fim do primeiro quarto o Espectros não conseguiu avançar muito.</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O time de João Pessoa só veio pontuar no segundo quarto com Massu, após lançamento de Rodrigo Dantas. Aranha converteu o ponto extra e o placar ficou empatado. Faltando poucos segundos para terminar o primeiro tempo, o Espectros teve a chance de passar a frente do placar com um field goal e da linha de 26 jardas, Aranha chutou e marcou mais 3 pontos para os fantasmas. O placar marcava 10×7.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Para desespero da torcida, logo no início do terceiro tempo, o Crocodiles mais uma vez marcou touchdown após interceptação. Marcos Rocha correu 50 jardas e marcou mais um touchdown, com o ponto convertido, o time visitante mais uma vez teve vantagem de 4 pontos sobre o Espectros. 14×10 marcava o placar a favor do Coritiba.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O último quarto começou bem. Após Rodrigo Dantas lançar para Vitor Ramalho, a torcida dos Fantasmas mais uma vez comemorou um touchdown. Mesmo com a chance de ponto extra desperdiçada, o placar ainda era favorável ao time da casa marcando 16×14. Apesar de existir a vantagem, ela era pequena.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O cronômetro ia passando, o Crododiles avançando e a torcida se desesperando. Até que o indesejado aconteceu: faltando pouco mais de um minuto para o fim do jogo, Crocodiles marcou mais um touchdown e uma conversão de 2 pontos, e assim virou o jogo fazendo o placar marcar 22×16.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">A diferença de 6 pontos podia ser ultrapassada com um touchdown e a conversão, não fosse um pequeno detalhe: faltava um minuto para terminar o jogo. Mas não parecia impossível. A torcida gritava “eu acredito, eu acredito”. E quem acreditou, não se decepcionou. Diego Nascimento marcou TD e a torcida, que estava em silêncio absoluto, comemorou enlouquecidamente.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O Espectros tinha empatado com o Crocodiles. E mais uma vez era hora de Aranha decidir. O kicker não só marcou mais um ponto, como deu a chance para o time dos fantasmas e a torcida rubro-negra tirar da garganta o grito de “É Campeão” que estava entalado desde 2013. Nesse momento, todo o estádio era Feliz, era Paraibano, era, principalmente, Espectros.</span><br></p>	Foto: Anderson Ferreira	news/2018/10/17/Espectros_Crocodilles_01_AndersonSilva.jpg	2018-10-17 17:58:23.510432+00	2018-10-31 19:20:49.949802+00	2
21	2016-06-21	Espectros anuncia Heron Azevedo, ex-Cuiabá Arsenal	espectros-anuncia-heron-azevedo-ex-cuiaba-arsenal	<p><font color="#333333" face="Open Sans"><span style="font-size: 18px;">O mercado da bola oval, enfim, começou a esquentar no Nordeste. Nesta segunda-feira (25), o João Pessoa Espectros, atual campeão brasileiro de futebol americano, anunciou a chegada do wide-receiver Heron Azevedo, ex-Cuiabá Arsenal e desejo antigo dos paraibanos.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px; color: rgb(51, 51, 51);">Aos 30 anos de idade, o atleta chega para ser o principal alvo do quarterback Rodrigo Dantas na temporada 2016. Com 12 anos de experiência na modalidade, o carioca já morou nos Estados Unidos, onde jogou pelos Vikings Football Schedule, do Diablo Valley College, além da Pacific University, de Oregon.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px; color: rgb(51, 51, 51);">"Nós já vínhamos mantendo contato a um bom tempo. Ele tinha afinidade com Brian na época que os dois estavam no Cuiabá. Do ano passado para cá, as conversas foram se estreitando e articulamos a sua vinda. Ele será uma ótima contratação para um time que já está nos trilhos certos. Heron é um dos mais experientes jogadores do Brasil, além de ter muita vivência como treinador", disse Diego Martins, presidente do João Pessoa Espectros.</span><br></font></p><p><span style="font-size: 18px; color: rgb(51, 51, 51);"><font face="Open Sans">Vale lembrar que o carioca esteve presente em todas as convocações da Seleção Brasileira até hoje. A mais recente aconteceu na última Copa do Mundo de futebol americano, que aconteceu em Ohio, nos Estados Unidos, em julho do ano passado.</font></span><br></p><p><iframe frameborder="0" src="//www.youtube.com/embed/JWP-lTpek1g" width="640" height="360" class="note-video-clip"></iframe><span style="color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;"><br></span><span style="color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: 12.8px; font-style: italic; background-color: rgb(249, 249, 249);"><br></span></p><p><span style="color: rgb(51, 51, 51); font-family: Lato, sans-serif; font-size: 16px;"><br></span><br></p>	Foto: Junior Martins	news/2018/10/27/10687415_10152805278508724_4368211270647680881_o.jpg	2018-10-27 17:14:56.094934+00	2018-10-31 19:22:25.993922+00	2
23	2016-02-28	Recife Pirates acerta com o runningback Sanchez Holder	recife-pirates-acerta-com-o-runningback-sanchez-holder	<p><font face="Open Sans"><span style="font-size: 18px;">Após a boa campanha na última temporada, na qual chegou de maneira inédita aos playoffs da Superliga Nordeste, o Recife Pirates promete investir pesado em 2016 para repetir a façanha. A primeira prova disto foi confirmada neste domingo (28), com exclusividade ao Blog Touchdown, pela diretoria da equipe.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O time preto e cinza acabam de acertar com o runningback americano Sanchez Holder, de 25 anos. Ele chega à capital pernambucana em junho, quando iniciará a preparação com o restante do elenco visando a disputa do regional.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Natural da pequena cidade de Gallatin, no estado do Tennessee, o último clube que Sanchez Holder atuou foi o Lebanon Hitmen, time semi-profissional dos EUA, onde jogou nos últimos três anos. Antes disso, a primeira experiência do gringo, que também joga como retornador e defensive back, havia sido na Gallatin High School.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">“Estou feliz por ter acertado com o Pirates. Não sabia muita coisa sobre o futebol americano do Brasil. Comecei a ter informações através do Dominique (quarterback da equipe). Espero ter uma grande temporada com o Pirates e fazer tudo o que puder para ajudar a equipe a conquistar os objetivos”, disse o runninback.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Ciente da responsabilidade, ele disse estar animado para mostrar a que veio. Questionado sobre a pressão, o runningback afirmou que gosta de trabalhar desta maneira e se animou ao saber que o Recife Pirates tem uma das melhores médias de público da Superliga.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">“Gosto de jogar com grandes públicos. A pressão me ajuda. Prevejo que esse será um grande ano para mim. Estou muito ansioso para entrar em campo e mostrar o que sou capaz”, finalizou.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em tempo, o Recife Pirates tem dois amistosos marcados contra o Maceió Marechais-AL, equipe integrante da Liga Nordeste (2ª divisão nacional), antes da sua estreia na Superliga.&nbsp; O primeiro confronto acontecerá no dia 9 de abril, na capital alagoana, enquanto o jogo de volta será realizado no dia 5 de junho, no estádio dos Aflitos.</span><br></p>	Foto: Reprodução da Internet		2018-10-27 17:20:28.397307+00	2018-10-27 17:20:28.39734+00	2
24	2016-03-22	Americano Phil Avalos é o novo head coach do Recife Pirates	americano-phil-avalos-e-o-novo-head-coach-do-recife-pirates	<p><font face="Open Sans"><span style="font-size: 18px;">Após anunciar o runningback Sanchez Holder e o free safety Yuji Tashiro, o Recife Pirates confirmou, com exclusividade ao FABR Network, o acerto com um novo head coach para a Superliga Nordeste 2016. Trata-se do americano Philip Avalos, de 62 anos. Além do time principal, Phil, como é carinhosamente conhecido, também assumirá o especial team.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Natural da Califórnia, ele assumirá o lugar deixado por Rodrigo Azevedo, que é presidente do clube e vai passar a coordenar o ataque preto e cinza. Também haverá novidades na defesa. Leonardo Breckenfeld, que já vinha auxiliando o setor, agora, é o encarregado definitivo da área.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">"Nós recebemos muitas indicações sobre o Phil. Quando fizemos a entrevista com ele, entendemos porque ele era tão recomendado. Ele tem uma mentalidade muito boa e que se encaixa com o nosso perfil. Não tivemos dúvida quanto ao acerto e, agora, vamos esperar pra ver todo o trabalho sendo colocado em prática", disse Rodrigo Azevedo, presidente do Recife Pirates.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Phil, que tem 40 anos de experiência no futebol americano, desembarca no Recife no fim do mês de abril e terá cerca de três meses para preparar o Pirates para a Superliga Nordeste.Fora isso, ele acumula experiência de 30 anos como coordenador ofensivo, 15 como defensivo, 30 com special team e 38 como head coach em times high school, college, semi-pro.&nbsp; Neste tempo, o americano conquistou 15 ligas e cinco títulos de divisão nos Estados Unidos.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Além da experiência na sideline, Phil também é mestre em ciência da administração esportiva e doutor em treinamento de atletas de elite.</span></font><br></p>	Foto: Reprodução do Facebook	news/2018/10/27/1410798_958778730805592_1982331329633794064_o.jpg	2018-10-27 17:22:17.708791+00	2018-10-27 17:22:17.708813+00	2
25	2016-04-12	Ceará Caçadores anuncia wide receiver gringo para Superliga	ceara-cacadores-anuncia-wide-receiver-gringo-para-superliga	<p>Visando chegar a mais um playoff da Superliga Nordeste de futebol americano, o Ceará Caçadores acaba de anunciar a contratação de um jogador americano. Trata-se do wide receiver Talon Roggash, de 25 anos.</p><p>Natural do Colorado, o gringo acumula passagens pela Summit High School e Chadron State College. O último clube que ele jogou foi o Bendigo Dragons Gridiron Club, da Austrália. Além de recebedor, Roggash também atua como quarterback e safety.<br></p><p>"Estamos trazendo para o Ceará Caçadores um atleta que tem experiência e liderança dentro e fora de campo e isso será muito importante para os nossos objetivos em 2016. O Talon é um jogador explosivo em campo e que pode marcar um touchdown a qualquer momento. É um atleta rápido e, com certeza, uma ameaça constante aos nossos adversários", falou Henrique Pina, presidente do Ceará Caçadores.<br></p><p>O estado do Ceará não é novidade para Talon. Em 2014, Roggash disputou o campeonato australiano e conheceu Robert Norris, o americano que jogou nos Caçadores em 2014. Robert teve uma ótima experiência em Fortaleza e deu boas referências sobre Talon para a comissão técnica do time cearense.</p><p>Confira os highlights de Talon Roggash:</p><p><iframe frameborder="0" src="//www.youtube.com/embed/cIXvUeX9c98" width="640" height="360" class="note-video-clip"></iframe><br></p>	Foto: Reprodução da Internet	news/2018/10/27/r0_0_3797_2531_w1200_h678_fmax.jpg	2018-10-27 17:24:42.675446+00	2018-10-27 17:24:42.675469+00	2
26	2016-04-26	Ufersa Petroleiros contrata dois americanos visando a Superliga	ufersa-petroleiros-contrata-dois-americanos-visando-a-superliga	<p>O Ufersa Petroleiros-RN anunciou, na noite desta terça-feira (26), a contratação de dois jogadores americanos para a disputa da Conferência Nordeste da Superliga Nacional. Tratam-se do quarterback Jonathan Smith, de 28 anos, e o runningback Ray Bradley, de 25.</p><p>Os gringos já estão em solo potiguar e devem iniciar esta semana os treinamentos visando a temporada 2016. No ano passado, o Petroleiros ficou no “quase” na Superliga. Os laranjas chegaram a ter chance de classificação aos playoffs até a última rodada, mas foram derrotados para o Recife Pirates e ficaram de fora do mata-mata.<br></p><p>Neste ano, os gestores do clube estão dispostos a não cometer os mesmos erros e estão arregaçando as mangas. A primeira grande ação foi a reformulação da comissão técnica. Armando Gomes, ex-head coach e atual presidente do Petroleiros, passará a coordenar os times especiais. Raphael Natan assume a equipe principal.<br></p><p>"Quando eu assumi, era coordenador dos especiais e head coach. Não dava pra fazer um planejamento dedicado. Agora, estou com foco apenas nos times espciais. Também estamos com um cronograma mais organizado. Estamos treinando quatro vezes na semana e com uma frequência muito alta. Isso está fazendo o time render mais. Essa nova mudança nos colocou em um novo patamar e queremos ir longe", disse Armando Gomes, técnico de especialistas do Ufersa Petroleiros.<br></p><p>Outra novidade foi um maior critério nos try-outs. No primeiro realizado em 2015, 78 atletas se inscreveram, mas apenas 33 foram admitidos pelos time de Mossoró. Atualmente, a equipe conta com 49 jogadores em seu elenco, mas pretende fechar o grupo em 60 até a primeira semana de julho.<br></p><p>“Queremos evoluir mais no nosso ataque. No ano passado, apesar de não termos ido para a final, fomos a terceira defesa que menos levou ponto. Com a contratação desses americanos, queremos fazer o ataque ser mais eficiente”, complementou.<br></p><p>Para colocar toda essa mudança em prática, o Ufersa marcou dois amistosos antes da estreia na Conferência Nordeste, contra o Sergipe Redentores. Os laranjas enfrentarão o Ceará Caçadores (15/05) e ABC Scorpions (29/05).<br></p>	Foto: Reprodução do Facebook	news/2018/10/27/13051573_944061145707214_1740422896062790462_n.jpg	2018-10-27 17:26:50.078384+00	2018-10-27 17:26:50.078407+00	2
27	2016-04-27	Cuiabá Arsenal anuncia quarterback americano	cuiaba-arsenal-anuncia-quarterback-americano	<p><font face="Open Sans"><span style="font-size: 18px;">O Cuiabá Arsenal acertou a entrada do quarterback e running back americano Brandon “The Rocket” Watkins, que vem para reforçar a equipe na disputa da Superliga Nacional. O novo atleta ocupará a posição de starter quarterback e ainda será parte da comissão técnica do time. The Rocket chega para ser um diferencial dos cuiabanos na busca pelo terceiro título nacional.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Watkins, de 23 anos, 91 quilos e 1,80 de altura, nasceu em Detroit, no Michigan. A vida esportiva dele começou na 7ª série, com a prática do futebol americano, atletismo e, mais tarde, com o rugby.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">"O atletismo me tornou um atleta muito veloz. Isso me ajuda a sair da marcação e correr para touchdowns. Também espero ajudar os jogadores a evoluírem e o time a ser tricampeão brasileiro. Vou ensinar os defensores a darem tackles, os quarterbacks a passarem a bola e os receivers a fazerem catches e rotas precisas", contou Brandon Watkins, quarterback do Cuiabá Arsenal.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">De acordo com o head coach americano Kenneth Joshen, o conterrâneo possui experiência como quarterback, running back e wide receiver.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Watkins jogou pelo Notre Dame Falcons – da Notre Dame College (NCAA Division II Montain East Conference) e pelo Landsberg X-Press – da German Football League (GFL) Regionalliga Süd, na temporada 2015. Recentemente tentou vaga no Cleveland Gladiators e Philadelphia Soul, ambos da Arena Football League (AFL), sem sucesso.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">“Encontramos ele por meio de contatos que temos nos EUA. Assistimos vídeos dele correndo e passando e são impressionantes. Tem muita velocidade e agilidade. Habilidades valiosas que não podem ser ensinadas. Ele jogou em várias posições no ataque e até na defesa. É muito difícil achar um jogador tão completo e que possa ajudar em várias áreas de jogo. Ele ainda está em fase de adaptação aos jogadores, mas será de grande eficácia”, avaliou Joshen.</span></font><br></p>	Foto: Reprodução da Internet	news/2018/10/27/CuiabaArsenal_BrandonWatkins.jpg	2018-10-27 17:29:27.231349+00	2018-10-27 17:29:27.231371+00	2
28	2016-05-05	De olho na Suprliga, Storm anuncia runningback gringo	de-olho-na-suprliga-storm-anuncia-runningback-gringo	<p><font face="Open Sans"><span style="font-size: 18px;">Depois de ajudar o Lisboa Devils a conquistar o primeiro título da Liga Portuguesa de Futebol Americano (LPFA) e a primeira vitória de um elenco lusitano na IFAF Europe Champions League, o running back americano Malcolm Gasque acertou a sua ida para o São Paulo Storm, onde jogará pela equipa paulista na Superliga Nacional.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O atleta partiu nesta última quarta-feira (4) de Lisboa e já se encontra em São Paulo, capital. Ainda não se sabe se Gasque poderá atuar na Copa São Paulo e São Paulo Football League. Procurado pelo Futebol Americano Brasil, a diretoria do Storm não retornou as mensagens.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Gasque tem 23 anos, 1,70m e 90kg. O jogador também pode atuar como defensive back. Malcolm passou Orange Coast College, onde atuou pelo Orange Coast Pirates – da California Community College Athletic Association (CCCAA/Orange Empire Conference [OEC]) –, antes de embarcar para Portugal.</span><br></p>	Foto: Reprodução da Internet	news/2018/10/27/DSC_0208-1024x678.jpg	2018-10-27 17:31:08.059517+00	2018-10-27 17:31:08.05954+00	2
29	2016-05-18	CBFA confirma LNFA com 33 times e divulga formato de disputa	cbfa-confirma-lnfa-com-33-times-e-divulga-formato-de-disputa	<p><font face="Open Sans"><span style="font-size: 18px;">O presidente da Confederação Brasileira de Futebol Americano (CBFA), Guto Sousa, confirmou a tabela da temporada 2016 da Liga Nacional na noite desta terça-feira (17). O certame de acesso a Superliga Nacional terá 33 equipes, divididas em quatro Conferências Sul, Sudeste, Centro-Oeste e Nordeste. Diferente da primeira citada, que terá uma divisão única, as outras três serão divididas em dois grupos.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No Sul estão: Joinville Gladiators, Porto Alegre Pumpkins, Santa Maria Soldiers, os estreantes Bento Gonçalves Snakes, Curitiba Lions, Joinville Redlions e Santa Cruz Chacais. Este último retoma a disputa de competições de nível nacional.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No Sudeste, a divisão A conta somente com estreantes: Belo Horizonte Get Eagles, Mooca Destroyers, Palmeiras Locomotives, Uberaba Zebus eUberlândia Lobos. Na divisão B têm: Leme Lizards, Paulínia Mavericks, Ponte Preta Gorilas, Prudente Coronéis e Rio Preto Weilers. Fora Gorilas e Weilers, os demais são estreantes em competições da CBFA. Locomotives e Lobos já atuaram no Torneio Touchdown.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No Centro-Oeste, a divisão A terá: Brasília Alligators, Brasília Leões de Judá, Sinop Coyotes e Sorriso Hornets. O grupo B contará com: Brasília V8,Campo Grande Gravediggers e os estreantes Brasília Templários e Rondonópolis Hawks.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No Nordeste, a divisão A terá: Caruaru Wolves, Maceió Marechais, Náutico Horses e Olinda Sharks. No B terão: ABC Scorpions, Arcoverde Templários, Roma Gladiadores e Tropa Campina.</span><br></p><p><font face="Open Sans"><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>FÓRMULA<br></b></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Na temporada regular, cada equipe fará quatro partidas – duas como mandante e duas como visitante. Classificam-se oito equipes somadas no Sul, Sudeste e Centro-Oeste, e quatro no Nordeste. Os campeões das divisões A e B de Sudeste e Centro-Oeste, mais o campeão e vice do Sul. No Nordeste passam o campeão e vice de cada divisão.</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os classificados para os playoffs e chaveamentos ainda estão sendo discutidos pelas equipes participantes de Sul, Sudeste e Centro-Oeste. Crê-se que ainda nesta semana será definido o método de disputa. Sabe-se que o campeão da Conferência Nordeste terá acesso a Conferência Nordeste da Superliga Nacional, enquanto que as Conferências Sul, Sudeste e Centro-Oeste disputam três – ou quatro – vagas na elite do campeonato brasileiro.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Para apresentar o cenário, o playoff entre Sul, Sudeste e Centro-Oeste é independente do Nordeste. A inviabilidade logística impede a criação de uma final única na Liga Nacional.</span></p>	Foto: Reprodução do Facebook	news/2018/10/27/12973492_843275922450693_3193691638630306528_o.jpg	2018-10-27 17:35:26.370002+00	2018-10-27 17:35:26.370028+00	2
30	2016-06-02	NX Zero fará show na abertura da Superliga na Arena Pantanal‏	nx-zero-fara-show-na-abertura-da-superliga-na-arena-pantanal	<p><font face="Open Sans"><span style="font-size: 18px;">A banda NX Zero fará o show da partida de abertura do Campeonato Brasileiro de Futebol Americano, a Superliga Nacional, entre Cuiabá Arsenal e Corinthians Steamrollers, no dia 9 de julho, às 18h, na Arena Pantanal, em Cuiabá. O grupo musical será uma das atrações planejadas pelo time cuiabano para o jogo que marcará o novo recorde de público em um confronto de futebol americano realizado no Brasil. A meta é de ultrapassar 15.197 e atingir 25 mil torcedores.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">De acordo com o presidente do Cuiabá Arsenal, Paulo Cesar Machado a abertura de uma competição do porte da Superliga Nacional, com participação de 31 times de 16 estados mais Distrito Federal, e sediada pela capital brasileira do futebol americano, não poderia deixar de ter um espetáculo de nível nacional. Um atrativo extra para cativar o torcedor do Cuiabá Arsenal, do Corinthians Steamrollers e da modalidade do futebol americano.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Nossa associação tem por objetivo interferir de forma positiva na sociedade. Temos a missão de fazer a diferença. Nós queremos mostrar que o esporte pode agregar saúde, valores éticos, cultura, economia e entretenimento. E com essa combinação de elementos mostrar que o esporte, seja o futebol americano ou outro, é um caminho natural para um país melhor. Nesse jogo as pessoas terão a oportunidade de uma recreação salutar", disse Paulo César, presidente do Cuiabá Arsenal.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O NX Zero é uma banda brasileira de emocore, rock alternativo e hardcore melódico da cidade de São Paulo. Ela foi fundada em 2001 e atualmente é formada por Di Ferreiro (vocal), Leandro Rocha (guitarra e 2ª voz), Daniel Weksler (bateria), Conrado Grandino (baixo) e Filipe Ricardo (guitarra). Foi fundada pelo ex-integrante Yuri Nishida e, no momento presente, já contabiliza o lançamento de nove álbuns musicais.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>MAIS DIVERSÃO</b><br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O evento contará com espaço gastronômico e shows de abertura, intervalo e final com bandas regionais. Os portões serão abertos às 16h e o jogo terá início às 18h. Com narração de Luiz Cláudio de Paula, atual locutor contratado pelo Comitê Olímpico Rio 2016 (Olimpíadas) e que já foi dos canais Bandsports e Sports Plus. E comentários de Paulo Mancha D´Amaro, um jornalista e comentarista de futebol americano do canal ESPN desde 2012.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>INGRESSOS</b><br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os ingressos estão disponíveis no Açai Strong, Academia Phidias, Doctor Feet Goiabeiras, nas livrarias Janina (Shopping Pantanal, Três Américas, Várzea Grande, Univag, Unic e Centro) e no site MT Ingressos. Crianças até 8 anos não pagam e meia entrada para estudantes, doadores de sangue, professores da rede estadual, pessoas acima dos 60, aposentados, pensionistas, jornalistas e radialistas. E deficientes físicos e acompanhantes terão ingressos grátis (com carteira – lei municipal 5.634/2013).</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>CAMAROTE<br></b></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os camarotes podem ser adquiridos pela UP Eventos (vendas 65-3052-3344, 9626-3504 e 8122-5466) ou nos pontos físicos na Cervejaria Louvada, Alpha Beer e Dom Sebastião. Com direito a cardápio de hambúrgueres, costelinha barbecue, batata chips, água, refrigerante e 30 litros de chopp louvada. A entrada dos camarotes será pelo portão G.</span></p>	Foto: Reprodução da Internet	news/2018/10/27/NX-ZERO-JUBS-2016.jpg	2018-10-27 17:38:58.603135+00	2018-10-27 17:38:58.603157+00	2
31	2016-06-09	Sem verba, Sergipe Redentores desiste da Conferência Nordeste	sem-verba-sergipe-redentores-desiste-da-conferencia-nordeste	<p><font face="Open Sans"><span style="font-size: 18px;">Restando exatamente um mês para o início da Conferência Nordeste de futebol americano, o Sergipe Redentores anunciou, nesta quinta-feira (9), a sua desistência do torneio. Em nota oficial, o clube de Aracaju justificou a falta de apoio, perca abrupta de patrocínio e, consequentemente, recursos para arcar com as despesas geradas pela participação na competição.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">No ano passado, o FABR Network já havia feito um diagnóstico sobre os motivos que levaram o antigo Sergipe Bravos a fracassar na Superliga Nordeste de 2015. Fatores como falta de estádio, limitação de jogadores e falta de patrocínios foram as principais causas para a baixa na competição – perdeu todos os cinco jogos que disputou.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Em 2016, porém, com a unificação com o Aracaju Imortais, uma esperança se revelou para o time e os fãs da bola oval no Estado. Infelizmente, os mesmos problemas persistiram e levaram à desistência.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">“Poderia perder tempo lamentando, ou buscando culpados. Mas tenho certeza que provações como essas é que contribuem para o nosso amadurecimento. Difícil, dolorido, mas necessário. A pancada que poderia ser desestimulante, só fez me jogar mais à frente ainda. Que sigam os trabalhos. Muito trabalho até 2017 chegar”, disse o head coach da equipe, Danilo de Campos.</span><br></font></p><p><br></p>	Foto: Reprodução da Internet	news/2018/10/27/redentores_divulgacao.jpg	2018-10-27 17:51:15.066688+00	2018-10-27 17:51:15.066723+00	2
32	2016-06-22	Conheça Andrew Griffin, o novo quarterback do Recife Pirates	conheca-andrew-griffin-o-novo-quarterback-do-recife-pirates	<p><font face="Open Sans"><span style="font-size: 18px;">O Recife Pirates oficializou, nesta quarta-feira (22), a contratação do quarterback americano Andrew Griffin, de 23 anos. O jogador é o terceiro gringo no elenco pernambucano, que já conta com o runningback Sanchez Holder, além do head coach Phil Ávalos.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Natural de Santa Bárbara, na Califórnia, Drew chega com a missão de substituir (e manter o alto nível) Dominique White, que não pode retornar ao Brasil nesta temporada por conta de problemas pessoais. O último clube que o novo #4 atuou foi a Southern Nazarene University, de Oklahoma.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">O acerto entre os piratas e Griffin já havia sido fechado desde o início deste mês, mas a confirmação só pode ser feita nesta semana, restando pouco mais de duas semanas para o início da Conferência Nordeste da Superliga Nacional.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">“Estou animado, esta é uma oportunidade incrível. Eu amo o futebol americano, e eu não posso esperar para explorar e aprender mais sobre o Brasil. Até agora ele está indo bem, o país é bonito e as pessoas são simpáticas . Estou contente por ter esta oportunidade”, afirmou o jogador, que acabou de se formar em Inglês e Filosofia e já está tendo a sua primeira oportunidade profissional.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Apesar de ainda estar conhecendo a equipe, Griffin está por dento de todo o playbook desenvolvido por Rodrigo Azevedo, coordenador ofensivo, e Phil Ávalos. Confiante, ele fez sua projeção para a temporada.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">"Este ano eu quero que esta equipe dê o próximo passo. Eu quero vê-los não bater na trave. Acho que temos o talento para chegar aos playoffs e conquistar o campeonato. Mas isso vai exigir muito foco e coração", falou Andrew Griffin, quarterback do Recife Pirates.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Com uma estrutura leve – tem 80 kg -, Andrew é veloz e deve trazer uma maior dinâmica ao setor ofensivo do Pirates, que apresentou falhas em 2015. Ele falou um pouco sobre as suas características como quarterback.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">“Eu quero ser um líder e tomar boas decisão, acima de tudo. Eu amo estudar o jogo e quero fazer o meu melhor para que meu time consiga estar posição certa para ter sucesso cada jogo . Uma vez que a bola está em minhas mãos, sou agressivo e preciso”, finalizou.</span></font><br></p>	Foto: Reprodução da Internet		2018-10-27 17:53:12.535262+00	2018-10-27 17:53:12.535285+00	2
33	2016-07-04	Após duas temporadas, Recife Mariners tem novo quarterback	apos-duas-temporadas-recife-mariners-tem-novo-quarterback	<p><font face="Open Sans"><span style="font-size: 18px;">Demorou, mas o Recife Mariners, enfim, está com um novo quarterback para a temporada 2016. Trata-se do americano Alex Niznak, de 23 anos. O jogador terá a missão de substituir Drew Banks, um dos maiores nomes da história dos azuis, que está negociando com um time do Sul do País.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O último clube que o Alex atuou foi o Tyresö Royal Crowns, da Suécia, onde ajudou a equipe a chegar aos playoffs do campeonato nacional neste ano. A tendência é que o quarterback chegue à capital pernambucana ainda nesta semana, nas vésperas do clássico contra o Pirates, próximo sábado (9), pela estreia da Conferência Nordeste.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em 2010, Alex levou a sua escola, a Ithaca High School, ao título estadual de Nova Iorque com uma campanha de 14-0. Como sênior, ele jogou para 2.731 jardas e correu para 1.161.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Sendo quarterback a carreira toda, achamos que ele possa também ser um mentor no Mariners, especialmente para Rafael Tavares, que está quase pronto para assumir esse papel. Acredito que Alex terá uma papel muito importante no que ele pode ser", afirmou Lucas Cisneiros, head coach do Recife Mariners.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Após formado, a primeira experiência de college, mesmo que curta, foi na Central Michigan University, em 2013. Ele atuou em apenas duas partidas, completando 13 de 27 tentativas de passes, somando 138 jardas.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Neste ano, Alex Niznak acabou se transferindo para o Tyresö Royal Crowns, da Suécia, na sua primeira experiência estrangeira.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">“Ele tem as qualidades que qualquer equipe precisa, tanto como jogador, quanto como pessoa. Ele é inteligente, com um conjunto de habilidades direita e físico para executar qualquer ataque. É um líder e se encaixa nessa descrição. Estou confiante de que um monte de gente vai se surpreender quão bem ele vai representar sua equipe”, disse Andreas Ehrenreichs, ex-head coach de Alex no Tyresö.</span></p>	Foto: Reprodução da Internet	news/2018/10/27/alex2.jpg	2018-10-27 17:55:47.059014+00	2018-10-27 17:55:47.059035+00	2
34	2017-07-05	Ex-Mariners, Drew Banks acerta com Crocodiles para Superliga	ex-mariners-drew-banks-acerta-com-crocodiles-para-superliga	<p><font face="Open Sans"><span style="font-size: 18px;">Um dos principais nomes da história do Recife Mariners, o quarterback/wide receiver americano Drew Banks, de 27 anos, é o novo reforço do Coritiba Crocodiles para a disputa da Superliga Nacional de futebol americano.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O jogador chegou à Curitiba nesta terça-feira (5), onde se apresenta ao atual vice-campeão brasileiro. No início do ano, em entrevista exclusiva ao FABR Network, o gringo chegou a ameaçar se aposentar, mas encontrou motivações de sobra para retornar às 100 jardas.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Eu não poderia ficar de fora deste novo campeonato. Todo mundo sabia do meu interesse de voltar ao Brasil e não poderia dizer não para um dos maiores times do País. Estou muito animado", disse Drew.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O último clube que Drew Banks atuou foi o GAT Dukes Novi Sad, da Sérvia, onde chegou aos playoffs nacionais. Foram 28 passes para touchdown nos 10 jogos que atuou como titular.&nbsp;</span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">No ano passado, ele foi eleito o melhor jogador estrangeiro da última Superliga Nordeste, quando o Mariners chegou ao vice-campeonato. Ao todo, foram 23 passes para TD e 1.029 jardas lançadas.</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Além disso, o gringo é campeão mundial pela seleção dos EUA. O sucesso do atleta rendeu o convite especial para participar do comercial da Budweiser para o Super Bowl 50.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em tempo, no último fim de semana, o Croco já havia anunciado a contratação do center Dhiego Gordo Taylor, titular do Brasil Onças, além do quarterback Bruno Miyasaki, que estava no Maring Pyros.</span><br></p>	Foto: Edmar Melo/JC Imagem	news/2018/10/27/EM181115041.jpg	2018-10-27 23:15:42.314422+00	2018-10-27 23:15:42.314445+00	2
35	2016-07-06	Ceará Caçadores contrata mais um receiver americano	ceara-cacadores-contrata-mais-um-receiver-americano	<p><font face="Open Sans"><span style="font-size: 18px;">Visando chegar a mais um playoff da Conferência Nordeste da Superliga Nacional, o Ceará Caçadores anunciou, nesta quarta-feira (6), mais um reforço para a temporada 2016. A novidade é o americano Turmour Battle, 25, o “TBattle”, que joga como defensive back e wide receiver.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Cheguei e vim para jogar, quero jogar domingo, é um grande jogo contra um time muito forte, mas quero vencer e fazer uma boa estreia", disse Turmour Battle, wide receiver do Ceará Caçadores.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Battle é o quarto americano contratado para jogar pelo Ceará Caçadores. Para esta temporada, ele se junta ao wide receiver Tallon Roggasch, que chegou no início do ano. Antes deles, outros americanos jogaram pelos Caçadores: Robert Norris, em 2014, e Larry Dugan que jogou em 2015 pelos cearenses.</span><br></p>	Foto: Reprodução do Facebook	news/2018/10/27/Talon-Roggasch-e-Turmour-Battle-Caçadores.jpg	2018-10-27 23:17:41.714777+00	2018-10-27 23:17:41.714798+00	2
61	2016-10-22	Crocodiles vinga Estadual, elimina HP e vai à decisão no Sul	crocodiles-vinga-estadual-elimina-hp-e-vai-a-decisao-no-sul	<p><font face="Open Sans"><span style="font-size: 18px;">A vingança é um prato que se come frio. O famoso ditado foi levado ao pé da letra, na tarde deste sábado (22), pelo Coritiba Crocodiles-PR. Os répteis venceram o Paraná HP-PR por 11 x 7, vingando a perda do título Estadual, no início do ano. O resultado, de quebra, garantiu ao Croco à vaga em mais uma decisão da Conferência Sul da Supeliga Nacional de futebol americano.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">A equipe alviverde, agora, terá pela frente o Timbó Rex-SC, que derrotou o São José WSI-SC. Os catarinenses foram os únicos a superarem o Crocodiles durante a temporada regular. A final acontecerá no dia 12 de novembro.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Essa é sexta vez consecutiva que o Coritiba Crocodiles chega à decisão da Conferência Sul da Superliga Nacional. Em todas as vezes, os paranaenses chegaram ao Brasil Bowl. São dois títulos e três vice-campeonatos.</span><br></p><p><br></p>	Foto: Reprodução da Internet	news/2018/10/31/13640889_1355641211130897_24094956917903788_o.jpg	2018-10-31 19:47:14.645871+00	2018-10-31 19:47:14.645893+00	2
36	2016-08-15	Juventude acerta o retorno do wide receiver Diego Oliveira	juventude-acerta-o-retorno-do-wide-receiver-diego-oliveira	<p><font face="Open Sans"><span style="font-size: 18px;">No último fim de semana, a diretoria do Juventude (1-2) acertou o retorno do wide receiver catarinense Diego Oliveira, também conhecido como “Diegão”, para a disputa da Conferência Sul da Superliga Nacional de futebol americano.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O atleta volta ao clube caxiense após rápida passagem pelo Camboriú Broqueiros e o resto do primeiro semestre no Timbó Rex (2-1) – onde participou da conquista do bicampeonato de Santa Catarina.&nbsp;</span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Oliveira fez parte do histórico roster 2015 da papada, que conquistou o campeonato gaúcho de forma invicta e a melhor campanha gaúcha no extinto Torneio Touchdown: 3-4.</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Fui muito feliz aqui no Ju ano passado. Adoro a cidade e a equipe, e tenho projetos para este e o próximo ano", falou Diegão.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O próximo compromisso dos gaúchos na elite brasileira será no dia 20 de agosto, quando recebe o Coritiba Crocodiles (2-0), em casa.</span><br></p>	Foto: Reprodução do Facebook	news/2018/10/27/11295643_672223326257426_6275975892650158052_n.jpg	2018-10-27 23:19:26.094564+00	2018-10-27 23:19:26.094586+00	2
37	2016-08-22	Ônibus do Vitória é assaltado à caminho de Recife	onibus-do-vitoria-e-assaltado-a-caminho-de-recife	<p><font face="Open Sans"><span style="font-size: 18px;">Além das dificuldades que já são familiares aos times de futebol americano no Brasil, agora, os atletas da bola oval vêm tendo que lidar com outro problema: a violência. No último final de semana, o ônibus que levava os jogadores do Vitória F.A para Recife, onde o time baiano enfrentaria o Recife Pirates, pela Superliga Nacional, foi assaltado.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O fato aconteceu a poucos quilômetro de Maceió. De acordo com integrantes da comissão técnica, por volta das 5h do sábado (20), um gol branco emparelhou com o veículo que levava os jogadores baianos e obrigou o motorista a encostar o ônibus. Foi quando dois homens armados entraram na lotação e anunciaram o assalto.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Eles perguntaram se nós éramos sacoleiros ou evangélicos. Quando falamos que eramos jogadores de futebol americano, um deles demonstrou frustração e quis ir embora. O problema é que o outro ficou com raiva e resolveu roubar a gente", disse Armando Chaves, coordenador defensivo do Vitória.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Segundo os atletas, o objetivo dos criminosos era levar o ônibus para uma plantação de cana de açúcar à beira da estrada. O motorista, no entanto, quando se deu conta da estratégia dos assaltantes, atolou o veículo de propósito num lamaçal.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Ao todo, 15 dos 45 jogadores que viajaram para a capital pernambucana tiveram os seu celulares e pertences roubados.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em tempo, vale lembrar que essa não é a primeira vez que um fato desta magnitude acontece com jogadores de futebol americano no Brasil. No início deste mês, todos os equipamentos do Vila Velha Tritões-ES foram roubados no campo de treinamentos da equipe, na capital capixaba.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Entre materiais de treino, como bolas, capacetes, cones e escadas de agilidade, os prejuízos foram orçados em mais de cinco mil reais.</span><br></p>	Foto: Haim Ferreira/FABR Network	news/2018/10/29/IMG_2613.jpg	2018-10-30 01:28:12.840381+00	2018-10-30 01:28:12.840405+00	2
38	2016-08-24	Timbó Rex apresenta projeto do primeiro estádio de futebol americano do Brasil	timbo-rex-apresenta-projeto-do-primeiro-estadio-de-futebol-americano-do-brasil	<p><font face="Open Sans"><span style="font-size: 18px;">No início da tarde desta terça-feira (23), a diretoria do Timbó Rex publicou em seu site oficial o mais novo – e ousado – projeto da equipe: a T-Rex Arena. A ideia é construir um centro esportivo para integrar e melhorar o desempenho dos atletas.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em 2017, o plano é iniciar junto a prefeitura de Timbó uma parceria com a concessão do espaço, o investimento de iniciativa privada e com projetos do governo federal a realização da edificação do estádio.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">A infraestrutura contará com o gramado exclusivo a prática do futebol americano, duas arquibancadas que totalizarão a capacidade para receber 4 mil fãs, a construção de três vestiários, academia, centro de fisioterapia, alojamento para atletas e comissão técnica, praça de alimentação e salas comerciais.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Acreditamos que a T-Rex Arena irá nos aproximar ainda mais dos fãs, ser uma multiplicadora de talentos esportivos. Sem dúvida conseguiremos atender e criar ainda mais oportunidades para crianças e adolescentes", disse o trecho da nota publicada no site oficial do Timbó Rex.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Caso concluído o projeto do time, este será o primeiro estádio arquitetado excepcionalmente para o futebol americano em Santa Catarina – e um dos primeiros no Brasil. Atualmente, a cidade de Leme conta com o primeiro gramado para a prática do futebol americano, entretanto, o Clube de Campo Empyreo – casa do Leme Lizards – ainda não dispõe da estrutura necessária para receber uma grande quantidade de torcedores e realizar mega eventos.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em 2015, o Juventude chegou a planejar a construção de um estádio em Caxias do Sul com capacidade para receber 8 mil pessoas. Entretanto, a obra que pode custar cerca de R$ 1,3 milhão poderá ser concluída em cinco ou seis anos.</span><br></p>	Foto: Divulgação	news/2018/10/29/14034876_1140193099352412_8075911554726830975_n.jpg	2018-10-30 01:32:04.114074+00	2018-10-30 01:32:04.114098+00	2
40	2016-08-31	Head Coach do Brasil Onças avalia temporada da Superliga Nacional	head-coach-do-brasil-oncas-avalia-temporada-da-superliga-nacional	<p><font face="Open Sans"><span style="font-size: 18px;">Restando pouco mais de um mês para o início dos playoffs da Superliga Nacional de futebol americano, o FABR Network conversou com exclusividade com o head coach da seleção brasileira da modalidade, Gabriel Mendes.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Há nove meses no comando do Brasil Onças, o treinador carioca falou a respeito do desenvolvimento da bola oval em solo verde e amarelo, além de ter dado as suas impressões particulares sobre o nível técnico que o País se encontra no esporte. Confira:</span></p><p><b style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Quais os benefícios que a unificação entre o Torneio Touchdown e a CBFA trouxe para o futebol americano brasileiro?<br></b><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">A unificação era um processo necessário e fundamental para o crescimento do FA. Em outros esportes também foi assim. No início, houve duas ligas paralelas, até que elas se uniram e o esporte decolou. Uma Liga forte abre portas para patrocínios, espaço na mídia, grandes eventos e possibilita a realização de confrontos que antes não passavam de hipóteses. Podem haver algumas dificuldades iniciais, principalmente porque os times egressos do TTD não estão acostumados com o modelo de gestão compartilhada pelos times, mas todas as dificuldades foram sendo superadas e acredito que a Superliga esteja no caminho certo para ser, de longe, o melhor campeonato de futebol americano que já tivemos no Brasil.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>Qual a sua avaliação momentânea desta primeira metade de campeonato?</b><br></span></font><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Os primeiros jogos já deram a tônica do equilíbrio que teremos nesse campeonato e da imprevisibilidade do desfecho. O Ceará Caçadores derrotou as duas maiores potências do Nordeste, mas foi surpreendido num jogo teoricamente mais fácil. O T-Rex, que na minha opinião é o melhor time do Brasil, perdeu logo na estreia. E o WSI, que derrotou o T-Rex, passou aperto contra times que não devem nem ir aos playoffs. Além disso, houve jogos de equipes intermediárias super equilibrados e em alto nível, como a vitória do Tubarões sobre o Storm, ou a vitória do Goiânia Rednecks sobre o Corinthians. Em resumo, teremos muitos jogos bons de assistir na temporada regular e os playoffs serão eletrizantes.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>Já dá pra apontar quem são os candidatos aos playoffs?</b><br></span></font><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Eu tenho assistido a todos os jogos que são disponibilizados na Internet. Não só como técnico do Vasco, mas também por conta da seleção. E com esses dois ou três jogos de cada time, já deu pra ter uma boa ideia de quem vai pros playoffs. Na Conferência Nordeste, vão passar Espectros, Mariners, Caçadores e mais um (entre Bulls, Pirates e Petroleiros). Na Conferência Leste, vão passar Flamengo, Vasco, Tritões e, provavelmente, Reptiles (até porque o Reptiles não enfrenta o Tritões). No Sul, vão passar T-Rex, Croco, WSI e HP. Na Oeste, Arsenal, Lusa, Tubarões e mais um. O Rednecks deu um passo importante com essa vitória sobre o Corinthians. Até o momento, os melhores times do campeonato são: Flamengo, T-Rex, Croco, Arsenal, Espectros e Tritões. Acho que esses são os maiores candidatos ao título, pelo nível de futebol americano que vem apresentando.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>Como está sendo se dividir entre as funções no Patriotas e no Onças? Está dando para conciliar?</b><br></span></font><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">É difícil. Mas tem sido possível, porque ambas as comissões técnicas (da Seleção e do Patriotas) são extremamente competentes e têm minha total confiança. Então, meu trabalho acaba sendo mais no sentido de planejar e gerir. Mas dou total autonomia pros meus coordenadores de ataque, defesa e special teams para desenvolver playbook, game plan e conto com eles para fazer scout dos adversários. No caso da Seleção, ainda não tivemos uma competição propriamente dita. Então, nesse primeiro momento estamos fazendo o trabalho de avaliação dos atletas, reformulação de playbook e desenvolvimento do nosso programa para o próximo ciclo. Tem sido super recompensador, porque a comunidade de futebol americano no Brasil inteiro tem abraçado o nosso projeto.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>Como head coach da seleção, como está feita a garimpagem destes talentos?</b><br></span></font><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Tivemos uma experiência altamente proveitosa, que foram os training camps regionais. Conseguimos olhar de perto talentos que jamais teriam sido convocados num camp nacional, que tem muito menos vagas disponíveis. Conseguimos transmitir para todos os atletas do País a mensagem de que não importa onde eles moram ou o time deles. Quem estiver entre os melhores do país, terá uma oportunidade de mostrar seu valor. Além disso, temos incentivado a cultura de vídeos, que é imprescindível no futebol americano. Os jogadores têm assimilado isso, produzindo seus highlights e disponibilizando pro nosso Departamento de Scout. Eu não tenho como estar fisicamente presente em todas as cidades do País, mas através dos vídeos e da nossa rede de scout, nossa comissão técnica consegue analisar atletas de todos os cantos do Brasil.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><br></span></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>Os números desta temporada mostram que há certa negligência no trabalho voltado para o time de especialistas. Por que isso ainda é um problema no Brasil?</b><br></span></font><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Porque, historicamente, os especialistas foram mesmo negligenciados no país. Eu creio que isso decorra de dois problemas. De um lado, os times têm pouco tempo de treino. Na média, os times devem treinar duas vezes por semana no Brasil. Quem treina muito, treina três ou quatro vezes. Então, é difícil pros técnicos encaixarem o ST no já exíguo tempo de treino semanal. Lá fora, o ST toma cerca de 15% do tempo de um treino. E existe um trabalho à parte com as posições específicas do ST. Mas os treinos são diários. E você tem coordenadores específicos até para o ST. Aqui, acaba que pouquíssimos times fazem drills voltados pro ST (por desconhecimento ou desdém). E isso em muito se deve também a um histórico de jogos muito desequilibrados, em que o ST não fazia diferença (eu cansei de passar um jogo inteiro sem chutar um punt, por exemplo). Mas com o campeonato ficando cada vez mais equilibrado, os times estão vendo que o ST faz toda a diferença na briga por território, Então vários times tem dado cada vez mais importância ao ST. Sei que os coaches Otávio Roichman (Fla), PH Tidus (Lusa), Lucas Cisneiros (Mariners) e Kevin Veloso (Espectros), por exemplo, dedicam boa parte do treino ao ST. No Vasco, desde o início do ano, temos o coach Piter Damacino tocando o ST. E todo treino, reservamos de 15% a 20% do tempo pro ST. E mesmo assim, não é o suficiente. Continuamos cometendo erros e falhando muito no ST. Porque muitos dos nossos jogadores foram criados numa cultura que desvalorizava o ST e agora fica difícil corrigir maus hábitos e vícios. Acredito que a próxima geração de técnicos e jogadores será muito mais cuidadosa com o ST e, daqui a 5 ou 10 anos, vermos times especialistas muito mais bem preparados do que hoje.</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"></span></p>	Foto: Jayson Braga	news/2018/10/29/Técnico-Principal-Gabriel-Mendes-Créditos-Jayson-Braga.jpg	2018-10-30 01:38:42.391706+00	2018-10-30 01:38:42.391728+00	2
41	2016-09-07	Drew Hill desembarca em Timbó e se reapresenta ao Rex	drew-hill-desembarca-em-timbo-e-se-reapresenta-ao-rex	<p><font face="Open Sans"><span style="font-size: 18px;">Na tarde desta terça-feira (6), a diretoria do Timbó Rex publicou em seu site oficial que o quarterback americano Drew Hill está de volta à Santa Catarina. O atleta já chegou no aeroporto internacional de Florianópolis e foi recepcionado pelos companheiros de time Andrey Pereira e Luis Polastri. De acordo com o Rex, o atleta chegará a Timbó por volta das 18h.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Hill é um dos ídolos da equipe rubro-negra. O jogador ajudou a equipe nas conquistas do campeonato catarinense e o Torneio Touchdown na temporada 2015. O quarterback volta após uma passagem pelo Ravensburg Razorbacks, da German Football League 2 – a segunda divisão do campeonato alemão.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Espera-se que o americano esteja na sideline no jogo contra o Curitiba Brown Spiders, no dia 10 de setembro, no Complexo do Pinheirão, em Curitiba, e disponível para o confronto contra o Paraná HP (3-1), no dia 24 de setembro, no Complexo Esportivo de Timbó.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em tempo, vale lembrar que, para que um jogador estrangeiro possa atuar nos playoffs da Superliga é necessário que ele esteja em, pelo menos, 50% dos jogos – três partidas na temporada regular.</span><br></p>	Foto: Reprodução da Internet	news/2018/10/29/1.jpg	2018-10-30 01:41:07.390596+00	2018-10-30 01:41:07.390618+00	2
39	2016-08-25	Superliga Nacional mostra que gringos são apenas a cereja do bolo	superliga-nacional-mostra-que-gringos-sao-apenas-a-cereja-do-bolo	<p><font face="Open Sans"><span style="font-size: 18px;">No último final de semana, a Superliga Nacional chegou à metade da sua temporada regular. Entre placares apertados e resultados elásticos, uma constatação pode ser feita: os times estão cada vez menos dependentes dos jogadores estrangeiros para pontuar.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Apesar do número de gringos ter dobrado no Brasil de 2015 para 2016, conforme análise do FABR Network, de todos os 1.785 pontos marcados no campeonato, apenas 12% (222 pontos) foram anotados por atletas que não são brasileiros.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Para Gabriel Mendes, head coach da seleção brasileira e do Vasco da Gama Patriotas – um dos 12 times que não contam com jogadores de outros países -, este fato se deve à grande incidência no número americanos atuando na posição de quarterback.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Há vários gringos jogando de quarterback e, em tese, estão lá pra distribuir touchdowns, muito mais do que pra marcá-los. Mesmo que você tenha dois gringos no ataque, você tem outros quatro brasileiros que também estão lá pra marcar pontos. Mas se você for olhar de perto, nos times que usam os gringos no ataque, eles certamente respondem por muito mais do que 12% dos TDs. Basta olhar Arsenal, Bulls, Pirates, Flamengo e Caçadores", disse Gabriel Mendes, head coach da seleção brasileira.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">A constatação de Mendes, de fato é verídica. O Cuiabá Arsenal, por exemplo, que tem dois americanos no time ofensivo, teve 82% dos seus pontos creditados na conta dos estrangeiros. Outro time que depende muito da atuação dos seus gringos é o Ufersa Petroleiros, com 80% na mesma estatística.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com a exceção dos 12 times que só têm brasileiros em seu roster, outros seis que contam com atletas do exterior também não pontuaram com estrangeiros: Santos Tsunami, Botafogo Challengers, São Paulo Storm, Coritiba Crocodiles, Brown Spiders F.A e Timbó Rex.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Atualmente, 29 gringos atuam na Superliga Nacional. Entre eles, estão os dois artilheiros da competição. Os runningbacks Brandon Watkins, do Cuiabá Arsenal, com oito touchdowns, e Yolandus Pratt, do Flamengo, com cinco (outro quatro brasileiros também marcaram cinco TD’s).</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Confira quem foram os gringos que mais pontuaram na Superliga Nacional:</span><br></p><p><font face="Open Sans"><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>8 TOUCHDOWNS:</b><br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Brandon Watkins – Cuiabá Arsenal</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>5 TOUCHDOWNS:</b><br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Yolandus Pratt – Flamengo</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>4 TOUCHDOWNS:<br></b></span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Kenneth Joshen – Cuiabá Arsenal</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>3 TOUCHDOWNS:<br></b></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Alex Allen – Vila Velha Tritões</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>2 TOUCHDOWNS:<br></b></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Sanchez Holder – Recife Pirates<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Tommy Jones – Goiânia Rednecks<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Talon Roogash – Ceará Caçadores<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">TBattle – Ceará Caçadores<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Ray Bradley – Ufersa Petroleiros<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Jonathan Smith – Ufersa Petroleiros</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>1 TOUCHDOWN:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Joc Crawford – Corinthians Steamrollers<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Alex Niznak – Recife Mariners<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Brian Gesel – América Bulls<br></span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Michael Campbell – Vitória<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Callus Cox – João Pessoa Espectros</span></p>	Foto: Júnior Martins	news/2018/10/29/1-1.jpg	2018-10-30 01:34:58.634863+00	2018-10-31 19:22:49.665622+00	2
44	2016-10-14	Top 30: O ranking geral da Superliga Nacional	top-30-o-ranking-geral-da-superliga-nacional	<p style="user-select: text; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;"><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O FABR Network fez o levantamento das campanhas de todos os 30 times que disputam a Superliga Nacional. Criamos uma tabela única, como se o campeonato houvesse sido disputado no sistema de pontos corridos, assim como acontece no Brasileirão de soccer.</span><br></p><p style="user-select: text; text-align: justify;"><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">Respeitamos todos os critérios de desempate da Confederação Brasileira de Futebol Americano (CBFA),&nbsp; tais quais o número de vitórias de cada equipe, o confronto direto entre os clubes (se o empate for entre times da mesma conferência), além da força de tabela.</span><br></p><p style="user-select: text; text-align: justify;"><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">Este último , o mais complexo de todos, nada mais é do que a soma das vitórias dos seus adversários, dividido pelo número de partidas que eles disputaram. É através deste critério que se definem quais times venceram os adversários mais difíceis. Desta maneira, quem tem a força de tabela maior, está à frente dos seus concorrentes. Pelo regulamento, se ainda assim as equipes estiverem empatadas, O saldo de pontos é que definirá o melhor colocado.</span><br></p><p style="user-select: text; text-align: justify;"><span style="font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;;">Até o momento, as equipes que fizeram mais bonito foram Cuiabá Arsenal e Flamengo, os únicos invictos em todo o certame. As piores marcas, por sua vez, entram na conta de Vitória F.A, Foz do Iguaçu Black Sharks e Sorocaba Vipers, que não conseguiram nenhuma vitória. O Botafogo Challengers, por ter desistido do campeonato, ficou na última colocação.</span><br></p><p style="user-select: text; text-align: justify;"></p><p style="user-select: text; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;"><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Confira como ficou a lista:</span></p><p style="user-select: text; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;"><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><br></span><br></p><table border="2" width="100%" cellspacing="2" style="background-color: rgb(2, 107, 51); color: rgb(51, 51, 51); height: 294px; border-color: rgb(255, 255, 255); user-select: text !important;"><tbody style="user-select: text !important;"><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">RANKING</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">V</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">D</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">VA</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">DA</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><b style="user-select: text !important;"><font face="Open Sans">FT</font></b></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">P+</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">P-</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">S</font></strong></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 1º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Cuiabá Arsenal-MT</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">0</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">18</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">48,6%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">199</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">75</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">124</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 2º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Flamengo F.A-RJ</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">0</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">20</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">44,4%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">291</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">38</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">253</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp;&nbsp;3º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Lusa Lions-SP</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">18</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">47,1%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">176</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">84</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">92</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 4º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Timbó Rex-SC</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">20</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">44,4%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">280</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">34</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">246</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 5º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Ceará Caçadores-CE</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">20</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">44,4%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">171</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">106</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">65</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 6º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Recife Mariners-PE</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">20</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">44,4%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">173</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">33</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">140</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 7º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Coritiba Crocodiles-PR</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">20</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">44,4%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">119</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">66</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">53</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 8º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Vila Velha Tritões-ES</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">15</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">21</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">41,7%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">264</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">68</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">196</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 9º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Vasco da Gama Patriotas-RJ</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">20</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">55,6%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">168</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">85</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">83</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">10º</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Tubarões do Cerrado-DF</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">18</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">48,6%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">106</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">98</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">8</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 11º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">João Pessoa Espectros-PB</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">19</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">47,2%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">207</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">71</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">136</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 12º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Paraná HP-PR</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">19</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">47,2%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">111</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">56</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">55</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 13º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">São José WSI-SC</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">19</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">47,2%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">82</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">69</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">13</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 14º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">América Bulls-RN</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">19</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">47,2%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">78</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">111</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-33</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 15º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Botafogo Reptiles-RJ</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">15</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">21</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">41,7%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">174</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">120</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">54</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 16º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Goiânia Rednecks-GO</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">3</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">3</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;19</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">15&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">55,9%&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">129</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">142</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-13&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 17º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;Santos Tsunami-SP</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">21</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">15&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">58,3%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">67</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">163</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-96&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 18º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Juventude F.A-RS&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;19</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">52,8%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">37</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">109</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-72&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 19º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Recife Pirates-PE&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;19</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">52,8%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">84</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">159</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-75&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 20º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Campo Grande Predadores-MS&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;16</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">18&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">47,1%&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;91</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">160</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-69</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 21º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;Minas Locomotiva-MG</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">4&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;16</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">20&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">44,4%&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;130</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">116</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">14&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 22º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Corinthians Steamrollers-SP&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;2</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">3&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">18&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">48,6%&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;116</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">100</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 23º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;Cabritos F.A-ES</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">21</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">15&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;58,3%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">49</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;275</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-226&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 24º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">São Paulo Storm-SP&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;19</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">15&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;55,9%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;147</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">161&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-14&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 25º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Ufersa Petroleiros-RN&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">20</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">55,6%&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">54</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">138&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-84&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 26º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;Brown Spiders FA-PR</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">1</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">20</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">55,6%&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">55</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">189&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-134&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 27º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Vitória F.A-BA&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;0</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">21</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">15&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">58,3%&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">32</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">181&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;-149</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">28º</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Foz do Iguaçu Black Sharks-PR</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">0</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">21</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">15</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">58,3%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">26</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">187</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-161</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">&nbsp; 29º &nbsp;</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Sorocaba Vipers-SP&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;0</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">5</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">17</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">18&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">48,6%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;42</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">190&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-148&nbsp;</font></span></td></tr><tr style="text-align: justify; user-select: text !important;"><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 255, 255); user-select: text !important; font-size: 18px;"><strong style="user-select: text !important;"><font face="Open Sans">30º</font></strong></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">Botafogo Challengers-SP</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;0</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">6</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;20</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">16&nbsp;</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;55,6%</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;0</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">&nbsp;278</font></span></td><td style="text-align: center; user-select: text !important;"><span style="color: rgb(255, 204, 0); user-select: text !important; font-size: 18px;"><font face="Open Sans">-278&nbsp;</font></span></td></tr></tbody></table><p style="font-size: 16px; color: rgb(51, 51, 51); text-align: center; user-select: text !important;"><font face="Open Sans"><span style="font-size: 18px;"><br></span></font></p><p style="font-size: 16px; color: rgb(51, 51, 51); text-align: center; user-select: text !important;"><font face="Open Sans"><span style="font-size: 18px;">V: Vitória &nbsp;| &nbsp;D: Derrota &nbsp;| &nbsp;V.A: Vitória dos adversários &nbsp;| &nbsp;D.A: Derrota dos adversários &nbsp;| &nbsp;F.T: Força de tabela &nbsp;| &nbsp;P+: Pontos feitos &nbsp;| &nbsp;P-: Pontos sofridos &nbsp;| &nbsp;S: Saldo</span></font></p><h3 style="text-align: left; color: rgb(51, 51, 51); -webkit-font-smoothing: antialiased; user-select: text !important;"><span style="color: rgb(2, 107, 51); user-select: text !important; font-size: 18px;"><font face="Open Sans">CRITÉRIOS DE DESEMPATE</font></span></h3><p style="font-size: 16px; color: rgb(51, 51, 51); text-align: center; user-select: text !important;"><div style="text-align: left;"><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">1. Número de vitórias</span></div><font face="Open Sans"><div style="text-align: left;"><span style="font-size: 18px;">2. Confronto direto (se as equipes forem da mesma conferência)</span></div><span style="font-size: 18px;"><div style="text-align: left;">3. Força de Tabela</div></span><span style="font-size: 18px;"><div style="text-align: left;">4. Saldo de pontos</div></span><span style="font-size: 18px;"><div style="text-align: left;">5. Sorteio</div></span></font></p>	Foto: Stephan Eilert	news/2018/10/29/14066486_1148031341909680_8818248295065189594_o.jpg	2018-10-30 01:49:23.41106+00	2018-10-31 19:23:15.613929+00	2
43	2016-11-30	CBFA faz teste de transmissão para TV fechada visando 2017	cbfa-faz-teste-de-transmissao-para-tv-fechada-visando-2017	<p><font face="Open Sans"><span style="font-size: 18px;">Se o futebol americano vem em uma crescente no Brasil, o mesmo não pode se dizer do acesso do público às partidas em grande escala. Isso porque ainda não há transmissões de alta qualidade à disposição do fã da bola oval em solo verde e amarelo.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">A Confederação Brasileira da modalidade (CBFA), no entanto, vem trabalhando nos bastidores para mudar este cenário. Durante a decisão da Conferência Nordeste, em Fortaleza, a entidade realizou o primeiro teste oficial de transmissão, durante o confronto entre Ceará Caçadores e João Pessoa Espectros, no estádio presidente Vargas.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"A ideia é que venhamos a oferecer esse material para alguma televisão fechada. Já temos conversas iniciais com algumas, mas nada concreto", disse Guto Sousa, presidente da CBFA.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">A produtora responsável pela captação de imagens foi a mesma que realiza os jogos da SporTV, ESPN, Band Sports e Esporte Interativo. O FABR Network teve acesso exclusivo à central de comando da empresa e pode registrar como funciona a dinâmica do trabalho. Ao todo, sete câmeras de alta definição realizaram a transmissão in loco do duelo.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Caso as negociações avancem, a ideia da CBFA é que pelo menos uma partida por rodada da Superliga Nacional 2017 seja transmitida. Vale lembrar que são poucos os meios nos quais os públicos tem acesso às partidas do campeonato brasileiro de futebol americano.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O Network, por sua vez, se esforçou bastante durante a temporada deste ano para levar a maior quantidade de jogos possíveis ao público através da nossa página no Facebook (clique aqui para curtir). Ao todo, foram nove partidas transmitidas, alcançando 150 mil espectadores e 43 mil visualizações.</span><br></p>	Foto: Haim Ferreira/FABR Network	news/2018/10/29/15146916_10208919444677567_1594886428_o.jpg	2018-10-30 01:47:18.570983+00	2018-10-31 19:23:21.878719+00	2
46	2016-12-19	Imponente, Timbó Rex vence Flamengo e conquista Brasil Bowl	imponente-timbo-rex-vence-flamengo-e-conquista-brasil-bowl	<p><font face="Open Sans"><span style="font-size: 18px;">Uma data histórica para o futebol americano brasileiro. Neste domingo (18), Timbó Rex-SC venceu o Flamengo F.A-RJ por 36 x 24 e conquistou o primeiro título unificado do Brasil Bowl, a decisão da Superliga Nacional de futebol americano.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com a conquista inédita pela CBFA, os dinossauros chegaram à dois títulos nas duas últimas temporadas, já que também levantaram a taça do extinto Torneio Touchdown, em 2015.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os pontos que garantiram o grito de campeão ao Rex foram marcados por Well Garcia, que anotou três touchdowns, Guilherme Meurer e Clair José . O kicker Diego Boddenberg acertou um field goal e três extra-points. Pelo lado dos rubro-negros cariocas, pontuaram Patrick Dutton (duas vezes) e KC Frost. O kicker Daniel acertou um field goal e todos os três extra-points.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com três touchdowns marcados no Brasil Bowl, o runningback Well Garcia foi o MVP da partida. Ele foi responsável por metade dos pontos marcados pelo Rex na decisão. De quebra, Well ainda se tornou o artilheiro brasileiro da Superliga Nacional, empatado com Felipe Florêncio do Flamengo. Cada um marcou 12 touchdowns.</span></p><p><font face="Open Sans"><span style="font-size: 18px;">O Rex mostrou que é time de chegada. Após perder o primeiro jogo da temporada regular par o São José Istepôs, não faltou quem questionasse o nível da equipe catarinense para 2016. A resposta veio ao longo da Superliga Nacional: campanha de 9-1, quebrando a invencibilidade de Cuiabá Arsenal-MT e Flamengo FA.-RJ, que estavam invictos.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">De quebra, a equipe comandada pelo head coach Amadeo Salvador ainda teve a melhor defesa da competição, com apenas 65 pontos cedidos nos 10 jogos, rendendo uma média de um touchdown sofrido por partida.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"></span><br></p><p><br></p>	Foto: Takahiro Takahashi	news/2018/10/31/15622375_1021816741297367_5838418802421380480_n-1.jpg	2018-10-31 19:02:01.5177+00	2018-10-31 19:02:01.517725+00	2
47	2016-11-28	Timbó Rex quebra invencibilidade do Arsenal e está no Brasil Bowl	timbo-rex-quebra-invencibilidade-do-arsenal-e-esta-no-brasil-bowl	<p><font face="Open Sans"><span style="font-size: 18px;">Com um primeiro tempo arrasador, o Timbó Rex-SC venceu o Cuiabá Arsenal-MT, na noite do último sábado (26) por 20 x 7, na Arena Pantanal, e está no Brasil Bowl, a grande decisão da Superliga Nacional de Futebol Americano. Essa será a terceira vez consecutiva que os catarinenses chegam à decisão brasileira. No ano passado, eles foram campeões do antigo Torneio Touchdown.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Agora, o Rex enfrentará o Flamengo F.A-RJ, que eliminou o João Pessoa Espectros-PB, em São Cristovão, No Rio de Janeiro. Como teve a segunda melhor campanha do campeonato, os cariocas terão privilégio de jogar a decisão novamente no Rio. A final está prevista para o dia 17 de dezembro.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com uma pick six de 100 jardas, Luis Polastri foi o dono da jogada mais vibrante do jogo. Foi o quarto touchown dele pelo Timbó Rex na Superliga Nacional.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Além da ida ao Brasil Bowl, o Rex quebrou a invencibilidade do Cuiabá Arsenal. Eram 13 jogos consecutivos sem derrotas e a melhor campanha de toda a Superliga Nacional. O fim do tabu, no entanto, não garantiu o privilégio aos dinossauros de jogarem a decisão em casa. Como o Flamengo teve a melhor campanha, a final será no Rio de Janeiro.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>O JOGO</b><br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os catarinenses abriram a contagem ainda no primeiro quarto, quando o runningback Well Garcia percorreu 41 jardas numa big play para touchdown. O kicker Diego Boddenberg conferiu com o acerto do PAT. Na sequência, o linebacker Luis Polastri interceptou o quarterback do Arsenal e retornou para pick six.</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No segundo quarto, o domínio dos visitantes seguiu quando o quarterback Luiz Carlos Bassani conectou o backup QB e wide receiver Ivan Tonolli para touchdown. Boddenberg acertou o extra point. 0 x 20.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Na etapa complementar, o artilheiro e playmaker do Arsenal, o versátil Brandon “The Rocket” Watkins sofreu uma lesão e teve de sair do relvado, após late hit. Para inconformidade dos mandantes. No último período, os mandantes descontaram com um touchdown anotado pelo receiver americano Kenneth Joshen, que recebeu lançamento do quarterback Daniel “Dandan” Pereira. O kicker Raulin Leal mandou a bola entre os postes no chute de bonificação.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com pouco tempo para esboçar uma reação, bastou aos comandados do head coach Amadeo Salvador controlar as ações do rival e garantir a vitória e a ida ao Brasil Bowl 2016.</span></p>	Foto: Takahiro Takahashi	news/2018/10/31/IMG_1686.jpg	2018-10-31 19:04:13.750225+00	2018-10-31 19:04:13.750248+00	2
48	2016-11-28	Flamengo vence Espectros e buscará o bicampeonato brasileiro	flamengo-vence-espectros-e-buscara-o-bicampeonato-brasileiro	<p><font face="Open Sans"><span style="font-size: 18px;">Num confronto que fez jus às expectativas, o Flamengo F.A-RJ venceu o João Pessoa Espectros-PB – atual campeão brasileiro – por 25 x 10, na tarde do último sábado (26), no Rio de Janeiro, e está no Brasil Bowl, a grande decisão da Superliga Nacional de Futebol Americano.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os enfrentarão o Timbó Rex-SC, que eliminou o Cuiabá Arsenal-MT, na Arena Pantanal, em Cuiabá. Como teve a segunda melhor campanha do campeonato, os cariocas terão privilégio de jogar a decisão novamente no Rio. A final está prevista para o dia 17 de dezembro.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em relação ao jogo, os pontos que carimbaram a vaga na final para o Flamengo foram marcados por Felipe Florêncio, Patrick Dutton, Yollandus Pratt e KC Frost. Pelo lado do Espectros, anotaram Vinícius e o kicker Diego Aranha, com um fied goal e um extra-point.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Mesmo sua equipe tendo sido derrotada, o americano Carlos Cox foi o jogador que mais se destacou em campo. Com mais de 10 tackles, cinco sacks e um touchdown anotado, mas que foi anulado, o gringo parecia estar em todos os lugares do campo.</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>O JOGO<br></b></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O Espectros começou bem o jogo e abriu o placar em um touchdown de retorno de punt, anotado pelo returner&nbsp; Vinícius. O kicker Diego Aranha converteu o ponto extra e colocou o time na frente por 7 x 0. Pouco depois, o time paraibano chegou a novo touchdown, com Carlos Cox, em bloqueio de punt, mas que acabou sendo anulado pela arbitragem, que acusou uma falta no long snaper.</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O Flamengo mostrou sua força ofensiva e diminuiu com um touchdown do runningback Felipe Florêncio. Na tentativa da conversão de dois pontos, a defesa dos fantasmas não deu chances ao ataque rubro-negro. No entanto, antes do final do primeiro tempo, o time carioca voltou a marcar um novo TD, desta vez, com o wide receiver Patrick Dutton, para terminar com a vantagem de 12 x 7.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No início do segundo tempo, os Espectros tiveram uma boa campanha e conseguiu diminuir com um field goal de 45 jardas de Aranha. Depois disso, o ataque dos cariocas voltou a mostrar a sua força. O RB Yolandus Pratt retornou o kickoff para touchdown. Para finalizar, no último quarto, o compatriota de Pratt, o quarterabck Casey Frost encontrou um gap na defesa rival para anotar o touchdown. O special team da casa sacramentou a vitória com o a conversão do extra point. Final 25 x 10.</span><br></p>	Foto: Haim Ferreira/FABR Network	news/2018/10/31/5.jpg	2018-10-31 19:06:32.046298+00	2018-10-31 19:06:32.046321+00	2
49	2016-11-13	Timbó Rex destrona Crocodiles e levanta taça da Conferência Sul	timbo-rex-destrona-crocodiles-e-levanta-taca-da-conferencia-sul	<p><font face="Open Sans"><span style="font-size: 18px;">Mostrando porque é um dos fortes candidatos ao título do Brasil Bowl, o Timbó Rex-SC venceu o Coritiba Crocodiles por 15 x0, na tarde deste domingo (13), em Santa Catarina, e conquistou o título da Conferência Sul da Superliga Nacional de futebol americano.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os responsáveis por pontuarem e garantirem a taça para os catarinenses foram Well Garcia e Clair José. A equipe ainda forçou um safety. O kicker Diego Boddenberg só acertou um dos extra-points.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O Rex, agora, terá pela frente o Cuiabá Arsenal, detentor da melhor campanha da temporada regular do campeonato. O duelo inédito no País acontecerá no dia 25 de novembro, na Arena Pantanal, no Mato Grosso.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O conjunto defensivo do Rex, em geral, foi quase impecável. Logo no segundo drive do jogo, conseguiram interceptar um dos quarterbacks mais técnicos do Brasil, Drew Banks. A jogada em seguida viria a ser touchdown dos donos da casa. Ao todo, foram três turnovers, além de forçar um safety.</span><br></p>	Foto: Takahiro Takahashi	news/2018/10/31/2-1.jpg	2018-10-31 19:09:33.659716+00	2018-10-31 19:09:33.65974+00	2
50	2016-11-13	Flamengo confirma favoritismo e é campeão em cima do Patriotas	flamengo-confirma-favoritismo-e-e-campeao-em-cima-do-patriotas	<p><font face="Open Sans"><span style="font-size: 18px;">O Flamengo-RJ é campeão da Conferência leste da Superliga Nacional de futebol americano. Na tarde deste domingo (13), a equipe venceu o rival, Vasco da Gama Patriotas-RJ por 43 x 3, em São Cristovão, e ficou com o título inédito pela CBFA.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O placar só foi inaugurado pelo cruzmaltino no segundo quarto, na quarta descida para endzone, com o kicker Leduc acertando o field goal. O rival, porém, chegou a três touchdowns e dois extra points, terminando o primeiro tempo na frente por 20 x 3. No terceiro quarto, o rubro-negro chegou a mais três touchdowns, um ponto extra e uma conversão de dois pontos. 41 x 3, terminando assim o jogo.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os rubro-negros, agora, enfrentarão o João Pessoa Espectros-PB, campeão do Nordeste, na semifinal do torneio. O duelo está marcado para o dia 26 de novembro, novamente no Rio de Janeiro.</span><br></p>	Foto: Carlos Gregório	news/2018/10/31/20161113154019_501.jpg	2018-10-31 19:11:24.00542+00	2018-10-31 19:11:24.005444+00	2
62	2016-10-22	Rex confirma favoritismo, vence WSI e fará sua primeira decisão na Superliga	rex-confirma-favoritismo-vence-wsi-e-fara-sua-primeira-decisao-na-superliga	<p><font face="Open Sans"><span style="font-size: 18px;">Com gostinho de revanche e fazendo valer o seu mando de campo, o Timbó Rex-SC venceu o São José WSI-SC por 12 x 0, neste sábado (22), e se garantiu na decisão da Conferência Sul da Superliga Nacional de futebol americano.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os pontos que garantiram a vitória dos donos da casa foram marcados por Well e Keith III.&nbsp; Rex, que haviam sido derrotados pelos algozes na temporada regular, decidirão o título regional contra o Coritiba Crocodiles-PR, que superou o Paraná HP-PR também nesta tarde.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com a vitória neste sábado, o ataque do Timbó Rex voltou a mostrar porque é um dos mais eficientes do Brasil. São 292 pontos em 7 jogos pela Superliga Nacional, rendendo uma média de 41 pontos por jogo.</span><br></p><p><br></p>	Foto: Takahiro Takahashi	news/2018/10/31/13653191_1110332035671852_778313280848096700_o.jpg	2018-10-31 19:48:31.264844+00	2018-10-31 19:48:31.264867+00	2
51	2016-11-13	Espectros conquista o hexa e mostra que ainda reina no NE	espectros-conquista-o-hexa-e-mostra-que-ainda-reina-no-ne	<p><font face="Open Sans"><span style="font-size: 18px;">Mudam-se os adversários, mantém-se os resultados. Pela sétima vez em sete anos, o João Pessoa Espectros-PB conquistou o título da Conferência Nordeste da Superliga Nacional de futebol americano. Na tarde deste domingo (13), os paraibanos venceram o Ceará Caçadores-CE por 27 x 20, em Fortaleza, e ficaram com o título regional.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os pontos que garantiram o título dos paraibanos foram marcados por Heron Azevedo, Karlos Cox (duas vezes), além do kicker Diego Aranha, com três extra-points e dois field goals. Pelo lado dos donos da casa, descontaram Romário Reis, TBattle e o kicker Danilo Arrais, com dois extra-points e dois field goals.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Agora, pela semifinal nacional, os fantasmas enfrentarão nada menos que o Flamengo F.A-RJ, dia 26 de novembro, no Rio de Janeiro. Os rubro-negros ficaram com o título da Conferência Leste, ao derrotar o Vasco da Gama Patriotas-RJ por 43 x 3. Clique aqui para ver como foi o jogo do adversário dos paraibanos.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com um punt retornado para touchdown, além de outro recebido, o americano Callus Cox destruiu a partida. Praticamente sem sair de campo durante todo o jogo, já que também dobrou na defesa, o gringo foi o motor do Espectros na partida deste domingo, em Fortaleza. Em toda a temporada, ele já marcou cinco touchdowns.</span><br></p>	Foto: Stephan Eilert	news/2018/10/31/esp1.jpg	2018-10-31 19:17:45.700389+00	2018-10-31 19:17:45.700412+00	2
52	2016-11-12	Cuiabá Arsenal não dá chances para o Lusa e é campeão invicto na Oeste	cuiaba-arsenal-nao-da-chances-para-o-lusa-e-e-campeao-invicto-na-oeste	<p><font face="Open Sans"><span style="font-size: 18px;">Mantendo a invencibilidade e a melhor campanha do Brasil, o Cuiabá Arsenal-MT conquistou o título da Conferência Oesta da Superliga Nacional de futebol americano, ao vencer o Lusa Lions-SP por 32 x 3. A partida aconteceu na tarde deste sábado (12), na Arena Pantanal.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Nas semifinais nacionais, o Arsenal enfrentará Timbó Rex-SC ou Coritiba Crocodiles-PR, que se enfrentam às 15h deste domingo (23), em Santa Catarina. O duelo que garantirá uma vaga no Brasil Bowl acontecera dia 25 de novembro, novamente na Arena Pantanal, já que os cuiabanos tiveram melhor campanha.</span></font></p>	Foto: Junior Martins	news/2018/10/31/Cuiabá-Arsenal-31-x-14-Lusa-Lions-Foto-de-Junior-Martins-4-1.jpg	2018-10-31 19:19:16.594124+00	2018-10-31 19:19:16.594147+00	2
22	2016-02-11	Mike Lima é o novo head coach do Ceará Caçadores	mike-lima-e-o-novo-head-coach-do-ceara-cacadores	<p><font face="Open Sans"><span style="font-size: 18px;">Uma das equipes mais tradicionais do futebol americano nordestino, o Ceará Caçadores, está de general novo. O paraense Mike Lima, de 33 anos, é o novo head coach do time de Fortaleza. Ele assumirá o lugar de Bruno Rocha, que passa a ser o diretor esportivo da agremiação.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O treinador já comandará a primeira atividade à frente do clube preto e cinza neste domingo (14), quando se inicia a temporada de treinamentos visando a Superliga Nordeste na modalidade. No ano passado, o Caçadores chegou aos playoffs, mas caiu nas semifinais para o atual hexacampeão do torneio, o João Pessoa Espectros.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"Será um temporada intensa, o futebol americano no Nordeste está cada vai mais competitivo, mais forte, é importante lembrar que o campeão brasileiro é um time nordestino. Temos que nos preparar cada vez mais, pois esse ano o time de pior campanha será rebaixado", afirmou o treinador.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Mike chegou ao time de Fortaleza no início do ano passado, quando assumiu a função de assistente de ataque. No meio da temporada, no entanto, foi promovido para coordenador ofensivo, ajudando os camuflados a se tornarem o terceiro ataque mais eficiente da Superliga, com 201 pontos somados.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Permanecem na comissão técnica, dois experientes membros, Jonas Frota, como coordenador de defesa dos Caçadores e Renan Peres, que continua como coordenador de special team, a dupla está no Ceará Caçadores desde 2014. Além dos coordenadores, Mike contará com o apoio de dois auxiliares, os atletas Ricardo Sindeaux, como assistente de ataque, e Rafael Porcino, o Nego, será o assistente de defesa.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Ao todo, o técnico contará com 86 atletas em seu elenco, dos quais 40 foram selecionados via try-out realizado no último mês. Os principais destaques do Ceará Caçadores, no entanto, são algumas caras conhecidas. Vale a atenção especial para o quarterback Romário Reis e o runningback Eduardo Maranhão, maior pontuador da última Superliga com 10 touchdowns anotados.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Além do time principal, os Caçadores, neste ano, terão novidades visando fomentar o esporte no Ceará. A equipe irá inaugurar a sua primeira equipe de categorias de base, para que os atletas possam desenvolver habilidades como força, agilidade, recepção da bola, além de estudar as regras e o playbook.</span><br></p>	Foto: Stephan Eilert	news/2018/10/27/IMG-20160128-WA0010.jpg	2018-10-27 17:17:50.686497+00	2018-10-31 19:20:58.888625+00	2
42	2016-09-14	Special teams: o detalhe que faria a diferença na Superliga Nacional	special-teams-o-detalhe-que-faria-a-diferenca-na-superliga-nacional	<p><font face="Open Sans"><span style="font-size: 18px;">Quase dois meses atrás, o FABR Network trouxe um levantamento à respeito do trabalho dos special teams, constatando que os extra-points vinham sendo um problema na Superliga Nacional. Restando apenas duas rodadas para o fim da temporada regular, os números do campeonato brasileiro de futebol americano mostram que os jogadores especialistas poderiam ser o diferencial que os times tanto procuram, apesar do baixo aproveitamento do setor em 2016.</span></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Até o momento, nas 60 partidas realizadas na competição, os special teams foram responsáveis por 13% de todos os pontos da competição. Mesmo sendo uma quantidade relativamente considerável, esses números poderiam ter sido muito mais positivos, não fosse o baixo aproveitamento no que se refere aos pontos após touchdown (PAT).</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">"Muitos dos nossos jogadores foram criados numa cultura que desvalorizava o special teams e agora fica difícil corrigir maus hábitos e vícios. Acredito que a próxima geração de técnicos e jogadores será muito mais cuidadosa com o special team e, daqui a cinco ou 10 anos, vermos times especialistas muito mais bem preparados do que hoje", comentou Gabriel Mendes, head coach da seleção brasileira.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">As conversões de dois pontos vêm sendo a principal pedra no sapato dos especialistas. São apenas 15 acertos em 32 oportunidades, trazendo uma margem negativa de 53% nas tentativas em todas as quatro conferências. Quando o assunto são os extra-points, os dados também não apontam boa perspectiva. 30% dos chutes não passam entre as traves.</span><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;">Colocando todos esses números no papel, se todos os PAT’s houvessem sido convertidos, os special teams teriam sido responsáveis por 14% das pontuações. Se considerássemos os field goals, os números iriam beirar os 30%. A realidade, porém, não é animadora. Apenas 1/3 dos 29 times que disputam a Superliga Nacional contam com técnicos de times especiais.&nbsp; E ai, vale ou não apostar nos special teams?</span></font><br></p>	Foto: Cristiane Mattos	news/2018/10/29/13613471_1201988973184478_7265527908807981394_o.jpg	2018-10-30 01:42:49.768786+00	2018-10-31 19:23:00.9396+00	2
60	2016-10-22	Invicto, Arsenal vence Rednecks e disputará mais um título na Oeste	invicto-arsenal-vence-rednecks-e-disputara-mais-um-titulo-na-oeste	<p><font face="Open Sans"><span style="font-size: 18px;">Defendendo o posto de melhor equipe da temporada regular, o Cuiabá Arsenal-MT fez jus ao favoritismo e não deu chances ao Goiânia Rednecks-GO na tarde deste sábado (22), no Dutrinha. Ainda invicta na temporada, a equipe do Mato Grosso venceu os goianos por 31 x 10 e está na decisão da Conferência Oeste da Superliga Nacional de futebol americano.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O Arsenal, agora, espera o vencedor do duelo entre Lusa Lions-SP e Tubarões do Cerrado-DF, que se enfrentam neste domingo (23), em São Paulo. A final acontecerá no dia 13 de novembro.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Detentor da melhor média de público da Superliga Nacional na temporada regular, o Cuiabá Arsenal deve mandar a decisão da Conferência Oeste na Arena Pantanal. No estádio construído para a Copa do Mundo de 2014, o time matogrossense colocou quase 12 mil pessoas na estreia do campeonato, contra o Corinthians Steamrollers-SP.</span><br></p>	Foto: André Romeu	news/2018/10/31/13690726_10154383629048724_1356985692895274511_n.jpg	2018-10-31 19:45:53.267215+00	2018-10-31 19:45:53.267238+00	2
53	2016-10-31	Get Eagles sobe para Superliga após eliminar o Gorilas	get-eagles-sobe-para-superliga-apos-eliminar-o-gorilas	<p><font face="Open Sans"><span style="font-size: 18px;">No último sábado(29), o Belo Horizonte Eagles-MG escreveu mais uma página na sua recente história, mas gloriosa até o momento. Os mineiros conquistaram a vaga à semifinal da Liga Nacional ao bater o Ponte Preta Gorilas-SP pelo placar de 14 x 6. O duelo ocorreu no gramando do Sesc Venda Nova, em Belo Horizonte.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O resultado inédito também garantiu a ida da equipe à Superliga Nacional na temporada 2017, logo a sua terceira competição oficial – as duas primeiras foram no primeiro semestre: Copa America de Futbol Americano (campeão) e campeonato mineiro (vice).</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os touchdowns que garantiram a vitória aos mineiros foram anotados por João Pedro Conrado e Ryan David. O kicker Charlston Charles conferiu os dois extra-points. Pelo lado da Ponte, marcou Tuleba Tigres.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O resultado coloca o Belo Horizonte Eagles na semifinal da Liga Nacional. O próximo adversário será o Santa Maria Soldiers, que bateu o Joinville Redlions por 20 x 7.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Já os Gorilas encerram as atividades em 2016 e voltam as suas atenções na disputa da segunda edição da São Paulo Football League em 2017.</span><br></p>	Foto: Reprodução da Internet	news/2018/10/31/13708244_1789089798043877_532141972011959460_o.jpg	2018-10-31 19:31:33.428051+00	2018-10-31 19:38:15.201393+00	2
56	2016-12-12	Com show de Fadini, Eagles vence Coyotes e leva o Nacional Bowl	com-show-de-fadini-eagles-vence-coyotes-e-leva-o-nacional-bowl	<p><font face="Open Sans"><span style="font-size: 18px;">Uma data histórica para o futebol americano praticado no Brasil. Numa final inédita na Liga Nacional, o Belo Horizonte Eagles venceu o Sinop Coyotes por 39 x 7 e conquistou – de forma invicta – o primeiro título nacional de uma equipe mineira. Apesar da tarde chuvosa na capital de Minas Gerais, o quarterback Alvaro Fadini brilhou ao anotar três touchdowns pelas próprias pernas.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os Eagles surpreenderam logo no primeiro lance da partida. Numa chamada ousada do head coach americano Daniel Levy, o special team foi direto para o onside kick. A jogada deu resultado. No primeiro drive, num flea flicker, Fadini conectou o wide receiver Sagat em um passe de 53 jardas para touchdown. O kicker Charlston Charles conferiu o PAT.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Na sequência, a defesa da casa tratou de interceptar o quarterback dos Coyotes Ricardo Bonadimann e posicionar as águias dentro da redzone. Bastou a Fadini correr 15 jardas para ultrapassar a goal line e ampliar a vantagem. Novamente Charles mandou a bola no meio do “Y”.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Antes do fim do primeiro quarto, os Coyotes avançaram até a redzone. Em um fake field goal de 28 jardas, a matilha chegou a linha de 1 jarda. Porém, em quatro descidas, a defesa local forçou o turnover on downs.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No segundo quarto, Charles acertou um field goal para colocar três posses de bola de vantagem para o elenco de Belo Horizonte. Pouco antes do fim do primeiro tempo, os visitantes descontaram com um touchdown marcado pelo running back americano Orrin D. Peterson, em uma corrida de 15 jardas. O kicker 15 Igor Henrique acertou o extra point. 17 x 3</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Após a parada do intervalo, Fadini foi para o punt. Depois que o chute foi executado, o punt returner de Sinop não conseguiu retornar e sofreu o tackle de Sagat para padecer no safety. Mais tarde, Fadini enganou a defesa rival num pump fake e correu 16 jardas para chegar a endzone. Charles acertou o ponto de bonificação.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No último quarto, Fadini entrou no gol pela terceira vez, na oportunidade, em uma corrida de 21 jardas. Chales mais uma vez converteu o chute extra. Para finalizar, o irmão do QB, o running back Rafael Fadini encontrou um gap e andou 6 jardas para marcar o touchdown do título dos Eagles. O try terminou sem sucesso. Final 39 x 7.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em tempo, subiram para a Superliga Nacional 2017: BH Eagles-MG (Leste), Sinop Coyotes-MT (Oeste), Santa Maria Soldiers-RS (Sul) e Tropa Campina-PB (Nordeste). Caíram para a Liga Nacional: Botafogo Challengers-SP (Leste), Sorocaba Vipers-SP (Oeste), Jaraguá Breakers-PR (Sul) e Sergipe Redentores-SE (Nordeste).</span><br></p>	Foto: Reprodução da Internet	news/2018/10/31/cats2.jpg	2018-10-31 19:37:50.944974+00	2018-10-31 19:37:50.944997+00	2
55	2016-10-31	Soldiers confirma ótimo ano e sobe para a Superliga Nacional	soldiers-confirma-otimo-ano-e-sobe-para-a-superliga-nacional	<p><font face="Open Sans"><span style="font-size: 18px;">Histórico! O Santa Maria Soldiers escreveu mais uma página para o futebol americano gaúcho. Após conquistar o campeonato estadual, no início do ano, o exército do Rio Grande do Sul bateu o Joinville Redlions por 20 x 7, no relvado do Itaum, em Joinville, e conquistou a vaga à semifinal da Liga Nacional. O resultado também garantiu a ida dos santa-marienses à Superliga Nacional na temporada 2017.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Esta é a primeira vez que um clube do Rio Grande do Sul chega a esta etapa. O mais distante havia sido do Porto Alegre Pumpkins, na temporada 2012, quando os abóboras foram até as quartas de final do Campeonato Brasileiro de Futebol Americano – o que viria a ser os moldes da atual Superliga.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os touchdowns que garantiram a classificação dos gaúchos foram marcados por Douglas Rodrigues e Guilherme Busanello. O kicker Maurício Faé acertou dois field goal e dois extra-point. Pelo lado do Redlions, anotaram José Castilho e Gustavo Guyoti, em extra-point.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O Soldiers volta a entrar em campo, agora, contra o Belo Horizonte Get Eagles, que eliminou o e Ponte Preta Gorilas. O resultado também garante a conquista simbólica da Conferência Sul aos gaúchos. Já o Joinville Redlions voltará as suas atenções na disputa inédita do campeonato catarinense em 2017.</span><br></p>	Foto: Reprodução da Internet	news/2018/10/31/IMG_7342.jpg	2018-10-31 19:36:00.349811+00	2018-10-31 19:38:06.282766+00	2
54	2016-10-31	Coyotes vence Hornets e avança à semifinal da Liga Nacional	coyotes-vence-hornets-e-avanca-a-semifinal-da-liga-nacional	<p><font face="Open Sans"><span style="font-size: 18px;">O Sinop Coyotes deu mais um passo importante para subir à Superliga Nacional na temporada de 2017. A matilha mato-grossense venceu o Sorriso Hornets por 17 x 0 e avançou nos playoffs da Liga Nacional. O encontro ocorreu no sábado (29), no gramado do Gigante do Norte, em Sinop.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O bom retrospecto contra o rival de Sorriso era favorável, já que o time de Sinop jamais havia perdido para o enxame. Porém, o primeiro quarto foi de amplo domínio das defesas, para colocar os punters em ação nas trocas de posse.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os pontos que garantiram à vitória foram marcados por Orrin D. Peterman e Felipe Vidal O kicker Anderson Abreu acertou dois extra-point e um field goal.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O próximo adversário do Coyotes sairá do confronto entre Rondonópolis Hawks e Rio Preto Weilers, no dia 5 de novembro, em Rondonópolis. Já o Sorriso Hornets encerra a sua melhor temporada na história. O clube áureonegro conquistou a façanha de avançar os playoffs da Liga. Agora o time foca as suas atenções na disputa do campeonato mato-grossense de 2017.</span><br></p>	Foto: Reprodução da Internet	news/2018/10/31/11223342_917112478372107_3488255417066777507_o.jpg	2018-10-31 19:32:52.540599+00	2018-10-31 19:38:11.647504+00	2
57	2016-06-18	Minas Locomotiva conquista o Minas Bowl e mantém a hegemonia	minas-locomotiva-conquista-o-minas-bowl-e-mantem-a-hegemonia	<p><font face="Open Sans"><span style="font-size: 18px;">Neste sábado (18), o Mineirão foi, pela primeira vez, palco para uma partida de futebol americano. Um novo marco na história do esporte na terra do pão de queijo. Minas Locomotiva e Belo Horizonte Get Eagles foram novamente os atores para mais uma quebra de recorde de público: 8720 fãs assistiram o derby. Os protagonistas atuaram em um grande bowl brasileiro, no final, o lado vermelho de BH levou o título ao vencer o irmão mais novo por 21 a 17.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O Saturday Night Football mineiro começou melhor para os Eagles. O kicker #5 Chall abriu o score com um field goal. Na entrada do segundo quarto, os reds tentaram empatar com um FG falho do kicker #2 Boizinho. Em seguida, a defesa azul tratou de ampliar com um safety. Mais tarde, o quarterback #9 Álvaro Fadini conectou o wide receiver #10 João Pedro Conrado para anotar o touchdown. Chall completou com o point after touchdown. 0-12.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O halftime show contou com a apresentação da banda Ca$h, que animou a torcida. Na etapa complementar, o running back #4 Abraão Coelho diminuiu a vantagem ao marcar o TD. Porém, Boizinho mandou a bola para fora do “H” e desperdiçou o PAT. Com a defesa afinada, os Eagles conquistaram o seu segundo safety na partida, para deixar a diferença em uma posse de bola. Fadini liderou a equipe até a redzone e Chall completou com o field goal.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">A vitória azul alinhava no horizonte após o resultado se manter inalterado. Mesmo com duas posses de bola atrás do placar, o Locomotiva iniciou o processo de milagre do Mineirão. No último período, O quarterback #17 Maycon Siexas correu para marcar o touchdown. O próprio QB tratou de tirar parte da vantagem com a conversão de dois pontos. No two minute warning, o wide receiver #85 Vilaça adentrou a endzone adversária para marcar o TD do tricampeonato e a manutenção da hegemonia do Locomotiva em Minas. Boizinho fechou a conta com o chute de bonificação. Final 21-17.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Agora, o Minas Locomotiva volta as suas atenções a disputa da Superliga Nacional, que inicia no começo de julho. Já o Belo Horizonte Get Eagles vai a sua primeira competição de nível nacional, o elenco disputará a Liga Nacional, que também inicia no segundo semestre.</span><br></p>	Foto: Gazeta	news/2018/10/31/v-1.jpg	2018-10-31 19:39:51.798449+00	2018-10-31 19:39:51.798472+00	2
58	2016-06-18	Santa Maria Soldiers joga simples e fatura o Gigante Bowl	santa-maria-soldiers-joga-simples-e-fatura-o-gigante-bowl	<p><font face="Open Sans"><span style="font-size: 18px;">Uma noite inesquecível. É assim que o Gigante Bowl pode ser lembrado pelos fãs de futebol americano no Rio Grande do Sul. Magistral Beira-Rio, nova casa do desporto da bola oval nos pampas. Neste sábado (18), o Santa Maria Soldiers encerrou a invencibilidade de oito partidas do Juventude em solo gaúcho e conquistou o tri campeonato estadual, ao bater o rival de Caxias do Sul por 21 a 3, na gélida Porto Alegre e seu Ice Bowl.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O Super Bowl dos gaúchos, dada as devidas proporções, contou com todos os artifícios que um megaevento nos Estados Unidos pedia. O Internacional propôs e realizou. Os pouco mais de 12 mil adeptos puderam consumir um bom espetáculo dentro e fora de campo. Banda marcial; show antes e durante o intervalo; entrada triunfal das equipes; interpretes para os hinos. Porto Alegre viveu algo parecido com o que acontece na final do principal campeonato nos Estados Unidos.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Se Lady Gaga lembrou Whitney Houston ao cantar bem o hino americano, Christina Sorrentino não ficou para trás desta dupla ao entoar o hino rio-grandense com maestria e beleza. Se o último Super Bowl teve atração internacional com o Coldplay, o Inter fez questão de ter a sua versão pocket: a portuguesa Katia Aveiro – também conhecida por ser irmã do jogador Cristiano Ronaldo – animou a torcida. A banda Papas da Língua completou o show do intervalo.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com um cronograma rígido, Soldiers e Juventude adentraram ao gramado com labaredas, para delírio dos fãs. O jogo que estava programado para às 18h30, começou seis minutos antes, quando o kicker #19 Matheus Ely chutou a bola para os ares.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Dispostos a sobrepor o favoritismo da equipe de Caxias do Sul, os Soldiers chegaram a redzone logo em seu primeiro drive. Entretanto, o kicker #31 Maurício Faé despediçou um field goal de 28yd. Com problemas para encaixar o ataque, o Juventude sucumbiu a defesa de Santa Maria, que atuou no sistema de zonas.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No segundo quarto, os soldados abriram o placar em uma corrida de 11 jardas para touchdown, anotada pelo running back #32 Guilherme Busanello. O quarterback #5 Wagner Freitas, que utilizada a I-formation, confundiu a defesa de Juventude quando trocou para a formação shotgun, o corredor no lado esquerdo do ataque ficou livre para Busanello chegar com facilidade a endzone. Faé completou com o chute de bonificação. Os caxienses tentaram responder no drive seguinte, o running back #49 Bruno Bortoluzzi chegou a correr 38 jardas para touchdown, mas um holding do ataque impediu a efetividade da jogada. Pouco antes do final do primeiro tempo, o Juventude descontou com um field goal de 33 jardas de Ely. 3-7.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Após o intervalo, a temperatura caiu a 9ºC, para dificultar ainda mais o jogo aéreo de Caxias. Tanto que o jovem quarterback #18 Eduardo Cauzzi sofreu uma interceptação do safety #24 Fabrício Ziegler, que carregou a bola até a redzone adversária. Bastou ao wide receiver #7 Douglas Elesbão, em uma jogada de end around de 9 jardas marcar o segundo touchdown de Santa Maria. O backup kicker #8 Fabrício da Silva mandou a bola entre as traves.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Desnorteado, o elenco do Juventude ainda esboçava reação. O time entrou na casa das 20 jardas do campo de ataque, entretanto, faltas minaram a campanha da papada. O erro ficou ainda pior quando o holder não pegou a bola para posicionar o field goal de 50 jardas de Ely. A campanha terminou em um turnover on downs no campo de defesa do Juventude.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Na entrada do último quarto, os caxienses precisavam ir para o tudo ou nada. Em uma trick play mal executada entre Cauzzi e o wide receiver #81 Vagner Pacheco, Ziegler aproveitou para realizar a sua segunda interceptação. O treinador dos Soldiers, Gustavo Petter, tratou de manter a mesma base corrida para rodar o relógio. A chamada deu certa, tanto que pouco mais de dois minutos para o fim do jogo, Cauzzi foi sacado três vezes consecutivas. Busanello fechou a conta com um touchdown de de 10yd. Da Silva encerrou o Gigante Bowl com a conversão do extra point. Final 3-21.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Busanello ainda foi eleito o MVP da final.Agora, o elenco comandado por Petter volta as suas atenções a disputa da Liga Nacional – a segunda divisão do campeonato brasileiro. Já os comandados do técnico Wesley Mota se preparam para jogar a Superliga Nacional – a primeira divisão do certame nacional.</span><br></p>	Foto: Jonathan Heckler	news/2018/10/31/2.jpg	2018-10-31 19:41:22.700892+00	2018-10-31 19:41:22.700914+00	2
59	2016-10-24	Após imbróglio, CBFA confirma Lusa Lions como finalista	apos-imbroglio-cbfa-confirma-lusa-lions-como-finalista	<p><font face="Open Sans"><span style="font-size: 18px;">A Superliga Nacional vivenciou mais um episódio triste. Na partida pela divisional round dos playoffs entre Lusa Lions-SP e Tubarões do Cerrado-DF, no Canindé, o duelo foi marcado pela interrupção devido a falta da presença da ambulância no local. O jogo estava no primeiro minuto do último quarto, quando foi dado por incontínuo. Naquele momento, os mandantes venciam pelo placar de 14 x 6.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os paulitas abriram o placar no segundo quarto, quando o quarterback Catullo Goés conectou o wide receiver Vinícius “Seya” Souza, em passe de 17 jardas para touchdown. O kicker Renan “Buzz” Barbosa conferiu o extra point. 7 x 0.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Na etapa complementar, Goés encontrou o wide receiver Leandro Fratini em uma screen pass. O atleta quebrou tackles e correu cerca de 30 jardas para ultrapassar a goal line. Buzz mandou a bola entre as traves. Na sequência, o running back Bruno Cavalcante percorreu quatro jardas para anotar o touchdown e descontar para os brasilienses. O special team perdeu o try. 14 x 6.</span><br></p><p><font face="Open Sans"><br></font></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>ENTENDA O CASO</b><br></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">No início do último período, quando os Lions estavam na redzone a sete jardas da endzone, o defensive end do TdC, #95 Felipe Marques, acabou lesionado no lance. A partida foi paralisada para atendimento do atleta. A ambulância foi solicitada para socorrer Marques e transportá-lo para o hospital mais próximo do Canindé.</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O jogo ficou parado por um longo tempo. Em razão da demora do retorno do veículo de atendimento, os dirigentes da equipe brasiliense tomaram a decisão de não dar seguimento ao embate, uma vez que os Tubarões alegaram uma cláusula de tempo no contrato com a empresa contratada para fazer o transporte do time até São Paulo.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Em contato com o presidente da Confederação Brasileira de Futebol Americano (CBFA), Guto Sousa, a partida interrompida foi dada por encerrada.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">"O regulamento fala que caso um jogo seja interrompido por motivo fortuito após transcorridos mais de 3/4 do tempo de jogo, o jogo é dado por encerrado e o placar permanece. O resultado final, segundo a arbitragem, é mesmo Lusa 14-6 Tubarões. Este é o resultado oficial", disse Guto Sousa, presidente da CBFA.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com o encerramento oficial, o resultado favorece os Lions, que avançam nos playoffs e encararão o Cuiabá Arsenal na final da Conferência Oeste. Já o TdC voltará as suas atenções na disputa do campeonato candango em 2017, onde defende o título.</span><br></p>	Foto: Chiarini Junior	news/2018/10/31/14570737_622711967910843_8647579840487724388_o.jpg	2018-10-31 19:44:48.741653+00	2018-10-31 19:44:48.741674+00	2
63	2016-10-22	Espectros mantém escrita contra o Mariners e vai para mais uma final no NE	espectros-mantem-escrita-contra-o-mariners-e-vai-para-mais-uma-final-no-ne	<p><font face="Open Sans"><span style="font-size: 18px;">Em mais um duelo histórico, o João Pessoa Espectros-PB venceu o Recife Mariners-PE por 16 x 8, este sábado (22), no estádio dos Aflitos, e irá para a sua sétima decisão nordestina em sete anos.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os fantasmas mantiveram a escrita contra os pernambucanos e venceram o seu terceiro jogo consecutivo em pós-temporada contra os azuis. Os paraibanos, agora, esperam o vencedor do duelo entre Ceará Caçadores-CE e América Bulls-RN, neste domingo, para conhecer o adversário ao título da Conferência Nordeste da Superliga Nacional de futebol americano.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">A final acontecerá no dia 13 de novembro. Os pontos que garantiram o resultado positivo foram marcados por Carlos Cox, Massu e Diego Aranha, em field goal. Vinícius Angelo descontou para o Mariners em touchdown e conversão de dois pontos.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Responsável pelo touchdown que abriu o placar do jogo, o americano Callus Cox foi o nome do Espectros no jogo. O atleta interceptou um passe do quarterback Alex Niznak.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O quarterback do João Pessoa Espectros, Rodrigo Dantas, que estava cotado para entrar em campo, acabou sendo vetado pelos médicos do time paraibano durante o aquecimento. O atleta está com uma lesão no tornozelo. Segundo o jogador, em entrevista ao FABR Network, as chances de atuar na decisão do campeonato, dia 13 de novembro, são maiores.</span><br></p>	Foto: Gabriel Melo	news/2018/10/31/2_BWWGzgv.jpg	2018-10-31 19:50:51.717448+00	2018-10-31 19:50:51.71747+00	2
65	2016-10-22	Imbatível, Flamengo vence Reptiles e chega à decisão na Leste	imbativel-flamengo-vence-reptiles-e-chega-a-decisao-na-leste	<p><font face="Open Sans"><span style="font-size: 18px;">Mostrando porque é um dos fortes favoritos para chegar ao Brasil Bowl, o Flamengo F.A-RJ não deu chances ao Botafogo Reptiles-RJ, venceu o clássico carioca por 41 x 26, na tarde deste sábado (22), em São Cristovão, e está na decisão da Conferência Leste da Superliga Nacional.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os rubro-negros, agora, esperam o vencedor do duelo entre Vila Velha Tritões-ES e Vasco da Gama Patriotas-RJ, que se enfrentam neste domingo (23), no Espírito Santo. A final acontecerá no dia 13 de novembro.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com a vitória desta tarde, o Flamengo F.A se isolou como equipe mais efetiva no setor ofensivo. Os rubro-negros são os que mais marcam pontos em toda competição, além dos que mais pontuam com touchdowns. Até o momento, foram 332 pontos, rendendo uma média de sete TD’s por jogo.</span><br></p>	Foto: Jayson Braga	news/2018/10/31/14633467_1395319963811822_6642964450364887928_o.jpg	2018-10-31 19:53:18.47991+00	2018-10-31 19:53:18.479933+00	2
66	2016-10-23	Em jogo emocionante, Patriotas vence Tritões e fará final contra Flamengo	em-jogo-emocionante-patriotas-vence-tritoes-e-fara-final-contra-flamengo	<p><font face="Open Sans"><span style="font-size: 18px;">Em mais jogo muito disputado contra o Vila Velha Tritões-ES, o Vasco da Gama Patriotas-RJ venceu por 43 x 40, na tarde deste domingo, no estádio Gil Fernandes e avançou nos playoffs da Conferência Leste da Superliga Nacional de futebol americano.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O adversário, agora, será o Flamengo F.A-RJ, que eliminou o Botafogo Reptiles-RJ, no último sábado. O duelo acontecerá no dia 13 de dezembro, em São Cristovão.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os pontos que garantiram o resultado positivo para os cariocas foram marcados por Samuel, Rudá, Lipe (duas vezes), JP e Daniel Gazelle. O kicker leduc acertou cinco extra-points.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Com cinco passes para touchdown, além de um corrido, o quarterback Daniel Gazelle foi o nome do jogo. Apesar do que a idade possa sugerir, o jovem jogador mostrou bastante frieza para comandar o ataque do Vasco da Gama Patriotas nos cinco minutos final de partida.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Essa é a terceira temporada consecutiva que o Patriotas chega a uma decisão de conferência. Em 2014, o cruz-maltino foi o campeão do Torneio Touchdown e, no ano passado, perdeu o título para o Timbó Rex. Neste ano, a ida para à decisão no Leste foi no melhor estilo superação, vencendo um adversário que o derrotou na temporada regular.</span><br></p>	Foto: Reprodução da Internet	news/2018/10/31/14124480_1242483852448786_7021744516021624945_o.jpg	2018-10-31 19:54:27.480231+00	2018-11-26 11:12:13.274883+00	2
64	2016-10-23	Caçadores atropela Bulls e decidirá título inédito em Fortaleza	cacadores-atropela-bulls-e-decidira-titulo-inedito-em-fortaleza	<p><font face="Open Sans"><span style="font-size: 18px;">Após três anos de existência, o Ceará Caçadores-CE está em uma final de conferência na Superliga Nacional de futebol americano. Na noite deste domingo (23), a equipe de Fortaleza atropelou o América Bulls-RN por 57 x 0, no Presidente Vargas, e decidirá o título nordestino diante do seu torcedor.</span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">O adversário será o João Pessoa Espectros-PB, que ontem eliminou o Recife Mariners-PE. A final acontecerá no dia 13 de novembro, no mesmo estádio. Os pontos que garantiram a goleada foram marcados por Taloon Rogash, Marlos Reis (duas vezes), Lucas Alemão, TBattle (duas vezes), Jefferson, além do kicker Diego Arrais, que acertou seis extra-points e um field goal.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Mostrando-se decisivo ao longo de toda a temporada 2016, o americano TBattle voltou a mostrar sua eficiência. O gringo marcou dois touchdowns na partida, um recebendo e outro retornando punt, chegando a marca de 11 TD’s pelo Caçadores. Sozinho, ele foi responsável por 37% dos pontos da equipe na Conferência Nordeste.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Além de chegar à decisão, o Ceará Caçadores tem mais um motivo para comemorar. Na tarde deste domingo, o time de Fortaleza se manteve como o time com a melhor média de público da região. Mais de 1.200 pessoas estiveram presentes no Presidente Vargas na tarde deste domingo.</span><br></p>	Foto: Stephan Eilert	news/2018/10/31/14125678_1148032128576268_1423167628746376180_o.jpg	2018-10-31 19:52:11.730115+00	2018-11-26 11:12:05.487515+00	2
4	2015-04-29	Brasil Onças é convocado para Copa do Mundo de Futebol Americano	brasil-oncas-e-convocado-para-copa-do-mundo-de-futebol-americano	<p><font face="Open Sans"><span style="font-size: 18px;">A Confederação Brasileira de futebol americano (CBFA) divulgou, na tarde desta quarta-feira (29), a lista com os 45 convocados que irão representar o Brasil na Copa do Mundo da modalidade, que vai acontecer entre os dias 8 e 19 de julho, na cidade de Canton, em Ohio, nos Estados Unidos.</span></font></p><p><span style="font-weight: 700; font-family: &quot;Open Sans&quot;; font-size: 18px;">LEIA TAMBÉM:</span><br style="font-family: &quot;Open Sans&quot;; font-size: 18px;"><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">&gt;&nbsp;</span><a href="http://fabrnetwork.com/noticias/divulgada-tabela-do-campeonato-mundial-de-futebol-americano" target="_blank" style="background-color: rgb(255, 255, 255); font-family: &quot;Open Sans&quot;; font-size: 18px;">Divulgada tabela do Campeonato Mundial de Futebol Americano</a><font face="Open Sans"><span style="font-size: 18px;"><br></span></font></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Os dois jogadores do Recife Mariners/Náutico-PE que haviam participado dos últimos trainning camps do Brasil Onças – apelido carinhoso da seleção brasileira -, e estavam cotados para integrar o time do técnico Danilo Muler acabaram ficando de fora. Com isso, o único representante do Estado será o técnico Lucas Cisneiros, também do Mariners, que será o coordenador defensivo do Brasil.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Quanto à Copa do Mundo, as partidas vão acontecer no estádio Tom Benson Hall of Fame Stadium, que recebe as partidas de estreia da pré-temporada da NFL, principal campeonato de futebol americano dos EUA.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Ao todo, oito seleções irão participar da competição. O Grupo A, formado pelas equipes mais bem ranqueadas do mundo, vai contar com Estados Unidos, Canadá, México e Japão. O Brasil Onças, apelido carinhoso da equipe verde e amarela, acabou caindo no Grupo B, assim como a Austrália, Coreia do Sul e França – este último, adversário da estreia dos brasileiros.</span><br></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Já sobre o formato de disputas, o torneio vai funcionar no sistema de mata-mata. Os três melhores colocados da primeira chave e o líder da segunda chave avançam às semifinais. Essa será a primeira vez que o Brasil irá participar do Campeonato Mundial. Confira a lista dos convocados:</span><br></p><p><b style="font-family: &quot;Open Sans&quot;; font-size: 18px;">KICKER:<br></b><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Raiam dos Santos (Flamengo FA)</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>CORNERBACKS:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Bruno Rosa (Flamengo FA)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Filipe Sodré (Vasco Patriotas)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Flavio Gouveia (João Pessoa Espectros)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Vitor Veloso (João Pessoa Espectros)</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>SAFETIES:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Cleverson Freitas (Coritiba Crocodiles)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Fernando Giovannotti (Vila Velha Tritões)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Henrique Rocha (Coritiba Crocodiles)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Paulo Torquato (São José Istepôs)</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>LINEBACKERS:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Eduardo Viana (Paraná HP)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Gerson Santos (São José Istepôs)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Igor Mota (Cuiabá Arsenal)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Laercio Anacleto (Timbó Rex)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Lincoln da Silva (Lusa Lions)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Pablo Chalfun (Vaco Patriotas)</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>DEFENSIVE LINE:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Andrei Vargas (Cuiabá Arsenal)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Augusto Oliveira (Tubarões do Cerrado)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Bruno da Silva (São Paulo Storm)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Delmer Zoschke (Coritiba Crocodiles)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Denis Barros (Flamengo FA)<br></span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Kawan Pivatto (Juventude FA)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Felipe Marques (Tubarões do Cerrado)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Vinicius Zanon (São José Istepôs)</span></p><p><font face="Open Sans"><span style="font-size: 18px;"><b>WIDE RECEIVERS:<br></b></span></font><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Adan Rodrigues (Coritiba Crocodiles)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Felipe Fernandes (Vasco Patriotas)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Heron Azevedo (Cuiabá Arsenal)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Rodrigo Pons (Flamengo FA)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Victor Hugo (Corinthians Steamrollers)</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>OFENSIVE LINE:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Anselmo Brauer (Flamengo FA)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Dhiego Taylor (Lusa Lions)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Hátila Fogo (Cuiabá Arsenal)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Júnior Kruger (Jaraguá Breakers)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Lenin Caldeira (João Pessoa Espectros)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Marcos Martiny (Flamengo FA)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Rafael Menezes (Botafogo Reptiles)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Rufo Neto (João Pessoa Espectros)</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>TIGHT ENDS:<br></b></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Felipe Leiria (Flamengo FA)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Luiz Domingues (São Paulo Storm)</span></p><p><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;"><b>RUNNINGBACKS:<br></b></span><span style="font-family: &quot;Open Sans&quot;; font-size: 18px;">Bruno Santucci (Coritiba Crocodiles)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Everton Antero (João Pessoa Espectros)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Lucas Nascimento (Coritiba Crocodiles)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Rômulo Ramos (Vasco Patriotas)</span></p><p><b style="font-size: 18px; font-family: &quot;Open Sans&quot;;">QUARTERBACKS:<br></b><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Ramon Martire (Botafogo Reptiles)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Rhudson Fonseca (New Jersey Savage)<br></span><span style="font-size: 18px; font-family: &quot;Open Sans&quot;;">Rodrigo Dantas (João Pessoa Espectros)</span></p>	Foto: Reprodução da Internet	news/2018/10/17/asdsadsadsa.jpg	2018-10-17 12:38:07.443321+00	2018-11-28 01:12:43.578853+00	2
\.


--
-- Data for Name: news_news_tag; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.news_news_tag (id, news_id, tag_id) FROM stdin;
\.


--
-- Data for Name: news_news_teamTag; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public."news_news_teamTag" (id, news_id, team_id) FROM stdin;
1	12	56
2	12	34
3	34	56
4	34	21
5	35	17
6	36	35
7	37	16
8	38	73
9	41	73
10	46	73
11	46	27
12	47	24
13	47	73
14	48	34
15	48	27
16	49	73
17	49	21
18	50	27
19	50	79
20	51	17
21	51	34
22	52	24
23	52	53
24	53	30
25	54	69
26	54	71
27	55	63
28	56	69
29	56	30
30	57	1
31	57	30
32	58	35
33	58	63
34	59	76
35	59	53
36	61	50
37	61	21
38	62	64
39	62	73
40	63	56
41	63	34
42	64	17
43	64	12
44	65	9
45	65	27
46	66	74
47	66	79
\.


--
-- Data for Name: news_tag; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.news_tag (name) FROM stdin;
\.


--
-- Data for Name: team_player; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.team_player (id, name, nickname, slug, photo, number, height, weight, birthdate, facebook, instagram, experience, created, modified, position_id, team_id) FROM stdin;
213	Wallace Roberto	\N	wallace-roberto	players/photo/10.jpg	0	\N	\N	1987-03-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	10
1903	Guilherme Souza Linardi Piccoli	\N	guilherme-souza-linardi-piccoli	players/photo/79.jpg	8	\N	\N	1992-08-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	79
1904	Gilson De Oliveira Faria	\N	gilson-de-oliveira-faria	players/photo/79.jpg	9	\N	\N	1999-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	79
1905	Luiz Phillipp Mitchell Reis	\N	luiz-phillipp-mitchell-reis	players/photo/79.jpg	10	\N	\N	1991-01-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	79
1906	Pedro Silva Santiago Cardoso	\N	pedro-silva-santiago-cardoso	players/photo/79.jpg	11	\N	\N	1992-10-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	79
1907	Murilo Barbosa Carvalho	\N	murilo-barbosa-carvalho	players/photo/79.jpg	12	\N	\N	1998-01-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	79
1908	Victor Hugo De Almeida Rodrigues Reis	\N	victor-hugo-de-almeida-rodrigues-reis	players/photo/79.jpg	14	\N	\N	1993-06-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	79
1909	Daniel Gazelle Pinto De Almeida	\N	daniel-gazelle-pinto-de-almeida	players/photo/79.jpg	17	\N	\N	1995-07-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	79
1910	Luiz Phelippe Cardoso Benedicto	\N	luiz-phelippe-cardoso-benedicto	players/photo/79.jpg	19	\N	\N	1994-02-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	79
1911	André Luiz Rodrigues Aguiar	\N	andre-luiz-rodrigues-aguiar	players/photo/79.jpg	20	\N	\N	1993-03-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1912	Leduc Hermeto De Almeida Fauth	\N	leduc-hermeto-de-almeida-fauth	players/photo/79.jpg	21	\N	\N	1984-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	79
1913	Caio Lourenço Vidal	\N	caio-lourenco-vidal	players/photo/79.jpg	22	\N	\N	1993-10-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	79
1914	Fabiano Figueiredo Vieira	\N	fabiano-figueiredo-vieira	players/photo/79.jpg	24	\N	\N	1989-12-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	79
1915	Annibal Franco Rocha Fernandes	\N	annibal-franco-rocha-fernandes	players/photo/79.jpg	25	\N	\N	1993-12-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1916	Guilherme Pinheiro Mileze De Souza	\N	guilherme-pinheiro-mileze-de-souza	players/photo/79.jpg	26	\N	\N	1999-03-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1917	Lucas Carrarini Cabral	\N	lucas-carrarini-cabral	players/photo/79.jpg	27	\N	\N	1994-06-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	79
1918	Bruno Sabino Araujo	\N	bruno-sabino-araujo	players/photo/79.jpg	28	\N	\N	1994-05-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1919	Pedro Henrique Leão Da Silva	\N	pedro-henrique-leao-da-silva	players/photo/79.jpg	29	\N	\N	1999-04-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1920	André Luís Fonseca Do Carmo	\N	andre-luis-fonseca-do-carmo	players/photo/79.jpg	30	\N	\N	1992-06-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	79
1921	Diego Da Silva Rodrigues	\N	diego-da-silva-rodrigues	players/photo/79.jpg	32	\N	\N	1985-03-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	79
1922	Yan Viana De Oliveira	\N	yan-viana-de-oliveira	players/photo/79.jpg	33	\N	\N	1998-10-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	79
1923	Cristiano Mendonça De Araújo	\N	cristiano-mendonca-de-araujo	players/photo/79.jpg	34	\N	\N	1989-07-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1924	Patrick Souto Monteiro	\N	patrick-souto-monteiro	players/photo/79.jpg	35	\N	\N	1991-07-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1925	Romulo Ramos	\N	romulo-ramos	players/photo/79.jpg	40	\N	\N	1986-11-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	79
1926	Gabriel De Mello Barbosa	\N	gabriel-de-mello-barbosa	players/photo/79.jpg	43	\N	\N	1997-04-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1927	Cristian Pinto Marinho	\N	cristian-pinto-marinho	players/photo/79.jpg	44	\N	\N	1997-11-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	79
1928	Hugo Cruz Maia	\N	hugo-cruz-maia	players/photo/79.jpg	45	\N	\N	1986-11-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	79
1929	Leandro Lopes Guimarães Ferraz	\N	leandro-lopes-guimaraes-ferraz	players/photo/79.jpg	46	\N	\N	1990-04-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	79
1930	Leandro Marquês Souza Costa	\N	leandro-marques-souza-costa	players/photo/79.jpg	48	\N	\N	1988-03-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	79
1931	Viktor Hugo Camillo Galia Costa	\N	viktor-hugo-camillo-galia-costa	players/photo/79.jpg	49	\N	\N	1992-04-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	79
1932	Thiago Martins Da Costa	\N	thiago-martins-da-costa	players/photo/79.jpg	50	\N	\N	1988-02-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	79
1933	Washington De Almeida Sá Júnior	\N	washington-de-almeida-sa-junior	players/photo/79.jpg	51	\N	\N	1990-09-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	79
1934	Fábio Bernardino Dos Santos	\N	fabio-bernardino-dos-santos	players/photo/79.jpg	53	\N	\N	1987-04-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	79
1935	Marcio Luiz Moreira De Menezes	\N	marcio-luiz-moreira-de-menezes	players/photo/79.jpg	54	\N	\N	1989-02-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	79
1936	Cristiano Cazellato Forti	\N	cristiano-cazellato-forti	players/photo/79.jpg	55	\N	\N	1986-12-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	79
1937	André Dos Santos Fernandes Bastos	\N	andre-dos-santos-fernandes-bastos	players/photo/79.jpg	57	\N	\N	1991-12-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	79
1938	Daniel Siqueira Santos	\N	daniel-siqueira-santos	players/photo/79.jpg	58	\N	\N	1995-07-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	79
1939	Hugo Leonardo Dutra Monteiro	\N	hugo-leonardo-dutra-monteiro	players/photo/79.jpg	61	\N	\N	1986-10-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	79
1940	Rogério Junio Ferreira Reis	\N	rogerio-junio-ferreira-reis	players/photo/79.jpg	66	\N	\N	1987-04-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	79
1941	Luciano Vinagre Da Silva	\N	luciano-vinagre-da-silva	players/photo/79.jpg	67	\N	\N	1993-05-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	79
1942	Alfredo Ney Dos Reis Principe Junior	\N	alfredo-ney-dos-reis-principe-junior	players/photo/79.jpg	68	\N	\N	1988-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	79
1943	Bruno Pereira De Santana	\N	bruno-pereira-de-santana	players/photo/79.jpg	69	\N	\N	1991-07-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	79
1944	Thyago Luiz Barros Almeida	\N	thyago-luiz-barros-almeida	players/photo/79.jpg	70	\N	\N	1987-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	79
1945	Victor Hugo Silva De Barros	\N	victor-hugo-silva-de-barros	players/photo/79.jpg	71	\N	\N	1989-08-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	79
1946	Leandro Sperendio De Oliveira	\N	leandro-sperendio-de-oliveira	players/photo/79.jpg	72	\N	\N	1981-05-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	79
1947	Danilo Pacheco França	\N	danilo-pacheco-franca	players/photo/79.jpg	74	\N	\N	1986-03-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	79
9	Abraão Coelho Figueiredo Carvalho	\N	abraao-coelho-figueiredo-carvalho	players/photo/1.jpg	7	\N	\N	1986-06-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-28 02:09:41.324168+00	2	1
214	Welinton De Jesus Santos	\N	welinton-de-jesus-santos	players/photo/10.jpg	0	\N	\N	1985-06-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	10
215	Wellington Galiza Costa Mata	\N	wellington-galiza-costa-mata	players/photo/10.jpg	0	\N	\N	1988-11-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	11	10
216	Bruno Araújo De Sousa	\N	bruno-araujo-de-sousa	players/photo/12.jpg	0	\N	\N	1996-10-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	12
217	Raymond Bradley	\N	raymond-bradley	players/photo/12.jpg	1	\N	\N	1990-11-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
218	Paulo Guilherme Barbosa Ramos Neto	\N	paulo-guilherme-barbosa-ramos-neto	players/photo/12.jpg	3	\N	\N	1996-06-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	12
219	Vitor Fernandes Dias Lopes	\N	vitor-fernandes-dias-lopes	players/photo/12.jpg	4	\N	\N	1994-11-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
220	Leylton De Souza Rocha	\N	leylton-de-souza-rocha	players/photo/12.jpg	5	\N	\N	1983-10-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	12
221	Rafael Venâncio De Melo Oliveira	\N	rafael-venancio-de-melo-oliveira	players/photo/12.jpg	6	\N	\N	1989-02-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	12
222	Glenderson Charliê Maciel Nogueira	\N	glenderson-charlie-maciel-nogueira	players/photo/12.jpg	7	\N	\N	1985-01-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	12
223	Omar Mahmmod Kharroub	\N	omar-mahmmod-kharroub	players/photo/12.jpg	8	\N	\N	1993-04-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
224	Luiz Barros Da Rocha Neto	\N	luiz-barros-da-rocha-neto	players/photo/12.jpg	11	\N	\N	1987-08-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	12
225	Rafael Da Silva Barros	\N	rafael-da-silva-barros	players/photo/12.jpg	14	\N	\N	1997-11-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	12
226	Edson Vicente Da Silva	\N	edson-vicente-da-silva	players/photo/12.jpg	16	\N	\N	1991-04-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
227	Jonathan Atkinson Freire Da Silva	\N	jonathan-atkinson-freire-da-silva	players/photo/12.jpg	17	\N	\N	1995-12-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	12
228	Jeová Dougllas Dos Santos Baia	\N	jeova-dougllas-dos-santos-baia	players/photo/12.jpg	18	\N	\N	1990-04-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	12
229	Allyson Emanuel Medeiros Oliveira	\N	allyson-emanuel-medeiros-oliveira	players/photo/12.jpg	19	\N	\N	1992-12-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	12
230	Lucas Ferreira Da Silva	\N	lucas-ferreira-da-silva	players/photo/12.jpg	20	\N	\N	1993-03-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	12
231	Lucas Corrêa De Almeida Santana	\N	lucas-correa-de-almeida-santana	players/photo/12.jpg	21	\N	\N	1993-12-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
232	Erick Vale Oliveira Da Silva	\N	erick-vale-oliveira-da-silva	players/photo/12.jpg	22	\N	\N	1987-10-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
233	Michell Nascimento Dos Prazeres	\N	michell-nascimento-dos-prazeres	players/photo/12.jpg	24	\N	\N	1992-12-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	12
234	Harleson William De Lemos Vitoriano	\N	harleson-william-de-lemos-vitoriano	players/photo/12.jpg	25	\N	\N	1994-12-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	12
235	Romário Soares Gomes	\N	romario-soares-gomes	players/photo/12.jpg	30	\N	\N	1991-05-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
236	Jean Rickson Oliveira Das Neves	\N	jean-rickson-oliveira-das-neves	players/photo/12.jpg	31	\N	\N	1997-06-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
237	Zarlan Nícolas De Souza Magalhães	\N	zarlan-nicolas-de-souza-magalhaes	players/photo/12.jpg	32	\N	\N	1987-04-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	12
238	Eric Ferreira Da Silva	\N	eric-ferreira-da-silva	players/photo/12.jpg	33	\N	\N	1990-11-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
239	Jefferson Luis Paiva De Lima Filho	\N	jefferson-luis-paiva-de-lima-filho	players/photo/12.jpg	34	\N	\N	1997-04-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	12
240	Guilhermi Lima De Oliveira	\N	guilhermi-lima-de-oliveira	players/photo/12.jpg	35	\N	\N	1983-07-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
241	João Octávio Medeiros Pires	\N	joao-octavio-medeiros-pires	players/photo/12.jpg	38	\N	\N	1991-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
242	Igor Daniel Oliveira Da Silva	\N	igor-daniel-oliveira-da-silva	players/photo/12.jpg	39	\N	\N	1994-10-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
243	Jefferson De Oliveira Gomes	\N	jefferson-de-oliveira-gomes	players/photo/12.jpg	43	\N	\N	1996-11-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
244	Heráclito Maria Soares Neto	\N	heraclito-maria-soares-neto	players/photo/12.jpg	44	\N	\N	1992-12-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
245	Alex Magno Wanderley Dutra	\N	alex-magno-wanderley-dutra	players/photo/12.jpg	46	\N	\N	1989-12-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	12
246	Sidney Ricardo Xavier	\N	sidney-ricardo-xavier	players/photo/12.jpg	50	\N	\N	1989-05-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	12
247	Hugo Leonardo Da Silva Araújo	\N	hugo-leonardo-da-silva-araujo	players/photo/12.jpg	51	\N	\N	1987-03-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
248	Carlos Benitez Alves	\N	carlos-benitez-alves	players/photo/12.jpg	52	\N	\N	1980-02-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	12
249	Hudson Pereira De Oliveira	\N	hudson-pereira-de-oliveira	players/photo/12.jpg	53	\N	\N	1990-01-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	12
250	Anemilton Moura Leite	\N	anemilton-moura-leite	players/photo/12.jpg	57	\N	\N	1997-08-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
251	Leonardo De Araújo Inácio	\N	leonardo-de-araujo-inacio	players/photo/12.jpg	59	\N	\N	1996-12-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	12
252	Emanuel Emiliano Da Costa Calixto	\N	emanuel-emiliano-da-costa-calixto	players/photo/12.jpg	60	\N	\N	1985-11-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	12
253	Clistemis Viana De Freitas	\N	clistemis-viana-de-freitas	players/photo/12.jpg	61	\N	\N	1980-03-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	12
254	Naltman Dias Da Costa	\N	naltman-dias-da-costa	players/photo/12.jpg	62	\N	\N	1996-02-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
255	João Pedro Medeiros Santos	\N	joao-pedro-medeiros-santos	players/photo/12.jpg	63	\N	\N	1997-03-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	12
256	Luiz Victor Costa Calixto	\N	luiz-victor-costa-calixto	players/photo/12.jpg	65	\N	\N	1991-10-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	12
257	Maurício Moura De Melo	\N	mauricio-moura-de-melo	players/photo/12.jpg	66	\N	\N	1990-08-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	12
258	Renato De Souza Costa	\N	renato-de-souza-costa	players/photo/12.jpg	68	\N	\N	1990-03-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	12
259	Altair Eleale Silveira Dias	\N	altair-eleale-silveira-dias	players/photo/12.jpg	69	\N	\N	1997-04-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
260	Pedro Henrique Cruz Lima	\N	pedro-henrique-cruz-lima	players/photo/12.jpg	70	\N	\N	1997-12-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	12
261	José Ribamar Dantas De Lira Barros	\N	jose-ribamar-dantas-de-lira-barros	players/photo/12.jpg	71	\N	\N	1997-05-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
262	Augusto Miguel Pimentel Da Câmara	\N	augusto-miguel-pimentel-da-camara	players/photo/12.jpg	72	\N	\N	1996-08-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	12
263	Edmo Nathan Dos Santos Batista	\N	edmo-nathan-dos-santos-batista	players/photo/12.jpg	73	\N	\N	1993-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	12
264	Luiz Felipe De Souza Varela Barca	\N	luiz-felipe-de-souza-varela-barca	players/photo/12.jpg	74	\N	\N	1992-10-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
265	Célio Silva Dos Santos	\N	celio-silva-dos-santos	players/photo/12.jpg	75	\N	\N	2018-04-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	12
266	João Paulo De Freitas Nunes	\N	joao-paulo-de-freitas-nunes	players/photo/12.jpg	76	\N	\N	1988-11-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	12
267	Andegleydson Fernandes Da Cunha	\N	andegleydson-fernandes-da-cunha	players/photo/12.jpg	77	\N	\N	1994-08-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	12
268	Luiz Gustavo Xavier Filho	\N	luiz-gustavo-xavier-filho	players/photo/12.jpg	81	\N	\N	1995-10-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	12
269	Odlinavi Geovani Nouga Dantas Araujo	\N	odlinavi-geovani-nouga-dantas-araujo	players/photo/12.jpg	82	\N	\N	1989-06-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	12
270	Matheus Muniz De Araújo	\N	matheus-muniz-de-araujo	players/photo/12.jpg	83	\N	\N	1995-06-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
271	Jefferson Teixeira Arruda	\N	jefferson-teixeira-arruda	players/photo/12.jpg	84	\N	\N	1988-10-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
272	Renato Esdras Santana Munford De Oliveira	\N	renato-esdras-santana-munford-de-oliveira	players/photo/12.jpg	86	\N	\N	1999-12-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	12
273	Igor Rodrigues Galvão	\N	igor-rodrigues-galvao	players/photo/12.jpg	87	\N	\N	1987-10-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	12
274	Felipe Silva De Carvalho	\N	felipe-silva-de-carvalho	players/photo/12.jpg	88	\N	\N	1983-11-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	12
275	Daniel Cleber Costa De Lima	\N	daniel-cleber-costa-de-lima	players/photo/12.jpg	89	\N	\N	1989-06-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	12
276	Elinnek Matias Viega	\N	elinnek-matias-viega	players/photo/12.jpg	92	\N	\N	1994-07-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
277	Adriano César Dos Santos Cavalcante	\N	adriano-cesar-dos-santos-cavalcante	players/photo/12.jpg	94	\N	\N	1981-11-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	12
278	Vinicius Alexandre Mendonça De Jesus	\N	vinicius-alexandre-mendonca-de-jesus	players/photo/13.jpg	2	\N	\N	1994-06-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
279	Edson Silva De Albuquerque Melo	\N	edson-silva-de-albuquerque-melo	players/photo/13.jpg	3	\N	\N	1987-09-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	13
280	João Breno Marreira Franco	\N	joao-breno-marreira-franco	players/photo/13.jpg	6	\N	\N	1999-03-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	13
281	Jhonnathan Pereira Brandao	\N	jhonnathan-pereira-brandao	players/photo/13.jpg	7	\N	\N	1997-09-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
282	Victor Zani De Oliveira	\N	victor-zani-de-oliveira	players/photo/13.jpg	12	\N	\N	1992-10-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	13
283	Mateus Vinicius Tabosa Garcia	\N	mateus-vinicius-tabosa-garcia	players/photo/13.jpg	13	\N	\N	1999-09-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
284	Matheus Moura Ferreira De Oliveira	\N	matheus-moura-ferreira-de-oliveira	players/photo/13.jpg	17	\N	\N	1999-10-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
285	Daniel Silva De Albuquerque Melo	\N	daniel-silva-de-albuquerque-melo	players/photo/13.jpg	18	\N	\N	1999-07-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
286	Felipe Ladeia	\N	felipe-ladeia	players/photo/13.jpg	18	\N	\N	1991-09-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
287	Vinícius Zani De Oliveira	\N	vinicius-zani-de-oliveira	players/photo/13.jpg	20	\N	\N	1998-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
288	Allan Costa Da Silva	\N	allan-costa-da-silva	players/photo/13.jpg	22	\N	\N	1994-08-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	13
289	Anderson Nascimento Da Costa	\N	anderson-nascimento-da-costa	players/photo/13.jpg	23	\N	\N	1988-12-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	13
290	Rafael Lopes	\N	rafael-lopes	players/photo/13.jpg	24	\N	\N	1996-12-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	13
291	Thiago José De Almeida	\N	thiago-jose-de-almeida	players/photo/13.jpg	25	\N	\N	1985-12-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
292	Adauto Ferreira De Souza Neto	\N	adauto-ferreira-de-souza-neto	players/photo/13.jpg	26	\N	\N	1992-04-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
293	Milton Marim Junior	\N	milton-marim-junior	players/photo/13.jpg	28	\N	\N	1993-11-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	13
294	Felipe Matheus De Oliveira Simplicio	\N	felipe-matheus-de-oliveira-simplicio	players/photo/13.jpg	29	\N	\N	1996-08-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	13
295	Pedro Henrique Amaral De Souza	\N	pedro-henrique-amaral-de-souza	players/photo/13.jpg	29	\N	\N	1991-01-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	13
296	Adriano Silva Silveira	\N	adriano-silva-silveira	players/photo/13.jpg	30	\N	\N	1987-09-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
297	Jorge Luiz Da Silva Torres	\N	jorge-luiz-da-silva-torres	players/photo/13.jpg	32	\N	\N	1993-05-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	13
298	Lucio Augusto Recalde Soares	\N	lucio-augusto-recalde-soares	players/photo/13.jpg	33	\N	\N	1998-05-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
299	Lorran Wagner Da Silva	\N	lorran-wagner-da-silva	players/photo/13.jpg	35	\N	\N	1995-11-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	13
300	Wanderley Matheus Coimbra De Olivera	\N	wanderley-matheus-coimbra-de-olivera	players/photo/13.jpg	38	\N	\N	1998-02-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
301	Renê Daniel Malavazi Schardong	\N	rene-daniel-malavazi-schardong	players/photo/13.jpg	41	\N	\N	1996-10-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
302	Darhan Júnior Ribeiro Dantas	\N	darhan-junior-ribeiro-dantas	players/photo/13.jpg	42	\N	\N	1988-08-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	13
303	Fabio Panzer Alves	\N	fabio-panzer-alves	players/photo/13.jpg	44	\N	\N	1985-01-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	13
304	Eduardo Silveira Pereira	\N	eduardo-silveira-pereira	players/photo/13.jpg	47	\N	\N	1995-06-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
305	Luiz Henrique Bueno Da Silva	\N	luiz-henrique-bueno-da-silva	players/photo/13.jpg	48	\N	\N	1997-11-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	4	13
306	Lynyker Anntony De Moura Silva	\N	lynyker-anntony-de-moura-silva	players/photo/13.jpg	50	\N	\N	1997-02-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	13
307	Caique Torres Marques	\N	caique-torres-marques	players/photo/13.jpg	53	\N	\N	1996-01-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	13
308	Willian Douglas Lopes Nogueira	\N	willian-douglas-lopes-nogueira	players/photo/13.jpg	55	\N	\N	1993-05-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	13
309	Rafael Serafim Munhoz Centurion	\N	rafael-serafim-munhoz-centurion	players/photo/13.jpg	58	\N	\N	1992-08-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	13
310	Lucas De Brito Welter	\N	lucas-de-brito-welter	players/photo/13.jpg	59	\N	\N	1995-06-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	13
311	Danilo De Oliveira Dias	\N	danilo-de-oliveira-dias	players/photo/13.jpg	66	\N	\N	1994-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	13
312	Renato Costa Gomes	\N	renato-costa-gomes	players/photo/13.jpg	67	\N	\N	1987-04-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	13
313	João Pedro Marila Neves	\N	joao-pedro-marila-neves	players/photo/13.jpg	69	\N	\N	1994-03-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	13
314	Juliano Da Silva Livrado	\N	juliano-da-silva-livrado	players/photo/13.jpg	69	\N	\N	1989-05-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	13
315	William De Almeida Alves	\N	william-de-almeida-alves	players/photo/13.jpg	73	\N	\N	1986-09-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	13
316	Matheus Montes Moura	\N	matheus-montes-moura	players/photo/13.jpg	74	\N	\N	1999-07-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	13
317	Eduardo Fernando Carvalho De Souza	\N	eduardo-fernando-carvalho-de-souza	players/photo/13.jpg	76	\N	\N	1982-01-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	13
318	Thiago Resende Rodrigues	\N	thiago-resende-rodrigues	players/photo/13.jpg	77	\N	\N	1992-07-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	13
319	Willian Caetano Goes	\N	willian-caetano-goes	players/photo/13.jpg	80	\N	\N	1981-09-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
320	Elvis Henrique Cavalheiro Da Silva	\N	elvis-henrique-cavalheiro-da-silva	players/photo/13.jpg	81	\N	\N	1989-08-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
321	Gustavo Baioni Lemos	\N	gustavo-baioni-lemos	players/photo/13.jpg	82	\N	\N	1993-12-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
322	Leandro Trevellin Da Silva	\N	leandro-trevellin-da-silva	players/photo/13.jpg	83	\N	\N	1991-09-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
323	Felipe Alves Ferreira Leite	\N	felipe-alves-ferreira-leite	players/photo/13.jpg	84	\N	\N	1990-03-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
324	Yago Correa De Souza	\N	yago-correa-de-souza	players/photo/13.jpg	86	\N	\N	1993-03-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
325	Fernando Canhoto Dos Santos	\N	fernando-canhoto-dos-santos	players/photo/13.jpg	89	\N	\N	1991-10-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	13
326	Wendel Henrique Ribeiro Vicari	\N	wendel-henrique-ribeiro-vicari	players/photo/13.jpg	90	\N	\N	1993-08-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	13
327	Carlos Juliano Rodrigues	\N	carlos-juliano-rodrigues	players/photo/13.jpg	92	\N	\N	1994-04-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	13
328	Daniel Cece Felix Da Luz	\N	daniel-cece-felix-da-luz	players/photo/13.jpg	97	\N	\N	1993-07-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	13
329	Willian Barbosa Rosa	\N	willian-barbosa-rosa	players/photo/13.jpg	99	\N	\N	1991-03-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	13
330	Armando Lins Chaves Neto	\N	armando-lins-chaves-neto	players/photo/16.jpg	0	\N	\N	2018-07-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	16
331	Thiago Da Silva Nascimento	\N	thiago-da-silva-nascimento	players/photo/16.jpg	0	\N	\N	1992-05-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	16
332	Igor Lima Ribeiro	\N	igor-lima-ribeiro	players/photo/16.jpg	2	\N	\N	1993-01-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	16
333	Caio Nascimento Machado	\N	caio-nascimento-machado	players/photo/16.jpg	3	\N	\N	1986-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	16
334	Odael Lopes De Siqueira Neto	\N	odael-lopes-de-siqueira-neto	players/photo/16.jpg	4	\N	\N	1996-08-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	16
335	Laio Marcelo Nogueira Espinheira	\N	laio-marcelo-nogueira-espinheira	players/photo/16.jpg	5	\N	\N	1989-10-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	16
336	Reisans Dos Santos Leite	\N	reisans-dos-santos-leite	players/photo/16.jpg	6	\N	\N	1996-04-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	16
337	Vitor Santos Da Rocha Brito	\N	vitor-santos-da-rocha-brito	players/photo/16.jpg	8	\N	\N	1985-05-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	16
338	Matheus Navarro De Oliveira Gomes	\N	matheus-navarro-de-oliveira-gomes	players/photo/16.jpg	9	\N	\N	1998-02-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	16
339	Laion Santos Costa	\N	laion-santos-costa	players/photo/16.jpg	10	\N	\N	1988-03-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	16
340	Irving Rodrigues De Matos	\N	irving-rodrigues-de-matos	players/photo/16.jpg	11	\N	\N	1995-04-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	16
341	Leandro Vilaça Nery Suzart Da Silva	\N	leandro-vilaca-nery-suzart-da-silva	players/photo/16.jpg	13	\N	\N	1993-04-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	16
342	Daniel Romero Boullosa Silva	\N	daniel-romero-boullosa-silva	players/photo/16.jpg	14	\N	\N	1986-08-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	16
343	Bruno Lopes Longo	\N	bruno-lopes-longo	players/photo/16.jpg	15	\N	\N	1998-04-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	16
344	Felipe Ronaldo Santana Dos Santos	\N	felipe-ronaldo-santana-dos-santos	players/photo/16.jpg	16	\N	\N	1992-01-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	16
345	Felipe Nunes Almeida Dos Santos	\N	felipe-nunes-almeida-dos-santos	players/photo/16.jpg	18	\N	\N	1998-11-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	16
346	Eduardo Brito Cerqueira	\N	eduardo-brito-cerqueira	players/photo/16.jpg	21	\N	\N	1983-10-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	16
347	Matheus Vieira Pereira	\N	matheus-vieira-pereira	players/photo/16.jpg	24	\N	\N	1993-11-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	16
349	Celso Sampaio Andrade Filho	\N	celso-sampaio-andrade-filho	players/photo/16.jpg	27	\N	\N	2018-09-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	16
350	Marcelo Chaves Martins	\N	marcelo-chaves-martins	players/photo/16.jpg	29	\N	\N	1985-05-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	16
351	Welington Conceição De Freitas	\N	welington-conceicao-de-freitas	players/photo/16.jpg	30	\N	\N	1992-12-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	16
352	José Mário Souza Pinto	\N	jose-mario-souza-pinto	players/photo/16.jpg	32	\N	\N	1984-08-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	16
353	Hiago Sá Barreto Santos	\N	hiago-sa-barreto-santos	players/photo/16.jpg	33	\N	\N	1992-07-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	16
354	Ramon Bahia Britto De Viveiros	\N	ramon-bahia-britto-de-viveiros	players/photo/16.jpg	40	\N	\N	1987-09-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	16
355	Alberto Neves De Lira Júnior	\N	alberto-neves-de-lira-junior	players/photo/16.jpg	41	\N	\N	1989-04-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	16
356	Alexandre Antonio Oliveira Fonseca	\N	alexandre-antonio-oliveira-fonseca	players/photo/16.jpg	44	\N	\N	1998-03-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	16
357	Yann Silva Amarante	\N	yann-silva-amarante	players/photo/16.jpg	46	\N	\N	1995-07-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	16
358	Álvaro Vinícius Cairo Da Cruz	\N	alvaro-vinicius-cairo-da-cruz	players/photo/16.jpg	49	\N	\N	1989-05-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	16
359	William Alexandre Martins	\N	william-alexandre-martins	players/photo/16.jpg	51	\N	\N	1987-09-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	16
360	Rui Barros De Albuquerque	\N	rui-barros-de-albuquerque	players/photo/16.jpg	52	\N	\N	1990-11-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	16
361	Daniel Sampaio De Souza	\N	daniel-sampaio-de-souza	players/photo/16.jpg	53	\N	\N	1988-02-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	16
362	Danilo Sousa De Oliveira	\N	danilo-sousa-de-oliveira	players/photo/16.jpg	57	\N	\N	1986-11-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	16
363	Ruan Pablo Pereira Guedes Sousa	\N	ruan-pablo-pereira-guedes-sousa	players/photo/16.jpg	58	\N	\N	1989-07-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	16
364	Domingos José Mariano Dos Santos	\N	domingos-jose-mariano-dos-santos	players/photo/16.jpg	63	\N	\N	1984-07-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	16
365	Erick Morais De Souza	\N	erick-morais-de-souza	players/photo/16.jpg	64	\N	\N	1995-08-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	16
366	Fabricio Zamboni Ribeiro Dos Santos	\N	fabricio-zamboni-ribeiro-dos-santos	players/photo/16.jpg	66	\N	\N	1985-09-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	16
367	Jose Leandro Dos Santos	\N	jose-leandro-dos-santos	players/photo/16.jpg	68	\N	\N	1989-03-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	16
368	Antônio Carlos Martins Argolo Filho	\N	antonio-carlos-martins-argolo-filho	players/photo/16.jpg	69	\N	\N	1994-10-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	16
369	Muriel Rossetti De Souza	\N	muriel-rossetti-de-souza	players/photo/16.jpg	70	\N	\N	2017-05-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	16
370	Ivanoé João Rodowanski	\N	ivanoe-joao-rodowanski	players/photo/16.jpg	71	\N	\N	1982-06-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	16
371	Caíque Magno Cerqueira Do Nascimento	\N	caique-magno-cerqueira-do-nascimento	players/photo/16.jpg	72	\N	\N	1994-09-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	16
372	Rodrigo Sena Matos Santos	\N	rodrigo-sena-matos-santos	players/photo/16.jpg	73	\N	\N	1992-01-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	16
373	Thiago Santos De Oliveira	\N	thiago-santos-de-oliveira	players/photo/16.jpg	74	\N	\N	2018-04-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	16
374	Saulo Magno Ribeiro De Jesus Oliveira	\N	saulo-magno-ribeiro-de-jesus-oliveira	players/photo/16.jpg	76	\N	\N	1994-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	16
375	Raphael Pereira Dos Santos	\N	raphael-pereira-dos-santos	players/photo/16.jpg	77	\N	\N	1986-06-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	16
376	Nicolas Do Carmo Demaio	\N	nicolas-do-carmo-demaio	players/photo/16.jpg	78	\N	\N	1993-07-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	16
377	Jonathas Barros Santos Rosa	\N	jonathas-barros-santos-rosa	players/photo/16.jpg	79	\N	\N	1999-03-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	16
378	Davi Alberto Sousa De Oliveira	\N	davi-alberto-sousa-de-oliveira	players/photo/16.jpg	82	\N	\N	1990-12-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	16
379	Danilo Freitas Miranda Lima	\N	danilo-freitas-miranda-lima	players/photo/16.jpg	83	\N	\N	1985-04-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	16
380	Fabio Luiz Da Silva Alves	\N	fabio-luiz-da-silva-alves	players/photo/16.jpg	84	\N	\N	1986-03-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	16
381	Gabriel Alcântara Da Paixão Santana	\N	gabriel-alcantara-da-paixao-santana	players/photo/16.jpg	85	\N	\N	1995-03-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	16
382	Robson André De Jesus Ribeiro	\N	robson-andre-de-jesus-ribeiro	players/photo/16.jpg	87	\N	\N	1976-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	16
383	Luan Carlos Stuart Veloso	\N	luan-carlos-stuart-veloso	players/photo/16.jpg	89	\N	\N	1989-01-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	16
384	Felipe Rebouças Nascimento	\N	felipe-reboucas-nascimento	players/photo/16.jpg	90	\N	\N	1990-09-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	16
385	William Plácido Carvalho Dos Santos	\N	william-placido-carvalho-dos-santos	players/photo/16.jpg	94	\N	\N	1994-06-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	16
386	Alan Francisco	\N	alan-francisco	players/photo/16.jpg	96	\N	\N	1989-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	16
387	Fábio Paranaguá Ferreira Regis	\N	fabio-paranagua-ferreira-regis	players/photo/16.jpg	97	\N	\N	1996-05-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	16
388	Fábio Mendes Franco	\N	fabio-mendes-franco	players/photo/16.jpg	99	\N	\N	1976-12-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	16
389	Átali Felipe Rocha Moura	\N	atali-felipe-rocha-moura	players/photo/17.jpg	1	\N	\N	1987-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	17
390	Antonio Lucas Alves Nascimento	\N	antonio-lucas-alves-nascimento	players/photo/17.jpg	2	\N	\N	1996-09-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	17
391	Diego Luiz De Oliveira	\N	diego-luiz-de-oliveira	players/photo/17.jpg	3	\N	\N	1994-06-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	17
392	Israel Vasconcelos Da Costa	\N	israel-vasconcelos-da-costa	players/photo/17.jpg	5	\N	\N	1994-11-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
393	André Silveira Ferreira	\N	andre-silveira-ferreira	players/photo/17.jpg	7	\N	\N	2000-03-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	17
394	Norton Aron Vieira Moreira	\N	norton-aron-vieira-moreira	players/photo/17.jpg	8	\N	\N	1992-02-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
395	Ryan Edward Deal	\N	ryan-edward-deal	players/photo/17.jpg	9	\N	\N	1995-10-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
396	José Bezerra De Menezes Neto	\N	jose-bezerra-de-menezes-neto	players/photo/17.jpg	11	\N	\N	1983-12-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	17
397	Bruno Gondim Figueiroa De Sena	\N	bruno-gondim-figueiroa-de-sena	players/photo/17.jpg	13	\N	\N	1989-02-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	17
398	Francisco Wesley Gomes Carvalho	\N	francisco-wesley-gomes-carvalho	players/photo/17.jpg	14	\N	\N	1990-01-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	17
399	Lídio Campos Giordani	\N	lidio-campos-giordani	players/photo/17.jpg	15	\N	\N	1990-05-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	17
400	Felipe Honorio Sales	\N	felipe-honorio-sales	players/photo/17.jpg	16	\N	\N	1997-03-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	17
401	Caio Gabriel Ricardo Nunes	\N	caio-gabriel-ricardo-nunes	players/photo/17.jpg	17	\N	\N	2001-10-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	17
402	Igor Lima Ehrich De Menezes	\N	igor-lima-ehrich-de-menezes	players/photo/17.jpg	19	\N	\N	1998-05-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	17
403	Ramon Vieira Da Silva	\N	ramon-vieira-da-silva	players/photo/17.jpg	20	\N	\N	1993-04-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
404	Eduardo Mykael Gonçalves Da Costa	\N	eduardo-mykael-goncalves-da-costa	players/photo/17.jpg	21	\N	\N	2001-01-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	17
405	Everson Lincoln De Oliveira Maia Ventura	\N	everson-lincoln-de-oliveira-maia-ventura	players/photo/17.jpg	23	\N	\N	1995-02-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	17
406	Mateus Da Silva Mendes	\N	mateus-da-silva-mendes	players/photo/17.jpg	24	\N	\N	1998-05-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	17
407	Romulo Ribeiro Neto	\N	romulo-ribeiro-neto	players/photo/17.jpg	25	\N	\N	1987-03-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
408	Rodolfo Castelo Martins Maciel	\N	rodolfo-castelo-martins-maciel	players/photo/17.jpg	26	\N	\N	1988-05-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
409	Gilmar Santos Silva	\N	gilmar-santos-silva	players/photo/17.jpg	27	\N	\N	1983-07-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	17
410	Carlos Gabriel Araújo Farias	\N	carlos-gabriel-araujo-farias	players/photo/17.jpg	28	\N	\N	1992-12-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	17
411	Paulo Alberto De Freitas	\N	paulo-alberto-de-freitas	players/photo/17.jpg	29	\N	\N	1987-06-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
412	Rodrigo Costa Silva	\N	rodrigo-costa-silva	players/photo/17.jpg	30	\N	\N	1999-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
413	Matheus Barreto De B. E Silva	\N	matheus-barreto-de-b-e-silva	players/photo/17.jpg	31	\N	\N	1999-08-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
414	Yuri Ricarte Ribeiro Da Costa Cavalcante	\N	yuri-ricarte-ribeiro-da-costa-cavalcante	players/photo/17.jpg	33	\N	\N	1997-11-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
415	Wendel Igor De Oliveira Ferreira Santos	\N	wendel-igor-de-oliveira-ferreira-santos	players/photo/17.jpg	35	\N	\N	1994-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
416	Gabriel Silva Holanda	\N	gabriel-silva-holanda	players/photo/17.jpg	36	\N	\N	1998-05-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	17
417	Daniel Victor Costa De Melo	\N	daniel-victor-costa-de-melo	players/photo/17.jpg	37	\N	\N	1992-10-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
418	Francisco Márcio Albano Da Silva	\N	francisco-marcio-albano-da-silva	players/photo/17.jpg	38	\N	\N	1989-01-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	17
419	Claudio Inon Farias Bezerra Filho	\N	claudio-inon-farias-bezerra-filho	players/photo/17.jpg	39	\N	\N	1989-12-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	17
420	Paulo Rafael De Lima E Souza	\N	paulo-rafael-de-lima-e-souza	players/photo/17.jpg	40	\N	\N	1990-08-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
421	Luis Eduardo Leal De Sousa	\N	luis-eduardo-leal-de-sousa	players/photo/17.jpg	41	\N	\N	1991-05-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	17
423	Douglas Mota Neres	\N	douglas-mota-neres	players/photo/17.jpg	44	\N	\N	1986-01-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
424	João Vitor Freitas Da Cruz	\N	joao-vitor-freitas-da-cruz	players/photo/17.jpg	45	\N	\N	1998-10-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	17
425	Matheus Henrique Silva Nascimento	\N	matheus-henrique-silva-nascimento	players/photo/17.jpg	46	\N	\N	2001-07-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
426	Jesuino Diogo Cavalcante Novais Lima	\N	jesuino-diogo-cavalcante-novais-lima	players/photo/17.jpg	47	\N	\N	1997-01-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	17
427	Davi Pimentel De Sena	\N	davi-pimentel-de-sena	players/photo/17.jpg	48	\N	\N	1996-12-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
428	Paulo Brenno Rodrigues De Oliveira	\N	paulo-brenno-rodrigues-de-oliveira	players/photo/17.jpg	49	\N	\N	1997-09-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
429	Michel Almeida Serrão	\N	michel-almeida-serrao	players/photo/17.jpg	51	\N	\N	1992-02-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
430	Diego Rodrigues De Melo	\N	diego-rodrigues-de-melo	players/photo/17.jpg	54	\N	\N	1986-08-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	17
431	Italo Rafael Almeida De Brito	\N	italo-rafael-almeida-de-brito	players/photo/17.jpg	57	\N	\N	1990-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	17
432	Marcelo Parente Falcão Filho	\N	marcelo-parente-falcao-filho	players/photo/17.jpg	60	\N	\N	2000-11-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	17
433	Rhuan Barbosa Araripe Magalhães	\N	rhuan-barbosa-araripe-magalhaes	players/photo/17.jpg	61	\N	\N	2001-04-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
434	Lucas Costa Feijó Machado	\N	lucas-costa-feijo-machado	players/photo/17.jpg	66	\N	\N	1988-04-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	17
435	Bruno Guerra Parente Falcão	\N	bruno-guerra-parente-falcao	players/photo/17.jpg	67	\N	\N	1995-10-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	17
436	Matheus Almeida Wanderley	\N	matheus-almeida-wanderley	players/photo/17.jpg	68	\N	\N	2000-05-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	17
437	Lucas De Souza Netto Pedrette	\N	lucas-de-souza-netto-pedrette	players/photo/17.jpg	71	\N	\N	1997-09-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
438	Paulo Henrique De Andrade	\N	paulo-henrique-de-andrade	players/photo/17.jpg	72	\N	\N	1997-05-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
439	Alex Ramon De Figueiredo Silva	\N	alex-ramon-de-figueiredo-silva	players/photo/17.jpg	74	\N	\N	1998-02-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	17
440	José Luan Da Rocha Lima	\N	jose-luan-da-rocha-lima	players/photo/17.jpg	75	\N	\N	2002-06-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	17
441	Caio Moreno Santos Ferreira	\N	caio-moreno-santos-ferreira	players/photo/17.jpg	76	\N	\N	1987-07-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	17
442	Vitor Manoel Chaves Sampaio	\N	vitor-manoel-chaves-sampaio	players/photo/17.jpg	78	\N	\N	1984-11-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
443	Bruno Nobre Vieira	\N	bruno-nobre-vieira	players/photo/17.jpg	79	\N	\N	1995-08-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	17
444	Felipe Augusto Arnaud Alves	\N	felipe-augusto-arnaud-alves	players/photo/17.jpg	81	\N	\N	1996-10-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	17
445	Felipe Ribeiro Monte	\N	felipe-ribeiro-monte	players/photo/17.jpg	82	\N	\N	1984-04-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
446	Igor Emilio Peña De Sena E Silva	\N	igor-emilio-pena-de-sena-e-silva	players/photo/17.jpg	85	\N	\N	1998-08-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	17
447	Alex Andrade Serra Dos Santos	\N	alex-andrade-serra-dos-santos	players/photo/17.jpg	86	\N	\N	1991-09-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	17
448	Iuri Lima Ehrich De Menezes	\N	iuri-lima-ehrich-de-menezes	players/photo/17.jpg	88	\N	\N	1998-05-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	17
449	Tomaz Ribeiro De Sousa Castro	\N	tomaz-ribeiro-de-sousa-castro	players/photo/17.jpg	89	\N	\N	1992-01-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
450	Pedro Henrique Negromonte De Oliveira	\N	pedro-henrique-negromonte-de-oliveira	players/photo/17.jpg	90	\N	\N	1993-10-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
451	Jean Cavalcante Do Amaral	\N	jean-cavalcante-do-amaral	players/photo/17.jpg	92	\N	\N	1989-07-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	17
452	Saulo Henrique Pinheiro Braga	\N	saulo-henrique-pinheiro-braga	players/photo/17.jpg	93	\N	\N	1987-05-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	17
453	Mateus Wolf Martins	\N	mateus-wolf-martins	players/photo/17.jpg	96	\N	\N	1996-04-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	17
454	Lucas Dos Santos Fornagero	\N	lucas-dos-santos-fornagero	players/photo/17.jpg	97	\N	\N	1994-12-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	17
455	Carlos Marcos Severo De Oliveira Filho	\N	carlos-marcos-severo-de-oliveira-filho	players/photo/17.jpg	99	\N	\N	1992-06-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	17
456	Raphael Ivan Mourad Santos	\N	raphael-ivan-mourad-santos	players/photo/20.jpg	1	\N	\N	2001-03-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	20
457	Bruno Do Nascimento Bezerra	\N	bruno-do-nascimento-bezerra	players/photo/20.jpg	2	\N	\N	1987-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
458	Paulo Henrique De Lima Oliveira	\N	paulo-henrique-de-lima-oliveira	players/photo/20.jpg	6	\N	\N	1995-06-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
459	Breno Flausino	\N	breno-flausino	players/photo/20.jpg	7	\N	\N	2000-02-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	20
460	Guilherme Vitor Lima Júnior	\N	guilherme-vitor-lima-junior	players/photo/20.jpg	10	\N	\N	1991-07-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	20
461	Igor De Canha Rivelles	\N	igor-de-canha-rivelles	players/photo/20.jpg	12	\N	\N	1997-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	20
462	Fernando Antonio De Oliveira Silva	\N	fernando-antonio-de-oliveira-silva	players/photo/20.jpg	14	\N	\N	1988-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	20
463	Anderson Custódio Rodrigues	\N	anderson-custodio-rodrigues	players/photo/20.jpg	15	\N	\N	1990-08-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
464	Matheus De Figueiredo Torres	\N	matheus-de-figueiredo-torres	players/photo/20.jpg	17	\N	\N	1995-09-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	20
465	Emerson Martins De Nazare	\N	emerson-martins-de-nazare	players/photo/20.jpg	18	\N	\N	1986-05-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	20
466	Jorge Lutuima Muecaria Tavares	\N	jorge-lutuima-muecaria-tavares	players/photo/20.jpg	19	\N	\N	1998-08-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
467	Murilo Muniz Bezerra Da Silva	\N	murilo-muniz-bezerra-da-silva	players/photo/20.jpg	20	\N	\N	1988-03-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	20
468	Kasley Barreto De Souza	\N	kasley-barreto-de-souza	players/photo/20.jpg	21	\N	\N	1999-02-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
469	Gabriel Andrade Do Carmo	\N	gabriel-andrade-do-carmo	players/photo/20.jpg	22	\N	\N	1995-04-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	20
470	Ricardo Alberto De Oliveira	\N	ricardo-alberto-de-oliveira	players/photo/20.jpg	23	\N	\N	1982-10-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
471	Danilo Floriano Ribeiro	\N	danilo-floriano-ribeiro	players/photo/20.jpg	25	\N	\N	1986-12-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
472	João Vitor Ferrari Ferreira	\N	joao-vitor-ferrari-ferreira	players/photo/20.jpg	26	\N	\N	1996-01-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	20
473	Douglas Conceiçao Dos Santos	\N	douglas-conceicao-dos-santos	players/photo/20.jpg	28	\N	\N	1988-02-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	20
474	Alex Sandro Freitas De Araujo	\N	alex-sandro-freitas-de-araujo	players/photo/20.jpg	29	\N	\N	1993-01-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	20
475	Marcos Vinícius Silva	\N	marcos-vinicius-silva	players/photo/20.jpg	32	\N	\N	1992-11-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	20
476	Bruno Artur Pereira Dos Santos	\N	bruno-artur-pereira-dos-santos	players/photo/20.jpg	35	\N	\N	1986-06-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
477	Daniel Ciglione De Oliveira	\N	daniel-ciglione-de-oliveira	players/photo/20.jpg	37	\N	\N	1991-03-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	20
478	Vitor Conceicao Santos	\N	vitor-conceicao-santos	players/photo/20.jpg	38	\N	\N	1991-09-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	20
479	Pablo José Silva Fernandes	\N	pablo-jose-silva-fernandes	players/photo/20.jpg	39	\N	\N	1999-08-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	20
480	Cássio Henrique Sodré Inácio Das Neves	\N	cassio-henrique-sodre-inacio-das-neves	players/photo/20.jpg	40	\N	\N	1992-09-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
481	Victor Augusto Da Silva	\N	victor-augusto-da-silva	players/photo/20.jpg	41	\N	\N	1987-07-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	20
482	Silas Da Conceição De Lima	\N	silas-da-conceicao-de-lima	players/photo/20.jpg	43	\N	\N	1986-03-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
483	Renan Santos De Lima	\N	renan-santos-de-lima	players/photo/20.jpg	44	\N	\N	1990-09-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
484	Gabriel Angelo Monteiro	\N	gabriel-angelo-monteiro	players/photo/20.jpg	45	\N	\N	1994-10-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	20
485	Danilo Dutra Zabarella	\N	danilo-dutra-zabarella	players/photo/20.jpg	50	\N	\N	1984-11-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
486	Daniel Fraga Teixeira Da Silva	\N	daniel-fraga-teixeira-da-silva	players/photo/20.jpg	51	\N	\N	1994-04-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
487	Thiago Andre Esper Da Silva	\N	thiago-andre-esper-da-silva	players/photo/20.jpg	55	\N	\N	1978-07-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	20
488	Luiz Fernando De Jesus	\N	luiz-fernando-de-jesus	players/photo/20.jpg	56	\N	\N	1995-06-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	20
489	Fábio Da Silva Lima	\N	fabio-da-silva-lima	players/photo/20.jpg	57	\N	\N	1976-06-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	20
490	Igor Alexander Da Silva Chaves	\N	igor-alexander-da-silva-chaves	players/photo/20.jpg	59	\N	\N	1981-07-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	20
491	Alan Moura Bezerra	\N	alan-moura-bezerra	players/photo/20.jpg	60	\N	\N	1990-06-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
492	Caio Cesar Da Silva	\N	caio-cesar-da-silva	players/photo/20.jpg	60	\N	\N	1987-09-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
493	Caique Fernando Fernandes Mesquita	\N	caique-fernando-fernandes-mesquita	players/photo/20.jpg	60	\N	\N	1993-05-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	20
494	Cesar Henrique Silva De Oliveira	\N	cesar-henrique-silva-de-oliveira	players/photo/20.jpg	60	\N	\N	1986-06-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
495	Emil Augusto Vidal De Arruda	\N	emil-augusto-vidal-de-arruda	players/photo/20.jpg	60	\N	\N	1991-05-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
496	Gutierre Medeiros De Oliveira	\N	gutierre-medeiros-de-oliveira	players/photo/20.jpg	60	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
497	José Roberto Da Silva	\N	jose-roberto-da-silva	players/photo/20.jpg	60	\N	\N	1983-07-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
498	Henrique Lemes Kunghel	\N	henrique-lemes-kunghel	players/photo/20.jpg	63	\N	\N	1994-08-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
499	Thiago Gonzaga Pavanelli Edo	\N	thiago-gonzaga-pavanelli-edo	players/photo/20.jpg	66	\N	\N	1990-07-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	20
500	Marcos Vinicius Gonçalves Ponzeto Pinto	\N	marcos-vinicius-goncalves-ponzeto-pinto	players/photo/20.jpg	67	\N	\N	1986-09-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	20
501	Fernando Cleber Pereira Lima	\N	fernando-cleber-pereira-lima	players/photo/20.jpg	68	\N	\N	1982-11-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	11	20
502	Calebe Pereira Rodrigues Da Silva	\N	calebe-pereira-rodrigues-da-silva	players/photo/20.jpg	70	\N	\N	1999-04-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	20
503	Marcelo Caio Sampaio Gomes De Souza	\N	marcelo-caio-sampaio-gomes-de-souza	players/photo/20.jpg	71	\N	\N	1986-01-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	20
504	Matheus Silva Fernandes	\N	matheus-silva-fernandes	players/photo/20.jpg	72	\N	\N	2001-02-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	20
505	Marcos Saldanha Munhoz	\N	marcos-saldanha-munhoz	players/photo/20.jpg	75	\N	\N	1999-03-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	20
506	Rainer Costa	\N	rainer-costa	players/photo/20.jpg	76	\N	\N	1995-05-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	20
507	Luiz Aguiar Alegria	\N	luiz-aguiar-alegria	players/photo/20.jpg	77	\N	\N	1984-12-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	20
508	Bruno Wingester Alves	\N	bruno-wingester-alves	players/photo/20.jpg	78	\N	\N	1987-11-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	20
509	Nathan Botelho De Oliveira	\N	nathan-botelho-de-oliveira	players/photo/20.jpg	80	\N	\N	2003-08-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	20
510	Will Conceição Ferreira Da Silva	\N	will-conceicao-ferreira-da-silva	players/photo/20.jpg	80	\N	\N	2001-02-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
511	Marcos Araujo Junior	\N	marcos-araujo-junior	players/photo/20.jpg	81	\N	\N	1990-06-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	20
512	Rodrigo Bandeira Do Nascimento Cambuí	\N	rodrigo-bandeira-do-nascimento-cambui	players/photo/20.jpg	82	\N	\N	1993-08-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	20
513	Jean Monne Medrado	\N	jean-monne-medrado	players/photo/20.jpg	83	\N	\N	1990-07-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	20
514	Allan Pereira De Souza	\N	allan-pereira-de-souza	players/photo/20.jpg	84	\N	\N	1996-06-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	20
515	Kaio Rezende	\N	kaio-rezende	players/photo/20.jpg	86	\N	\N	1991-02-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	20
516	Vitor Oliveira Flausino	\N	vitor-oliveira-flausino	players/photo/20.jpg	87	\N	\N	1995-11-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	20
517	Rubens Mendes Monterrubio	\N	rubens-mendes-monterrubio	players/photo/20.jpg	88	\N	\N	1988-01-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
518	Victor Casulli De Oliveira	\N	victor-casulli-de-oliveira	players/photo/20.jpg	89	\N	\N	1995-03-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	20
519	Lucas Lima De Souza	\N	lucas-lima-de-souza	players/photo/20.jpg	90	\N	\N	1999-12-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	20
520	Matheus Gonçalves Silva	\N	matheus-goncalves-silva	players/photo/20.jpg	90	\N	\N	1998-04-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
521	Matheus Fernandes Cordeiro	\N	matheus-fernandes-cordeiro	players/photo/20.jpg	95	\N	\N	2001-04-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
522	Newton Lauro Pohsner	\N	newton-lauro-pohsner	players/photo/20.jpg	96	\N	\N	1977-11-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	20
523	Túlio Poletti Marcondes	\N	tulio-poletti-marcondes	players/photo/20.jpg	98	\N	\N	1998-11-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	20
524	Alexsandro Romão Xavier	\N	alexsandro-romao-xavier	players/photo/20.jpg	99	\N	\N	1993-03-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
525	Enzo Vítor Cavalcante Francisco	\N	enzo-vitor-cavalcante-francisco	players/photo/20.jpg	99	\N	\N	2000-04-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
526	Hendrik Brendon Da Silva	\N	hendrik-brendon-da-silva	players/photo/20.jpg	99	\N	\N	1993-01-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
527	Kauê Reis Silva	\N	kaue-reis-silva	players/photo/20.jpg	99	\N	\N	2018-03-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
528	Leonardo Araújo Dos Santos Figueiredo	\N	leonardo-araujo-dos-santos-figueiredo	players/photo/20.jpg	99	\N	\N	1997-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
529	Leonardo Atila Oliveira De Araujo	\N	leonardo-atila-oliveira-de-araujo	players/photo/20.jpg	99	\N	\N	1995-11-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
530	Luis Miguel Novachi De Lima	\N	luis-miguel-novachi-de-lima	players/photo/20.jpg	99	\N	\N	1995-06-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	20
531	Tony Lopes Da Silva	\N	tony-lopes-da-silva	players/photo/20.jpg	99	\N	\N	1991-12-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	20
532	Adan Rodriguez	\N	adan-rodriguez	players/photo/21.jpg	1	\N	\N	1987-01-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	21
533	Alexandre Domit	\N	alexandre-domit	players/photo/21.jpg	2	\N	\N	1988-12-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	21
534	Alexandre Fernandes Zeni	\N	alexandre-fernandes-zeni	players/photo/21.jpg	3	\N	\N	1995-06-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
535	Amisadai Liposki	\N	amisadai-liposki	players/photo/21.jpg	4	\N	\N	1990-07-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	21
536	Anderson Felipe Lucca Kloeppel	\N	anderson-felipe-lucca-kloeppel	players/photo/21.jpg	6	\N	\N	1998-12-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	21
537	André Francisco Belusso	\N	andre-francisco-belusso	players/photo/21.jpg	7	\N	\N	1996-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	21
538	Athos Daniel Da Silva Costa	\N	athos-daniel-da-silva-costa	players/photo/21.jpg	8	\N	\N	1992-11-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	21
539	Bernardo Horevitch Kusdra	\N	bernardo-horevitch-kusdra	players/photo/21.jpg	10	\N	\N	1989-08-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
540	Bruno Cristovam De Oliveira	\N	bruno-cristovam-de-oliveira	players/photo/21.jpg	11	\N	\N	1984-01-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	21
541	Bruno Ribas	\N	bruno-ribas	players/photo/21.jpg	12	\N	\N	1980-03-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	10	21
542	Bruno Santucci	\N	bruno-santucci	players/photo/21.jpg	13	\N	\N	1993-01-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
543	Carlos Alexandre Eduardo Brock	\N	carlos-alexandre-eduardo-brock	players/photo/21.jpg	14	\N	\N	1999-05-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
544	Carlos Eduardo Lisboa	\N	carlos-eduardo-lisboa	players/photo/21.jpg	15	\N	\N	1992-06-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
545	Cesar Augusto Hey	\N	cesar-augusto-hey	players/photo/21.jpg	16	\N	\N	1991-10-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
546	Charlie Natan Da Silva	\N	charlie-natan-da-silva	players/photo/21.jpg	17	\N	\N	1988-01-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	21
547	Cícero Pereira Marinho	\N	cicero-pereira-marinho	players/photo/21.jpg	18	\N	\N	1998-10-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
548	Cleverson De Freitas	\N	cleverson-de-freitas	players/photo/21.jpg	19	\N	\N	1997-12-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
549	Daniel Antonio Dos Santos	\N	daniel-antonio-dos-santos	players/photo/21.jpg	20	\N	\N	1995-05-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	21
550	Delmer Kuetren Cassimiro Da Silva Zoschke	\N	delmer-kuetren-cassimiro-da-silva-zoschke	players/photo/21.jpg	21	\N	\N	1988-08-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	21
551	Ericson Fernando Corrêa	\N	ericson-fernando-correa	players/photo/21.jpg	22	\N	\N	1985-07-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	21
552	Felipe De Souza Corradi	\N	felipe-de-souza-corradi	players/photo/21.jpg	23	\N	\N	1989-02-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	21
553	Felipe Raul Filipak Dias	\N	felipe-raul-filipak-dias	players/photo/21.jpg	25	\N	\N	1998-10-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	21
554	Felipe Withers Muniz	\N	felipe-withers-muniz	players/photo/21.jpg	26	\N	\N	1993-09-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	21
555	Fernando Falkemback Zimmer	\N	fernando-falkemback-zimmer	players/photo/21.jpg	27	\N	\N	1989-09-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	21
556	Fernando Gonzaga Alves	\N	fernando-gonzaga-alves	players/photo/21.jpg	28	\N	\N	1993-11-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	21
557	Filipe Cursino Alves Da Silva	\N	filipe-cursino-alves-da-silva	players/photo/21.jpg	31	\N	\N	1989-05-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	21
1948	Felippe Gonçalves Da Silva Lima	\N	felippe-goncalves-da-silva-lima	players/photo/79.jpg	75	\N	\N	1982-02-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	79
1949	Paulo Sérgio De Jesus Júnior	\N	paulo-sergio-de-jesus-junior	players/photo/79.jpg	76	\N	\N	1977-12-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	79
1950	Roldan Pinto De Almeida Junior	\N	roldan-pinto-de-almeida-junior	players/photo/79.jpg	77	\N	\N	1987-06-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	79
1951	Hugo Gomes De Oliveira	\N	hugo-gomes-de-oliveira	players/photo/79.jpg	78	\N	\N	1978-12-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	79
1952	Carlos Victor Tinoco Barreto	\N	carlos-victor-tinoco-barreto	players/photo/79.jpg	80	\N	\N	1985-12-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	79
1953	João Victor Alves De Oliveira	\N	joao-victor-alves-de-oliveira	players/photo/79.jpg	84	\N	\N	1998-12-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	79
1954	Igor Lessa Guimarães Da Silva	\N	igor-lessa-guimaraes-da-silva	players/photo/79.jpg	87	\N	\N	1996-05-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	79
1955	Carlos Frederico Maldonado De Barros	\N	carlos-frederico-maldonado-de-barros	players/photo/79.jpg	90	\N	\N	1986-11-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	79
1956	Leonardo Gonçalves Prado	\N	leonardo-goncalves-prado	players/photo/79.jpg	91	\N	\N	1994-09-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	79
1957	Leonardo De Oliveira Ferraz	\N	leonardo-de-oliveira-ferraz	players/photo/79.jpg	92	\N	\N	1988-03-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	79
1958	Lucas Queiroz Costa Carvalho	\N	lucas-queiroz-costa-carvalho	players/photo/79.jpg	94	\N	\N	1996-12-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	79
1959	Rafael Alves Facchinetti Leone	\N	rafael-alves-facchinetti-leone	players/photo/79.jpg	95	\N	\N	1984-04-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	79
1960	Wallace Santiago De Souza	\N	wallace-santiago-de-souza	players/photo/79.jpg	96	\N	\N	1989-11-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	79
1961	Alisson De Menezes Barboza	\N	alisson-de-menezes-barboza	players/photo/79.jpg	98	\N	\N	1981-09-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	79
1962	William Carmo Soares	\N	william-carmo-soares	players/photo/79.jpg	99	\N	\N	1994-05-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	79
1	Pedro Dutra Batista	\N	pedro-dutra-batista	players/photo/1.jpg	1	\N	\N	2001-01-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
2	Mario Henrique Da Silva Cabral	\N	mario-henrique-da-silva-cabral	players/photo/1.jpg	1	\N	\N	1995-08-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	1
3	Raphael Bretas De Carvalho Gomes	\N	raphael-bretas-de-carvalho-gomes	players/photo/1.jpg	2	\N	\N	1999-06-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
4	Matheus Felipe Nunes Nascimento	\N	matheus-felipe-nunes-nascimento	players/photo/1.jpg	2	\N	\N	1999-07-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	1
5	Renato Dos Santos Durães	\N	renato-dos-santos-duraes	players/photo/1.jpg	3	\N	\N	1996-05-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	1
6	Tiago Fernandes Pereira	\N	tiago-fernandes-pereira	players/photo/1.jpg	4	\N	\N	2000-11-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	1
7	Talon Mitchell Roggasch	\N	talon-mitchell-roggasch	players/photo/1.jpg	5	\N	\N	1990-08-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	1
8	Thiago Matheus Soares Ramos	\N	thiago-matheus-soares-ramos	players/photo/1.jpg	6	\N	\N	1989-01-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	1
10	Douglas Gonçalves Jardim	\N	douglas-goncalves-jardim	players/photo/1.jpg	10	\N	\N	1992-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	1
11	Rafael Miranda Cosenza	\N	rafael-miranda-cosenza	players/photo/1.jpg	11	\N	\N	1998-12-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	1
12	Lucas Fonseca De Paula	\N	lucas-fonseca-de-paula	players/photo/1.jpg	11	\N	\N	1994-04-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
13	Lucas De Oliveira Souza	\N	lucas-de-oliveira-souza	players/photo/1.jpg	12	\N	\N	2018-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	1
14	Daniel Martins Melo	\N	daniel-martins-melo	players/photo/1.jpg	13	\N	\N	1996-06-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	1
15	Enzo Abrantes Frazão	\N	enzo-abrantes-frazao	players/photo/1.jpg	14	\N	\N	2000-09-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	1
558	Filipe Sodre Pfeil	\N	filipe-sodre-pfeil	players/photo/21.jpg	32	\N	\N	1992-03-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	21
559	Francelino Sanhá	\N	francelino-sanha	players/photo/21.jpg	34	\N	\N	1987-07-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	21
560	Gerard Kaghtazian Junior	\N	gerard-kaghtazian-junior	players/photo/21.jpg	37	\N	\N	1994-12-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	21
561	Gilmar Alexandre De Oliveira	\N	gilmar-alexandre-de-oliveira	players/photo/21.jpg	39	\N	\N	1985-10-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	21
562	Gino Fellipe Santoro	\N	gino-fellipe-santoro	players/photo/21.jpg	40	\N	\N	1985-07-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	21
563	Giordano Prataviera Horacio	\N	giordano-prataviera-horacio	players/photo/21.jpg	41	\N	\N	1999-11-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	21
564	Guilherme De Almeida Bida Tsumanuma	\N	guilherme-de-almeida-bida-tsumanuma	players/photo/21.jpg	42	\N	\N	1989-09-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	21
565	Guilherme Walesko Alves	\N	guilherme-walesko-alves	players/photo/21.jpg	43	\N	\N	1989-12-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	21
566	Gustavo Rossetti Klepa	\N	gustavo-rossetti-klepa	players/photo/21.jpg	45	\N	\N	1988-01-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	21
567	Gustavo Zanini De Mattos	\N	gustavo-zanini-de-mattos	players/photo/21.jpg	49	\N	\N	1987-03-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	21
568	Henrique Oliveira Da Silva	\N	henrique-oliveira-da-silva	players/photo/21.jpg	50	\N	\N	1997-07-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	21
569	Henrique Pinheiro Lamers	\N	henrique-pinheiro-lamers	players/photo/21.jpg	51	\N	\N	1986-03-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	21
570	Igor Jasinski	\N	igor-jasinski	players/photo/21.jpg	54	\N	\N	1984-05-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	21
571	Ivan Rogerio Tonolli	\N	ivan-rogerio-tonolli	players/photo/21.jpg	55	\N	\N	1989-09-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	21
572	Jefferson Rodrigues Ebrahim Martins	\N	jefferson-rodrigues-ebrahim-martins	players/photo/21.jpg	56	\N	\N	1992-11-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	21
573	Jhone Ricardo Batista	\N	jhone-ricardo-batista	players/photo/21.jpg	57	\N	\N	1995-03-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	21
574	João Pedro Kastrup Hapner	\N	joao-pedro-kastrup-hapner	players/photo/21.jpg	58	\N	\N	1995-12-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	21
575	Kauã Pozzi	\N	kaua-pozzi	players/photo/21.jpg	59	\N	\N	1986-11-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	21
576	Kawan Alves Pivatto	\N	kawan-alves-pivatto	players/photo/21.jpg	60	\N	\N	1990-11-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	21
577	Leonardo Rebello De Oliveira	\N	leonardo-rebello-de-oliveira	players/photo/21.jpg	62	\N	\N	1995-07-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	21
578	Leonardo Tomadon	\N	leonardo-tomadon	players/photo/21.jpg	64	\N	\N	1999-06-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	21
579	Lincoln Gabriel Santiago De Aquino	\N	lincoln-gabriel-santiago-de-aquino	players/photo/21.jpg	66	\N	\N	1989-02-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	21
580	Lucas Beccaro Do Nascimento	\N	lucas-beccaro-do-nascimento	players/photo/21.jpg	69	\N	\N	1988-06-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	21
581	Lucas Costa Ferreira	\N	lucas-costa-ferreira	players/photo/21.jpg	70	\N	\N	2001-11-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	21
582	Lucas Padilha	\N	lucas-padilha	players/photo/21.jpg	71	\N	\N	1995-02-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	21
583	Lucas Pompeo	\N	lucas-pompeo	players/photo/21.jpg	72	\N	\N	1994-07-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	21
584	Lucas Reda Viezzer	\N	lucas-reda-viezzer	players/photo/21.jpg	73	\N	\N	1986-07-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	21
585	Marcio Rogerio Garrido De Lima Junior	\N	marcio-rogerio-garrido-de-lima-junior	players/photo/21.jpg	75	\N	\N	1988-04-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	21
586	Marcos Henrique Da Rocha	\N	marcos-henrique-da-rocha	players/photo/21.jpg	76	\N	\N	1989-11-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	21
587	Marcos Vinicius Soares Rosas	\N	marcos-vinicius-soares-rosas	players/photo/21.jpg	79	\N	\N	1980-04-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	21
588	Nuno Miguel Dias Da Silva	\N	nuno-miguel-dias-da-silva	players/photo/21.jpg	80	\N	\N	1993-04-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
589	Rafael Gavleta Dério	\N	rafael-gavleta-derio	players/photo/21.jpg	81	\N	\N	1990-02-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
590	Rafael Stefainski	\N	rafael-stefainski	players/photo/21.jpg	82	\N	\N	1982-06-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	21
591	Rodrigo Cristiano Coléte	\N	rodrigo-cristiano-colete	players/photo/21.jpg	83	\N	\N	1991-03-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	21
592	Rodrigo Rufato Cardoso	\N	rodrigo-rufato-cardoso	players/photo/21.jpg	85	\N	\N	1992-03-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
593	Rodrigo Zanini De Mattos	\N	rodrigo-zanini-de-mattos	players/photo/21.jpg	86	\N	\N	1986-05-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	21
594	Tiago Lucio Betiato	\N	tiago-lucio-betiato	players/photo/21.jpg	87	\N	\N	1994-11-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
595	Uydinely Miguel De Oliveira	\N	uydinely-miguel-de-oliveira	players/photo/21.jpg	88	\N	\N	1975-04-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	21
596	Vitor Dos Reis Navarro	\N	vitor-dos-reis-navarro	players/photo/21.jpg	92	\N	\N	1982-12-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	21
597	Wagner Alexandre Dos Santos Teodoro	\N	wagner-alexandre-dos-santos-teodoro	players/photo/21.jpg	93	\N	\N	1989-05-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	21
598	Wagner Luiz Paglia	\N	wagner-luiz-paglia	players/photo/21.jpg	95	\N	\N	1995-04-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	21
599	William Andrew Banks	\N	william-andrew-banks	players/photo/21.jpg	96	\N	\N	1993-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	21
600	Willian Gobetti Soares	\N	willian-gobetti-soares	players/photo/21.jpg	98	\N	\N	1985-10-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	21
601	Zachary Robert Palme	\N	zachary-robert-palme	players/photo/21.jpg	89	\N	\N	1986-03-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	21
602	André Renck Martins	\N	andre-renck-martins	players/photo/24.jpg	0	\N	\N	1996-05-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	24
603	Aurélio Alves Martins Jacarandá	\N	aurelio-alves-martins-jacaranda	players/photo/24.jpg	0	\N	\N	1984-06-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
604	Tarson Garcia Da Silva	\N	tarson-garcia-da-silva	players/photo/24.jpg	0	\N	\N	1984-03-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	24
605	Danilo Dantas Da Silva	\N	danilo-dantas-da-silva	players/photo/24.jpg	1	\N	\N	1996-04-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	24
606	Leonardo Galle Rocha Matos	\N	leonardo-galle-rocha-matos	players/photo/24.jpg	1	\N	\N	1998-05-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	24
607	Vitoriano Ferrero Martin Junior	\N	vitoriano-ferrero-martin-junior	players/photo/24.jpg	1	\N	\N	1986-11-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
608	Thiago Augusto Silva Modesto	\N	thiago-augusto-silva-modesto	players/photo/24.jpg	3	\N	\N	2000-10-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
609	Rodrigo Alves De Souza	\N	rodrigo-alves-de-souza	players/photo/24.jpg	4	\N	\N	1979-07-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	24
610	Josemar Teotonio Dos Santos	\N	josemar-teotonio-dos-santos	players/photo/24.jpg	5	\N	\N	1988-09-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	24
611	Raulin Silva Leal	\N	raulin-silva-leal	players/photo/24.jpg	7	\N	\N	1984-04-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
612	Leonardo Luiz Bomfim Brunetta	\N	leonardo-luiz-bomfim-brunetta	players/photo/24.jpg	8	\N	\N	1998-12-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
613	Matheus Ferreira Lemes	\N	matheus-ferreira-lemes	players/photo/24.jpg	8	\N	\N	1999-06-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
614	Vinicius Marcelino Romaquelli	\N	vinicius-marcelino-romaquelli	players/photo/24.jpg	8	\N	\N	2003-04-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	24
615	Rafael Tavares Maniezzo	\N	rafael-tavares-maniezzo	players/photo/24.jpg	9	\N	\N	1992-03-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	24
616	Thiago Dias Lima	\N	thiago-dias-lima	players/photo/24.jpg	10	\N	\N	1997-08-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	24
617	Gabriel Sampaio Da Guia	\N	gabriel-sampaio-da-guia	players/photo/24.jpg	11	\N	\N	2000-09-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
618	Marcus Mariano De Arruda Campos	\N	marcus-mariano-de-arruda-campos	players/photo/24.jpg	11	\N	\N	2002-03-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
619	Reginaldo Garcia Maia Filho	\N	reginaldo-garcia-maia-filho	players/photo/24.jpg	11	\N	\N	2018-11-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	24
620	Bruno Da Silva Monteiro	\N	bruno-da-silva-monteiro	players/photo/24.jpg	12	\N	\N	2000-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
621	Jucemar Junior Della Giustina	\N	jucemar-junior-della-giustina	players/photo/24.jpg	12	\N	\N	2002-08-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
622	Matheus De Moraes Pinto	\N	matheus-de-moraes-pinto	players/photo/24.jpg	12	\N	\N	1994-09-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
836	Paul Morant	\N	paul-morant	players/photo/30.jpg	21	\N	\N	1992-06-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	30
623	Bruno Leonardo Amorim De Moraes	\N	bruno-leonardo-amorim-de-moraes	players/photo/24.jpg	13	\N	\N	1998-01-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
624	Renan Da Costa Marques Reis	\N	renan-da-costa-marques-reis	players/photo/24.jpg	13	\N	\N	2001-01-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
625	Gabriel Luis Borges Faustino	\N	gabriel-luis-borges-faustino	players/photo/24.jpg	14	\N	\N	2001-07-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
626	Igor Mota De Oliveira	\N	igor-mota-de-oliveira	players/photo/24.jpg	14	\N	\N	1986-04-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
627	Daniel Figueiredo Da Silva Pereira	\N	daniel-figueiredo-da-silva-pereira	players/photo/24.jpg	15	\N	\N	1983-04-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	24
628	Marcelo Roversi	\N	marcelo-roversi	players/photo/24.jpg	15	\N	\N	1986-09-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	24
629	Raryson Dariva Spindola	\N	raryson-dariva-spindola	players/photo/24.jpg	15	\N	\N	1990-04-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	24
630	Bruno Henrique Pereira Pará	\N	bruno-henrique-pereira-para	players/photo/24.jpg	16	\N	\N	2000-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	24
631	Luann Pereira Ribeiro	\N	luann-pereira-ribeiro	players/photo/24.jpg	17	\N	\N	1997-07-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	24
632	Guilherme Augusto Rodrigues	\N	guilherme-augusto-rodrigues	players/photo/24.jpg	19	\N	\N	2001-02-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
633	Paulo Augusto Arruda Ferreira Dos Santos	\N	paulo-augusto-arruda-ferreira-dos-santos	players/photo/24.jpg	19	\N	\N	1999-12-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	24
634	Gabriel Henrique Caetano Pereira Machado	\N	gabriel-henrique-caetano-pereira-machado	players/photo/24.jpg	20	\N	\N	1993-05-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
635	Ronnan Brandao Rosa	\N	ronnan-brandao-rosa	players/photo/24.jpg	20	\N	\N	1998-11-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
636	Daniel Carvalho Callejas	\N	daniel-carvalho-callejas	players/photo/24.jpg	21	\N	\N	1994-03-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
637	Joao Francisco Silva Toledo Pizza	\N	joao-francisco-silva-toledo-pizza	players/photo/24.jpg	21	\N	\N	1995-06-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
638	Hudson Aparecido Ferreira Tenorio	\N	hudson-aparecido-ferreira-tenorio	players/photo/24.jpg	22	\N	\N	1990-06-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	24
639	João Pedro Abrantes Dos Santos	\N	joao-pedro-abrantes-dos-santos	players/photo/24.jpg	23	\N	\N	1998-06-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
640	Joao Rodezio Gregorio Araujo	\N	joao-rodezio-gregorio-araujo	players/photo/24.jpg	24	\N	\N	1986-03-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	24
641	André Do Carmo Santos	\N	andre-do-carmo-santos	players/photo/24.jpg	25	\N	\N	1986-09-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
642	Lucas Da Silva Souza	\N	lucas-da-silva-souza	players/photo/24.jpg	26	\N	\N	1996-08-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
643	Bruno Rafael De Souza Loeschke	\N	bruno-rafael-de-souza-loeschke	players/photo/24.jpg	27	\N	\N	1991-07-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
644	Lucas Luiz De Lima Costa	\N	lucas-luiz-de-lima-costa	players/photo/24.jpg	27	\N	\N	1994-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
645	Matheus Rodrigues Silva	\N	matheus-rodrigues-silva	players/photo/24.jpg	28	\N	\N	1996-01-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
646	Matheus Winter Da Silva	\N	matheus-winter-da-silva	players/photo/24.jpg	28	\N	\N	1995-06-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
647	Leonardo César De Campos Marcoski	\N	leonardo-cesar-de-campos-marcoski	players/photo/24.jpg	29	\N	\N	1995-10-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	24
648	Alan Aparecido Dos Santos	\N	alan-aparecido-dos-santos	players/photo/24.jpg	30	\N	\N	1993-10-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	24
649	Crystian Douglas Soares Da Conceição	\N	crystian-douglas-soares-da-conceicao	players/photo/24.jpg	31	\N	\N	1993-05-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	4	24
650	Alex Ferreira Alves	\N	alex-ferreira-alves	players/photo/24.jpg	32	\N	\N	1983-07-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	24
651	Raony Harlem Figueiredo Pacheco	\N	raony-harlem-figueiredo-pacheco	players/photo/24.jpg	32	\N	\N	1987-10-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	24
652	Herbert Wellington Suguimoto Oshiro	\N	herbert-wellington-suguimoto-oshiro	players/photo/24.jpg	33	\N	\N	1983-03-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	24
653	Alexandre Cheverria De Almeida	\N	alexandre-cheverria-de-almeida	players/photo/24.jpg	34	\N	\N	2018-01-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
654	Thiago Magalhães De Oliveira	\N	thiago-magalhaes-de-oliveira	players/photo/24.jpg	35	\N	\N	1995-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
655	Tiago Barbosa Teixeira De Matos Pereira	\N	tiago-barbosa-teixeira-de-matos-pereira	players/photo/24.jpg	37	\N	\N	1979-12-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	4	24
656	Anderson Jesus Castelo Branco Gonçalves	\N	anderson-jesus-castelo-branco-goncalves	players/photo/24.jpg	38	\N	\N	1978-07-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
657	Hanay Benedito Gonçalo Da Silva	\N	hanay-benedito-goncalo-da-silva	players/photo/24.jpg	38	\N	\N	2018-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	24
658	Thiago Barbosa Da Silva	\N	thiago-barbosa-da-silva	players/photo/24.jpg	39	\N	\N	1988-08-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
659	Bruno Lopes Ferreira	\N	bruno-lopes-ferreira	players/photo/24.jpg	40	\N	\N	1988-10-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	24
660	Caio De Souza Borges	\N	caio-de-souza-borges	players/photo/24.jpg	41	\N	\N	1992-04-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	24
661	Leonardo De Souza Cruz Rosa	\N	leonardo-de-souza-cruz-rosa	players/photo/24.jpg	42	\N	\N	1989-07-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	24
662	Marcides Junior Tanques De Campos	\N	marcides-junior-tanques-de-campos	players/photo/24.jpg	43	\N	\N	1997-03-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
663	Walter Gonçalo Martins Monteiro	\N	walter-goncalo-martins-monteiro	players/photo/24.jpg	44	\N	\N	1978-06-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	24
664	Erivaldo Dos Santos Silva	\N	erivaldo-dos-santos-silva	players/photo/24.jpg	45	\N	\N	1990-09-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	24
665	Carlos Barros	\N	carlos-barros	players/photo/24.jpg	46	\N	\N	1990-03-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
666	Gabriel Marcos Rodrigues	\N	gabriel-marcos-rodrigues	players/photo/24.jpg	46	\N	\N	1998-08-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
667	Pedro Henrique Rodrigues De Souza	\N	pedro-henrique-rodrigues-de-souza	players/photo/24.jpg	46	\N	\N	1997-03-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	24
668	Rafael Reis	\N	rafael-reis	players/photo/24.jpg	46	\N	\N	1996-02-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
669	Hiago Tadeu Fernandes Dos Santos	\N	hiago-tadeu-fernandes-dos-santos	players/photo/24.jpg	47	\N	\N	1993-08-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
670	Maycon Ferreira Da Silva	\N	maycon-ferreira-da-silva	players/photo/24.jpg	47	\N	\N	1991-10-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
671	Matheus Monteiro De Oliveira	\N	matheus-monteiro-de-oliveira	players/photo/24.jpg	48	\N	\N	1999-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
672	Rodney Roque Bom Despacho Da Silva	\N	rodney-roque-bom-despacho-da-silva	players/photo/24.jpg	49	\N	\N	1994-08-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
673	Wanster Junior De Oliveira	\N	wanster-junior-de-oliveira	players/photo/24.jpg	49	\N	\N	1992-12-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	24
674	Vitalir Junior Magnagnagno	\N	vitalir-junior-magnagnagno	players/photo/24.jpg	50	\N	\N	1992-07-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
675	Alex Sandre Cavalheiro	\N	alex-sandre-cavalheiro	players/photo/24.jpg	52	\N	\N	1987-08-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
676	Bruno Antonio Solla Lopez	\N	bruno-antonio-solla-lopez	players/photo/24.jpg	52	\N	\N	1990-08-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
677	Alfredo Camacho Bugelli	\N	alfredo-camacho-bugelli	players/photo/24.jpg	53	\N	\N	1981-11-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
678	Ludiney Benedito Correa	\N	ludiney-benedito-correa	players/photo/24.jpg	55	\N	\N	1986-04-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
679	João Victor Alves De Oliveira Da Silva	\N	joao-victor-alves-de-oliveira-da-silva	players/photo/24.jpg	56	\N	\N	1997-06-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
680	Gabriel De Pinho Albres Falcão	\N	gabriel-de-pinho-albres-falcao	players/photo/24.jpg	59	\N	\N	1997-02-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	24
681	Wesley Jefferson De Souza Santos	\N	wesley-jefferson-de-souza-santos	players/photo/24.jpg	59	\N	\N	1995-05-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
682	Andre Subtil De Oliveira	\N	andre-subtil-de-oliveira	players/photo/24.jpg	60	\N	\N	1980-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
683	Matheus Landim Gomes	\N	matheus-landim-gomes	players/photo/24.jpg	60	\N	\N	1996-05-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
684	Moisés Ferreira Salomão	\N	moises-ferreira-salomao	players/photo/24.jpg	61	\N	\N	1982-10-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	24
685	Áquila Dos Santos Rocha Nogueira	\N	aquila-dos-santos-rocha-nogueira	players/photo/24.jpg	62	\N	\N	1996-04-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
686	Jonathan Francisco Ferreira Cardozo	\N	jonathan-francisco-ferreira-cardozo	players/photo/24.jpg	63	\N	\N	1994-12-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
687	Pedro Gomes Quezada	\N	pedro-gomes-quezada	players/photo/24.jpg	65	\N	\N	2002-04-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
688	Pedro Manfrinate Martendal	\N	pedro-manfrinate-martendal	players/photo/24.jpg	65	\N	\N	2002-01-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
689	Bruno Vaz Gallego Lima	\N	bruno-vaz-gallego-lima	players/photo/24.jpg	66	\N	\N	1988-11-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	24
690	Claudionor Dos Santos Borba	\N	claudionor-dos-santos-borba	players/photo/24.jpg	66	\N	\N	1990-04-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
691	Higino Gomes Duarte Neto	\N	higino-gomes-duarte-neto	players/photo/24.jpg	67	\N	\N	1990-06-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
692	Lirio Vezaro Junior	\N	lirio-vezaro-junior	players/photo/24.jpg	68	\N	\N	1994-12-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
693	Nelson Batista Alves Junior	\N	nelson-batista-alves-junior	players/photo/24.jpg	68	\N	\N	1994-08-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
694	Rodrigo Miranda De Oliveira	\N	rodrigo-miranda-de-oliveira	players/photo/24.jpg	69	\N	\N	1993-03-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
695	Olavo Bom Despacho Faria	\N	olavo-bom-despacho-faria	players/photo/24.jpg	70	\N	\N	1989-06-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
696	Wellington Alves De Araujo	\N	wellington-alves-de-araujo	players/photo/24.jpg	71	\N	\N	1994-09-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
697	Rodolfo Augusto Eregipe Figueiredo	\N	rodolfo-augusto-eregipe-figueiredo	players/photo/24.jpg	72	\N	\N	1988-05-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
698	Marlon Correa Da Silva	\N	marlon-correa-da-silva	players/photo/24.jpg	73	\N	\N	1997-04-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	24
699	Vinicius Bessa Santos	\N	vinicius-bessa-santos	players/photo/24.jpg	74	\N	\N	1988-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
700	Geimetton De Oliveira Guimaraes	\N	geimetton-de-oliveira-guimaraes	players/photo/24.jpg	75	\N	\N	1986-04-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
701	Leonardo Francisco Goulart	\N	leonardo-francisco-goulart	players/photo/24.jpg	76	\N	\N	1984-02-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	24
702	Hatila Hugo Fogo De Oliveira	\N	hatila-hugo-fogo-de-oliveira	players/photo/24.jpg	77	\N	\N	1989-08-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	24
703	Michael Dias Fernandes Quevedo	\N	michael-dias-fernandes-quevedo	players/photo/24.jpg	78	\N	\N	1993-08-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	24
704	Denevaldo Barbosa Pereira Junior	\N	denevaldo-barbosa-pereira-junior	players/photo/24.jpg	79	\N	\N	1981-07-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	24
705	Ed Heid Lima Thompson	\N	ed-heid-lima-thompson	players/photo/24.jpg	80	\N	\N	1989-02-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
706	Johabner Nguenge De Souza E Costa	\N	johabner-nguenge-de-souza-e-costa	players/photo/24.jpg	81	\N	\N	2018-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
707	Johnny Lucas Amorim Scheidegger	\N	johnny-lucas-amorim-scheidegger	players/photo/24.jpg	81	\N	\N	1996-03-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
708	Lucas Augusto Grisolia De Assis	\N	lucas-augusto-grisolia-de-assis	players/photo/24.jpg	82	\N	\N	1996-09-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
709	Luiz Fernando Candido De Oliveira	\N	luiz-fernando-candido-de-oliveira	players/photo/24.jpg	83	\N	\N	1997-08-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
710	Vinicius Pereira De Carvalho	\N	vinicius-pereira-de-carvalho	players/photo/24.jpg	84	\N	\N	1995-01-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
711	Marcos Wolschick Nascimento	\N	marcos-wolschick-nascimento	players/photo/24.jpg	85	\N	\N	1996-12-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
712	Pedro Paulo Dias Mogiano	\N	pedro-paulo-dias-mogiano	players/photo/24.jpg	86	\N	\N	1994-04-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
713	Carlos Henrique Perez Da Silva	\N	carlos-henrique-perez-da-silva	players/photo/24.jpg	87	\N	\N	1992-11-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
714	André Felipe Carreiro Da Silva	\N	andre-felipe-carreiro-da-silva	players/photo/24.jpg	88	\N	\N	1998-07-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
715	Bruno Da Silva Souza	\N	bruno-da-silva-souza	players/photo/24.jpg	90	\N	\N	1988-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
716	Jones Teixeira Barbosa	\N	jones-teixeira-barbosa	players/photo/24.jpg	90	\N	\N	1983-03-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
717	Dionisio Gonçalves De Cardoso	\N	dionisio-goncalves-de-cardoso	players/photo/24.jpg	91	\N	\N	1997-05-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
718	Francisco Gomes Da Silva	\N	francisco-gomes-da-silva	players/photo/24.jpg	92	\N	\N	2018-05-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
719	José Venâncio Szinwelski Ramos	\N	jose-venancio-szinwelski-ramos	players/photo/24.jpg	93	\N	\N	1999-04-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	24
720	Luan Mateus Anunciação De Arruda	\N	luan-mateus-anunciacao-de-arruda	players/photo/24.jpg	94	\N	\N	2001-10-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	24
721	Lucas Jean Ferreira Santos	\N	lucas-jean-ferreira-santos	players/photo/24.jpg	95	\N	\N	2000-05-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	24
722	Vinicius Santana	\N	vinicius-santana	players/photo/24.jpg	96	\N	\N	1979-04-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
723	João Lucas Marques De Oliveira	\N	joao-lucas-marques-de-oliveira	players/photo/24.jpg	97	\N	\N	1998-08-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	24
724	Lucas Tadeu Taques Fernandez	\N	lucas-tadeu-taques-fernandez	players/photo/24.jpg	97	\N	\N	1993-10-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
725	Mauro Da Silva Mendonça	\N	mauro-da-silva-mendonca	players/photo/24.jpg	98	\N	\N	1986-11-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
726	Eduardo Rafael Oliani Santos	\N	eduardo-rafael-oliani-santos	players/photo/24.jpg	99	\N	\N	2000-04-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	24
727	Marcos Alves Dias	\N	marcos-alves-dias	players/photo/24.jpg	99	\N	\N	1995-09-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
728	Mickael Patrick Barbosa De Oliveira	\N	mickael-patrick-barbosa-de-oliveira	players/photo/24.jpg	99	\N	\N	1998-08-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	24
729	Jean Vitor Macedo Nunes	\N	jean-vitor-macedo-nunes	players/photo/24.jpg	87	\N	\N	1996-10-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	24
730	Johnny Santos De Souza	\N	johnny-santos-de-souza	players/photo/27.jpg	1	\N	\N	1988-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	27
731	Danillo Klayn Do Amaral Paixão	\N	danillo-klayn-do-amaral-paixao	players/photo/27.jpg	2	\N	\N	1995-04-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	27
732	Lucas Ferreira Soares	\N	lucas-ferreira-soares	players/photo/27.jpg	3	\N	\N	1994-10-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	27
733	Gustavo Abreu Da Silva	\N	gustavo-abreu-da-silva	players/photo/27.jpg	4	\N	\N	1990-12-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	27
734	Gabriel Curty Machado	\N	gabriel-curty-machado	players/photo/27.jpg	5	\N	\N	1992-10-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
735	Yan Ferreira Mundim Bricio	\N	yan-ferreira-mundim-bricio	players/photo/27.jpg	6	\N	\N	1999-03-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
736	Kevin De Araújo Antunes	\N	kevin-de-araujo-antunes	players/photo/27.jpg	7	\N	\N	1994-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
737	Bernardo Teixeira Pinto	\N	bernardo-teixeira-pinto	players/photo/27.jpg	8	\N	\N	1993-11-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	27
738	Ariel Faccioli Fernandes	\N	ariel-faccioli-fernandes	players/photo/27.jpg	10	\N	\N	1999-08-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	10	27
739	Yuri Botelho Graça De Salles Ferreira	\N	yuri-botelho-graca-de-salles-ferreira	players/photo/27.jpg	11	\N	\N	1989-08-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
740	Amaury Nicollas Avelino De Aguiar	\N	amaury-nicollas-avelino-de-aguiar	players/photo/27.jpg	12	\N	\N	2000-12-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
741	Leonardo Mattar Antunes	\N	leonardo-mattar-antunes	players/photo/27.jpg	13	\N	\N	1998-06-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
742	Vitor Matheus Mendes De Paiva Gonçalves	\N	vitor-matheus-mendes-de-paiva-goncalves	players/photo/27.jpg	14	\N	\N	1998-03-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	27
743	Fabio Etienne Reitenbach Lau	\N	fabio-etienne-reitenbach-lau	players/photo/27.jpg	15	\N	\N	1971-11-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	27
744	Rodrigo Damazio Da Silva Mello	\N	rodrigo-damazio-da-silva-mello	players/photo/27.jpg	16	\N	\N	1982-03-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	27
745	Tomás De Oliveira Gonçalves	\N	tomas-de-oliveira-goncalves	players/photo/27.jpg	17	\N	\N	1992-08-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
746	Derek De Araújo Antunes	\N	derek-de-araujo-antunes	players/photo/27.jpg	18	\N	\N	1997-04-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
747	Wellington Nascimento De Assis	\N	wellington-nascimento-de-assis	players/photo/27.jpg	19	\N	\N	1993-11-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
748	Gabriel Machado Barbosa Nunes	\N	gabriel-machado-barbosa-nunes	players/photo/27.jpg	20	\N	\N	1994-07-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	27
749	Carlos Eduardo Silva Rocha	\N	carlos-eduardo-silva-rocha	players/photo/27.jpg	21	\N	\N	1982-06-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	27
750	Evandro Bendito Da Silva Filho	\N	evandro-bendito-da-silva-filho	players/photo/27.jpg	22	\N	\N	1995-11-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
751	Tito Costa Pereira	\N	tito-costa-pereira	players/photo/27.jpg	23	\N	\N	1991-12-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	27
752	Anderson Da Silva Lourenço	\N	anderson-da-silva-lourenco	players/photo/27.jpg	24	\N	\N	1988-05-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	27
753	Lucas De Oliveira Gonçalves	\N	lucas-de-oliveira-goncalves	players/photo/27.jpg	25	\N	\N	1990-11-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
754	Diego Raimundo Da Silva Santos	\N	diego-raimundo-da-silva-santos	players/photo/27.jpg	26	\N	\N	1985-06-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
755	Marcos Luca Paes Leme Valentim	\N	marcos-luca-paes-leme-valentim	players/photo/27.jpg	27	\N	\N	1989-12-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	27
756	Euclides Souza Carvalho	\N	euclides-souza-carvalho	players/photo/27.jpg	28	\N	\N	1984-09-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	27
757	Higo Rio Branco Lima Cabral	\N	higo-rio-branco-lima-cabral	players/photo/27.jpg	29	\N	\N	1993-01-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
758	Luiz Otávio Hônkis	\N	luiz-otavio-honkis	players/photo/27.jpg	30	\N	\N	1991-02-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
759	Gustavo Silva Nascimento	\N	gustavo-silva-nascimento	players/photo/27.jpg	31	\N	\N	1989-05-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
760	Victor Villaça Giron	\N	victor-villaca-giron	players/photo/27.jpg	32	\N	\N	1993-05-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	27
761	Raffael Garcia Silva	\N	raffael-garcia-silva	players/photo/27.jpg	34	\N	\N	1991-06-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
762	João Victor Sant’Anna Sardinha	\N	joao-victor-santanna-sardinha	players/photo/27.jpg	37	\N	\N	0199-07-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
763	Lucas Peçanha Silva Marques	\N	lucas-pecanha-silva-marques	players/photo/27.jpg	38	\N	\N	1993-09-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
764	Bernardo Quaresma Dias	\N	bernardo-quaresma-dias	players/photo/27.jpg	39	\N	\N	1983-06-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	27
765	Lucas Silveira Donô	\N	lucas-silveira-dono	players/photo/27.jpg	40	\N	\N	1994-10-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	27
766	Herbert Ferreira Conceição	\N	herbert-ferreira-conceicao	players/photo/27.jpg	43	\N	\N	1990-10-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	27
767	Felipe Azeredo Dos Santos	\N	felipe-azeredo-dos-santos	players/photo/27.jpg	44	\N	\N	1992-04-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	27
768	Angelo Márcio Rosa Júnior	\N	angelo-marcio-rosa-junior	players/photo/27.jpg	46	\N	\N	1995-03-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	27
769	Matheus Azevedo Martins	\N	matheus-azevedo-martins	players/photo/27.jpg	48	\N	\N	1992-05-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	27
770	Rafael Dos Santos Tavares	\N	rafael-dos-santos-tavares	players/photo/27.jpg	48	\N	\N	1986-09-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	27
771	Erick Luiz Pires Abreu Da Silva	\N	erick-luiz-pires-abreu-da-silva	players/photo/27.jpg	49	\N	\N	1991-06-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	27
772	Matheus Guimarães Campos	\N	matheus-guimaraes-campos	players/photo/27.jpg	50	\N	\N	1996-04-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	27
773	Arthur Rodrigues Cardoso Engel Freitas	\N	arthur-rodrigues-cardoso-engel-freitas	players/photo/27.jpg	51	\N	\N	1991-05-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	27
774	Rodrigo Santos De Oliveira Teixeira	\N	rodrigo-santos-de-oliveira-teixeira	players/photo/27.jpg	52	\N	\N	1993-07-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	27
775	Ival Masiero De Jesus	\N	ival-masiero-de-jesus	players/photo/27.jpg	53	\N	\N	1979-06-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	27
776	Augusto Bayard Romano Teixeira Mendes	\N	augusto-bayard-romano-teixeira-mendes	players/photo/27.jpg	54	\N	\N	1979-02-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	27
777	Marcos Ronbog Martiny	\N	marcos-ronbog-martiny	players/photo/27.jpg	55	\N	\N	1991-11-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	27
778	Alexandre Santos Pereira	\N	alexandre-santos-pereira	players/photo/27.jpg	56	\N	\N	1988-01-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	27
779	João Pedro De Saldanha Gomes	\N	joao-pedro-de-saldanha-gomes	players/photo/27.jpg	56	\N	\N	1998-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	27
780	André Felipe De Araujo Rosa	\N	andre-felipe-de-araujo-rosa	players/photo/27.jpg	57	\N	\N	1991-08-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	27
781	Gabriel Ripper Agostinho Cordeiro	\N	gabriel-ripper-agostinho-cordeiro	players/photo/27.jpg	58	\N	\N	1994-01-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	27
782	Lyneker Cavalcante Dos Santos Conforti	\N	lyneker-cavalcante-dos-santos-conforti	players/photo/27.jpg	59	\N	\N	1991-11-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	27
783	Luiz Guilherme Passos Da Costa Leal	\N	luiz-guilherme-passos-da-costa-leal	players/photo/27.jpg	60	\N	\N	2000-04-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	27
784	Wellington Dos Santos Duretto Ghiberti	\N	wellington-dos-santos-duretto-ghiberti	players/photo/27.jpg	61	\N	\N	1988-02-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	27
785	Robson Da Silva Souza	\N	robson-da-silva-souza	players/photo/27.jpg	62	\N	\N	1978-11-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	27
786	Pedro Auguto De Souza Pereira	\N	pedro-auguto-de-souza-pereira	players/photo/27.jpg	63	\N	\N	1988-09-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	27
787	Thiago Nunes Da Silva Lima	\N	thiago-nunes-da-silva-lima	players/photo/27.jpg	64	\N	\N	1983-07-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	27
788	Judimar Vieira De Brito Junior	\N	judimar-vieira-de-brito-junior	players/photo/27.jpg	65	\N	\N	1987-08-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	27
789	Marcos Vinicios Cerqueira Balduino Agum	\N	marcos-vinicios-cerqueira-balduino-agum	players/photo/27.jpg	66	\N	\N	1999-07-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	27
790	Thiago Da Silveira Villas Bôas	\N	thiago-da-silveira-villas-boas	players/photo/27.jpg	67	\N	\N	1991-03-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	27
791	Ramez Georges Hage	\N	ramez-georges-hage	players/photo/27.jpg	68	\N	\N	1985-02-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	27
792	Iury Machado Moreira Pimentel	\N	iury-machado-moreira-pimentel	players/photo/27.jpg	69	\N	\N	1991-04-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	27
793	Marcos Jose Mariano Barros	\N	marcos-jose-mariano-barros	players/photo/27.jpg	70	\N	\N	1976-11-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	27
794	Sergio Da Silva Oliveira Junior	\N	sergio-da-silva-oliveira-junior	players/photo/27.jpg	71	\N	\N	1984-12-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	27
795	Anselmo Brauer Muniz	\N	anselmo-brauer-muniz	players/photo/27.jpg	72	\N	\N	1983-12-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	27
796	Felipe Almeida De Barcelos	\N	felipe-almeida-de-barcelos	players/photo/27.jpg	73	\N	\N	1985-08-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	27
797	Denis Karlo Peres Barros	\N	denis-karlo-peres-barros	players/photo/27.jpg	74	\N	\N	2018-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	27
798	Robson Passos Ferreira Júnior	\N	robson-passos-ferreira-junior	players/photo/27.jpg	75	\N	\N	1999-03-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	27
799	Lucas Leguizamon	\N	lucas-leguizamon	players/photo/27.jpg	76	\N	\N	1991-06-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	27
800	Eduardo Gomes De Paula	\N	eduardo-gomes-de-paula	players/photo/27.jpg	77	\N	\N	1987-05-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	27
801	Gustavo Mendes Netto Pimentel	\N	gustavo-mendes-netto-pimentel	players/photo/27.jpg	78	\N	\N	1991-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	27
802	Vinicius Farnum Da Cruz	\N	vinicius-farnum-da-cruz	players/photo/27.jpg	79	\N	\N	1984-09-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	27
803	José Alves Martins Neto	\N	jose-alves-martins-neto	players/photo/27.jpg	81	\N	\N	1983-06-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	27
804	Renan Madureira Ayres	\N	renan-madureira-ayres	players/photo/27.jpg	82	\N	\N	1993-07-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	27
805	Matheus Franco Fortes De Sá	\N	matheus-franco-fortes-de-sa	players/photo/27.jpg	84	\N	\N	1996-04-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	27
806	Douglas De Oliveira França	\N	douglas-de-oliveira-franca	players/photo/27.jpg	85	\N	\N	1992-11-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
807	Marcelo Terra Portugal Andrade Da Costa	\N	marcelo-terra-portugal-andrade-da-costa	players/photo/27.jpg	87	\N	\N	1984-11-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	27
808	Felipe Leiria De Castro	\N	felipe-leiria-de-castro	players/photo/27.jpg	88	\N	\N	1980-08-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	27
809	Lucas Klayn De Almeida	\N	lucas-klayn-de-almeida	players/photo/27.jpg	89	\N	\N	1989-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	27
810	Edilson Abreu Asevedo	\N	edilson-abreu-asevedo	players/photo/27.jpg	90	\N	\N	1991-08-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	27
811	Leonardo Da Silva Reis	\N	leonardo-da-silva-reis	players/photo/27.jpg	91	\N	\N	1988-04-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	27
812	Rhaí Neves Nogueira Figueira	\N	rhai-neves-nogueira-figueira	players/photo/27.jpg	92	\N	\N	1993-03-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	27
813	Daniel Luís Pavani Xavier	\N	daniel-luis-pavani-xavier	players/photo/27.jpg	93	\N	\N	1984-01-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	27
814	Rodrigo De Aquino Oliveira	\N	rodrigo-de-aquino-oliveira	players/photo/27.jpg	95	\N	\N	1982-10-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	27
815	Jeferson Da Costa Rufino	\N	jeferson-da-costa-rufino	players/photo/27.jpg	96	\N	\N	1996-08-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	27
816	Roque Juliano Do Valle Nogueira	\N	roque-juliano-do-valle-nogueira	players/photo/27.jpg	97	\N	\N	1978-01-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	27
817	Leonardo Souza Silva	\N	leonardo-souza-silva	players/photo/27.jpg	98	\N	\N	1982-04-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	27
818	Cayo Luiz Ferreira Alfaia Dos Reis	\N	cayo-luiz-ferreira-alfaia-dos-reis	players/photo/27.jpg	99	\N	\N	1993-07-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	27
819	Rodolfo Bolinelli Andrade Santos	\N	rodolfo-bolinelli-andrade-santos	players/photo/30.jpg	1	\N	\N	1986-08-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	30
820	Rafael Siqueira Fadini	\N	rafael-siqueira-fadini	players/photo/30.jpg	2	\N	\N	1990-06-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	30
821	Andrew Bernardini	\N	andrew-bernardini	players/photo/30.jpg	4	\N	\N	1994-05-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	30
822	João Vitor De Brito Camargo	\N	joao-vitor-de-brito-camargo	players/photo/30.jpg	5	\N	\N	1994-03-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
823	Luiz Protásio Leão Apolinário	\N	luiz-protasio-leao-apolinario	players/photo/30.jpg	6	\N	\N	1996-05-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	30
824	Parris Lee	\N	parris-lee	players/photo/30.jpg	7	\N	\N	1990-02-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	30
825	Charslton Charles Ribeiro	\N	charslton-charles-ribeiro	players/photo/30.jpg	8	\N	\N	1992-10-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	30
826	Álvaro Alaor Siqueiras Fadini	\N	alvaro-alaor-siqueiras-fadini	players/photo/30.jpg	9	\N	\N	1987-03-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	30
827	João Pedro Conrado Pereira	\N	joao-pedro-conrado-pereira	players/photo/30.jpg	10	\N	\N	1995-10-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
828	Ruan Fabiano Maia Mendes Cerqueira	\N	ruan-fabiano-maia-mendes-cerqueira	players/photo/30.jpg	11	\N	\N	2001-11-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
829	Jônatas Mansour Monteiro Zeilah	\N	jonatas-mansour-monteiro-zeilah	players/photo/30.jpg	12	\N	\N	1997-08-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	30
830	Marcos Junio Santos Teixeira	\N	marcos-junio-santos-teixeira	players/photo/30.jpg	13	\N	\N	1986-01-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
831	Alan Mota Calegari	\N	alan-mota-calegari	players/photo/30.jpg	14	\N	\N	2000-01-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
832	Arthur Antunes De Moraes Moreira	\N	arthur-antunes-de-moraes-moreira	players/photo/30.jpg	15	\N	\N	1998-11-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	30
833	Maycon Dacaza Seixas	\N	maycon-dacaza-seixas	players/photo/30.jpg	17	\N	\N	1997-10-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	30
834	Pedro Henrique Medici Nunes	\N	pedro-henrique-medici-nunes	players/photo/30.jpg	18	\N	\N	1995-08-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
835	Michael Marques Gonçalves	\N	michael-marques-goncalves	players/photo/30.jpg	19	\N	\N	1994-08-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	30
837	Leonardo Favorito Martins	\N	leonardo-favorito-martins	players/photo/30.jpg	22	\N	\N	1988-08-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	30
838	Daniel Augusto Eller	\N	daniel-augusto-eller	players/photo/30.jpg	23	\N	\N	1998-04-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
839	Danilson Pereira Ramos	\N	danilson-pereira-ramos	players/photo/30.jpg	24	\N	\N	1992-03-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	30
840	Nathan De Souza Oliveira	\N	nathan-de-souza-oliveira	players/photo/30.jpg	25	\N	\N	2002-05-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	30
841	Thalles Reis De Oliveira	\N	thalles-reis-de-oliveira	players/photo/30.jpg	26	\N	\N	1994-01-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	30
842	Davi Jácome Souza Oliveira	\N	davi-jacome-souza-oliveira	players/photo/30.jpg	27	\N	\N	2001-05-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	30
843	Samuel Oliveira Rocha	\N	samuel-oliveira-rocha	players/photo/30.jpg	28	\N	\N	2000-09-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	30
844	Matheus Scarlatelli Medeiros	\N	matheus-scarlatelli-medeiros	players/photo/30.jpg	29	\N	\N	1996-03-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	30
845	Raphael Da Cruz Menezes,	\N	raphael-da-cruz-menezes	players/photo/30.jpg	30	\N	\N	1992-11-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	30
846	Leonardo De Bortoli Munhoz	\N	leonardo-de-bortoli-munhoz	players/photo/30.jpg	31	\N	\N	1994-08-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	30
847	Daniel Da Silva Rocha	\N	daniel-da-silva-rocha	players/photo/30.jpg	33	\N	\N	1995-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	30
848	Felipe Gerarde Souto Paiva	\N	felipe-gerarde-souto-paiva	players/photo/30.jpg	34	\N	\N	1992-06-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	30
849	Jolbert Jefter Ferreira	\N	jolbert-jefter-ferreira	players/photo/30.jpg	35	\N	\N	1998-05-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	30
850	Lucas Campos Mendes Teodoro	\N	lucas-campos-mendes-teodoro	players/photo/30.jpg	36	\N	\N	1993-01-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	30
851	Matheus Willian Oliveira Das Mercês	\N	matheus-willian-oliveira-das-merces	players/photo/30.jpg	41	\N	\N	2001-01-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	30
852	Rogerclaudio Wodson Dos Santos	\N	rogerclaudio-wodson-dos-santos	players/photo/30.jpg	43	\N	\N	1991-04-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	30
853	Joao Vitor De Paula Rocha	\N	joao-vitor-de-paula-rocha	players/photo/30.jpg	45	\N	\N	2000-09-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	30
854	Rafael Henrique De Sousa Goçalves	\N	rafael-henrique-de-sousa-gocalves	players/photo/30.jpg	47	\N	\N	1988-07-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	30
855	Marcus Tullio Lucas	\N	marcus-tullio-lucas	players/photo/30.jpg	49	\N	\N	1986-12-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	30
856	Nicolas Marques Gonçalves	\N	nicolas-marques-goncalves	players/photo/30.jpg	50	\N	\N	1988-09-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	30
857	Luiz Polastri Neto	\N	luiz-polastri-neto	players/photo/30.jpg	51	\N	\N	1992-12-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	30
858	Breno Ribeiro Pereira	\N	breno-ribeiro-pereira	players/photo/30.jpg	53	\N	\N	1993-07-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	30
859	Ronaldo Júnio Silva Dos Santos	\N	ronaldo-junio-silva-dos-santos	players/photo/30.jpg	54	\N	\N	1994-11-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	30
860	Renato De Carvalho Dias Junior	\N	renato-de-carvalho-dias-junior	players/photo/30.jpg	56	\N	\N	1996-01-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	30
861	Durval Queiroz Neto	\N	durval-queiroz-neto	players/photo/30.jpg	58	\N	\N	1992-08-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	30
862	Leonardo Ferrari	\N	leonardo-ferrari	players/photo/30.jpg	61	\N	\N	2000-06-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	30
863	Renery Patrick Reis De Sousa	\N	renery-patrick-reis-de-sousa	players/photo/30.jpg	66	\N	\N	1994-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	30
864	Felipe De Bortoli Munhoz	\N	felipe-de-bortoli-munhoz	players/photo/30.jpg	67	\N	\N	1990-08-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	30
865	Eric Vieira Saviotti	\N	eric-vieira-saviotti	players/photo/30.jpg	68	\N	\N	1987-12-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	30
866	Felipe Salgado Ramos	\N	felipe-salgado-ramos	players/photo/30.jpg	70	\N	\N	1995-10-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	30
867	Dhiego Taylor Cordeiro	\N	dhiego-taylor-cordeiro	players/photo/30.jpg	71	\N	\N	1987-05-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	30
868	Igor Aredes Ferraz	\N	igor-aredes-ferraz	players/photo/30.jpg	72	\N	\N	1996-08-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	30
869	Victor Quintas Benincá De Arruda	\N	victor-quintas-beninca-de-arruda	players/photo/30.jpg	74	\N	\N	1989-06-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	30
870	João Vitor Santos Martins	\N	joao-vitor-santos-martins	players/photo/30.jpg	75	\N	\N	1993-04-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	30
871	Victor De Faria Thomé	\N	victor-de-faria-thome	players/photo/30.jpg	78	\N	\N	1992-06-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	30
872	Robert Emannuel Silva Pereira	\N	robert-emannuel-silva-pereira	players/photo/30.jpg	79	\N	\N	2000-04-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	30
873	Rudá De Andrade E Magalhães	\N	ruda-de-andrade-e-magalhaes	players/photo/30.jpg	80	\N	\N	1990-03-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
874	Victor Hugo Ferraz Souza	\N	victor-hugo-ferraz-souza	players/photo/30.jpg	81	\N	\N	1988-03-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
875	Thiago Henrique Silva Pereira	\N	thiago-henrique-silva-pereira	players/photo/30.jpg	84	\N	\N	1987-12-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
876	Marcos Jugurta Silveira Anatólio Lima	\N	marcos-jugurta-silveira-anatolio-lima	players/photo/30.jpg	88	\N	\N	2000-01-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
877	Graziane Valentim Da Silva	\N	graziane-valentim-da-silva	players/photo/30.jpg	89	\N	\N	1978-08-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	30
878	Ítalo Augusto Siqueira Da Silva	\N	italo-augusto-siqueira-da-silva	players/photo/30.jpg	91	\N	\N	1997-11-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	30
879	Marcus Vinicius Bunn	\N	marcus-vinicius-bunn	players/photo/30.jpg	92	\N	\N	1993-07-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	30
880	Lucas Vasconcelos Pinto	\N	lucas-vasconcelos-pinto	players/photo/30.jpg	94	\N	\N	1996-09-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	30
881	Rafael Lima Machado	\N	rafael-lima-machado	players/photo/30.jpg	98	\N	\N	1988-03-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	30
882	Luis Vinícius Furtado Dos Santos	\N	luis-vinicius-furtado-dos-santos	players/photo/30.jpg	99	\N	\N	1996-07-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	30
883	Carlos Ataide Fernandes Marques	\N	carlos-ataide-fernandes-marques	players/photo/33.jpg	1	\N	\N	1992-08-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	33
884	Everton Luiz Boing Da Costa	\N	everton-luiz-boing-da-costa	players/photo/33.jpg	2	\N	\N	1995-02-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	33
885	Anderson Taufenbach	\N	anderson-taufenbach	players/photo/33.jpg	3	\N	\N	1991-04-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	33
886	José Vicente Velasque Lancanova	\N	jose-vicente-velasque-lancanova	players/photo/33.jpg	4	\N	\N	1995-12-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	33
887	Mauro Alexander Costa	\N	mauro-alexander-costa	players/photo/33.jpg	8	\N	\N	1992-02-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	33
888	Mailson Korczagin	\N	mailson-korczagin	players/photo/33.jpg	12	\N	\N	1990-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	33
889	Tiago Dalcanale	\N	tiago-dalcanale	players/photo/33.jpg	18	\N	\N	1989-08-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	33
890	Lucas Silva Farias	\N	lucas-silva-farias	players/photo/33.jpg	19	\N	\N	1985-02-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	33
891	Richard Bryan Franzner	\N	richard-bryan-franzner	players/photo/33.jpg	20	\N	\N	1989-08-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	33
892	Matheus Alexandre	\N	matheus-alexandre	players/photo/33.jpg	22	\N	\N	1996-04-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	33
893	Rhuan Geovani Maximiano	\N	rhuan-geovani-maximiano	players/photo/33.jpg	23	\N	\N	1992-10-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	33
894	Diego Rodrigues Da Silva	\N	diego-rodrigues-da-silva	players/photo/33.jpg	30	\N	\N	2018-08-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	33
895	Paulo Henrique Amorim	\N	paulo-henrique-amorim	players/photo/33.jpg	35	\N	\N	1997-01-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	33
896	Regis Nascimento Sass	\N	regis-nascimento-sass	players/photo/33.jpg	38	\N	\N	1990-05-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	33
897	Bruno Rodrigues Francisconi	\N	bruno-rodrigues-francisconi	players/photo/33.jpg	40	\N	\N	1989-02-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	33
898	José Daniel Castilho	\N	jose-daniel-castilho	players/photo/33.jpg	42	\N	\N	1987-01-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	33
899	Diego Morales Fuentes	\N	diego-morales-fuentes	players/photo/33.jpg	50	\N	\N	1992-09-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	33
900	Vitor Pelegrine Alvarez	\N	vitor-pelegrine-alvarez	players/photo/33.jpg	51	\N	\N	1997-02-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	33
901	Claudio Adriano Starosky	\N	claudio-adriano-starosky	players/photo/33.jpg	52	\N	\N	1989-03-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	33
902	Lucas Humberto Deretti	\N	lucas-humberto-deretti	players/photo/33.jpg	54	\N	\N	1995-03-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	33
903	Willian Takanage	\N	willian-takanage	players/photo/33.jpg	55	\N	\N	1986-03-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	33
904	Dione Roger De Jesus	\N	dione-roger-de-jesus	players/photo/33.jpg	56	\N	\N	1982-09-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	33
905	Bruno Gabriel Graf De Lima	\N	bruno-gabriel-graf-de-lima	players/photo/33.jpg	57	\N	\N	1990-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	33
906	Rudinaldo Ferreira De Brito	\N	rudinaldo-ferreira-de-brito	players/photo/33.jpg	58	\N	\N	1988-03-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	33
907	Lucas Eduardo Raspe	\N	lucas-eduardo-raspe	players/photo/33.jpg	59	\N	\N	1994-03-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	33
908	Diego Lopes Diogo	\N	diego-lopes-diogo	players/photo/33.jpg	63	\N	\N	1993-03-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	33
16	Ygor De Andrade Vitalino	\N	ygor-de-andrade-vitalino	players/photo/1.jpg	15	\N	\N	1992-11-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	1
17	Jonathan Chritian Rodrigues De Souza	\N	jonathan-chritian-rodrigues-de-souza	players/photo/1.jpg	16	\N	\N	1998-11-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	1
18	Gustavo Ribeiro Da Cunha Peixoto	\N	gustavo-ribeiro-da-cunha-peixoto	players/photo/1.jpg	17	\N	\N	1998-09-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	1
19	Bruno Elizei Malta	\N	bruno-elizei-malta	players/photo/1.jpg	18	\N	\N	1994-09-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	1
20	Matheus Afonso Abreu De Moraes	\N	matheus-afonso-abreu-de-moraes	players/photo/1.jpg	19	\N	\N	1997-12-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
21	Marco Antonio Furtado Gheller	\N	marco-antonio-furtado-gheller	players/photo/1.jpg	20	\N	\N	1991-03-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	1
22	Matheus De Morais Santos	\N	matheus-de-morais-santos	players/photo/1.jpg	21	\N	\N	1999-06-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	1
23	Thiago Tavares Junqueira Paranhos	\N	thiago-tavares-junqueira-paranhos	players/photo/1.jpg	22	\N	\N	1982-12-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	1
24	João Felipe Chamone Sant'Anna	\N	joao-felipe-chamone-sant-anna	players/photo/1.jpg	23	\N	\N	1991-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
25	Vitor Teixeira Goncalves	\N	vitor-teixeira-goncalves	players/photo/1.jpg	24	\N	\N	1998-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	1
26	Wesley Luiz Fernandes	\N	wesley-luiz-fernandes	players/photo/1.jpg	25	\N	\N	1992-02-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	1
27	Matheus Lucio Nunes França	\N	matheus-lucio-nunes-franca	players/photo/1.jpg	25	\N	\N	1992-09-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	1
28	Vitor Cardoso Leite Ribeiro	\N	vitor-cardoso-leite-ribeiro	players/photo/1.jpg	26	\N	\N	1998-03-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	1
29	Diego Madrona Justo Geraldo	\N	diego-madrona-justo-geraldo	players/photo/1.jpg	28	\N	\N	1988-04-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	1
30	Gabriel Silva Cota	\N	gabriel-silva-cota	players/photo/1.jpg	29	\N	\N	1991-09-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	1
31	Bernardo Teodoro Da Silva	\N	bernardo-teodoro-da-silva	players/photo/1.jpg	30	\N	\N	2000-11-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	1
32	Pedro Mesquita Lopes Barreto	\N	pedro-mesquita-lopes-barreto	players/photo/1.jpg	32	\N	\N	1989-02-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
33	Gleison Martins Santos	\N	gleison-martins-santos	players/photo/1.jpg	33	\N	\N	2018-06-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	1
34	Italo Matheus Alves Saldanha	\N	italo-matheus-alves-saldanha	players/photo/1.jpg	34	\N	\N	1995-03-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	1
35	Manoel Teles Coutinho Filho	\N	manoel-teles-coutinho-filho	players/photo/1.jpg	35	\N	\N	1995-01-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	1
36	Matheus De Castro Lisboa	\N	matheus-de-castro-lisboa	players/photo/1.jpg	37	\N	\N	1991-03-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	1
37	Bruno Soragi Bachur	\N	bruno-soragi-bachur	players/photo/1.jpg	38	\N	\N	1990-12-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	1
38	Jader Ferreira Silva Rocha	\N	jader-ferreira-silva-rocha	players/photo/1.jpg	39	\N	\N	1987-12-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	1
39	Bryan Lenicker Pereira De Oliveira	\N	bryan-lenicker-pereira-de-oliveira	players/photo/1.jpg	41	\N	\N	2001-09-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
40	Rafael Fiuza	\N	rafael-fiuza	players/photo/1.jpg	44	\N	\N	1983-04-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	4	1
41	Helder Costa Drumond	\N	helder-costa-drumond	players/photo/1.jpg	45	\N	\N	1992-02-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
909	Julio Cesar Diaz Alvarado	\N	julio-cesar-diaz-alvarado	players/photo/33.jpg	65	\N	\N	1992-10-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	33
910	Daniel Massulo Aguiar Silva	\N	daniel-massulo-aguiar-silva	players/photo/33.jpg	69	\N	\N	1988-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	33
911	Eduardo Andrei Peters	\N	eduardo-andrei-peters	players/photo/33.jpg	69	\N	\N	1996-12-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	33
912	Junior Ugarte Kruger	\N	junior-ugarte-kruger	players/photo/33.jpg	69	\N	\N	1993-05-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	33
913	Rodolfo Alfredo Marques Mattedi	\N	rodolfo-alfredo-marques-mattedi	players/photo/33.jpg	73	\N	\N	1992-09-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	33
914	Paulo Cavichão Junior	\N	paulo-cavichao-junior	players/photo/33.jpg	74	\N	\N	1990-03-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	33
915	Alexandre Farber Sucharski	\N	alexandre-farber-sucharski	players/photo/33.jpg	77	\N	\N	1992-09-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	33
916	Alexandre Gagala Filho	\N	alexandre-gagala-filho	players/photo/33.jpg	79	\N	\N	1979-07-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	33
917	Guilherme Gomes Wielewski	\N	guilherme-gomes-wielewski	players/photo/33.jpg	80	\N	\N	1995-08-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	33
918	Everton Gnewuch	\N	everton-gnewuch	players/photo/33.jpg	81	\N	\N	2017-07-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	33
919	Bruno Felipe Doege	\N	bruno-felipe-doege	players/photo/33.jpg	83	\N	\N	2002-08-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	33
920	Emerson Carlos Manske	\N	emerson-carlos-manske	players/photo/33.jpg	83	\N	\N	1996-05-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	33
1245	Alan Sa Barbosa	\N	alan-sa-barbosa	players/photo/53.jpg	57	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
921	Pedro Luiz Rodrigues Dos Santos	\N	pedro-luiz-rodrigues-dos-santos	players/photo/33.jpg	85	\N	\N	1993-11-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	33
922	Lucas Roberto De Oliveira Fidelis	\N	lucas-roberto-de-oliveira-fidelis	players/photo/33.jpg	86	\N	\N	2018-01-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	33
923	William Vagner Dos Santos Mucury	\N	william-vagner-dos-santos-mucury	players/photo/33.jpg	87	\N	\N	1987-05-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	33
924	Jonathan Henrique Pelens	\N	jonathan-henrique-pelens	players/photo/33.jpg	89	\N	\N	1996-07-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	33
925	Andreas Trapp	\N	andreas-trapp	players/photo/33.jpg	91	\N	\N	1991-07-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	33
926	Michel Konell	\N	michel-konell	players/photo/33.jpg	92	\N	\N	1988-12-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	33
927	Fábio Henrique De Almeida	\N	fabio-henrique-de-almeida	players/photo/33.jpg	94	\N	\N	1993-07-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	33
928	Djoni Mayer	\N	djoni-mayer	players/photo/33.jpg	95	\N	\N	1991-06-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	33
929	Ramon Batista Soares Nascimento	\N	ramon-batista-soares-nascimento	players/photo/33.jpg	97	\N	\N	1989-04-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	33
930	Reginaldo Almada Larroza	\N	reginaldo-almada-larroza	players/photo/33.jpg	98	\N	\N	1991-10-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	33
931	Roni Marcos Wonsowicz	\N	roni-marcos-wonsowicz	players/photo/33.jpg	99	\N	\N	1982-11-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	33
932	Callus Cox	\N	callus-cox	players/photo/34.jpg	1	\N	\N	1990-09-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
933	Ednaldo Braz De Holanda Júnior	\N	ednaldo-braz-de-holanda-junior	players/photo/34.jpg	2	\N	\N	1988-09-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
934	Diego Farias Aranha De Lucena	\N	diego-farias-aranha-de-lucena	players/photo/34.jpg	3	\N	\N	1987-07-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
936	Felipe Sérgio De Aquino Golzio	\N	felipe-sergio-de-aquino-golzio	players/photo/34.jpg	5	\N	\N	1989-12-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
937	Guilherme Augusto Aires Da Silva	\N	guilherme-augusto-aires-da-silva	players/photo/34.jpg	8	\N	\N	1997-10-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
938	Tulio Inacio De Albuquerque	\N	tulio-inacio-de-albuquerque	players/photo/34.jpg	9	\N	\N	1994-05-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
939	Calebe Reis Gonçalves Braga	\N	calebe-reis-goncalves-braga	players/photo/34.jpg	10	\N	\N	1991-01-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	34
940	Vitor Cavalcanti Ramalho	\N	vitor-cavalcanti-ramalho	players/photo/34.jpg	11	\N	\N	1993-02-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
941	Rafael Jonattas Fernandes Da Silva	\N	rafael-jonattas-fernandes-da-silva	players/photo/34.jpg	12	\N	\N	1989-08-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
942	Arthur Pereira Monteiro Pita	\N	arthur-pereira-monteiro-pita	players/photo/34.jpg	13	\N	\N	1999-02-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	34
943	Kevin Vieira De Carvalho	\N	kevin-vieira-de-carvalho	players/photo/34.jpg	15	\N	\N	1996-04-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
944	Emanuel Francisco De Carvalho Pinto	\N	emanuel-francisco-de-carvalho-pinto	players/photo/34.jpg	16	\N	\N	2000-05-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
945	Denner Lucena Dantas	\N	denner-lucena-dantas	players/photo/34.jpg	17	\N	\N	1998-05-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
946	Júlio Cesar Silva Acioly	\N	julio-cesar-silva-acioly	players/photo/34.jpg	18	\N	\N	1991-04-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
947	Saulo De Tarso Figueredo Andrade Da Silveira	\N	saulo-de-tarso-figueredo-andrade-da-silveira	players/photo/34.jpg	19	\N	\N	1995-05-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
948	Jonatha Barbisa De Carvalho	\N	jonatha-barbisa-de-carvalho	players/photo/34.jpg	20	\N	\N	1991-02-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	34
949	José Gilson De Lucena Barbosa Filho	\N	jose-gilson-de-lucena-barbosa-filho	players/photo/34.jpg	21	\N	\N	1993-05-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
950	Matheus Borges Dos Santos	\N	matheus-borges-dos-santos	players/photo/34.jpg	22	\N	\N	1995-01-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
951	Heulyston Mariano Da Silva	\N	heulyston-mariano-da-silva	players/photo/34.jpg	23	\N	\N	1992-05-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
952	José Edvaldo Rosas Filho	\N	jose-edvaldo-rosas-filho	players/photo/34.jpg	24	\N	\N	1989-04-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
953	Flávio De Almeida Aires Gouveia	\N	flavio-de-almeida-aires-gouveia	players/photo/34.jpg	27	\N	\N	1989-11-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
954	Raiff De França Vasconcelos Filho	\N	raiff-de-franca-vasconcelos-filho	players/photo/34.jpg	28	\N	\N	1986-12-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
955	Paulo Roberto Jacques Coutinho Neto	\N	paulo-roberto-jacques-coutinho-neto	players/photo/34.jpg	29	\N	\N	1999-03-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
956	Alenilson Francisco Do Nascimento	\N	alenilson-francisco-do-nascimento	players/photo/34.jpg	30	\N	\N	1982-06-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	34
957	Willame Rosendo Da Silva	\N	willame-rosendo-da-silva	players/photo/34.jpg	31	\N	\N	1986-10-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
958	Filipe Paiva Mendes	\N	filipe-paiva-mendes	players/photo/34.jpg	32	\N	\N	1990-03-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
959	Heron Souza De Azevedo	\N	heron-souza-de-azevedo	players/photo/34.jpg	33	\N	\N	1985-12-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
960	Vinicius Serrano Braz De Holanda	\N	vinicius-serrano-braz-de-holanda	players/photo/34.jpg	34	\N	\N	1990-07-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
961	Igor Trigueiro Nery	\N	igor-trigueiro-nery	players/photo/34.jpg	35	\N	\N	1990-05-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
962	Cleverson De Souza Almeida	\N	cleverson-de-souza-almeida	players/photo/34.jpg	37	\N	\N	1988-12-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	34
963	Rusllan Reis Rodrigues Bezerra	\N	rusllan-reis-rodrigues-bezerra	players/photo/34.jpg	38	\N	\N	1984-07-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	34
964	Lucas Rodrigues De Medeiros Santos	\N	lucas-rodrigues-de-medeiros-santos	players/photo/34.jpg	41	\N	\N	1994-07-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
965	Henrique Alcino Silva De Oliveira	\N	henrique-alcino-silva-de-oliveira	players/photo/34.jpg	43	\N	\N	1986-05-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
966	Lucas Adolfo Brito	\N	lucas-adolfo-brito	players/photo/34.jpg	44	\N	\N	1993-08-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	34
967	José Edgleison Firmino Gonçalves	\N	jose-edgleison-firmino-goncalves	players/photo/34.jpg	46	\N	\N	1992-04-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
968	Diógenes Mendes Nunes Junior	\N	diogenes-mendes-nunes-junior	players/photo/34.jpg	47	\N	\N	1993-07-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
969	Micael Barbosa Bezerra Vieira De Lima	\N	micael-barbosa-bezerra-vieira-de-lima	players/photo/34.jpg	50	\N	\N	1996-09-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
970	Caio Sherman Pereira Caldas	\N	caio-sherman-pereira-caldas	players/photo/34.jpg	52	\N	\N	1989-08-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
971	Raphael Martins Venancio	\N	raphael-martins-venancio	players/photo/34.jpg	53	\N	\N	1996-04-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
972	Ricardo De Barros Maia Junior	\N	ricardo-de-barros-maia-junior	players/photo/34.jpg	54	\N	\N	1991-03-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
973	Tallys Nathan De Sousa	\N	tallys-nathan-de-sousa	players/photo/34.jpg	55	\N	\N	1990-11-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
974	Fagner Soares Da Soledade	\N	fagner-soares-da-soledade	players/photo/34.jpg	56	\N	\N	1990-07-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
975	Cláudio Cesar Evangelista Da Silva	\N	claudio-cesar-evangelista-da-silva	players/photo/34.jpg	57	\N	\N	1989-04-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
976	Jackson Lima De Oliveira	\N	jackson-lima-de-oliveira	players/photo/34.jpg	58	\N	\N	1983-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
977	Renan Ramalho Paiva	\N	renan-ramalho-paiva	players/photo/34.jpg	59	\N	\N	1993-09-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
978	Caio Viktor Albino Felipe	\N	caio-viktor-albino-felipe	players/photo/34.jpg	60	\N	\N	1988-03-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	34
979	Helber Wagner De Macedo Almeida	\N	helber-wagner-de-macedo-almeida	players/photo/34.jpg	61	\N	\N	1991-01-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
980	Luiz Henrique Correia Neves	\N	luiz-henrique-correia-neves	players/photo/34.jpg	62	\N	\N	1984-10-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
981	Felipe Antonio Melo Jardim	\N	felipe-antonio-melo-jardim	players/photo/34.jpg	63	\N	\N	1982-09-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
982	Lenin Albuquerque Caldeira	\N	lenin-albuquerque-caldeira	players/photo/34.jpg	66	\N	\N	1987-03-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	34
983	Bruno Sherman Pereira Caldas	\N	bruno-sherman-pereira-caldas	players/photo/34.jpg	68	\N	\N	1991-08-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
984	Marcilio Otávio Nascimento Neto	\N	marcilio-otavio-nascimento-neto	players/photo/34.jpg	69	\N	\N	2000-08-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
985	Rufo Bezerra De Melo Neto	\N	rufo-bezerra-de-melo-neto	players/photo/34.jpg	71	\N	\N	1987-09-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
986	Breno Araujo Da Silva Santos	\N	breno-araujo-da-silva-santos	players/photo/34.jpg	72	\N	\N	2018-04-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
987	Antonio Phelippe Dantas De Lira Barros	\N	antonio-phelippe-dantas-de-lira-barros	players/photo/34.jpg	73	\N	\N	1989-01-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
988	Ytalo Henrique Pereira De Pontes	\N	ytalo-henrique-pereira-de-pontes	players/photo/34.jpg	74	\N	\N	1999-04-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
989	Fernando César De Sousa Freire Filho	\N	fernando-cesar-de-sousa-freire-filho	players/photo/34.jpg	75	\N	\N	1994-03-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
990	Gabriel De Oliveira Rodrigues	\N	gabriel-de-oliveira-rodrigues	players/photo/34.jpg	77	\N	\N	1995-12-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
991	Luís Guilherme Rangel Raposo	\N	luis-guilherme-rangel-raposo	players/photo/34.jpg	79	\N	\N	1990-02-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
992	Diego Do Nascimento Targino	\N	diego-do-nascimento-targino	players/photo/34.jpg	80	\N	\N	1988-07-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
993	Rafael Lins De Souza	\N	rafael-lins-de-souza	players/photo/34.jpg	81	\N	\N	1987-09-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
994	Emerson Siqueira De Souza	\N	emerson-siqueira-de-souza	players/photo/34.jpg	85	\N	\N	1993-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
995	Bruno Lucena De Medeiros	\N	bruno-lucena-de-medeiros	players/photo/34.jpg	87	\N	\N	1997-05-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	34
996	Marcos Hércules Macedo De Souza	\N	marcos-hercules-macedo-de-souza	players/photo/34.jpg	90	\N	\N	1992-10-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
997	Raman Lucas De Lucena Ferreira	\N	raman-lucas-de-lucena-ferreira	players/photo/34.jpg	91	\N	\N	1991-03-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
998	Lívio Gonçalves Pereira	\N	livio-goncalves-pereira	players/photo/34.jpg	93	\N	\N	1989-12-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	34
999	Jefferson Barbosa Florencio	\N	jefferson-barbosa-florencio	players/photo/34.jpg	94	\N	\N	1990-11-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
1000	José Nogueira Costa Filho	\N	jose-nogueira-costa-filho	players/photo/34.jpg	96	\N	\N	1986-06-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	34
1001	Renato Augusto E Silva Coutinho	\N	renato-augusto-e-silva-coutinho	players/photo/34.jpg	97	\N	\N	1992-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
1002	Eliel Monteiro Fernandes Junior	\N	eliel-monteiro-fernandes-junior	players/photo/34.jpg	98	\N	\N	1991-03-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	34
1003	Vinicius Mendes Silva	\N	vinicius-mendes-silva	players/photo/34.jpg	99	\N	\N	1996-12-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	34
1004	Bruno Castro Bortoluzzi	\N	bruno-castro-bortoluzzi	players/photo/35.jpg	1	\N	\N	1996-02-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	35
1005	Willian Oliveira Felizari	\N	willian-oliveira-felizari	players/photo/35.jpg	2	\N	\N	1990-04-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	35
1006	Daniel Andreis Reis	\N	daniel-andreis-reis	players/photo/35.jpg	4	\N	\N	2000-04-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	35
1007	Alvin. J. Brow	\N	alvin-j-brow	players/photo/35.jpg	5	\N	\N	1992-11-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	35
1008	Alvaro Frohlich	\N	alvaro-frohlich	players/photo/35.jpg	7	\N	\N	1979-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	35
1009	Marcos Vinicius De Almeida	\N	marcos-vinicius-de-almeida	players/photo/35.jpg	11	\N	\N	1990-11-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	35
1010	Jardel Telles	\N	jardel-telles	players/photo/35.jpg	16	\N	\N	1987-03-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	35
1011	Felipe Da Rosa Silva	\N	felipe-da-rosa-silva	players/photo/35.jpg	19	\N	\N	1998-08-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	35
1012	Felipe Frohlich	\N	felipe-frohlich	players/photo/35.jpg	23	\N	\N	2000-11-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	35
1013	Gustavo Henrique Polito	\N	gustavo-henrique-polito	players/photo/35.jpg	28	\N	\N	1999-03-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	35
1014	Vinicius Danna	\N	vinicius-danna	players/photo/35.jpg	33	\N	\N	1986-09-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	35
1015	Guilherme Alves Bittarello	\N	guilherme-alves-bittarello	players/photo/35.jpg	34	\N	\N	2002-02-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	35
1016	Mauro De Lima Cardoso Junior	\N	mauro-de-lima-cardoso-junior	players/photo/35.jpg	41	\N	\N	1988-11-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	35
1017	Vinicius Miranda Staudt	\N	vinicius-miranda-staudt	players/photo/35.jpg	44	\N	\N	1994-02-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	35
1018	Diogo Germano De Oliveira	\N	diogo-germano-de-oliveira	players/photo/35.jpg	49	\N	\N	1993-04-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	35
1019	Rodrigo Gomes Castro	\N	rodrigo-gomes-castro	players/photo/35.jpg	51	\N	\N	1986-03-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	35
1020	Juliano Chiappin Tegner	\N	juliano-chiappin-tegner	players/photo/35.jpg	52	\N	\N	1994-06-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	35
1021	Rafael De Oliveira	\N	rafael-de-oliveira	players/photo/35.jpg	54	\N	\N	1989-04-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	35
1022	Rodrigo Amarante Borges	\N	rodrigo-amarante-borges	players/photo/35.jpg	55	\N	\N	1980-06-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	35
1023	Alisson Cristofer Pinto Martins	\N	alisson-cristofer-pinto-martins	players/photo/35.jpg	56	\N	\N	1993-05-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	35
1024	Eduardo Pereira Lisboa	\N	eduardo-pereira-lisboa	players/photo/35.jpg	63	\N	\N	1993-01-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	35
1025	Lucas Dellazari Vebber	\N	lucas-dellazari-vebber	players/photo/35.jpg	71	\N	\N	1993-08-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	35
1026	Chaidan Ramon Maciel	\N	chaidan-ramon-maciel	players/photo/35.jpg	72	\N	\N	1991-02-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	35
1027	Mauricio Miranda Cislaghi	\N	mauricio-miranda-cislaghi	players/photo/35.jpg	74	\N	\N	1993-03-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	35
1028	Micael Borges Soares	\N	micael-borges-soares	players/photo/35.jpg	77	\N	\N	1991-11-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	35
1029	Joao Vitor Daneluz Motta	\N	joao-vitor-daneluz-motta	players/photo/35.jpg	78	\N	\N	2000-10-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	35
1030	Vagner Lopes Pacheco	\N	vagner-lopes-pacheco	players/photo/35.jpg	81	\N	\N	1987-12-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	35
1031	Vitor De Castro Lima Rhoden	\N	vitor-de-castro-lima-rhoden	players/photo/35.jpg	83	\N	\N	2001-11-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	35
1032	Alexandre Magnie Vigier	\N	alexandre-magnie-vigier	players/photo/35.jpg	85	\N	\N	1982-08-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	35
1033	Jeferson Bach	\N	jeferson-bach	players/photo/35.jpg	86	\N	\N	1994-06-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	35
1034	Renan Gonçalves De Mattos	\N	renan-goncalves-de-mattos	players/photo/35.jpg	87	\N	\N	1999-02-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	35
1035	Roger Freitas De Oliveira	\N	roger-freitas-de-oliveira	players/photo/35.jpg	88	\N	\N	1990-12-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	35
1036	Thiago Ricardo Ferrazza	\N	thiago-ricardo-ferrazza	players/photo/35.jpg	96	\N	\N	1988-05-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	35
1037	Bibiano De Borba	\N	bibiano-de-borba	players/photo/35.jpg	99	\N	\N	1981-10-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	35
1038	Gilvane Gonçalves Da Silva	\N	gilvane-goncalves-da-silva	players/photo/36.jpg	1	\N	\N	1980-05-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	36
1039	Adalberto Patrocínio Corrêa De Araújo	\N	adalberto-patrocinio-correa-de-araujo	players/photo/36.jpg	3	\N	\N	1967-04-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	36
1040	Carlos Roberto De Araujo Junior	\N	carlos-roberto-de-araujo-junior	players/photo/36.jpg	4	\N	\N	1996-10-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	36
1041	Joao Nivaldo Sampaio Junior	\N	joao-nivaldo-sampaio-junior	players/photo/36.jpg	5	\N	\N	1993-10-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	36
1042	Rômulo Oliveira Teodoro	\N	romulo-oliveira-teodoro	players/photo/36.jpg	6	\N	\N	1997-04-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	36
1043	Paulo Sérgio Ubaldino Junior	\N	paulo-sergio-ubaldino-junior	players/photo/36.jpg	7	\N	\N	1993-08-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	36
1044	Kaio Oliveira Da Silva	\N	kaio-oliveira-da-silva	players/photo/36.jpg	8	\N	\N	1997-09-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	36
1045	Leonardo Heringer Schoenrock	\N	leonardo-heringer-schoenrock	players/photo/36.jpg	9	\N	\N	1990-12-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	36
1046	Roger Rodrigues Costa	\N	roger-rodrigues-costa	players/photo/36.jpg	10	\N	\N	1992-12-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	36
1047	Fabricio De Paulo Colares Damásio	\N	fabricio-de-paulo-colares-damasio	players/photo/36.jpg	11	\N	\N	1986-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	36
1048	Daniel Da Silva Do Amaral	\N	daniel-da-silva-do-amaral	players/photo/36.jpg	15	\N	\N	1996-12-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	11	36
1049	Pedro Henrique Lomeu Sales	\N	pedro-henrique-lomeu-sales	players/photo/36.jpg	16	\N	\N	1998-06-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	36
1050	Juan Carlos Fialho Sales	\N	juan-carlos-fialho-sales	players/photo/36.jpg	17	\N	\N	1970-11-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	36
1051	Daniel  Da Silva Neto	\N	daniel-da-silva-neto	players/photo/36.jpg	18	\N	\N	1994-06-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	36
1052	Filipe Alvim Silva	\N	filipe-alvim-silva	players/photo/36.jpg	19	\N	\N	1990-04-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	36
1053	Bruno Cavalcante De Oliveira	\N	bruno-cavalcante-de-oliveira	players/photo/36.jpg	20	\N	\N	1992-02-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	36
1054	Omar Pereira Alves Júnior	\N	omar-pereira-alves-junior	players/photo/36.jpg	21	\N	\N	1999-02-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	36
1055	Wagner Júnio Moreira Rocha	\N	wagner-junio-moreira-rocha	players/photo/36.jpg	22	\N	\N	1991-10-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	36
1056	Gilberto De Freitas Silva	\N	gilberto-de-freitas-silva	players/photo/36.jpg	23	\N	\N	1981-01-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	36
1057	Matheus Lima Pereira	\N	matheus-lima-pereira	players/photo/36.jpg	24	\N	\N	1994-06-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	36
1058	Gabriel Gomes Soares Ladeira	\N	gabriel-gomes-soares-ladeira	players/photo/36.jpg	25	\N	\N	1993-08-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	36
1059	Erick Wallace Pereira Da Silva	\N	erick-wallace-pereira-da-silva	players/photo/36.jpg	26	\N	\N	1999-06-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	36
1060	Gustavo Godoi Mota	\N	gustavo-godoi-mota	players/photo/36.jpg	27	\N	\N	1998-04-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	36
1061	Yago Matheus Lopes Da Cunha	\N	yago-matheus-lopes-da-cunha	players/photo/36.jpg	28	\N	\N	1992-08-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	36
1062	Davi Moura Seiffert	\N	davi-moura-seiffert	players/photo/36.jpg	29	\N	\N	1995-05-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	36
1063	Vinícius Rangel De Oliveira	\N	vinicius-rangel-de-oliveira	players/photo/36.jpg	30	\N	\N	1999-01-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	36
1064	Lucas Santos Barbalho	\N	lucas-santos-barbalho	players/photo/36.jpg	31	\N	\N	2000-05-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	36
1065	Anthony Pacheco	\N	anthony-pacheco	players/photo/36.jpg	32	\N	\N	1984-02-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	36
1066	Renato Alves De Jesus	\N	renato-alves-de-jesus	players/photo/36.jpg	35	\N	\N	1983-04-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	36
1067	José Heldo Marques Ferreira	\N	jose-heldo-marques-ferreira	players/photo/36.jpg	36	\N	\N	1985-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	36
1068	Diego Reis De Melo	\N	diego-reis-de-melo	players/photo/36.jpg	38	\N	\N	1983-05-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	36
1069	Alencar Bellucci Holtz	\N	alencar-bellucci-holtz	players/photo/36.jpg	39	\N	\N	1992-12-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	36
1070	Ivailton De Jesus Souza	\N	ivailton-de-jesus-souza	players/photo/36.jpg	50	\N	\N	1986-03-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	36
1071	Felipe Vargas Grey Tavares	\N	felipe-vargas-grey-tavares	players/photo/36.jpg	51	\N	\N	1983-07-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	36
1072	Anderson Roberto Oliveira Lisboa	\N	anderson-roberto-oliveira-lisboa	players/photo/36.jpg	53	\N	\N	1974-09-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	36
1073	Tiago Antunes De Souza	\N	tiago-antunes-de-souza	players/photo/36.jpg	54	\N	\N	1988-04-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	36
1074	Guilherme Henrique Moreira	\N	guilherme-henrique-moreira	players/photo/36.jpg	55	\N	\N	1989-10-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	36
1075	Franklin Chaves Francisco	\N	franklin-chaves-francisco	players/photo/36.jpg	57	\N	\N	1986-06-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	36
1076	Paulo Roberto Tavares Rodrigues	\N	paulo-roberto-tavares-rodrigues	players/photo/36.jpg	58	\N	\N	1985-05-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	36
1077	Matheus Nishiyama Pedroca	\N	matheus-nishiyama-pedroca	players/photo/36.jpg	59	\N	\N	2017-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	36
1078	David Stephen Cruz	\N	david-stephen-cruz	players/photo/36.jpg	67	\N	\N	1988-09-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	36
1079	Jassel Cruz Da Silva	\N	jassel-cruz-da-silva	players/photo/36.jpg	68	\N	\N	1985-07-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	36
1080	Paulo Roberto Aragao Ramalho	\N	paulo-roberto-aragao-ramalho	players/photo/36.jpg	69	\N	\N	1981-01-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	36
1081	Glenio E Silva Moreira	\N	glenio-e-silva-moreira	players/photo/36.jpg	70	\N	\N	1985-12-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	36
1082	Alexsander Arrysson Freitas Silva	\N	alexsander-arrysson-freitas-silva	players/photo/36.jpg	71	\N	\N	1991-10-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	36
1083	Celio Cardoso Adao De Souza	\N	celio-cardoso-adao-de-souza	players/photo/36.jpg	72	\N	\N	1976-09-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	36
1084	Pedro Paulo Santos Paiva Amaral	\N	pedro-paulo-santos-paiva-amaral	players/photo/36.jpg	73	\N	\N	2000-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	36
1085	Thiago Bernardo De Souza	\N	thiago-bernardo-de-souza	players/photo/36.jpg	75	\N	\N	1987-01-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	36
1086	Lucas Marques Dias Araujo Louzeiro	\N	lucas-marques-dias-araujo-louzeiro	players/photo/36.jpg	76	\N	\N	1995-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	36
1087	Filipe De Andrade Martins	\N	filipe-de-andrade-martins	players/photo/36.jpg	78	\N	\N	1984-03-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	36
1088	Marcos Da Silva Alves	\N	marcos-da-silva-alves	players/photo/36.jpg	79	\N	\N	1985-03-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	36
1089	Filipe Santos Rodrigues	\N	filipe-santos-rodrigues	players/photo/36.jpg	80	\N	\N	1990-11-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	36
1090	Wanderson Gracivan Fernandes	\N	wanderson-gracivan-fernandes	players/photo/36.jpg	81	\N	\N	1978-04-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	36
1091	Mateus Do Nascimento Wanzeller	\N	mateus-do-nascimento-wanzeller	players/photo/36.jpg	87	\N	\N	1999-01-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	36
1092	Gabriel De Sa Peron Mendes	\N	gabriel-de-sa-peron-mendes	players/photo/36.jpg	88	\N	\N	1989-01-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	36
1093	Carlos Renato Veloso Silva	\N	carlos-renato-veloso-silva	players/photo/36.jpg	90	\N	\N	1988-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	36
1094	Marcus Vinícius Arnhold Da Silva	\N	marcus-vinicius-arnhold-da-silva	players/photo/36.jpg	92	\N	\N	1992-10-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	36
1095	Gustavo Da Silva Dias	\N	gustavo-da-silva-dias	players/photo/36.jpg	93	\N	\N	1995-09-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	36
1096	Luiz Carlos Nunes De Brito	\N	luiz-carlos-nunes-de-brito	players/photo/36.jpg	94	\N	\N	1988-02-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	36
1097	Gabriel Augusto Figueiredo Fonseca	\N	gabriel-augusto-figueiredo-fonseca	players/photo/36.jpg	95	\N	\N	1995-01-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	36
1098	Bruno Fernandes Da Silva	\N	bruno-fernandes-da-silva	players/photo/36.jpg	96	\N	\N	1979-04-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	36
1099	Eder Felipe Azevedo Lins	\N	eder-felipe-azevedo-lins	players/photo/36.jpg	97	\N	\N	1988-09-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	36
1100	Augusto Oliveira	\N	augusto-oliveira	players/photo/36.jpg	98	\N	\N	1990-12-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	36
1101	Leonardo Ribeiro	\N	leonardo-ribeiro	players/photo/36.jpg	99	\N	\N	1984-11-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	36
1102	Victor César Barbosa Palhano	\N	victor-cesar-barbosa-palhano	players/photo/45.jpg	1	\N	\N	1992-10-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	45
1103	Halanilton Fernandes Da Silva	\N	halanilton-fernandes-da-silva	players/photo/45.jpg	2	\N	\N	1992-08-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	45
1104	Thiago Henrique Almeida Ferreira De Andrade	\N	thiago-henrique-almeida-ferreira-de-andrade	players/photo/45.jpg	3	\N	\N	1994-07-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	45
1105	Diógenes Fagundes De Melo Araújo	\N	diogenes-fagundes-de-melo-araujo	players/photo/45.jpg	4	\N	\N	1993-01-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	45
1106	Matheus Marques De Oliveira	\N	matheus-marques-de-oliveira	players/photo/45.jpg	5	\N	\N	1999-08-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	45
1107	Gabryell Alexandre Costa Pinheiro	\N	gabryell-alexandre-costa-pinheiro	players/photo/45.jpg	6	\N	\N	1999-02-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	45
1108	José Roberto Da Silva Júnior	\N	jose-roberto-da-silva-junior	players/photo/45.jpg	9	\N	\N	1993-05-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	45
1109	Willian Gustavo Alves Leite	\N	willian-gustavo-alves-leite	players/photo/45.jpg	11	\N	\N	1998-01-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	45
1110	Jeilson Oliveira De Brito Filho	\N	jeilson-oliveira-de-brito-filho	players/photo/45.jpg	13	\N	\N	1996-07-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	45
1111	João Raphael Pereira Nunes Ramos Abrantes	\N	joao-raphael-pereira-nunes-ramos-abrantes	players/photo/45.jpg	17	\N	\N	1999-10-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	45
1112	Giuseppe Regis Da Silva Duarte	\N	giuseppe-regis-da-silva-duarte	players/photo/45.jpg	22	\N	\N	1990-03-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	45
1113	Arthur Henrique Souza Bonifácio	\N	arthur-henrique-souza-bonifacio	players/photo/45.jpg	23	\N	\N	2001-09-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	45
1114	Emerson Lobo Domingos De Medeiros	\N	emerson-lobo-domingos-de-medeiros	players/photo/45.jpg	24	\N	\N	1986-10-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	45
1115	Raphael Bezerra De Souza	\N	raphael-bezerra-de-souza	players/photo/45.jpg	26	\N	\N	1993-08-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	45
1116	Jonatas Guedes Da Costa	\N	jonatas-guedes-da-costa	players/photo/45.jpg	27	\N	\N	1995-08-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	45
1117	Ragner Kennedy Silva Pessoa	\N	ragner-kennedy-silva-pessoa	players/photo/45.jpg	29	\N	\N	1995-05-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	45
1118	Pablo Araújo Moreira Da Silva	\N	pablo-araujo-moreira-da-silva	players/photo/45.jpg	33	\N	\N	2001-10-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	45
1119	Pedro Paulo Lopes Soares Dantas	\N	pedro-paulo-lopes-soares-dantas	players/photo/45.jpg	34	\N	\N	1995-07-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	45
1120	Luiz Diego Vilela Guanabara	\N	luiz-diego-vilela-guanabara	players/photo/45.jpg	35	\N	\N	1995-06-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	45
1121	Anderson Damasceno De Paula	\N	anderson-damasceno-de-paula	players/photo/45.jpg	42	\N	\N	1996-03-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	45
1122	Gabriel Moura De Oliveira	\N	gabriel-moura-de-oliveira	players/photo/45.jpg	51	\N	\N	2001-09-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	45
1123	Johab Souza Da Silva	\N	johab-souza-da-silva	players/photo/45.jpg	52	\N	\N	1994-01-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	45
1124	Humberto De Souza Sena Júnior	\N	humberto-de-souza-sena-junior	players/photo/45.jpg	53	\N	\N	1986-09-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	45
1125	Marcos José Gondim Do Nascimento	\N	marcos-jose-gondim-do-nascimento	players/photo/45.jpg	54	\N	\N	1996-03-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	45
1126	Lucas Rodrigues Bandeira	\N	lucas-rodrigues-bandeira	players/photo/45.jpg	57	\N	\N	1999-11-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	45
1127	Matheus Da Silva Paulo	\N	matheus-da-silva-paulo	players/photo/45.jpg	58	\N	\N	1998-06-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	45
1128	Felipe Edberg Lopes Soares Dantas	\N	felipe-edberg-lopes-soares-dantas	players/photo/45.jpg	59	\N	\N	1989-09-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	45
1129	Hugo Giovanni Damasceno De Oliveira	\N	hugo-giovanni-damasceno-de-oliveira	players/photo/45.jpg	60	\N	\N	1979-05-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	45
1130	Alexandre Bayer Botelho	\N	alexandre-bayer-botelho	players/photo/45.jpg	64	\N	\N	1964-01-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	45
1131	Rafael Sousa Fernandes Neves	\N	rafael-sousa-fernandes-neves	players/photo/45.jpg	66	\N	\N	1994-05-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	45
1132	Erasmo Pereira Da Silva	\N	erasmo-pereira-da-silva	players/photo/45.jpg	67	\N	\N	1983-09-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	45
1133	Felipe Augusto Silva De Andrade	\N	felipe-augusto-silva-de-andrade	players/photo/45.jpg	71	\N	\N	1992-06-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	45
1134	Marcos Francisco De Souza	\N	marcos-francisco-de-souza	players/photo/45.jpg	74	\N	\N	1987-08-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	45
1135	Arthur Moura De Oliveira	\N	arthur-moura-de-oliveira	players/photo/45.jpg	75	\N	\N	1995-06-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	45
1136	Rodrigo Martins	\N	rodrigo-martins	players/photo/45.jpg	79	\N	\N	1979-06-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	45
1137	Rodrigo Madson Costa De Medeiros	\N	rodrigo-madson-costa-de-medeiros	players/photo/45.jpg	80	\N	\N	1990-12-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	45
1138	Matheus Ferreira Nunes	\N	matheus-ferreira-nunes	players/photo/45.jpg	84	\N	\N	1993-04-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	45
1139	Mário Jorge De Souza	\N	mario-jorge-de-souza	players/photo/45.jpg	85	\N	\N	1986-11-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	45
1140	Diego Miguel Barbosa Caridade	\N	diego-miguel-barbosa-caridade	players/photo/45.jpg	87	\N	\N	2002-05-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	45
1141	Carlos Vinícius De Sá Pessoa	\N	carlos-vinicius-de-sa-pessoa	players/photo/45.jpg	88	\N	\N	1998-12-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	45
1142	Ramon Hitalo Andrade De Faria	\N	ramon-hitalo-andrade-de-faria	players/photo/45.jpg	89	\N	\N	1989-09-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	45
1143	Francisco Ricardo Vicente	\N	francisco-ricardo-vicente	players/photo/45.jpg	90	\N	\N	1987-03-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	45
1144	Michael Lennon Araújo De Lima	\N	michael-lennon-araujo-de-lima	players/photo/45.jpg	91	\N	\N	1990-02-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	45
1145	Livanaldo Barbosa Bernadino	\N	livanaldo-barbosa-bernadino	players/photo/45.jpg	93	\N	\N	1986-12-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	45
1146	Levy Benoni Braga Pinheiro	\N	levy-benoni-braga-pinheiro	players/photo/45.jpg	94	\N	\N	1999-04-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	45
1147	Pablo Stefan Gomes Pereira	\N	pablo-stefan-gomes-pereira	players/photo/45.jpg	95	\N	\N	1996-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	45
1148	Leandro Satt De Melo Maia	\N	leandro-satt-de-melo-maia	players/photo/45.jpg	96	\N	\N	1990-12-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	45
1149	Alípio Monteiro De Queiroz Fonseca Neto	\N	alipio-monteiro-de-queiroz-fonseca-neto	players/photo/45.jpg	98	\N	\N	1989-10-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	45
1150	Afonso Miguel Junior	\N	afonso-miguel-junior	players/photo/50.jpg	1	\N	\N	1990-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	50
1151	Bruno Sgarioni	\N	bruno-sgarioni	players/photo/50.jpg	2	\N	\N	1996-10-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1152	Giovani Souza De Souza	\N	giovani-souza-de-souza	players/photo/50.jpg	3	\N	\N	1988-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	50
1153	Mateus Salim Da Rosa	\N	mateus-salim-da-rosa	players/photo/50.jpg	6	\N	\N	1995-10-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1154	Gustavo Felipe Dobner	\N	gustavo-felipe-dobner	players/photo/50.jpg	7	\N	\N	1988-03-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	50
1155	Lucas Copi	\N	lucas-copi	players/photo/50.jpg	9	\N	\N	1990-09-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1156	William Pereira Zanardine	\N	william-pereira-zanardine	players/photo/50.jpg	10	\N	\N	1989-01-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1157	Ricardo Santos Da Cruz	\N	ricardo-santos-da-cruz	players/photo/50.jpg	11	\N	\N	1992-02-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	50
1158	João Paulo Bertola	\N	joao-paulo-bertola	players/photo/50.jpg	12	\N	\N	1986-05-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1159	Pedro Henrique Ramos	\N	pedro-henrique-ramos	players/photo/50.jpg	13	\N	\N	1997-07-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1160	Luiz Fernando Vaz	\N	luiz-fernando-vaz	players/photo/50.jpg	15	\N	\N	1996-09-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1161	Marcelo Guedes De Oliveira	\N	marcelo-guedes-de-oliveira	players/photo/50.jpg	16	\N	\N	1985-04-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	50
1162	Duilham Dos Santos Lima	\N	duilham-dos-santos-lima	players/photo/50.jpg	17	\N	\N	1989-11-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	50
1163	André Fiori Sequinel	\N	andre-fiori-sequinel	players/photo/50.jpg	18	\N	\N	1998-04-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	50
1164	Frederick Velloso Gomes Da Silva	\N	frederick-velloso-gomes-da-silva	players/photo/50.jpg	19	\N	\N	1983-05-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	50
1165	Lucas Herrera Natal	\N	lucas-herrera-natal	players/photo/50.jpg	20	\N	\N	1996-01-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1166	Anderson Cristiano Kvas	\N	anderson-cristiano-kvas	players/photo/50.jpg	23	\N	\N	1993-11-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1167	Jeferson Lourenco	\N	jeferson-lourenco	players/photo/50.jpg	24	\N	\N	1989-08-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	50
1168	Adriano Neves Mronskowski	\N	adriano-neves-mronskowski	players/photo/50.jpg	26	\N	\N	1979-01-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1169	Olivair Bardini Guilman	\N	olivair-bardini-guilman	players/photo/50.jpg	27	\N	\N	1994-08-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	50
1170	Patrick Guimarães De Oliveira	\N	patrick-guimaraes-de-oliveira	players/photo/50.jpg	28	\N	\N	1996-05-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	50
1171	Gustavo Henrique Cordeiro Lemes	\N	gustavo-henrique-cordeiro-lemes	players/photo/50.jpg	29	\N	\N	1996-04-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1172	Jimmy Kinczeski Goossen	\N	jimmy-kinczeski-goossen	players/photo/50.jpg	30	\N	\N	1990-12-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1173	Arthur Gregorio Coelho	\N	arthur-gregorio-coelho	players/photo/50.jpg	32	\N	\N	1996-06-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	50
1174	Cleverson Fernando Kvas	\N	cleverson-fernando-kvas	players/photo/50.jpg	37	\N	\N	1991-11-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1175	Andre Palkoski Filho	\N	andre-palkoski-filho	players/photo/50.jpg	41	\N	\N	1997-04-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1176	Ricardo Zandona Phillippsen	\N	ricardo-zandona-phillippsen	players/photo/50.jpg	42	\N	\N	1989-08-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	50
1177	Paulo Felipe Manosso Vidal	\N	paulo-felipe-manosso-vidal	players/photo/50.jpg	47	\N	\N	1992-09-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1178	Eduardo Murilo Viana Carneiro	\N	eduardo-murilo-viana-carneiro	players/photo/50.jpg	50	\N	\N	1984-05-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	50
1179	Romulo Bastos Batista Tuleski Luz	\N	romulo-bastos-batista-tuleski-luz	players/photo/50.jpg	51	\N	\N	1985-08-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1180	Antônio Victor Yamauthi Gonçalves	\N	antonio-victor-yamauthi-goncalves	players/photo/50.jpg	52	\N	\N	1991-09-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1181	Wellington Stackiw	\N	wellington-stackiw	players/photo/50.jpg	54	\N	\N	1984-12-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1182	Mauricio Bisetto	\N	mauricio-bisetto	players/photo/50.jpg	55	\N	\N	1988-08-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1183	Cristian Jose Cieslak	\N	cristian-jose-cieslak	players/photo/50.jpg	56	\N	\N	1991-07-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1184	Julio Victorino Da Silva	\N	julio-victorino-da-silva	players/photo/50.jpg	57	\N	\N	1991-07-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1185	Ricardo Schultz Martins	\N	ricardo-schultz-martins	players/photo/50.jpg	59	\N	\N	1992-05-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	50
1186	Matheus Henrique Kotovicz	\N	matheus-henrique-kotovicz	players/photo/50.jpg	61	\N	\N	1998-03-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1187	Augusto Fillipini	\N	augusto-fillipini	players/photo/50.jpg	62	\N	\N	1996-02-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1188	Henrique Pavanello	\N	henrique-pavanello	players/photo/50.jpg	66	\N	\N	1992-11-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	50
1189	Victor Fiori Sequinel	\N	victor-fiori-sequinel	players/photo/50.jpg	67	\N	\N	1994-03-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1190	Arno Franzen Neto	\N	arno-franzen-neto	players/photo/50.jpg	68	\N	\N	1995-12-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1191	Reinaldo Cordeiro Machado	\N	reinaldo-cordeiro-machado	players/photo/50.jpg	69	\N	\N	1987-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1192	Raphael Kuchak Molina	\N	raphael-kuchak-molina	players/photo/50.jpg	70	\N	\N	1991-10-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1193	Marcio José Silvério	\N	marcio-jose-silverio	players/photo/50.jpg	72	\N	\N	1983-01-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1194	Guilherme Leon Bathke	\N	guilherme-leon-bathke	players/photo/50.jpg	73	\N	\N	1988-06-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1195	Gustavo Da Silva Santos	\N	gustavo-da-silva-santos	players/photo/50.jpg	74	\N	\N	1990-05-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1196	Luis Guilherme Moreschi Ritzmann	\N	luis-guilherme-moreschi-ritzmann	players/photo/50.jpg	76	\N	\N	1996-11-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	50
1197	Fabiano Rodrigues	\N	fabiano-rodrigues	players/photo/50.jpg	77	\N	\N	1983-02-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1198	Yohhan Garcia De Souza	\N	yohhan-garcia-de-souza	players/photo/50.jpg	79	\N	\N	1987-05-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1199	Antony Willian Dos S. Castro	\N	antony-willian-dos-s-castro	players/photo/50.jpg	82	\N	\N	2000-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	50
1200	Luiz Cesar M. Dantas	\N	luiz-cesar-m-dantas	players/photo/50.jpg	83	\N	\N	1989-03-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1201	Kaoê Dos Santos Viola	\N	kaoe-dos-santos-viola	players/photo/50.jpg	84	\N	\N	1998-05-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	50
1202	André Wellner	\N	andre-wellner	players/photo/50.jpg	87	\N	\N	1983-04-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	50
1203	Carlos Eduardo De Oliveira Araujo	\N	carlos-eduardo-de-oliveira-araujo	players/photo/50.jpg	88	\N	\N	1992-05-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	50
1204	Thiago Henrique Chequin Fonseca	\N	thiago-henrique-chequin-fonseca	players/photo/50.jpg	91	\N	\N	1991-03-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1205	Luiz Otavio Mattos Guerra	\N	luiz-otavio-mattos-guerra	players/photo/50.jpg	94	\N	\N	1997-04-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	50
1206	Gustavo Henrique Moro Rios	\N	gustavo-henrique-moro-rios	players/photo/50.jpg	96	\N	\N	1991-03-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	50
1207	Rodrigo Zandona Phillipsen	\N	rodrigo-zandona-phillipsen	players/photo/50.jpg	99	\N	\N	1982-03-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	50
1208	Leandro Silva De Oliveira	\N	leandro-silva-de-oliveira	players/photo/53.jpg	1	\N	\N	1995-05-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1209	André Luiz Pistarini De Oliveira	\N	andre-luiz-pistarini-de-oliveira	players/photo/53.jpg	2	\N	\N	1990-10-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1210	Renan Sá Barbosa	\N	renan-sa-barbosa	players/photo/53.jpg	3	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1211	Rogério Ferreira De Freitas	\N	rogerio-ferreira-de-freitas	players/photo/53.jpg	4	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1212	Claudio Moraes Da Cruz	\N	claudio-moraes-da-cruz	players/photo/53.jpg	5	\N	\N	1995-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	53
1213	Ivan Stamborowski	\N	ivan-stamborowski	players/photo/53.jpg	6	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1214	Luiz Felipe Domingues	\N	luiz-felipe-domingues	players/photo/53.jpg	8	\N	\N	1994-06-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1215	Christian Vinicius Antunes	\N	christian-vinicius-antunes	players/photo/53.jpg	9	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1216	Leonardo Bellotto Simão Silva	\N	leonardo-bellotto-simao-silva	players/photo/53.jpg	10	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1217	Marcus Vinícius Elias De Souza	\N	marcus-vinicius-elias-de-souza	players/photo/53.jpg	11	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1218	Andre De Almeida Cabral	\N	andre-de-almeida-cabral	players/photo/53.jpg	13	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1219	Antonio Carlos Cavalcante Mendes	\N	antonio-carlos-cavalcante-mendes	players/photo/53.jpg	15	\N	\N	1991-11-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1220	Catullo João Marcato Góes	\N	catullo-joao-marcato-goes	players/photo/53.jpg	16	\N	\N	1993-09-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1221	João Paulo Bueno	\N	joao-paulo-bueno	players/photo/53.jpg	18	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1222	Antonio Fabião Alves Junior	\N	antonio-fabiao-alves-junior	players/photo/53.jpg	20	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1223	Natan De Oliveira Santiago	\N	natan-de-oliveira-santiago	players/photo/53.jpg	21	\N	\N	1990-09-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1224	Fernando Garcia Desimone	\N	fernando-garcia-desimone	players/photo/53.jpg	22	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1225	Felipe Luiz Teixeira Da Camara Falcão	\N	felipe-luiz-teixeira-da-camara-falcao	players/photo/53.jpg	23	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1226	Levi Gregory Luiz De Azevedo	\N	levi-gregory-luiz-de-azevedo	players/photo/53.jpg	24	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1227	Murilo Solimeo Marin	\N	murilo-solimeo-marin	players/photo/53.jpg	26	\N	\N	1989-03-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1228	Lucas Marinho Dos Santos	\N	lucas-marinho-dos-santos	players/photo/53.jpg	28	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1229	Guilherme Cardoso Macieira	\N	guilherme-cardoso-macieira	players/photo/53.jpg	30	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1230	Lucas Gonçalves De Mattos	\N	lucas-goncalves-de-mattos	players/photo/53.jpg	31	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1231	Matias Manuel Peinado	\N	matias-manuel-peinado	players/photo/53.jpg	32	\N	\N	1986-09-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1232	Ingo Martinho De Oliveira Silva	\N	ingo-martinho-de-oliveira-silva	players/photo/53.jpg	33	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1233	Gabriel Barrera Correa Dos Santos	\N	gabriel-barrera-correa-dos-santos	players/photo/53.jpg	34	\N	\N	1992-07-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1234	Vinicius Viegas Santana	\N	vinicius-viegas-santana	players/photo/53.jpg	36	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1235	João Paulo Lustosa Dos Santos	\N	joao-paulo-lustosa-dos-santos	players/photo/53.jpg	40	\N	\N	1999-07-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1236	Gabriel Pimentel De Lima	\N	gabriel-pimentel-de-lima	players/photo/53.jpg	41	\N	\N	1991-08-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1237	Wanderson Araujo Aparecido Caldeira	\N	wanderson-araujo-aparecido-caldeira	players/photo/53.jpg	43	\N	\N	1989-04-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1238	Felipe Manucelli Rocha	\N	felipe-manucelli-rocha	players/photo/53.jpg	44	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1239	Lucas Messias Borges	\N	lucas-messias-borges	players/photo/53.jpg	45	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1240	Diego Lino De Sousa	\N	diego-lino-de-sousa	players/photo/53.jpg	47	\N	\N	1992-02-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1241	Alexssander Sawicki Soares	\N	alexssander-sawicki-soares	players/photo/53.jpg	52	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1242	William Ribeiro Da Silva	\N	william-ribeiro-da-silva	players/photo/53.jpg	53	\N	\N	1978-02-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1243	Raphael Willian De Oliveira Soares	\N	raphael-willian-de-oliveira-soares	players/photo/53.jpg	54	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1244	Gabriel De Almeida Iust Altolp	\N	gabriel-de-almeida-iust-altolp	players/photo/53.jpg	55	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1246	José Emerson Barbosa Pinheiro	\N	jose-emerson-barbosa-pinheiro	players/photo/53.jpg	59	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1247	André Mathias Tamantini	\N	andre-mathias-tamantini	players/photo/53.jpg	61	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1248	Nicolas Nascimento De Oliveira	\N	nicolas-nascimento-de-oliveira	players/photo/53.jpg	68	\N	\N	1993-03-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1249	Marcus Vinicius Bruno Francisco	\N	marcus-vinicius-bruno-francisco	players/photo/53.jpg	69	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1250	Guilherme Zanarelli Martinelli	\N	guilherme-zanarelli-martinelli	players/photo/53.jpg	71	\N	\N	1994-03-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
42	Mateus Svizzero De Abreu	\N	mateus-svizzero-de-abreu	players/photo/1.jpg	47	\N	\N	1991-06-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	1
43	Rafael Luiz Gonçalves Pereira	\N	rafael-luiz-goncalves-pereira	players/photo/1.jpg	48	\N	\N	1988-12-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	1
44	Pedro Veloso Ferreira Brescia	\N	pedro-veloso-ferreira-brescia	players/photo/1.jpg	49	\N	\N	1997-08-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
45	Brayan Allanderson Gomes De Oliveira Silva	\N	brayan-allanderson-gomes-de-oliveira-silva	players/photo/1.jpg	50	\N	\N	1994-03-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
46	Bruno Lima Nascimento	\N	bruno-lima-nascimento	players/photo/1.jpg	51	\N	\N	0091-01-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
47	Jean Carlos Pimenta	\N	jean-carlos-pimenta	players/photo/1.jpg	52	\N	\N	1980-12-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
48	Roberto Ribeiro Schor	\N	roberto-ribeiro-schor	players/photo/1.jpg	54	\N	\N	1990-08-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	1
49	Humberto Jardim Silva	\N	humberto-jardim-silva	players/photo/1.jpg	55	\N	\N	1990-07-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
50	Aurélio Gonçalves Nogueira	\N	aurelio-goncalves-nogueira	players/photo/1.jpg	56	\N	\N	1983-03-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	1
51	Luiz Gustavo Michel	\N	luiz-gustavo-michel	players/photo/1.jpg	57	\N	\N	1989-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	1
52	Evandro Augusto De Araújo Do Amaral Jardim	\N	evandro-augusto-de-araujo-do-amaral-jardim	players/photo/1.jpg	58	\N	\N	1985-09-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
53	Paulo Hugo Tanimoto Santos	\N	paulo-hugo-tanimoto-santos	players/photo/1.jpg	59	\N	\N	1987-05-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
54	Lucas Vitor Soares Veloso	\N	lucas-vitor-soares-veloso	players/photo/1.jpg	60	\N	\N	2001-02-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	1
55	Adriel Kalinowski S Matta	\N	adriel-kalinowski-s-matta	players/photo/1.jpg	61	\N	\N	2018-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	1
56	Pollys Junio Pereira Sacramento	\N	pollys-junio-pereira-sacramento	players/photo/1.jpg	62	\N	\N	1997-11-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	1
57	Adelk Oliveira Lima	\N	adelk-oliveira-lima	players/photo/1.jpg	63	\N	\N	1995-02-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	1
58	Gabriel Gomes Ribas	\N	gabriel-gomes-ribas	players/photo/1.jpg	64	\N	\N	1985-09-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	1
59	Jhonatan Gabriel Bicaco Ferreira	\N	jhonatan-gabriel-bicaco-ferreira	players/photo/1.jpg	65	\N	\N	1994-07-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	1
60	Adam Wagner Evangelista Araújo	\N	adam-wagner-evangelista-araujo	players/photo/1.jpg	66	\N	\N	1985-06-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	1
61	Camilo Faria Mello	\N	camilo-faria-mello	players/photo/1.jpg	67	\N	\N	1983-03-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	1
62	Luís Cláudio Reis De Almeida	\N	luis-claudio-reis-de-almeida	players/photo/1.jpg	68	\N	\N	1981-09-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	1
63	Raphael Rocha Da Silva	\N	raphael-rocha-da-silva	players/photo/1.jpg	70	\N	\N	1987-04-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	1
64	Leandro Silvestrini De Freitas	\N	leandro-silvestrini-de-freitas	players/photo/1.jpg	71	\N	\N	1994-01-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	1
65	Marcos Henrique Bento	\N	marcos-henrique-bento	players/photo/1.jpg	72	\N	\N	1992-04-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	1
66	Jeferson Rodrigues Da Silva	\N	jeferson-rodrigues-da-silva	players/photo/1.jpg	74	\N	\N	1995-04-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	1
67	Renato Nogueira De Freitas Junior	\N	renato-nogueira-de-freitas-junior	players/photo/1.jpg	75	\N	\N	1991-10-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	1
68	Filipe Silva Guaceroni	\N	filipe-silva-guaceroni	players/photo/1.jpg	76	\N	\N	2000-11-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	1
69	Marcos Guerra De Almeida	\N	marcos-guerra-de-almeida	players/photo/1.jpg	79	\N	\N	2000-06-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	1
70	Juliano Simão De Faria	\N	juliano-simao-de-faria	players/photo/1.jpg	80	\N	\N	1990-09-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
71	Fabricio De Paula Borges	\N	fabricio-de-paula-borges	players/photo/1.jpg	81	\N	\N	1992-01-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
72	Arthur Dangelo Vieira	\N	arthur-dangelo-vieira	players/photo/1.jpg	84	\N	\N	1997-06-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
73	Marcelo Mattos	\N	marcelo-mattos	players/photo/1.jpg	85	\N	\N	2018-03-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
74	Humberto Drumond Filho	\N	humberto-drumond-filho	players/photo/1.jpg	87	\N	\N	1994-07-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	1
75	Marcello Sousa Pinheiro Arruda	\N	marcello-sousa-pinheiro-arruda	players/photo/1.jpg	88	\N	\N	2018-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
76	Matheus Ramon Orlandi Rocha	\N	matheus-ramon-orlandi-rocha	players/photo/1.jpg	90	\N	\N	1991-03-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	1
77	Matheus Henrique Da Silva Nascimento	\N	matheus-henrique-da-silva-nascimento	players/photo/1.jpg	91	\N	\N	1997-11-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	1
78	Matheus Marques Tarabal Silva	\N	matheus-marques-tarabal-silva	players/photo/1.jpg	92	\N	\N	1991-01-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	1
79	Sérgio Adnei Batista Dos Santos	\N	sergio-adnei-batista-dos-santos	players/photo/1.jpg	93	\N	\N	1982-10-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	1
1251	Paulo Ricardo Gomes Alves	\N	paulo-ricardo-gomes-alves	players/photo/53.jpg	72	\N	\N	1988-10-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1252	Nichollas Danziger Moreira	\N	nichollas-danziger-moreira	players/photo/53.jpg	74	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1253	Guilherme Cupertino Da Silva	\N	guilherme-cupertino-da-silva	players/photo/53.jpg	75	\N	\N	1986-11-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1254	Ian Zanatto Cinelli	\N	ian-zanatto-cinelli	players/photo/53.jpg	77	\N	\N	1992-12-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1255	Caio Eduardo Vilarosa	\N	caio-eduardo-vilarosa	players/photo/53.jpg	78	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1256	Guilherme Rodrigues Ludescher	\N	guilherme-rodrigues-ludescher	players/photo/53.jpg	79	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1257	Joao Pedro De Souza Cortez	\N	joao-pedro-de-souza-cortez	players/photo/53.jpg	80	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1258	Paulo Cesar Dos Santos	\N	paulo-cesar-dos-santos	players/photo/53.jpg	81	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1259	Paulo Victor Sequeira L Guimarães	\N	paulo-victor-sequeira-l-guimaraes	players/photo/53.jpg	83	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1260	Victor Coelho Fogagnoli	\N	victor-coelho-fogagnoli	players/photo/53.jpg	84	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1261	Pedro Henrique Santos Silva	\N	pedro-henrique-santos-silva	players/photo/53.jpg	86	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1262	Henrique Ximenes De Almeida	\N	henrique-ximenes-de-almeida	players/photo/53.jpg	87	\N	\N	1991-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1263	Guilherme Sarmento	\N	guilherme-sarmento	players/photo/53.jpg	89	\N	\N	1992-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1264	Danilo Leonardo De Lima	\N	danilo-leonardo-de-lima	players/photo/53.jpg	90	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1265	Jonas Pereira Rusig	\N	jonas-pereira-rusig	players/photo/53.jpg	93	\N	\N	2018-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1266	Luis Henrique Benante Groenitz	\N	luis-henrique-benante-groenitz	players/photo/53.jpg	94	\N	\N	2018-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	53
1267	Romulo Roldão Cruz Da Silva	\N	romulo-roldao-cruz-da-silva	players/photo/53.jpg	99	\N	\N	1992-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	53
1268	Jacob Matthew Schimenz	\N	jacob-matthew-schimenz	players/photo/56.jpg	1	\N	\N	2018-02-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	56
1269	Hugo Victor Dos Santos De Lira Tavares	\N	hugo-victor-dos-santos-de-lira-tavares	players/photo/56.jpg	2	\N	\N	1996-05-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	56
1270	Vinicius Thiago Monteiro De Lima	\N	vinicius-thiago-monteiro-de-lima	players/photo/56.jpg	3	\N	\N	2001-12-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	56
1271	Jonathan Fonseca Marques	\N	jonathan-fonseca-marques	players/photo/56.jpg	4	\N	\N	1992-06-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	56
1272	Guilherme Afonso Pinho	\N	guilherme-afonso-pinho	players/photo/56.jpg	5	\N	\N	1992-06-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	56
1273	Rodrigo Dos Anjos Inojosa	\N	rodrigo-dos-anjos-inojosa	players/photo/56.jpg	7	\N	\N	1988-01-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	56
1274	Davi Renan Do Nascimento Silva	\N	davi-renan-do-nascimento-silva	players/photo/56.jpg	9	\N	\N	1994-08-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	56
1275	Guilherme Emerenciano Massa Lima	\N	guilherme-emerenciano-massa-lima	players/photo/56.jpg	10	\N	\N	1998-12-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	56
1276	Maykon Cardoso Dos Reis	\N	maykon-cardoso-dos-reis	players/photo/56.jpg	11	\N	\N	1993-04-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	56
1277	Rafael Tavares Da Costa Caldas De Lira	\N	rafael-tavares-da-costa-caldas-de-lira	players/photo/56.jpg	12	\N	\N	1994-08-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	56
1278	Sérgio Pereira De Oliveira Filho	\N	sergio-pereira-de-oliveira-filho	players/photo/56.jpg	13	\N	\N	1994-10-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	56
1279	Rafael Vasconcelos Bandeira	\N	rafael-vasconcelos-bandeira	players/photo/56.jpg	14	\N	\N	1990-06-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	56
1280	Artur Ramos Carvalho	\N	artur-ramos-carvalho	players/photo/56.jpg	15	\N	\N	1999-09-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	56
1281	Marcelo Vilela Rodrigues Junior	\N	marcelo-vilela-rodrigues-junior	players/photo/56.jpg	16	\N	\N	1992-09-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	56
1282	Thiago De Oliveira Schinoff	\N	thiago-de-oliveira-schinoff	players/photo/56.jpg	17	\N	\N	1989-07-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	56
1283	Iuri Borges Do Carmo Caldeira	\N	iuri-borges-do-carmo-caldeira	players/photo/56.jpg	20	\N	\N	1991-05-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	56
1284	Bruno Melo Moura	\N	bruno-melo-moura	players/photo/56.jpg	21	\N	\N	1991-07-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	56
1285	Lucas Ramos Carvalho	\N	lucas-ramos-carvalho	players/photo/56.jpg	22	\N	\N	1995-11-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	56
1286	Eduardo De Andrade Mendonça	\N	eduardo-de-andrade-mendonca	players/photo/56.jpg	23	\N	\N	1991-07-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	56
1287	Mario Paulo Felix Da Silva Junior	\N	mario-paulo-felix-da-silva-junior	players/photo/56.jpg	24	\N	\N	1990-11-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	56
1288	Pedro Santana Alves	\N	pedro-santana-alves	players/photo/56.jpg	27	\N	\N	1992-09-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	56
1289	Roberto De Lemos Vasconcelos Filho	\N	roberto-de-lemos-vasconcelos-filho	players/photo/56.jpg	31	\N	\N	1995-07-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	56
1290	José Antônio Borges Júnior	\N	jose-antonio-borges-junior	players/photo/56.jpg	33	\N	\N	1984-03-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	56
1291	Victor Hugo Monteiro De Lima	\N	victor-hugo-monteiro-de-lima	players/photo/56.jpg	35	\N	\N	1996-07-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	56
1292	Lucas Vinicius Cavalcante Silva	\N	lucas-vinicius-cavalcante-silva	players/photo/56.jpg	37	\N	\N	1995-06-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	56
1293	Paulo Henrique Calado Aoun	\N	paulo-henrique-calado-aoun	players/photo/56.jpg	43	\N	\N	1994-03-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	56
1294	Eduardo Bezerra De Melo Caldas	\N	eduardo-bezerra-de-melo-caldas	players/photo/56.jpg	45	\N	\N	1991-03-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	56
1295	Pedro Henrique Guimarães Peixoto	\N	pedro-henrique-guimaraes-peixoto	players/photo/56.jpg	48	\N	\N	1991-07-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	56
1296	José Ricardo Santos Ferreira	\N	jose-ricardo-santos-ferreira	players/photo/56.jpg	50	\N	\N	1991-05-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	56
1297	Yuri Raia Mendes	\N	yuri-raia-mendes	players/photo/56.jpg	51	\N	\N	1989-07-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	56
1298	Diogo Lopes Carvalho	\N	diogo-lopes-carvalho	players/photo/56.jpg	52	\N	\N	1998-04-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	56
1299	Guilherme José De Vasconcelos Costa	\N	guilherme-jose-de-vasconcelos-costa	players/photo/56.jpg	54	\N	\N	1992-08-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	56
1300	Victor Carvalho Pinzon	\N	victor-carvalho-pinzon	players/photo/56.jpg	55	\N	\N	1991-02-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	56
1301	Robson Fernandes Penha Costa	\N	robson-fernandes-penha-costa	players/photo/56.jpg	57	\N	\N	1993-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	56
1302	Rodolfo Henrique Silva De Siqueira	\N	rodolfo-henrique-silva-de-siqueira	players/photo/56.jpg	58	\N	\N	1995-12-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	56
1303	Jefferson José Urquiza Tenório	\N	jefferson-jose-urquiza-tenorio	players/photo/56.jpg	60	\N	\N	1978-02-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	56
1304	Flavio Vanderlei Dos Santos	\N	flavio-vanderlei-dos-santos	players/photo/56.jpg	62	\N	\N	1984-12-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	56
1305	Nelson José Maciel Santos Ferreira	\N	nelson-jose-maciel-santos-ferreira	players/photo/56.jpg	63	\N	\N	1997-11-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	56
1306	Felipe José De Macedo Santana	\N	felipe-jose-de-macedo-santana	players/photo/56.jpg	64	\N	\N	1986-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	56
1307	David Jose De Santana Filho	\N	david-jose-de-santana-filho	players/photo/56.jpg	65	\N	\N	1994-07-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	56
1308	Dennison Fonseca Neves	\N	dennison-fonseca-neves	players/photo/56.jpg	67	\N	\N	1989-03-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	56
1309	Caio Sabino Coelho	\N	caio-sabino-coelho	players/photo/56.jpg	68	\N	\N	1997-04-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	56
1310	Rafael De Arruda Falcao Fernandes	\N	rafael-de-arruda-falcao-fernandes	players/photo/56.jpg	70	\N	\N	1990-05-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	56
1311	Alexsandro Da Costa Ramos Silva	\N	alexsandro-da-costa-ramos-silva	players/photo/56.jpg	71	\N	\N	1986-09-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	56
1312	João França Lopes Neto	\N	joao-franca-lopes-neto	players/photo/56.jpg	72	\N	\N	1988-07-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	56
1313	Felipe Antônio Barreto Da Silva	\N	felipe-antonio-barreto-da-silva	players/photo/56.jpg	74	\N	\N	1991-03-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	56
1314	Vinícius De Castilho Kropf Penante	\N	vinicius-de-castilho-kropf-penante	players/photo/56.jpg	77	\N	\N	1989-05-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	56
1315	Thiago Passos De Azevedo	\N	thiago-passos-de-azevedo	players/photo/56.jpg	79	\N	\N	1988-05-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	56
1316	Pedro Vitor Brito Magalhães	\N	pedro-vitor-brito-magalhaes	players/photo/56.jpg	84	\N	\N	1995-03-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	56
1317	Túlius Mota De Melo Santos	\N	tulius-mota-de-melo-santos	players/photo/56.jpg	86	\N	\N	1992-07-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	56
1318	Murilo Sodré Da Mota Neto	\N	murilo-sodre-da-mota-neto	players/photo/56.jpg	87	\N	\N	1992-10-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	56
1319	Miguel Augusto Savtchen	\N	miguel-augusto-savtchen	players/photo/56.jpg	91	\N	\N	1991-08-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	56
1320	José Filipe Ferreira De Aquino	\N	jose-filipe-ferreira-de-aquino	players/photo/56.jpg	92	\N	\N	1989-08-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	56
1321	Otávio Bandeira De Melo Gonçalo	\N	otavio-bandeira-de-melo-goncalo	players/photo/56.jpg	98	\N	\N	1994-03-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	56
1322	João Guilherme Ferreira Silva	\N	joao-guilherme-ferreira-silva	players/photo/56.jpg	99	\N	\N	1993-08-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	56
1323	Vinicius Dario Speransa Zulian	\N	vinicius-dario-speransa-zulian	players/photo/63.jpg	0	\N	\N	1987-03-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1324	Marco Aurélio Okopny	\N	marco-aurelio-okopny	players/photo/63.jpg	2	\N	\N	1988-10-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1325	Guilherme Henrique De Oliveira	\N	guilherme-henrique-de-oliveira	players/photo/63.jpg	3	\N	\N	1994-12-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	63
1326	Raul Sales De Oliveira	\N	raul-sales-de-oliveira	players/photo/63.jpg	4	\N	\N	1989-12-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1327	Tommy Jones Jr	\N	tommy-jones-jr	players/photo/63.jpg	6	\N	\N	1990-07-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	63
1328	Douglas Felipe Elesbão	\N	douglas-felipe-elesbao	players/photo/63.jpg	7	\N	\N	1990-05-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	63
1329	Fabrício Santana Da Silva	\N	fabricio-santana-da-silva	players/photo/63.jpg	8	\N	\N	1991-01-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	63
1330	Jürgan Rusch	\N	jurgan-rusch	players/photo/63.jpg	10	\N	\N	1997-01-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1331	Arthur De Oliveira Walker	\N	arthur-de-oliveira-walker	players/photo/63.jpg	11	\N	\N	1990-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1332	Nathan Marques Dias	\N	nathan-marques-dias	players/photo/63.jpg	14	\N	\N	1997-05-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	63
1333	Douglas Rodrigues Dos Santos	\N	douglas-rodrigues-dos-santos	players/photo/63.jpg	15	\N	\N	1990-04-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	63
1334	Fabiano Vargas Da Costa	\N	fabiano-vargas-da-costa	players/photo/63.jpg	17	\N	\N	1988-11-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	63
1335	Talisson Diego Lopes Vaz Perdigão	\N	talisson-diego-lopes-vaz-perdigao	players/photo/63.jpg	19	\N	\N	1995-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	63
1336	Jeron Alexander Jones	\N	jeron-alexander-jones	players/photo/63.jpg	20	\N	\N	1988-03-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	63
1337	João Antonio Razia De Siqueira	\N	joao-antonio-razia-de-siqueira	players/photo/63.jpg	22	\N	\N	1992-09-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	63
1338	João Carlos Ilgenfritz Blatt	\N	joao-carlos-ilgenfritz-blatt	players/photo/63.jpg	23	\N	\N	1993-05-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	63
1339	Fabricio Da Silva Ziegler	\N	fabricio-da-silva-ziegler	players/photo/63.jpg	24	\N	\N	1992-12-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1340	Alexandre Mayer Macagnan	\N	alexandre-mayer-macagnan	players/photo/63.jpg	25	\N	\N	1994-08-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	63
1341	Gonzalo De Castro Gomez	\N	gonzalo-de-castro-gomez	players/photo/63.jpg	27	\N	\N	1998-09-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	63
1342	Lucas Schimith Zanon	\N	lucas-schimith-zanon	players/photo/63.jpg	29	\N	\N	1995-11-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	63
1343	Márlon Sonza Limana	\N	marlon-sonza-limana	players/photo/63.jpg	30	\N	\N	1988-07-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	4	63
1344	Maurício Faé	\N	mauricio-fae	players/photo/63.jpg	31	\N	\N	1992-11-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1345	Guilherme Lago Busanello	\N	guilherme-lago-busanello	players/photo/63.jpg	32	\N	\N	1989-11-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	63
1346	Thiago Costa Fengler	\N	thiago-costa-fengler	players/photo/63.jpg	33	\N	\N	1990-04-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	63
1347	Giovanni Alves Carlesso	\N	giovanni-alves-carlesso	players/photo/63.jpg	38	\N	\N	1990-10-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	63
1348	Lucas Romero De Jesus	\N	lucas-romero-de-jesus	players/photo/63.jpg	39	\N	\N	1993-11-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	63
1349	William Dreissig Bicca	\N	william-dreissig-bicca	players/photo/63.jpg	41	\N	\N	2000-09-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	63
1350	Higor Martins Almeida	\N	higor-martins-almeida	players/photo/63.jpg	43	\N	\N	1999-02-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	63
1351	Arthur Danzmann Chaves	\N	arthur-danzmann-chaves	players/photo/63.jpg	45	\N	\N	1999-12-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	63
1352	André Bertoldo Dalla Favera	\N	andre-bertoldo-dalla-favera	players/photo/63.jpg	49	\N	\N	1997-12-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	63
1353	Wagner Freitas	\N	wagner-freitas	players/photo/63.jpg	50	\N	\N	1995-11-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	63
1354	Marcio Fernando Dos Santos Gross	\N	marcio-fernando-dos-santos-gross	players/photo/63.jpg	51	\N	\N	1988-11-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	63
1355	Guilherme Da Silva Kieling	\N	guilherme-da-silva-kieling	players/photo/63.jpg	53	\N	\N	1991-01-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	63
1356	Gustavo Cambraia Mendonça	\N	gustavo-cambraia-mendonca	players/photo/63.jpg	54	\N	\N	1994-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	63
1357	João Antônio Chelotti	\N	joao-antonio-chelotti	players/photo/63.jpg	59	\N	\N	1994-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	63
1358	Jonas Fão Hartmann	\N	jonas-fao-hartmann	players/photo/63.jpg	62	\N	\N	1989-07-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1359	Dustin Camargo	\N	dustin-camargo	players/photo/63.jpg	63	\N	\N	1990-04-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1360	Carlos Eduardo Niederauer Rodrigues	\N	carlos-eduardo-niederauer-rodrigues	players/photo/63.jpg	64	\N	\N	1999-09-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1361	Cristiano Favarin Pinto	\N	cristiano-favarin-pinto	players/photo/63.jpg	65	\N	\N	1981-04-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1362	Leonardo Ignacio Chaves	\N	leonardo-ignacio-chaves	players/photo/63.jpg	67	\N	\N	1993-10-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1363	Félix Antônio Lopes Azambuja	\N	felix-antonio-lopes-azambuja	players/photo/63.jpg	70	\N	\N	1999-09-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	63
1364	Vinicius Bijagran Nunes	\N	vinicius-bijagran-nunes	players/photo/63.jpg	71	\N	\N	1995-02-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1365	Claudio Da Silva Junior	\N	claudio-da-silva-junior	players/photo/63.jpg	72	\N	\N	1983-03-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1366	Paulo Isaias Rossato Muraro	\N	paulo-isaias-rossato-muraro	players/photo/63.jpg	74	\N	\N	1980-06-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1367	Giancarlo Clerici Daros	\N	giancarlo-clerici-daros	players/photo/63.jpg	75	\N	\N	1998-05-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1368	Italo Niederauer De Moura Rosa Lucion	\N	italo-niederauer-de-moura-rosa-lucion	players/photo/63.jpg	76	\N	\N	1999-01-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1369	Vitor Hugo Abrão Oliveira Nassarden	\N	vitor-hugo-abrao-oliveira-nassarden	players/photo/63.jpg	77	\N	\N	1994-12-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1370	Valcir Moro Casarin	\N	valcir-moro-casarin	players/photo/63.jpg	78	\N	\N	1983-03-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1371	Jean Felipe Ibaldo Cantarelli Da Silva	\N	jean-felipe-ibaldo-cantarelli-da-silva	players/photo/63.jpg	79	\N	\N	1984-03-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1372	Felipe Matias Backes	\N	felipe-matias-backes	players/photo/63.jpg	80	\N	\N	1998-11-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	63
1373	Daniel Elesbão	\N	daniel-elesbao	players/photo/63.jpg	82	\N	\N	1999-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	63
1374	Luis Antônio Becker	\N	luis-antonio-becker	players/photo/63.jpg	84	\N	\N	1997-04-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	63
1375	Vinícius Schimith Zanon	\N	vinicius-schimith-zanon	players/photo/63.jpg	94	\N	\N	1990-09-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1376	William Araujo De Freitas	\N	william-araujo-de-freitas	players/photo/63.jpg	96	\N	\N	1993-09-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	63
1377	Gabriel Nogueira Montagner	\N	gabriel-nogueira-montagner	players/photo/63.jpg	97	\N	\N	1998-12-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1378	João Adriano Dos Santos Junior	\N	joao-adriano-dos-santos-junior	players/photo/63.jpg	98	\N	\N	1991-09-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1379	Jackson Roger Costa Silva	\N	jackson-roger-costa-silva	players/photo/63.jpg	99	\N	\N	1993-09-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	63
1380	Natanael Dos Santos	\N	natanael-dos-santos	players/photo/64.jpg	2	\N	\N	1997-05-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	64
1381	Whellyngton Vinícius De Araújo Nascimento	\N	whellyngton-vinicius-de-araujo-nascimento	players/photo/64.jpg	3	\N	\N	1994-01-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	64
1382	Ciro Daniel Damasco Ugalde	\N	ciro-daniel-damasco-ugalde	players/photo/64.jpg	6	\N	\N	1988-11-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	64
1383	André Augusto De Souza	\N	andre-augusto-de-souza	players/photo/64.jpg	7	\N	\N	1992-06-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	64
1384	Vinícius Antônio Hames	\N	vinicius-antonio-hames	players/photo/64.jpg	10	\N	\N	1993-09-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	64
1385	Henrique Veras Mazzola	\N	henrique-veras-mazzola	players/photo/64.jpg	11	\N	\N	1996-10-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	64
1386	Ronaldo Graciano De Lima	\N	ronaldo-graciano-de-lima	players/photo/64.jpg	13	\N	\N	1981-11-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	64
1387	Felipe Dal Pont Souza	\N	felipe-dal-pont-souza	players/photo/64.jpg	14	\N	\N	1996-07-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	64
1388	Marco Antônio De A. D. Souza	\N	marco-antonio-de-a-d-souza	players/photo/64.jpg	16	\N	\N	1997-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	64
1389	Matheus Vedana	\N	matheus-vedana	players/photo/64.jpg	17	\N	\N	1999-04-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	64
1390	Alex Miranda	\N	alex-miranda	players/photo/64.jpg	18	\N	\N	2000-03-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	64
1391	Jhon Heberty Ratis Dos Santos	\N	jhon-heberty-ratis-dos-santos	players/photo/64.jpg	19	\N	\N	1996-10-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	64
1392	Ricardo Augusto Coelho	\N	ricardo-augusto-coelho	players/photo/64.jpg	25	\N	\N	1991-08-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	64
1393	Gustavo Oliveira Costa	\N	gustavo-oliveira-costa	players/photo/64.jpg	28	\N	\N	1993-06-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	64
1394	Bruno Gomes Vieira	\N	bruno-gomes-vieira	players/photo/64.jpg	30	\N	\N	1988-04-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	64
1395	Felipe Alexander Pereira Lopes	\N	felipe-alexander-pereira-lopes	players/photo/64.jpg	31	\N	\N	1900-04-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	64
1396	Guylherme Grudtner Silva	\N	guylherme-grudtner-silva	players/photo/64.jpg	32	\N	\N	1989-01-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	64
1397	Ênio Krauss Junior	\N	enio-krauss-junior	players/photo/64.jpg	36	\N	\N	1989-03-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	64
1398	José Odir Menezes Monjeó	\N	jose-odir-menezes-monjeo	players/photo/64.jpg	37	\N	\N	1980-09-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	64
1399	Allan Bertoli Ferreira	\N	allan-bertoli-ferreira	players/photo/64.jpg	40	\N	\N	1992-09-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	64
1400	Henrique Lessa D. P. De Oliveira	\N	henrique-lessa-d-p-de-oliveira	players/photo/64.jpg	41	\N	\N	1992-07-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	64
1401	João Paulo Ramos	\N	joao-paulo-ramos	players/photo/64.jpg	46	\N	\N	1986-06-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	64
1402	Juliano Coutinho Couto	\N	juliano-coutinho-couto	players/photo/64.jpg	47	\N	\N	1975-06-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	64
1403	Daniel Dos Santos	\N	daniel-dos-santos	players/photo/64.jpg	50	\N	\N	1976-09-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	64
1404	Mateus Brignoli	\N	mateus-brignoli	players/photo/64.jpg	54	\N	\N	1991-02-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	64
1405	Lucas Ivan Seidenfus	\N	lucas-ivan-seidenfus	players/photo/64.jpg	55	\N	\N	1990-08-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	64
1406	Fernando David Paspuel Vergara	\N	fernando-david-paspuel-vergara	players/photo/64.jpg	57	\N	\N	1991-10-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	64
1407	Jhonas Luiz Agostinho	\N	jhonas-luiz-agostinho	players/photo/64.jpg	60	\N	\N	1996-01-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	64
1408	Luciano A. Ferreira Dos Santos	\N	luciano-a-ferreira-dos-santos	players/photo/64.jpg	61	\N	\N	1977-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	64
1409	Markus Souza Saldanha Da Silva	\N	markus-souza-saldanha-da-silva	players/photo/64.jpg	65	\N	\N	1989-04-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	64
1410	Vagner Rafael De Souza	\N	vagner-rafael-de-souza	players/photo/64.jpg	70	\N	\N	1993-01-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	64
1411	Antônio Alexandre Junior	\N	antonio-alexandre-junior	players/photo/64.jpg	72	\N	\N	1984-04-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	64
1412	Ramon Brignoli	\N	ramon-brignoli	players/photo/64.jpg	73	\N	\N	1996-06-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	64
1413	Leonardo De Souza Lima	\N	leonardo-de-souza-lima	players/photo/64.jpg	75	\N	\N	1987-01-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	64
1414	Cleiton Amado Dorneles De Lima	\N	cleiton-amado-dorneles-de-lima	players/photo/64.jpg	76	\N	\N	1997-07-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	64
1415	José Ataliba Peters Neto	\N	jose-ataliba-peters-neto	players/photo/64.jpg	77	\N	\N	1988-09-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	64
1416	Alexandre Girololometto Júnior	\N	alexandre-girololometto-junior	players/photo/64.jpg	81	\N	\N	1984-10-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	64
1417	Rafael Rodrigo Oliveira	\N	rafael-rodrigo-oliveira	players/photo/64.jpg	82	\N	\N	1995-05-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	64
1418	Brandon Fujii Cavalcante	\N	brandon-fujii-cavalcante	players/photo/64.jpg	83	\N	\N	1994-08-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	64
1419	Nicolas Klaus Dipold Reis	\N	nicolas-klaus-dipold-reis	players/photo/64.jpg	85	\N	\N	2001-02-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	64
1420	Alexsandro Natan Dos A. De S. E Silva	\N	alexsandro-natan-dos-a-de-s-e-silva	players/photo/64.jpg	93	\N	\N	1995-07-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	64
1421	Gustavo Laurentino Fernandes	\N	gustavo-laurentino-fernandes	players/photo/64.jpg	95	\N	\N	1988-12-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	64
1422	Edson Livramento	\N	edson-livramento	players/photo/64.jpg	99	\N	\N	1986-11-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	64
1423	André Luiz Giunti Ferreira Rezende	\N	andre-luiz-giunti-ferreira-rezende	players/photo/67.jpg	1	\N	\N	1998-06-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	67
1424	Nickolas Ferreira Lobo	\N	nickolas-ferreira-lobo	players/photo/67.jpg	1	\N	\N	1996-07-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	67
1425	Filipe Yari Tikkanen Negrão	\N	filipe-yari-tikkanen-negrao	players/photo/67.jpg	2	\N	\N	1995-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	67
1426	Lucas Tezinho Brandao	\N	lucas-tezinho-brandao	players/photo/67.jpg	2	\N	\N	1998-02-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	67
1427	Andrew Amalfi Vicenzotto	\N	andrew-amalfi-vicenzotto	players/photo/67.jpg	3	\N	\N	1995-06-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	67
1428	Célio Guilherme Da Silva Santos	\N	celio-guilherme-da-silva-santos	players/photo/67.jpg	3	\N	\N	1988-07-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1429	Eloir Filho	\N	eloir-filho	players/photo/67.jpg	4	\N	\N	1992-01-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1430	Vinicius Souza Vieira	\N	vinicius-souza-vieira	players/photo/67.jpg	4	\N	\N	1999-09-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1431	Helton Generoso	\N	helton-generoso	players/photo/67.jpg	5	\N	\N	1982-10-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1432	Caue Txai Ferreira Martins	\N	caue-txai-ferreira-martins	players/photo/67.jpg	7	\N	\N	1990-07-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	67
1433	Lucas Carneiro Baptista	\N	lucas-carneiro-baptista	players/photo/67.jpg	8	\N	\N	1999-05-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1434	Thiago De Jesus Arruda	\N	thiago-de-jesus-arruda	players/photo/67.jpg	8	\N	\N	1990-04-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	67
1435	Igor Valério Viana Braga	\N	igor-valerio-viana-braga	players/photo/67.jpg	9	\N	\N	1994-01-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1436	Edimário Silva De Paula	\N	edimario-silva-de-paula	players/photo/67.jpg	10	\N	\N	1993-04-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1437	Jefferson Resieli Spada Lagrota	\N	jefferson-resieli-spada-lagrota	players/photo/67.jpg	11	\N	\N	1976-10-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1438	André Hugo R N Da Silva	\N	andre-hugo-r-n-da-silva	players/photo/67.jpg	13	\N	\N	1992-06-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1439	Heriberto Ávalos Franco Neto	\N	heriberto-avalos-franco-neto	players/photo/67.jpg	13	\N	\N	1997-01-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	67
1440	Douglas Rene Witzel	\N	douglas-rene-witzel	players/photo/67.jpg	14	\N	\N	1979-02-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	67
1441	Juanir Soares Rodrigues	\N	juanir-soares-rodrigues	players/photo/67.jpg	15	\N	\N	1989-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1442	Paulo Guilherme Gomes Barros	\N	paulo-guilherme-gomes-barros	players/photo/67.jpg	16	\N	\N	1990-01-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	67
1443	Thiago Borges	\N	thiago-borges	players/photo/67.jpg	16	\N	\N	1988-12-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	67
1444	Edimarcos Silva De Paula	\N	edimarcos-silva-de-paula	players/photo/67.jpg	17	\N	\N	1995-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	67
1445	Eduardo Seije Abrão	\N	eduardo-seije-abrao	players/photo/67.jpg	17	\N	\N	1989-05-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	67
1446	Jefferson Henderson Silva	\N	jefferson-henderson-silva	players/photo/67.jpg	18	\N	\N	1989-12-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1447	Rafael Brancaleone	\N	rafael-brancaleone	players/photo/67.jpg	19	\N	\N	1993-12-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1448	Mateus Castello Branco Almeida Bessa	\N	mateus-castello-branco-almeida-bessa	players/photo/67.jpg	20	\N	\N	1984-08-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	67
1449	William Gregorio Zapparoli	\N	william-gregorio-zapparoli	players/photo/67.jpg	21	\N	\N	1985-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1450	Anderson Forato Gallego	\N	anderson-forato-gallego	players/photo/67.jpg	22	\N	\N	1987-12-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	67
1451	Lucas Batista Dos Santos	\N	lucas-batista-dos-santos	players/photo/67.jpg	22	\N	\N	1993-05-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1452	Pedro Henrique Ribeiro	\N	pedro-henrique-ribeiro	players/photo/67.jpg	22	\N	\N	1994-09-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1453	Jay Silva	\N	jay-silva	players/photo/67.jpg	23	\N	\N	1981-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1454	Messias Lopes Pires	\N	messias-lopes-pires	players/photo/67.jpg	24	\N	\N	1986-08-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1455	Leonardo Ferreira Trivellatto	\N	leonardo-ferreira-trivellatto	players/photo/67.jpg	25	\N	\N	2000-10-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1456	Alan De Aguiar Giamas	\N	alan-de-aguiar-giamas	players/photo/67.jpg	26	\N	\N	1986-10-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	67
1457	Bruno Alexandre Carrão Pugliese	\N	bruno-alexandre-carrao-pugliese	players/photo/67.jpg	27	\N	\N	1987-01-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1458	Marco Aurélio Pereira Das Chagas	\N	marco-aurelio-pereira-das-chagas	players/photo/67.jpg	28	\N	\N	1989-10-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1459	Lucas Vinicius Salomé	\N	lucas-vinicius-salome	players/photo/67.jpg	29	\N	\N	2018-02-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	67
1460	José Lucas Alves De Lima	\N	jose-lucas-alves-de-lima	players/photo/67.jpg	30	\N	\N	1994-06-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1461	Leonardo Marques Dos Santos	\N	leonardo-marques-dos-santos	players/photo/67.jpg	31	\N	\N	1990-07-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	67
1462	Felipe Henrique Dos Santos Alves	\N	felipe-henrique-dos-santos-alves	players/photo/67.jpg	32	\N	\N	1991-02-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	67
1463	Erik Klinke	\N	erik-klinke	players/photo/67.jpg	33	\N	\N	1984-04-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	67
1464	Rafael Soares Da Paz	\N	rafael-soares-da-paz	players/photo/67.jpg	33	\N	\N	1986-05-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1465	Wilhiam Carlos Da Silva Santos Filho	\N	wilhiam-carlos-da-silva-santos-filho	players/photo/67.jpg	34	\N	\N	1993-12-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	67
1466	Murillo Gonzalez Venezian	\N	murillo-gonzalez-venezian	players/photo/67.jpg	36	\N	\N	1987-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1467	Thiago Rodrigues Dos Santos	\N	thiago-rodrigues-dos-santos	players/photo/67.jpg	39	\N	\N	1985-03-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1468	Guilherme Fiore De Oliveira	\N	guilherme-fiore-de-oliveira	players/photo/67.jpg	40	\N	\N	2018-02-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	67
1469	Felipe Braco Casale	\N	felipe-braco-casale	players/photo/67.jpg	41	\N	\N	1992-07-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	67
1470	Guilherme Henry Bicalho Cezar Marinho	\N	guilherme-henry-bicalho-cezar-marinho	players/photo/67.jpg	42	\N	\N	1995-10-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	67
1471	Vítor Trevisan De Melo	\N	vitor-trevisan-de-melo	players/photo/67.jpg	42	\N	\N	1995-05-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	67
1472	Eduardo Simoes De Araujo	\N	eduardo-simoes-de-araujo	players/photo/67.jpg	43	\N	\N	1993-07-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1473	Markus Gunnar Tikkanen Negrão	\N	markus-gunnar-tikkanen-negrao	players/photo/67.jpg	44	\N	\N	1993-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	67
1474	Adalberto Dos Remédios Silva Júnior	\N	adalberto-dos-remedios-silva-junior	players/photo/67.jpg	45	\N	\N	1986-04-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1475	João Victor Temoteo Gomes	\N	joao-victor-temoteo-gomes	players/photo/67.jpg	46	\N	\N	2000-12-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1476	Rene De Pontes Matela	\N	rene-de-pontes-matela	players/photo/67.jpg	47	\N	\N	1988-01-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1477	Rodney Andrade	\N	rodney-andrade	players/photo/67.jpg	48	\N	\N	1976-03-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1478	Thiago De Castro Salvalajo	\N	thiago-de-castro-salvalajo	players/photo/67.jpg	49	\N	\N	1989-09-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	67
1479	Whisner Cesar Da Silva	\N	whisner-cesar-da-silva	players/photo/67.jpg	50	\N	\N	1979-04-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	67
1480	Artur Yoshikatsu Pieralisi Ando	\N	artur-yoshikatsu-pieralisi-ando	players/photo/67.jpg	51	\N	\N	1999-09-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1481	Charles Soares De Oliveira	\N	charles-soares-de-oliveira	players/photo/67.jpg	52	\N	\N	2018-02-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	67
1482	Rafael Vasconcelos Fredi	\N	rafael-vasconcelos-fredi	players/photo/67.jpg	53	\N	\N	1994-11-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	67
1483	Fernando Akio Wada	\N	fernando-akio-wada	players/photo/67.jpg	54	\N	\N	1997-01-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1484	Renato Grassiotto Junior	\N	renato-grassiotto-junior	players/photo/67.jpg	55	\N	\N	1983-06-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1485	Victor Garcia Cerqueira	\N	victor-garcia-cerqueira	players/photo/67.jpg	56	\N	\N	1994-05-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1486	Renan De Paiva Biazoto	\N	renan-de-paiva-biazoto	players/photo/67.jpg	58	\N	\N	1992-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1487	Victor Da Silva Ferraz	\N	victor-da-silva-ferraz	players/photo/67.jpg	59	\N	\N	1992-10-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	67
1488	Bruno Paradiso Sales	\N	bruno-paradiso-sales	players/photo/67.jpg	61	\N	\N	1994-10-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	67
1489	Eduardo Gomes Da Silva	\N	eduardo-gomes-da-silva	players/photo/67.jpg	62	\N	\N	1982-06-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	67
1490	José Ricardo Silveira Pereira	\N	jose-ricardo-silveira-pereira	players/photo/67.jpg	63	\N	\N	1982-11-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	67
1491	Jober De Assis Pires	\N	jober-de-assis-pires	players/photo/67.jpg	64	\N	\N	1974-07-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	67
1492	Leonardo Pozzan	\N	leonardo-pozzan	players/photo/67.jpg	65	\N	\N	1991-11-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	67
1493	Christopher Tomaz Minghini	\N	christopher-tomaz-minghini	players/photo/67.jpg	67	\N	\N	1987-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	67
1494	Rafael Paulino Veiga	\N	rafael-paulino-veiga	players/photo/67.jpg	68	\N	\N	1996-05-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	67
1495	Vagner Marques De Souza Lopes	\N	vagner-marques-de-souza-lopes	players/photo/67.jpg	70	\N	\N	1983-11-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	67
1496	Caio Fratta Pereira	\N	caio-fratta-pereira	players/photo/67.jpg	71	\N	\N	1991-10-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1497	Rafael Pogetti Chaves	\N	rafael-pogetti-chaves	players/photo/67.jpg	72	\N	\N	1989-02-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	67
1498	Waldenilson Repczuk	\N	waldenilson-repczuk	players/photo/67.jpg	73	\N	\N	1987-07-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	67
1499	Fábio Torres Klabacher	\N	fabio-torres-klabacher	players/photo/67.jpg	74	\N	\N	1983-10-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	67
1500	Fernando José Da Silva	\N	fernando-jose-da-silva	players/photo/67.jpg	76	\N	\N	1980-10-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	67
1501	Marcelo Estevam Dias	\N	marcelo-estevam-dias	players/photo/67.jpg	77	\N	\N	1968-10-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	67
1502	Marcelo Figueiredo Baltuilhe	\N	marcelo-figueiredo-baltuilhe	players/photo/67.jpg	79	\N	\N	1990-06-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	67
1503	Leonardo Pimentel Galesco	\N	leonardo-pimentel-galesco	players/photo/67.jpg	81	\N	\N	1993-10-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1504	Thomas Sewing Fernandes	\N	thomas-sewing-fernandes	players/photo/67.jpg	83	\N	\N	1996-02-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1505	Charles Andriel Theisen	\N	charles-andriel-theisen	players/photo/67.jpg	86	\N	\N	1991-12-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1506	Lucca Fernandez Spina	\N	lucca-fernandez-spina	players/photo/67.jpg	87	\N	\N	1998-06-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	67
1507	Mauricio Tozzi	\N	mauricio-tozzi	players/photo/67.jpg	89	\N	\N	1989-03-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	67
1508	Wagner Oliveira Dias	\N	wagner-oliveira-dias	players/photo/67.jpg	90	\N	\N	1993-12-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1509	Rafael Merlin Troiano	\N	rafael-merlin-troiano	players/photo/67.jpg	92	\N	\N	1989-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	67
1510	Denis Alves Ferreira	\N	denis-alves-ferreira	players/photo/67.jpg	93	\N	\N	1992-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1511	Celso Luiz Pereira Junior	\N	celso-luiz-pereira-junior	players/photo/67.jpg	96	\N	\N	1987-05-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1512	Sidinei Tamborilla Mota	\N	sidinei-tamborilla-mota	players/photo/67.jpg	97	\N	\N	1990-05-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	67
1513	Matheus Henrique Gaio Honório	\N	matheus-henrique-gaio-honorio	players/photo/71.jpg	1	\N	\N	1995-01-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	71
1515	João Paulo Menezes Lojor Ribeiro	\N	joao-paulo-menezes-lojor-ribeiro	players/photo/71.jpg	3	\N	\N	1996-04-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	71
1516	Pedro Ernesto Campos Dunck	\N	pedro-ernesto-campos-dunck	players/photo/71.jpg	7	\N	\N	1993-06-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	71
1517	Marcelo Fabricio Frares Setti	\N	marcelo-fabricio-frares-setti	players/photo/71.jpg	9	\N	\N	1998-10-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	71
1518	Elder Matheus Campos Da Silva	\N	elder-matheus-campos-da-silva	players/photo/71.jpg	10	\N	\N	1998-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	71
1519	João Corrêa Freire	\N	joao-correa-freire	players/photo/71.jpg	10	\N	\N	1985-11-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	71
1520	Breno De Bem	\N	breno-de-bem	players/photo/71.jpg	12	\N	\N	1995-08-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	71
1521	Murilo Henrique Barbosa	\N	murilo-henrique-barbosa	players/photo/71.jpg	13	\N	\N	1999-12-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	71
1522	Marciel De Sousa Viana	\N	marciel-de-sousa-viana	players/photo/71.jpg	14	\N	\N	1988-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	71
1523	Tharcizio Guilherme Da Silva	\N	tharcizio-guilherme-da-silva	players/photo/71.jpg	15	\N	\N	1992-05-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	71
1524	Marcos Luiz Lodi	\N	marcos-luiz-lodi	players/photo/71.jpg	16	\N	\N	1990-11-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	71
1525	Juliano Martins Beraldo	\N	juliano-martins-beraldo	players/photo/71.jpg	17	\N	\N	1992-10-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	71
1526	Felipe Vidal De Andrade	\N	felipe-vidal-de-andrade	players/photo/71.jpg	22	\N	\N	1996-03-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	71
1527	Marlon Fernando Tamasia	\N	marlon-fernando-tamasia	players/photo/71.jpg	23	\N	\N	1996-06-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	71
1528	Marcelo Henrique De Lima Bezerra	\N	marcelo-henrique-de-lima-bezerra	players/photo/71.jpg	24	\N	\N	1990-11-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	71
1529	Matheus Felipe Schaia	\N	matheus-felipe-schaia	players/photo/71.jpg	25	\N	\N	1999-01-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	71
1530	Matheus Emanoel De Campos Souza	\N	matheus-emanoel-de-campos-souza	players/photo/71.jpg	26	\N	\N	2003-06-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	71
1531	Cassieldo José Da Silva Souza	\N	cassieldo-jose-da-silva-souza	players/photo/71.jpg	27	\N	\N	1994-09-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	71
1532	Lenilson Gomes Barros	\N	lenilson-gomes-barros	players/photo/71.jpg	28	\N	\N	1984-08-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	71
1533	Christian Louis Nunes Ribeiro	\N	christian-louis-nunes-ribeiro	players/photo/71.jpg	29	\N	\N	1989-03-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	71
1534	Edivan Do Santo Ramos	\N	edivan-do-santo-ramos	players/photo/71.jpg	30	\N	\N	1992-03-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	71
1535	Anderson Cassol	\N	anderson-cassol	players/photo/71.jpg	33	\N	\N	1986-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	71
1536	Heliomar De Aquino Dos Santos	\N	heliomar-de-aquino-dos-santos	players/photo/71.jpg	34	\N	\N	1989-02-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	71
1537	Alex Sandro Garcia De Souza	\N	alex-sandro-garcia-de-souza	players/photo/71.jpg	36	\N	\N	1993-12-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	71
1538	Gabriel De Oliveira Hothovolpho	\N	gabriel-de-oliveira-hothovolpho	players/photo/71.jpg	44	\N	\N	2000-09-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	71
1539	Fabio Cesar Miguel Costa	\N	fabio-cesar-miguel-costa	players/photo/71.jpg	48	\N	\N	1986-02-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	71
1540	Everton Da Silva Oliveira	\N	everton-da-silva-oliveira	players/photo/71.jpg	49	\N	\N	1992-03-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	71
1541	Carlos Wanderson Dos Santos Gomes Da Silva	\N	carlos-wanderson-dos-santos-gomes-da-silva	players/photo/71.jpg	50	\N	\N	1994-02-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	71
1542	Luan Ferreira Borges	\N	luan-ferreira-borges	players/photo/71.jpg	50	\N	\N	1990-03-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	71
1543	Luiz Otavio Pereira	\N	luiz-otavio-pereira	players/photo/71.jpg	51	\N	\N	1990-03-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	71
1544	Alex Souza Cruz	\N	alex-souza-cruz	players/photo/71.jpg	52	\N	\N	1990-12-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	71
1545	Wilian Fernando Teza	\N	wilian-fernando-teza	players/photo/71.jpg	53	\N	\N	1990-03-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	71
1546	Alderico De Oliveira Silva	\N	alderico-de-oliveira-silva	players/photo/71.jpg	54	\N	\N	1991-01-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	71
1547	Angelo José Aparecido Dos Santos	\N	angelo-jose-aparecido-dos-santos	players/photo/71.jpg	55	\N	\N	1986-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	71
1548	Arley Diniz Dos Reis Artmann	\N	arley-diniz-dos-reis-artmann	players/photo/71.jpg	56	\N	\N	1995-08-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	71
1549	Gustavo Perdoná	\N	gustavo-perdona	players/photo/71.jpg	58	\N	\N	1976-04-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	71
1550	Paulo Cesar Gonçalves	\N	paulo-cesar-goncalves	players/photo/71.jpg	59	\N	\N	1989-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	71
1551	Alex Da Silva Santos	\N	alex-da-silva-santos	players/photo/71.jpg	62	\N	\N	2001-02-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	71
1552	Lucas Oliveira Ramos	\N	lucas-oliveira-ramos	players/photo/71.jpg	64	\N	\N	1982-08-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	71
1553	Guilherme Zambiasi	\N	guilherme-zambiasi	players/photo/71.jpg	65	\N	\N	1998-09-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	71
1554	Luis Antonio Batista De Lima Filho	\N	luis-antonio-batista-de-lima-filho	players/photo/71.jpg	66	\N	\N	1997-11-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	71
1555	Hélber Siqueira Milhorança	\N	helber-siqueira-milhoranca	players/photo/71.jpg	71	\N	\N	1992-04-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	71
1556	Israel Da Guia Correa Vituriano	\N	israel-da-guia-correa-vituriano	players/photo/71.jpg	72	\N	\N	1994-04-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	71
1557	Rafael Cavalheiro De Andrade	\N	rafael-cavalheiro-de-andrade	players/photo/71.jpg	73	\N	\N	1982-03-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	71
1558	Marcelo Aparecido Alves	\N	marcelo-aparecido-alves	players/photo/71.jpg	75	\N	\N	1985-08-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	71
1559	Rogério Guimrães Silva	\N	rogerio-guimraes-silva	players/photo/71.jpg	75	\N	\N	1981-04-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	71
1560	Kleyton Proenço De Oliveira	\N	kleyton-proenco-de-oliveira	players/photo/71.jpg	78	\N	\N	1989-07-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	71
1561	Antonio Soares Da Silva	\N	antonio-soares-da-silva	players/photo/71.jpg	79	\N	\N	2000-07-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	71
1562	Everaldo Gonçalves Ferreira	\N	everaldo-goncalves-ferreira	players/photo/71.jpg	79	\N	\N	1990-08-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	71
1563	Fabrizio Vilarinho Do Nascimento	\N	fabrizio-vilarinho-do-nascimento	players/photo/71.jpg	79	\N	\N	1985-10-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	71
1564	Luis Brian Alves Meschick	\N	luis-brian-alves-meschick	players/photo/71.jpg	88	\N	\N	1995-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	71
1565	Lucas Meira Sagas	\N	lucas-meira-sagas	players/photo/71.jpg	91	\N	\N	1991-04-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	71
1566	Donaldo Antonio Nunes Junior	\N	donaldo-antonio-nunes-junior	players/photo/71.jpg	92	\N	\N	1989-03-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	71
1567	Jadson De Brito Santana	\N	jadson-de-brito-santana	players/photo/71.jpg	93	\N	\N	1985-06-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	71
1568	Ecimar Teloken	\N	ecimar-teloken	players/photo/71.jpg	94	\N	\N	1986-12-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	71
1569	Moises Domingos Gonzaga Filho	\N	moises-domingos-gonzaga-filho	players/photo/71.jpg	96	\N	\N	1990-12-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	71
1570	Erik Costa Silva	\N	erik-costa-silva	players/photo/71.jpg	97	\N	\N	1997-07-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	71
1571	Bruno Leonam Pereira De Almeida	\N	bruno-leonam-pereira-de-almeida	players/photo/71.jpg	98	\N	\N	1996-09-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	71
1572	Ian Bittencourt Alves	\N	ian-bittencourt-alves	players/photo/73.jpg	1	\N	\N	1997-05-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1573	Guilherme Nascimento Guimarães	\N	guilherme-nascimento-guimaraes	players/photo/73.jpg	2	\N	\N	2000-09-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	73
1574	Edivelton Soratto Gislon	\N	edivelton-soratto-gislon	players/photo/73.jpg	3	\N	\N	1993-01-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	73
1575	Guilherme Meurer	\N	guilherme-meurer	players/photo/73.jpg	4	\N	\N	1994-06-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1576	Marlos Daniel Cardoso Dos Reis	\N	marlos-daniel-cardoso-dos-reis	players/photo/73.jpg	6	\N	\N	1996-07-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1577	Luiz Carlos Bassani Jr	\N	luiz-carlos-bassani-jr	players/photo/73.jpg	7	\N	\N	1993-04-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	73
1578	Diego Boddenberg	\N	diego-boddenberg	players/photo/73.jpg	8	\N	\N	1989-12-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	73
1579	Denis William Fraga	\N	denis-william-fraga	players/photo/73.jpg	9	\N	\N	1999-01-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1580	Arthur Santana De Lucca	\N	arthur-santana-de-lucca	players/photo/73.jpg	10	\N	\N	1997-11-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	73
1581	Matheus Da Silva Barozzi	\N	matheus-da-silva-barozzi	players/photo/73.jpg	11	\N	\N	1994-07-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1582	Wilian Leandro Paulino Auler	\N	wilian-leandro-paulino-auler	players/photo/73.jpg	12	\N	\N	1987-07-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	73
1583	Arthur Barcelos Xavier	\N	arthur-barcelos-xavier	players/photo/73.jpg	13	\N	\N	1991-04-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1584	Yclen Eduardo Soares Dos Santos	\N	yclen-eduardo-soares-dos-santos	players/photo/73.jpg	14	\N	\N	1994-03-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1585	João Vitor Coelho Pujoni	\N	joao-vitor-coelho-pujoni	players/photo/73.jpg	15	\N	\N	1999-05-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1586	Guilherme Bechtold	\N	guilherme-bechtold	players/photo/73.jpg	16	\N	\N	1991-08-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1587	Luan Adriel Costa De Morais	\N	luan-adriel-costa-de-morais	players/photo/73.jpg	18	\N	\N	1996-03-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	73
1588	Matheus Ladislau Flausino	\N	matheus-ladislau-flausino	players/photo/73.jpg	19	\N	\N	1999-09-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	73
1589	Karl Henry Sousa Prestes	\N	karl-henry-sousa-prestes	players/photo/73.jpg	20	\N	\N	1999-11-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	73
1590	Gregory Antonio De Oliveira	\N	gregory-antonio-de-oliveira	players/photo/73.jpg	21	\N	\N	1993-03-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	73
1591	Rafael Reiter	\N	rafael-reiter	players/photo/73.jpg	25	\N	\N	1990-06-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	73
1592	Wellison Garcia De Oliveira	\N	wellison-garcia-de-oliveira	players/photo/73.jpg	28	\N	\N	1988-12-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	73
1593	Cristhian Duarte Garcia	\N	cristhian-duarte-garcia	players/photo/73.jpg	29	\N	\N	1999-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	73
1594	Lucas Pereira Da Silva	\N	lucas-pereira-da-silva	players/photo/73.jpg	31	\N	\N	1994-11-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	73
1595	Luis Cesar Dos Santos Alves Junior	\N	luis-cesar-dos-santos-alves-junior	players/photo/73.jpg	32	\N	\N	1996-04-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	73
1596	Thiago Laux Dos Santos	\N	thiago-laux-dos-santos	players/photo/73.jpg	33	\N	\N	1982-10-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	73
80	Thiago Rodrigues Porto	\N	thiago-rodrigues-porto	players/photo/1.jpg	95	\N	\N	1988-07-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	1
81	Arleo Vaner Tadeu Ferreira	\N	arleo-vaner-tadeu-ferreira	players/photo/1.jpg	97	\N	\N	1981-07-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	1
82	Raphael Cassiano Verônica Ribeiro	\N	raphael-cassiano-veronica-ribeiro	players/photo/1.jpg	98	\N	\N	2001-10-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	1
83	Ciro Otávio Caetano Pontes	\N	ciro-otavio-caetano-pontes	players/photo/1.jpg	99	\N	\N	1992-08-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	1
84	Alberto André	\N	alberto-andre	players/photo/1.jpg	0	\N	\N	2018-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
85	Antônio Guimarães Torres Terra De Oliveira	\N	antonio-guimaraes-torres-terra-de-oliveira	players/photo/1.jpg	0	\N	\N	2018-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	1
86	Bruno Goifman Martins Diniz	\N	bruno-goifman-martins-diniz	players/photo/1.jpg	0	\N	\N	2018-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	1
87	Bruno Philipe Domingues	\N	bruno-philipe-domingues	players/photo/1.jpg	0	\N	\N	2001-11-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	1
1597	Marcos Vinicius Da Rocha Nascimento	\N	marcos-vinicius-da-rocha-nascimento	players/photo/73.jpg	35	\N	\N	1994-01-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	73
1598	Paulo Cezar Campos Alves	\N	paulo-cezar-campos-alves	players/photo/73.jpg	38	\N	\N	1992-04-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	73
1599	Everton Aramides Da Silva Antero	\N	everton-aramides-da-silva-antero	players/photo/73.jpg	43	\N	\N	1989-01-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	73
1600	Cyro Luiz Medeiros Pahim Filho	\N	cyro-luiz-medeiros-pahim-filho	players/photo/73.jpg	45	\N	\N	1989-01-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	73
1601	Silas Gomes Dos Santos	\N	silas-gomes-dos-santos	players/photo/73.jpg	49	\N	\N	1998-11-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	73
1602	Thiago Rama Da Silva	\N	thiago-rama-da-silva	players/photo/73.jpg	50	\N	\N	1995-07-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	73
1603	Laercio Anacleto	\N	laercio-anacleto	players/photo/73.jpg	51	\N	\N	1989-04-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	73
1604	Princylly Michel Pereira	\N	princylly-michel-pereira	players/photo/73.jpg	52	\N	\N	1988-02-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	73
1605	Richard Mondin Silva	\N	richard-mondin-silva	players/photo/73.jpg	53	\N	\N	1991-10-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	73
1606	Robson William Da Silva	\N	robson-william-da-silva	players/photo/73.jpg	54	\N	\N	1991-05-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	73
1607	Eduardo Mendes Dos Santos	\N	eduardo-mendes-dos-santos	players/photo/73.jpg	55	\N	\N	1984-09-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	73
1608	Bruno Siqueira Teixeira	\N	bruno-siqueira-teixeira	players/photo/73.jpg	58	\N	\N	1999-04-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	73
1609	Jesus Emanuel Alves Bayona	\N	jesus-emanuel-alves-bayona	players/photo/73.jpg	59	\N	\N	1991-05-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	73
1610	Osnir Duminhaki Rosa	\N	osnir-duminhaki-rosa	players/photo/73.jpg	65	\N	\N	2000-07-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	73
1611	Breno Leite Takahashi	\N	breno-leite-takahashi	players/photo/73.jpg	66	\N	\N	1986-04-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	73
1612	Rodolfo Kocsis Da Silva	\N	rodolfo-kocsis-da-silva	players/photo/73.jpg	67	\N	\N	1997-09-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	73
1613	Lucas Passarini De Oliveira	\N	lucas-passarini-de-oliveira	players/photo/73.jpg	71	\N	\N	1995-01-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	73
1614	Bruno Cesar Domingos Pereira	\N	bruno-cesar-domingos-pereira	players/photo/73.jpg	73	\N	\N	1985-10-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	73
1615	Murilo Machado Silva	\N	murilo-machado-silva	players/photo/73.jpg	74	\N	\N	1992-07-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	73
1616	Otavio Vinicius Neves Gonçalves De Amorim	\N	otavio-vinicius-neves-goncalves-de-amorim	players/photo/73.jpg	77	\N	\N	1996-10-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	73
1617	Tiago Carvalho Lourencini	\N	tiago-carvalho-lourencini	players/photo/73.jpg	79	\N	\N	1995-11-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	73
1618	Carlos Alberto De Paiva Costa	\N	carlos-alberto-de-paiva-costa	players/photo/73.jpg	82	\N	\N	1991-11-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	73
1619	Willian Antônio Dos Santos	\N	willian-antonio-dos-santos	players/photo/73.jpg	84	\N	\N	1991-08-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	73
1620	Paulo Ricardo Mosselim De Abreu Junior	\N	paulo-ricardo-mosselim-de-abreu-junior	players/photo/73.jpg	90	\N	\N	1995-10-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	73
1621	Rahy Da Silva Queiroz	\N	rahy-da-silva-queiroz	players/photo/73.jpg	91	\N	\N	1987-06-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	73
1622	Bruno Leite Takahashi	\N	bruno-leite-takahashi	players/photo/73.jpg	93	\N	\N	1984-04-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	73
1623	Dorval Ricardo De Souza	\N	dorval-ricardo-de-souza	players/photo/73.jpg	94	\N	\N	1987-11-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	73
1624	Andrey Pereira	\N	andrey-pereira	players/photo/73.jpg	95	\N	\N	1993-05-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	73
1625	Joni Rodrigo Manke	\N	joni-rodrigo-manke	players/photo/73.jpg	96	\N	\N	1983-02-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	73
1626	Northon Diego Chambrek Salvador	\N	northon-diego-chambrek-salvador	players/photo/73.jpg	98	\N	\N	1988-12-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	73
1627	Ramon Verdugo Junior	\N	ramon-verdugo-junior	players/photo/73.jpg	99	\N	\N	1984-06-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	73
1628	Romário Cesar Cardoso Dos Reis	\N	romario-cesar-cardoso-dos-reis	players/photo/73.jpg	0	\N	\N	1994-06-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	73
1629	João Vitor Gonçalves	\N	joao-vitor-goncalves	players/photo/74.jpg	1	\N	\N	1995-12-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	74
1630	Vinicius Augusto Campagnoli Rocha	\N	vinicius-augusto-campagnoli-rocha	players/photo/74.jpg	2	\N	\N	1996-10-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	74
1631	Daniel Kenji Funabashi	\N	daniel-kenji-funabashi	players/photo/74.jpg	3	\N	\N	1989-03-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	74
1632	Pedro Paulo De Souza Caldeira	\N	pedro-paulo-de-souza-caldeira	players/photo/74.jpg	4	\N	\N	1988-07-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	74
1633	Welington Luiz Nascimento	\N	welington-luiz-nascimento	players/photo/74.jpg	6	\N	\N	1992-02-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	10	74
1634	João Rubens Ramos Rocio	\N	joao-rubens-ramos-rocio	players/photo/74.jpg	7	\N	\N	1986-03-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	74
1635	Stephan Nunes Do Nascimento	\N	stephan-nunes-do-nascimento	players/photo/74.jpg	10	\N	\N	1987-08-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1636	Vinícius Ferreira Miranda	\N	vinicius-ferreira-miranda	players/photo/74.jpg	11	\N	\N	1988-10-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	74
1637	Pedro Henrique Silva	\N	pedro-henrique-silva	players/photo/74.jpg	12	\N	\N	1987-03-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	10	74
1638	Weberton Bessa Inocêncio Junior	\N	weberton-bessa-inocencio-junior	players/photo/74.jpg	13	\N	\N	1993-08-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1639	Victor Ferreira Miranda	\N	victor-ferreira-miranda	players/photo/74.jpg	14	\N	\N	1992-06-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	74
1640	Richard Monequi Alves	\N	richard-monequi-alves	players/photo/74.jpg	15	\N	\N	1994-02-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	74
1641	Andre Niko Fortino	\N	andre-niko-fortino	players/photo/74.jpg	16	\N	\N	1995-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	74
1642	Danilo  De Sa Venancio	\N	danilo-de-sa-venancio	players/photo/74.jpg	17	\N	\N	1985-03-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1643	Vinícius Brinati Torres Oliveira	\N	vinicius-brinati-torres-oliveira	players/photo/74.jpg	18	\N	\N	1994-02-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	74
1644	Patrick Silva Meireles Amorim	\N	patrick-silva-meireles-amorim	players/photo/74.jpg	19	\N	\N	1996-07-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	74
1645	Erick Penha Nascimento Lucio	\N	erick-penha-nascimento-lucio	players/photo/74.jpg	20	\N	\N	1999-06-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1646	Thiago Santana Barboza	\N	thiago-santana-barboza	players/photo/74.jpg	21	\N	\N	1994-03-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	74
1647	Lucas Mark Rogers	\N	lucas-mark-rogers	players/photo/74.jpg	22	\N	\N	1993-12-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	74
1648	Jhonny Magno Candido Pereira	\N	jhonny-magno-candido-pereira	players/photo/74.jpg	23	\N	\N	1994-11-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1649	Fellipe Dos Santos Bicas	\N	fellipe-dos-santos-bicas	players/photo/74.jpg	24	\N	\N	1989-01-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	4	74
1650	Yago Bento Bruno Martins	\N	yago-bento-bruno-martins	players/photo/74.jpg	25	\N	\N	1992-10-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	74
1651	Gleydston Manoel Silva Lopes	\N	gleydston-manoel-silva-lopes	players/photo/74.jpg	26	\N	\N	1997-07-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	74
1652	Joao Gabriel Vinicius De Araujo Silva	\N	joao-gabriel-vinicius-de-araujo-silva	players/photo/74.jpg	27	\N	\N	1993-01-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	74
1653	Arthur Máximo Arleu E Silva	\N	arthur-maximo-arleu-e-silva	players/photo/74.jpg	28	\N	\N	1997-07-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	74
1654	Felipe Alvarenga Dos Santos	\N	felipe-alvarenga-dos-santos	players/photo/74.jpg	29	\N	\N	1999-02-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	4	74
1655	Raoni Felipe Sampaio De Souza	\N	raoni-felipe-sampaio-de-souza	players/photo/74.jpg	31	\N	\N	1994-09-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	74
1656	Junis Bozetti Passos	\N	junis-bozetti-passos	players/photo/74.jpg	32	\N	\N	1989-09-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	74
1657	Fabricio Aguiar Calmon Mantovanelli	\N	fabricio-aguiar-calmon-mantovanelli	players/photo/74.jpg	33	\N	\N	1989-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	74
1658	Arthur Dadalto	\N	arthur-dadalto	players/photo/74.jpg	34	\N	\N	1992-10-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	74
1659	Lúrien Gomes Do Carmo	\N	lurien-gomes-do-carmo	players/photo/74.jpg	36	\N	\N	1987-05-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	74
1660	Cristiano Nascimento Dos Santos	\N	cristiano-nascimento-dos-santos	players/photo/74.jpg	44	\N	\N	1983-05-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	74
1661	Bruno Passos	\N	bruno-passos	players/photo/74.jpg	46	\N	\N	1990-06-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	74
1662	Fernando Giovannotti Dorsch	\N	fernando-giovannotti-dorsch	players/photo/74.jpg	48	\N	\N	1980-10-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	74
1663	Pedro Henrique Vicente Reis	\N	pedro-henrique-vicente-reis	players/photo/74.jpg	50	\N	\N	1996-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	74
1664	Humberto Da Silva Gomes	\N	humberto-da-silva-gomes	players/photo/74.jpg	54	\N	\N	1998-04-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	74
1665	Yan Leonardo Resende De Souza Kampke	\N	yan-leonardo-resende-de-souza-kampke	players/photo/74.jpg	55	\N	\N	1997-11-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	74
1666	Fagner Alves Batista	\N	fagner-alves-batista	players/photo/74.jpg	56	\N	\N	1988-09-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	74
1667	Flavio Monteiro Nunes	\N	flavio-monteiro-nunes	players/photo/74.jpg	57	\N	\N	1991-04-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	74
1668	Marcos Ferreira De Oliveira Filho	\N	marcos-ferreira-de-oliveira-filho	players/photo/74.jpg	59	\N	\N	1989-11-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	74
1669	Pedro De Oliveira Lorenzoni	\N	pedro-de-oliveira-lorenzoni	players/photo/74.jpg	60	\N	\N	1990-06-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	74
1670	Frederico Zandomenico Meyer	\N	frederico-zandomenico-meyer	players/photo/74.jpg	61	\N	\N	1983-01-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	74
1671	Kelvin Oliveira Martins	\N	kelvin-oliveira-martins	players/photo/74.jpg	62	\N	\N	1998-01-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	74
1672	Vinícius Ubirajara Quintino Moreira Braga	\N	vinicius-ubirajara-quintino-moreira-braga	players/photo/74.jpg	66	\N	\N	1988-09-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	74
1673	Carlos Eduardo Lima Veloso	\N	carlos-eduardo-lima-veloso	players/photo/74.jpg	68	\N	\N	1977-01-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	74
1674	Rafael Fávaro Pansini	\N	rafael-favaro-pansini	players/photo/74.jpg	69	\N	\N	1989-04-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	74
1675	Igor Nogueira Zardini	\N	igor-nogueira-zardini	players/photo/74.jpg	71	\N	\N	1993-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	74
1676	Bruno De Araújo Pinho Costa	\N	bruno-de-araujo-pinho-costa	players/photo/74.jpg	73	\N	\N	1980-04-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	74
1677	Gabriel Cometti Coutinho	\N	gabriel-cometti-coutinho	players/photo/74.jpg	74	\N	\N	1988-05-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	74
1678	Marcos Vinicius Da Silva	\N	marcos-vinicius-da-silva	players/photo/74.jpg	76	\N	\N	1998-01-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	74
1679	Gabriel Julio Pereira Da Silva	\N	gabriel-julio-pereira-da-silva	players/photo/74.jpg	77	\N	\N	1992-05-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	74
1680	Alexandre Porto Cardoso	\N	alexandre-porto-cardoso	players/photo/74.jpg	79	\N	\N	1994-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	74
1681	Pedro Paulo Dos Santos Junior	\N	pedro-paulo-dos-santos-junior	players/photo/74.jpg	80	\N	\N	1996-10-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1682	Lucas Chagas Suhett	\N	lucas-chagas-suhett	players/photo/74.jpg	81	\N	\N	1995-01-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1683	Raphael Casagrande De Oliveira	\N	raphael-casagrande-de-oliveira	players/photo/74.jpg	83	\N	\N	1995-03-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1684	Caio Henrique Mendes Custódio	\N	caio-henrique-mendes-custodio	players/photo/74.jpg	84	\N	\N	1993-02-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1685	Franklin Fialho Garcia	\N	franklin-fialho-garcia	players/photo/74.jpg	86	\N	\N	1988-02-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1686	Rafael Schaffeln Ximenes	\N	rafael-schaffeln-ximenes	players/photo/74.jpg	87	\N	\N	1988-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	74
1687	Gustavo Mantovani	\N	gustavo-mantovani	players/photo/74.jpg	88	\N	\N	1994-12-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1688	Thyago Diniz De Mattos	\N	thyago-diniz-de-mattos	players/photo/74.jpg	89	\N	\N	1996-11-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	74
1689	Marcos Antonio De Abreu Lacerda	\N	marcos-antonio-de-abreu-lacerda	players/photo/74.jpg	91	\N	\N	1994-11-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	74
1690	Lorhan Gomes Corteleti	\N	lorhan-gomes-corteleti	players/photo/74.jpg	92	\N	\N	1993-08-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	74
1691	Lucas Camara Martins	\N	lucas-camara-martins	players/photo/74.jpg	93	\N	\N	1992-03-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	74
1692	Igor Morgado Saiter	\N	igor-morgado-saiter	players/photo/74.jpg	94	\N	\N	1984-07-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	74
1693	Felipe Lourenço De Almeida	\N	felipe-lourenco-de-almeida	players/photo/74.jpg	95	\N	\N	1985-10-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	74
1694	Thiago Santos Santana	\N	thiago-santos-santana	players/photo/74.jpg	96	\N	\N	1980-03-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	74
1695	Raony Ramos Rocio	\N	raony-ramos-rocio	players/photo/74.jpg	99	\N	\N	1988-01-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	74
1696	Thomas Guilherme Santos De Oliveira	\N	thomas-guilherme-santos-de-oliveira	players/photo/75.jpg	3	\N	\N	1996-05-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	75
1697	Martin Bryant Mccoy Ii	\N	martin-bryant-mccoy-ii	players/photo/75.jpg	6	\N	\N	1993-10-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	75
1698	Roland Ethan Londata Green	\N	roland-ethan-londata-green	players/photo/75.jpg	7	\N	\N	1990-11-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1699	Jhonatan Pereira Silva	\N	jhonatan-pereira-silva	players/photo/75.jpg	8	\N	\N	1993-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	75
1700	Luan Karlos De Almeida Ribeiro	\N	luan-karlos-de-almeida-ribeiro	players/photo/75.jpg	10	\N	\N	1994-11-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	75
1701	Arthur Santiago Duarte Gurgel	\N	arthur-santiago-duarte-gurgel	players/photo/75.jpg	11	\N	\N	1994-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	75
1702	Raphael Almeida Gomes De Melo	\N	raphael-almeida-gomes-de-melo	players/photo/75.jpg	15	\N	\N	1997-02-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	75
1703	Jefson Marlos Queiroz Da Cruz	\N	jefson-marlos-queiroz-da-cruz	players/photo/75.jpg	17	\N	\N	1987-05-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	75
1704	Hertz Pires Pina Junior	\N	hertz-pires-pina-junior	players/photo/75.jpg	18	\N	\N	1994-11-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	75
1705	Renato Nascimento Araújo	\N	renato-nascimento-araujo	players/photo/75.jpg	20	\N	\N	1993-09-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	75
1706	Gerson Lima Gomes	\N	gerson-lima-gomes	players/photo/75.jpg	21	\N	\N	1983-09-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	75
1707	João Victor Santos Morais	\N	joao-victor-santos-morais	players/photo/75.jpg	22	\N	\N	1999-04-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	75
1708	Emanuel Lucena Do Nascimento	\N	emanuel-lucena-do-nascimento	players/photo/75.jpg	23	\N	\N	1991-01-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	75
1709	Jefferson Hebert De Freitas Rezende	\N	jefferson-hebert-de-freitas-rezende	players/photo/75.jpg	24	\N	\N	1994-10-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	75
1710	Ewerton Dhoglas Da Silva Eloi	\N	ewerton-dhoglas-da-silva-eloi	players/photo/75.jpg	26	\N	\N	1992-08-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	75
1711	Lucas Wesley Mendes De Meneses Fragoso	\N	lucas-wesley-mendes-de-meneses-fragoso	players/photo/75.jpg	27	\N	\N	1997-10-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	75
1712	Diêgo Luiz Da Silva	\N	diego-luiz-da-silva	players/photo/75.jpg	28	\N	\N	1993-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	75
1713	Wanderson Rodrigues Marques	\N	wanderson-rodrigues-marques	players/photo/75.jpg	29	\N	\N	1981-02-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	75
1714	Gabriel Luís De Almeida Borba Eloy Dantas	\N	gabriel-luis-de-almeida-borba-eloy-dantas	players/photo/75.jpg	30	\N	\N	2002-03-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	75
1715	Rodrigo Andrade Dos Santos	\N	rodrigo-andrade-dos-santos	players/photo/75.jpg	31	\N	\N	1983-04-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	75
1716	Gabriel Dias De Melo	\N	gabriel-dias-de-melo	players/photo/75.jpg	33	\N	\N	1994-07-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	75
1717	Márcio Vinicius Ferreira Da Silva	\N	marcio-vinicius-ferreira-da-silva	players/photo/75.jpg	34	\N	\N	2000-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	75
1718	Thales Felipe Da Silva	\N	thales-felipe-da-silva	players/photo/75.jpg	35	\N	\N	1994-01-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	75
1719	Bruno Silva Cruz Batista	\N	bruno-silva-cruz-batista	players/photo/75.jpg	36	\N	\N	2000-07-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	75
1720	Anderson De Sousa Freitas	\N	anderson-de-sousa-freitas	players/photo/75.jpg	38	\N	\N	1982-07-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	75
1721	Matheus Alberto Alves Pinto Xavier	\N	matheus-alberto-alves-pinto-xavier	players/photo/75.jpg	39	\N	\N	1991-06-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	75
1722	Robson Do Vale Sousa	\N	robson-do-vale-sousa	players/photo/75.jpg	42	\N	\N	1994-06-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1723	Daniel Ramos De Lima	\N	daniel-ramos-de-lima	players/photo/75.jpg	43	\N	\N	1998-12-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	75
1724	Julyfran Pereira Pedrosa	\N	julyfran-pereira-pedrosa	players/photo/75.jpg	44	\N	\N	1998-02-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	75
1725	Willy Dos Santos Barbosa	\N	willy-dos-santos-barbosa	players/photo/75.jpg	45	\N	\N	1999-08-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	75
1726	Igor Pereira Da Silva	\N	igor-pereira-da-silva	players/photo/75.jpg	48	\N	\N	1998-01-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	75
1727	Eduardo Vitor Cabral Neves	\N	eduardo-vitor-cabral-neves	players/photo/75.jpg	49	\N	\N	1996-11-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1728	Juliano Nóbrega Vieira	\N	juliano-nobrega-vieira	players/photo/75.jpg	50	\N	\N	1996-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1729	Gabriel Marques Colares	\N	gabriel-marques-colares	players/photo/75.jpg	52	\N	\N	1999-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1730	Felipe Emanuel Silva Cavalcante	\N	felipe-emanuel-silva-cavalcante	players/photo/75.jpg	54	\N	\N	1988-01-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1731	Eduardo Augusto Guedes De Souza	\N	eduardo-augusto-guedes-de-souza	players/photo/75.jpg	55	\N	\N	1998-03-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	75
1732	Igor Monteiro De Araujo	\N	igor-monteiro-de-araujo	players/photo/75.jpg	58	\N	\N	1994-12-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1733	Thiago Moabe Dantas Pereira	\N	thiago-moabe-dantas-pereira	players/photo/75.jpg	59	\N	\N	2002-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	75
1734	Eduardo Philippe Viana De Andrade	\N	eduardo-philippe-viana-de-andrade	players/photo/75.jpg	69	\N	\N	1992-11-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	75
1735	Daniel Caitano Da Silva	\N	daniel-caitano-da-silva	players/photo/75.jpg	70	\N	\N	1997-09-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	75
1736	Edvanio Ferreira Pereira	\N	edvanio-ferreira-pereira	players/photo/75.jpg	71	\N	\N	1987-01-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	75
1737	Lucas Breno De Oliveira Silva	\N	lucas-breno-de-oliveira-silva	players/photo/75.jpg	72	\N	\N	1999-02-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	75
1738	Lukas Do Nascimento	\N	lukas-do-nascimento	players/photo/75.jpg	74	\N	\N	1999-01-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	75
1739	André Figueiredo Leite	\N	andre-figueiredo-leite	players/photo/75.jpg	75	\N	\N	1985-01-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	75
1740	Emerson Ribeiro De Oliveira	\N	emerson-ribeiro-de-oliveira	players/photo/75.jpg	76	\N	\N	1991-12-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	75
1741	Onilton Barbosa De Almeida Junior	\N	onilton-barbosa-de-almeida-junior	players/photo/75.jpg	78	\N	\N	1995-06-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	75
1742	Matheus Gonçalves Brandão	\N	matheus-goncalves-brandao	players/photo/75.jpg	79	\N	\N	1999-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	75
1743	Thales Espínola Lopes De Mendonça	\N	thales-espinola-lopes-de-mendonca	players/photo/75.jpg	80	\N	\N	1996-12-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	75
1744	José Pedro Diniz Figueiredo	\N	jose-pedro-diniz-figueiredo	players/photo/75.jpg	82	\N	\N	1997-09-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	75
1745	Matheus Araujo Silva	\N	matheus-araujo-silva	players/photo/75.jpg	83	\N	\N	1995-07-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	75
1746	David Gomes De Farias	\N	david-gomes-de-farias	players/photo/75.jpg	85	\N	\N	1987-09-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	75
1747	Jailton De Souza Silqueira	\N	jailton-de-souza-silqueira	players/photo/75.jpg	87	\N	\N	1991-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	75
1748	José Idygleikson Guedes Medeiros	\N	jose-idygleikson-guedes-medeiros	players/photo/75.jpg	89	\N	\N	1989-01-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	75
1749	Dalberg Pereira Diniz Da Silva	\N	dalberg-pereira-diniz-da-silva	players/photo/75.jpg	90	\N	\N	1994-01-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	75
1750	Anaecio Ferreira Dias	\N	anaecio-ferreira-dias	players/photo/75.jpg	91	\N	\N	1975-08-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	75
1751	Chrystian Gabriel Gonzalez Dos Anjos	\N	chrystian-gabriel-gonzalez-dos-anjos	players/photo/75.jpg	92	\N	\N	2000-06-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1752	Kelvin Schneider Meneses De Almeida	\N	kelvin-schneider-meneses-de-almeida	players/photo/75.jpg	94	\N	\N	1990-04-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	75
1753	Danilo Coelho Do Nascimento	\N	danilo-coelho-do-nascimento	players/photo/75.jpg	95	\N	\N	1987-07-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	75
1754	Paulo Ricardo Lima De Sousa	\N	paulo-ricardo-lima-de-sousa	players/photo/75.jpg	97	\N	\N	1990-08-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1755	Gustavo Gomes Batista	\N	gustavo-gomes-batista	players/photo/75.jpg	98	\N	\N	1997-07-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	75
1756	Gilson Souza Junior	\N	gilson-souza-junior	players/photo/75.jpg	99	\N	\N	1993-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	75
1757	Charles Wagner Barcelar Filho	\N	charles-wagner-barcelar-filho	players/photo/76.jpg	1	\N	\N	1994-05-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1758	Guilherme Afonso Frauzina Macedo	\N	guilherme-afonso-frauzina-macedo	players/photo/76.jpg	2	\N	\N	1989-08-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1759	Gabriel De Moura Piola	\N	gabriel-de-moura-piola	players/photo/76.jpg	3	\N	\N	1998-02-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1760	Wellington Fideles Do Carmo	\N	wellington-fideles-do-carmo	players/photo/76.jpg	4	\N	\N	1999-01-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1761	Eduardo Augutso Sobral Guardi	\N	eduardo-augutso-sobral-guardi	players/photo/76.jpg	5	\N	\N	1991-10-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1762	Sedrick Pereira De Lima Junior	\N	sedrick-pereira-de-lima-junior	players/photo/76.jpg	6	\N	\N	2000-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1763	Filipi Carlos Rodrigues	\N	filipi-carlos-rodrigues	players/photo/76.jpg	7	\N	\N	2000-07-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1764	Rodrigo Rodrigues Da Veiga	\N	rodrigo-rodrigues-da-veiga	players/photo/76.jpg	9	\N	\N	1995-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1765	Samuel Schenini De Rezende	\N	samuel-schenini-de-rezende	players/photo/76.jpg	10	\N	\N	1991-11-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1766	Gabriel Prazeres De Castro	\N	gabriel-prazeres-de-castro	players/photo/76.jpg	11	\N	\N	2000-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1767	Arthur Franco Da Silva	\N	arthur-franco-da-silva	players/photo/76.jpg	12	\N	\N	2001-01-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1768	Denner Kerlles Coutinho	\N	denner-kerlles-coutinho	players/photo/76.jpg	13	\N	\N	1994-07-19	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1769	Ewandson Nunes Serra	\N	ewandson-nunes-serra	players/photo/76.jpg	13	\N	\N	1990-04-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1770	Daniel Borges Santos	\N	daniel-borges-santos	players/photo/76.jpg	14	\N	\N	1984-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	76
1771	Ewander Nunes Serra	\N	ewander-nunes-serra	players/photo/76.jpg	14	\N	\N	1990-04-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1772	Igor Gonçalves Do Nascimento	\N	igor-goncalves-do-nascimento	players/photo/76.jpg	15	\N	\N	1989-06-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	76
1773	Michael Marcus Alves De Melo	\N	michael-marcus-alves-de-melo	players/photo/76.jpg	16	\N	\N	1994-03-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	76
1774	Bruno  Araujo Aguiar	\N	bruno-araujo-aguiar	players/photo/76.jpg	17	\N	\N	1986-08-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	76
1775	Leandro Ribeiro Aguiar	\N	leandro-ribeiro-aguiar	players/photo/76.jpg	18	\N	\N	1990-09-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	76
1776	Mauro Levantezi Santos	\N	mauro-levantezi-santos	players/photo/76.jpg	19	\N	\N	1987-05-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	76
1777	Bruno Albert Nobre Marques	\N	bruno-albert-nobre-marques	players/photo/76.jpg	20	\N	\N	1988-05-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	76
1778	Fellipe Florêncio Da Silva	\N	fellipe-florencio-da-silva	players/photo/76.jpg	21	\N	\N	1989-11-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	76
1779	João Cardoso Rodrigues Filho	\N	joao-cardoso-rodrigues-filho	players/photo/76.jpg	22	\N	\N	1981-07-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	76
1780	Willian Bruno Araújo Ferreira	\N	willian-bruno-araujo-ferreira	players/photo/76.jpg	23	\N	\N	1988-07-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	76
1781	Felipe Takatsu Andrade	\N	felipe-takatsu-andrade	players/photo/76.jpg	24	\N	\N	1991-01-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	76
1782	Danilo Batista Lima	\N	danilo-batista-lima	players/photo/76.jpg	25	\N	\N	1987-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	76
1783	Paulo Igor De Almeida Freitas	\N	paulo-igor-de-almeida-freitas	players/photo/76.jpg	26	\N	\N	1996-05-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	76
1784	Lucas Tojal Gadelha De Freitas	\N	lucas-tojal-gadelha-de-freitas	players/photo/76.jpg	27	\N	\N	1998-06-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	76
1785	Felipe Neves Barreto	\N	felipe-neves-barreto	players/photo/76.jpg	28	\N	\N	1988-10-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	76
1786	Pedro Franca Moreira	\N	pedro-franca-moreira	players/photo/76.jpg	29	\N	\N	1990-01-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	76
1787	Lucas Muniz Ricci	\N	lucas-muniz-ricci	players/photo/76.jpg	30	\N	\N	1994-02-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	76
1788	Arthur De Abreu E Castro	\N	arthur-de-abreu-e-castro	players/photo/76.jpg	31	\N	\N	2002-01-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	76
1789	Bruno De Matos Pinheiro	\N	bruno-de-matos-pinheiro	players/photo/76.jpg	32	\N	\N	2000-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	76
1790	Lucca Procópio Sampaio De Noronha Figueiredo	\N	lucca-procopio-sampaio-de-noronha-figueiredo	players/photo/76.jpg	33	\N	\N	2000-01-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	76
1791	Álvaro Rodriques Da Fonseca Faria	\N	alvaro-rodriques-da-fonseca-faria	players/photo/76.jpg	34	\N	\N	1987-03-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	76
1792	Geraldo Alves De Oliveira Junior	\N	geraldo-alves-de-oliveira-junior	players/photo/76.jpg	35	\N	\N	1977-07-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	76
1793	Pedro Henrique Marques Nakamura	\N	pedro-henrique-marques-nakamura	players/photo/76.jpg	36	\N	\N	1987-01-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	76
1794	Renatto De Sousa Fagundes	\N	renatto-de-sousa-fagundes	players/photo/76.jpg	37	\N	\N	1987-11-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	76
1795	Ricardo Tod	\N	ricardo-tod	players/photo/76.jpg	38	\N	\N	1983-07-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	76
1796	Arthur Bernardo Ferreira Rodrigues	\N	arthur-bernardo-ferreira-rodrigues	players/photo/76.jpg	39	\N	\N	1990-05-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	76
1797	Gustavo Marques Da Silva	\N	gustavo-marques-da-silva	players/photo/76.jpg	40	\N	\N	2002-03-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	76
1798	Guilherme Borges Dos Santos	\N	guilherme-borges-dos-santos	players/photo/76.jpg	41	\N	\N	1991-03-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	76
1799	Hugo Silva Araujo	\N	hugo-silva-araujo	players/photo/76.jpg	42	\N	\N	1987-10-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	76
1800	Victor Rafael Oliveira Fialho	\N	victor-rafael-oliveira-fialho	players/photo/76.jpg	43	\N	\N	1982-08-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	76
1801	Paulo Octávio Rocha Ramos	\N	paulo-octavio-rocha-ramos	players/photo/76.jpg	44	\N	\N	1993-01-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	76
1802	Gustavo De Aguiar Pires Alecrin	\N	gustavo-de-aguiar-pires-alecrin	players/photo/76.jpg	45	\N	\N	1994-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	76
1803	Carlos Augusto Martins De Andrade	\N	carlos-augusto-martins-de-andrade	players/photo/76.jpg	46	\N	\N	2000-04-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	76
1804	Jardel Da Silva Fortes	\N	jardel-da-silva-fortes	players/photo/76.jpg	47	\N	\N	1983-09-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	76
1805	Tiago Mendes Da Silva	\N	tiago-mendes-da-silva	players/photo/76.jpg	48	\N	\N	1989-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	76
1806	Carlos Mohamed Gonzales	\N	carlos-mohamed-gonzales	players/photo/76.jpg	49	\N	\N	1990-12-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	76
1807	Rafael Lavarini Dos Santos	\N	rafael-lavarini-dos-santos	players/photo/76.jpg	50	\N	\N	1999-03-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1808	Daniel Diogo Silva	\N	daniel-diogo-silva	players/photo/76.jpg	51	\N	\N	1980-12-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1809	James Melvin Springfield Jr	\N	james-melvin-springfield-jr	players/photo/76.jpg	52	\N	\N	1985-11-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1810	Ricardo Antonio Castro De Oliveira	\N	ricardo-antonio-castro-de-oliveira	players/photo/76.jpg	54	\N	\N	1986-03-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1811	Cristian Lopes Fernandes	\N	cristian-lopes-fernandes	players/photo/76.jpg	55	\N	\N	1999-02-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	76
1812	Pedro Afonso Berford Leão Amorim	\N	pedro-afonso-berford-leao-amorim	players/photo/76.jpg	56	\N	\N	2000-09-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	76
1813	Rafael Rodrigues Pimentel Muniz	\N	rafael-rodrigues-pimentel-muniz	players/photo/76.jpg	57	\N	\N	1997-03-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	76
1814	Alex Pacheco Andrade	\N	alex-pacheco-andrade	players/photo/76.jpg	58	\N	\N	1986-10-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	76
1815	André Luis Rodrigues Torres Moura	\N	andre-luis-rodrigues-torres-moura	players/photo/76.jpg	58	\N	\N	1986-06-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	76
1816	Alex Simão Da Silva	\N	alex-simao-da-silva	players/photo/76.jpg	59	\N	\N	1990-12-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	76
1817	Ivan Menezes Sena	\N	ivan-menezes-sena	players/photo/76.jpg	59	\N	\N	1989-05-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	76
1818	Raphael Zille Ferreira	\N	raphael-zille-ferreira	players/photo/76.jpg	60	\N	\N	1984-10-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	76
1819	Pedro Henrique Sangaletti Cesar Da Luz	\N	pedro-henrique-sangaletti-cesar-da-luz	players/photo/76.jpg	61	\N	\N	1994-12-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	76
1820	Gabriel Luiz Neves M Andrade	\N	gabriel-luiz-neves-m-andrade	players/photo/76.jpg	62	\N	\N	1996-03-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	76
1821	Robson Da Silva Daniel	\N	robson-da-silva-daniel	players/photo/76.jpg	62	\N	\N	1981-11-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1822	Felipe De Souza Garcia	\N	felipe-de-souza-garcia	players/photo/76.jpg	71	\N	\N	1992-01-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	76
1823	Hugo Jones Pereira Da Silveira	\N	hugo-jones-pereira-da-silveira	players/photo/76.jpg	72	\N	\N	1993-06-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	76
1824	Diogo Barbosa Dos Santos	\N	diogo-barbosa-dos-santos	players/photo/76.jpg	74	\N	\N	1989-02-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	76
1825	Raphael Andrade De Souza	\N	raphael-andrade-de-souza	players/photo/76.jpg	74	\N	\N	1990-12-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	76
1826	Jorge Antonio Da Silva Lima Peixoto	\N	jorge-antonio-da-silva-lima-peixoto	players/photo/76.jpg	78	\N	\N	1993-03-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	76
1827	Gabriel Henrique Sena De Oliveira Souza	\N	gabriel-henrique-sena-de-oliveira-souza	players/photo/76.jpg	80	\N	\N	1998-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	76
1828	Joshua Cunha Do Amaral	\N	joshua-cunha-do-amaral	players/photo/76.jpg	80	\N	\N	1996-07-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1829	André Gildo Beltrão Maciel	\N	andre-gildo-beltrao-maciel	players/photo/76.jpg	81	\N	\N	2017-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1830	Lucas Pompeu Torelly	\N	lucas-pompeu-torelly	players/photo/76.jpg	81	\N	\N	1992-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	76
1831	Renato Da Silva Barros	\N	renato-da-silva-barros	players/photo/76.jpg	82	\N	\N	1985-06-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	76
1832	Vinício Ferreira Costa	\N	vinicio-ferreira-costa	players/photo/76.jpg	82	\N	\N	1994-09-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1833	Éder Kelmerson Cavalcante Costa Silva	\N	eder-kelmerson-cavalcante-costa-silva	players/photo/76.jpg	83	\N	\N	1999-08-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	76
1834	Igor Alessandro Dos Santos Aguiar	\N	igor-alessandro-dos-santos-aguiar	players/photo/76.jpg	83	\N	\N	1992-05-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1835	Douglas Da Silva Costa	\N	douglas-da-silva-costa	players/photo/76.jpg	84	\N	\N	1990-08-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1836	Brenno De Lima Garcia	\N	brenno-de-lima-garcia	players/photo/76.jpg	85	\N	\N	1995-08-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1837	Henrique Gomes Jacob	\N	henrique-gomes-jacob	players/photo/76.jpg	86	\N	\N	1982-12-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1838	Rogério Yamassaki Teixeira Barbosa	\N	rogerio-yamassaki-teixeira-barbosa	players/photo/76.jpg	87	\N	\N	1996-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1839	Lucas Sala Cruz	\N	lucas-sala-cruz	players/photo/76.jpg	88	\N	\N	2003-02-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1840	Marcelo Daniel Oliveira De Lima	\N	marcelo-daniel-oliveira-de-lima	players/photo/76.jpg	89	\N	\N	1997-05-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	76
1841	Enzo Rocha Giada E Silva	\N	enzo-rocha-giada-e-silva	players/photo/76.jpg	91	\N	\N	1983-03-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1842	Maykon Fernando Ramos	\N	maykon-fernando-ramos	players/photo/76.jpg	92	\N	\N	2017-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1843	Gleidson Sales De Brito	\N	gleidson-sales-de-brito	players/photo/76.jpg	93	\N	\N	1987-09-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1844	Carlos André Ferreira De Oliveira	\N	carlos-andre-ferreira-de-oliveira	players/photo/76.jpg	94	\N	\N	1984-05-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1845	Morjube Almeida Castro	\N	morjube-almeida-castro	players/photo/76.jpg	95	\N	\N	1993-10-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1846	Rodrigo Augusto Ramos De Azevedo	\N	rodrigo-augusto-ramos-de-azevedo	players/photo/76.jpg	96	\N	\N	1985-05-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	76
1847	José Jiesir De Morais Filho	\N	jose-jiesir-de-morais-filho	players/photo/78.jpg	2	\N	\N	1995-06-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1848	Arthur Matos De Oliveira	\N	arthur-matos-de-oliveira	players/photo/78.jpg	4	\N	\N	1986-06-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	78
1849	Lucas Vinicius Da Silva	\N	lucas-vinicius-da-silva	players/photo/78.jpg	9	\N	\N	1995-05-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	78
1850	Mikael Almeida Silva	\N	mikael-almeida-silva	players/photo/78.jpg	11	\N	\N	1996-04-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1851	João Winkersson De Almeida Russiano Cordeiro	\N	joao-winkersson-de-almeida-russiano-cordeiro	players/photo/78.jpg	13	\N	\N	1994-08-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1852	Fabrício Fernandes Silva Vale	\N	fabricio-fernandes-silva-vale	players/photo/78.jpg	14	\N	\N	1992-01-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1853	Igor Oliveira De Gois	\N	igor-oliveira-de-gois	players/photo/78.jpg	15	\N	\N	1997-09-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1854	Frank Ranieri Nogueira Da Silva	\N	frank-ranieri-nogueira-da-silva	players/photo/78.jpg	17	\N	\N	1984-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	78
1855	Yegro Sávio De Andrade Lima	\N	yegro-savio-de-andrade-lima	players/photo/78.jpg	18	\N	\N	2001-08-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1856	Marcus Vinicius Ferreira Da Silva	\N	marcus-vinicius-ferreira-da-silva	players/photo/78.jpg	23	\N	\N	1994-02-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1857	Djanilson Ferreira Da Silva	\N	djanilson-ferreira-da-silva	players/photo/78.jpg	25	\N	\N	1987-05-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1858	Emerson Rodrigo Maia	\N	emerson-rodrigo-maia	players/photo/78.jpg	29	\N	\N	1997-05-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1859	Yago Vieira Xavier Da Costa	\N	yago-vieira-xavier-da-costa	players/photo/78.jpg	31	\N	\N	1995-09-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1860	Jhossaff Mackenzie Evangelista De Morais	\N	jhossaff-mackenzie-evangelista-de-morais	players/photo/78.jpg	36	\N	\N	1992-12-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1861	Raul De Holanda Campelo Neto	\N	raul-de-holanda-campelo-neto	players/photo/78.jpg	37	\N	\N	1988-12-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1862	Levi Maia Rodrigues	\N	levi-maia-rodrigues	players/photo/78.jpg	52	\N	\N	1995-09-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1863	Matheus Henrique Vieira Do Amaral	\N	matheus-henrique-vieira-do-amaral	players/photo/78.jpg	56	\N	\N	1995-11-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1864	Deijair Ferreira Da Silva	\N	deijair-ferreira-da-silva	players/photo/78.jpg	57	\N	\N	1985-07-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1865	Marciano Oliveira Da Silva	\N	marciano-oliveira-da-silva	players/photo/78.jpg	59	\N	\N	1981-10-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1866	Pedro Eurisgleique Pereira Maia Filho	\N	pedro-eurisgleique-pereira-maia-filho	players/photo/78.jpg	60	\N	\N	1998-11-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1867	Tércio Teles Batista Felinto	\N	tercio-teles-batista-felinto	players/photo/78.jpg	61	\N	\N	1995-12-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1868	Linniker Ramon Leite Lima	\N	linniker-ramon-leite-lima	players/photo/78.jpg	62	\N	\N	1987-05-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1869	Lucas Bonifácio Gurgel	\N	lucas-bonifacio-gurgel	players/photo/78.jpg	63	\N	\N	1985-07-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1870	Igor Vinicius Gomes Pinheiro	\N	igor-vinicius-gomes-pinheiro	players/photo/78.jpg	64	\N	\N	1995-12-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1871	Felipe Alves De Andrade	\N	felipe-alves-de-andrade	players/photo/78.jpg	65	\N	\N	1990-07-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1872	Pedro Ribeiro Torres De Abreu	\N	pedro-ribeiro-torres-de-abreu	players/photo/78.jpg	66	\N	\N	1998-07-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1873	Carlos Eduardo Rebouças Alves	\N	carlos-eduardo-reboucas-alves	players/photo/78.jpg	67	\N	\N	1981-11-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1874	Bruno Cezar De Souza E Silva	\N	bruno-cezar-de-souza-e-silva	players/photo/78.jpg	68	\N	\N	1990-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1875	Jefferson Pereira De Lima	\N	jefferson-pereira-de-lima	players/photo/78.jpg	69	\N	\N	1986-05-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1876	Josiefferson Giordano Ferreira Da Silva	\N	josiefferson-giordano-ferreira-da-silva	players/photo/78.jpg	70	\N	\N	1992-12-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1877	Heryk Eduardo Lopes De Souza	\N	heryk-eduardo-lopes-de-souza	players/photo/78.jpg	72	\N	\N	1998-10-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1878	Alisson Ramon Lima De Souza	\N	alisson-ramon-lima-de-souza	players/photo/78.jpg	73	\N	\N	1989-02-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1879	Vital Lins De Araújo Junior	\N	vital-lins-de-araujo-junior	players/photo/78.jpg	74	\N	\N	1988-05-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1880	Jhonathan Patricio França Silva	\N	jhonathan-patricio-franca-silva	players/photo/78.jpg	75	\N	\N	1993-10-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1881	Marinaldo Da Silva Fernandes Filho	\N	marinaldo-da-silva-fernandes-filho	players/photo/78.jpg	77	\N	\N	1989-01-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1882	Állisson José Josias Correia	\N	allisson-jose-josias-correia	players/photo/78.jpg	78	\N	\N	1988-08-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1883	Gabriel Viana Da Silva	\N	gabriel-viana-da-silva	players/photo/78.jpg	79	\N	\N	1997-01-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1884	Evandro Junqueira De Almeida Filho	\N	evandro-junqueira-de-almeida-filho	players/photo/78.jpg	84	\N	\N	1989-06-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	78
1885	Arthur Vinicius Barroso Tavares	\N	arthur-vinicius-barroso-tavares	players/photo/78.jpg	85	\N	\N	1998-04-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1886	João Carlos Leal De Araújo	\N	joao-carlos-leal-de-araujo	players/photo/78.jpg	87	\N	\N	1994-08-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1887	Ricardo André Rodrigues Filho	\N	ricardo-andre-rodrigues-filho	players/photo/78.jpg	88	\N	\N	1995-01-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1888	Felipe Dantas Carvalho	\N	felipe-dantas-carvalho	players/photo/78.jpg	89	\N	\N	1996-05-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1889	Joseilson Tomaz Da Silva	\N	joseilson-tomaz-da-silva	players/photo/78.jpg	92	\N	\N	1986-02-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1890	Marcos Elias Da Silva	\N	marcos-elias-da-silva	players/photo/78.jpg	93	\N	\N	1989-02-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1891	João Victor De Queiroz	\N	joao-victor-de-queiroz	players/photo/78.jpg	94	\N	\N	1990-06-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1892	Heron De Moura Fernandes	\N	heron-de-moura-fernandes	players/photo/78.jpg	95	\N	\N	1999-03-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1893	Yzandro Rocha Ferreira Soares	\N	yzandro-rocha-ferreira-soares	players/photo/78.jpg	96	\N	\N	1996-08-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1894	Adailton Pereira Dos Santos Junior	\N	adailton-pereira-dos-santos-junior	players/photo/78.jpg	0	\N	\N	1994-08-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	0	78
1895	Marcelo Mattos Aragão	\N	marcelo-mattos-aragao	players/photo/79.jpg	1	\N	\N	1995-04-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	79
1896	Tiago Barbosa Laurindo Dos Santos	\N	tiago-barbosa-laurindo-dos-santos	players/photo/79.jpg	2	\N	\N	1990-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1897	Juan Angelo Senra Junior	\N	juan-angelo-senra-junior	players/photo/79.jpg	3	\N	\N	1990-03-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	79
1898	Lucas Barbosa De Assis	\N	lucas-barbosa-de-assis	players/photo/79.jpg	4	\N	\N	1986-05-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	79
1899	Lucas Dias Mira	\N	lucas-dias-mira	players/photo/79.jpg	4	\N	\N	1991-10-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	79
1900	João Pedro Magluf Mittidiero Rosa Fabres	\N	joao-pedro-magluf-mittidiero-rosa-fabres	players/photo/79.jpg	5	\N	\N	1991-03-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	79
88	Loan Felisardo Da Silva	\N	loan-felisardo-da-silva	players/photo/9.jpg	1	\N	\N	1988-05-13	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	9
89	Fellipe Ferreira Juncal	\N	fellipe-ferreira-juncal	players/photo/9.jpg	2	\N	\N	1992-10-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	9
90	Bernardo Araripe Dias Da Cruz	\N	bernardo-araripe-dias-da-cruz	players/photo/9.jpg	3	\N	\N	1998-06-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	9
91	Ramon Martire Cerqueira	\N	ramon-martire-cerqueira	players/photo/9.jpg	4	\N	\N	1988-05-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	9
92	Matheus Mota Lima De Morais	\N	matheus-mota-lima-de-morais	players/photo/9.jpg	5	\N	\N	1998-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	9
93	Patrick Dutton Tavares Vaz	\N	patrick-dutton-tavares-vaz	players/photo/9.jpg	7	\N	\N	1989-03-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	9
94	Daniel De Toledo Piza Braga	\N	daniel-de-toledo-piza-braga	players/photo/9.jpg	9	\N	\N	1997-06-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	9
95	Raphael Ferreira Da Costa	\N	raphael-ferreira-da-costa	players/photo/9.jpg	10	\N	\N	1991-07-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	9
96	Rodrigo De Alkmim Da Silva Nunes	\N	rodrigo-de-alkmim-da-silva-nunes	players/photo/9.jpg	11	\N	\N	1994-06-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	9
97	Josué Ignacio De Matos	\N	josue-ignacio-de-matos	players/photo/9.jpg	13	\N	\N	1995-05-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
98	Bruno De Melo Godinho	\N	bruno-de-melo-godinho	players/photo/9.jpg	13	\N	\N	1993-03-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	9
99	Pedro Rocha Mendes	\N	pedro-rocha-mendes	players/photo/9.jpg	14	\N	\N	1998-02-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
100	Eduardo Amar Ferreira	\N	eduardo-amar-ferreira	players/photo/9.jpg	15	\N	\N	2000-09-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	9
101	Claudio Pereira Goeller Junior	\N	claudio-pereira-goeller-junior	players/photo/9.jpg	17	\N	\N	1986-11-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	9
102	Haroldo Luiz Russiel De Avelar	\N	haroldo-luiz-russiel-de-avelar	players/photo/9.jpg	18	\N	\N	1990-08-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	9
103	Gabriel Moussalle Bueno Dos Santos	\N	gabriel-moussalle-bueno-dos-santos	players/photo/9.jpg	19	\N	\N	1997-11-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	9
104	Airton Da Silva Cabral	\N	airton-da-silva-cabral	players/photo/9.jpg	20	\N	\N	1981-11-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	9
105	Rafael Fabiano Fernandes Fonseca	\N	rafael-fabiano-fernandes-fonseca	players/photo/9.jpg	21	\N	\N	1990-04-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	9
106	Marcos Klein	\N	marcos-klein	players/photo/9.jpg	23	\N	\N	1989-11-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
107	Gustavo Machado De Oliveira	\N	gustavo-machado-de-oliveira	players/photo/9.jpg	25	\N	\N	1987-06-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	9
108	Pedro De Freitas Pinto Eyer	\N	pedro-de-freitas-pinto-eyer	players/photo/9.jpg	26	\N	\N	1995-08-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	9
109	Igor Gavioli Ayache	\N	igor-gavioli-ayache	players/photo/9.jpg	29	\N	\N	1996-05-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	9
110	Rodrigo Gollner Perrin	\N	rodrigo-gollner-perrin	players/photo/9.jpg	31	\N	\N	1996-04-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	9
111	Luiz Guilherme Da Silva Santos	\N	luiz-guilherme-da-silva-santos	players/photo/9.jpg	31	\N	\N	1990-06-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	9
112	Thaina Lopes Da Silva	\N	thaina-lopes-da-silva	players/photo/9.jpg	32	\N	\N	1995-07-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	9
113	Rodrigo Cerqueira Agueda	\N	rodrigo-cerqueira-agueda	players/photo/9.jpg	33	\N	\N	1995-08-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	9
114	Michael Perkoski Barbosa	\N	michael-perkoski-barbosa	players/photo/9.jpg	34	\N	\N	1987-12-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	9
115	Johnattan Wallace Barreto De Andrade	\N	johnattan-wallace-barreto-de-andrade	players/photo/9.jpg	35	\N	\N	1989-05-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	9
116	Douglas Maciel De Lima	\N	douglas-maciel-de-lima	players/photo/9.jpg	36	\N	\N	1980-08-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	9
117	Axl Marley Santos Vieira	\N	axl-marley-santos-vieira	players/photo/9.jpg	38	\N	\N	1993-01-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	9
118	Diego Pessanha Da Silva	\N	diego-pessanha-da-silva	players/photo/9.jpg	39	\N	\N	1986-11-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	9
119	Peterson Flávio Silva De Lima	\N	peterson-flavio-silva-de-lima	players/photo/9.jpg	41	\N	\N	1990-12-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
120	Victor Lopez Tarouquella Rodrigues	\N	victor-lopez-tarouquella-rodrigues	players/photo/9.jpg	43	\N	\N	1996-05-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
121	Andre Barbosa Brito De Oliveira	\N	andre-barbosa-brito-de-oliveira	players/photo/9.jpg	44	\N	\N	1985-06-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
122	Kim Canani Feltes	\N	kim-canani-feltes	players/photo/9.jpg	44	\N	\N	1997-12-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	9
123	Dasman Mccullum	\N	dasman-mccullum	players/photo/9.jpg	45	\N	\N	1992-04-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
124	Bernardo Ouchida Wolf Cavalcanti	\N	bernardo-ouchida-wolf-cavalcanti	players/photo/9.jpg	46	\N	\N	1987-10-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	9
125	Pedro Ouchida Wolf Cavalcanti	\N	pedro-ouchida-wolf-cavalcanti	players/photo/9.jpg	47	\N	\N	1984-06-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
126	Fabrício Santos De Assis	\N	fabricio-santos-de-assis	players/photo/9.jpg	48	\N	\N	1991-06-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
127	Rafael Nicola Napolitano Santos	\N	rafael-nicola-napolitano-santos	players/photo/9.jpg	50	\N	\N	1989-09-07	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	9
128	Guilherme Silverio De Assis	\N	guilherme-silverio-de-assis	players/photo/9.jpg	51	\N	\N	1988-11-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	9
129	Douglas Xavier Da Silva	\N	douglas-xavier-da-silva	players/photo/9.jpg	53	\N	\N	1999-02-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	9
130	Osiel Bonaparte Da Matta Neto	\N	osiel-bonaparte-da-matta-neto	players/photo/9.jpg	54	\N	\N	1990-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	9
131	Pedro Henrique Azalim	\N	pedro-henrique-azalim	players/photo/9.jpg	54	\N	\N	1993-06-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	9
132	Danilo Teixeira Gonçalves	\N	danilo-teixeira-goncalves	players/photo/9.jpg	55	\N	\N	1992-07-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	9
133	Rayan Guilherme Valério	\N	rayan-guilherme-valerio	players/photo/9.jpg	56	\N	\N	1991-12-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	9
134	Bruno Ricardo Aleixo Santos	\N	bruno-ricardo-aleixo-santos	players/photo/9.jpg	58	\N	\N	1991-07-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	9
135	Filipe Herszenhaut Tauil Matias	\N	filipe-herszenhaut-tauil-matias	players/photo/9.jpg	60	\N	\N	1996-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	9
136	Welerson Henrique Dos Santos Silva	\N	welerson-henrique-dos-santos-silva	players/photo/9.jpg	62	\N	\N	1995-09-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	9
137	Vitor Hugo Andrade De Souza	\N	vitor-hugo-andrade-de-souza	players/photo/9.jpg	63	\N	\N	1985-09-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	9
138	Diogo Martins De Alburquerque	\N	diogo-martins-de-alburquerque	players/photo/9.jpg	63	\N	\N	1986-04-06	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	9
139	Tiago De Oliveira Jordão	\N	tiago-de-oliveira-jordao	players/photo/9.jpg	64	\N	\N	1987-01-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	9
140	Gabriel Luiz Serra Da Costa	\N	gabriel-luiz-serra-da-costa	players/photo/9.jpg	65	\N	\N	1996-05-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	9
141	Roterdam Luis Vargas Siqueira	\N	roterdam-luis-vargas-siqueira	players/photo/9.jpg	66	\N	\N	1992-06-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	9
142	Caio Freitas Ramiro	\N	caio-freitas-ramiro	players/photo/9.jpg	70	\N	\N	1988-02-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	9
143	Dayan Silva De Oliveira	\N	dayan-silva-de-oliveira	players/photo/9.jpg	71	\N	\N	1986-08-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	9
144	Rafael Shoiti Togashi	\N	rafael-shoiti-togashi	players/photo/9.jpg	72	\N	\N	1982-07-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	9
145	Itamar Velasco	\N	itamar-velasco	players/photo/9.jpg	74	\N	\N	1974-02-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	9
146	Ronaldo Carneiro De Andrade Pimentel	\N	ronaldo-carneiro-de-andrade-pimentel	players/photo/9.jpg	78	\N	\N	1988-12-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	9
147	Marcelo Bruno	\N	marcelo-bruno	players/photo/9.jpg	80	\N	\N	1988-07-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	9
148	Bruno Lucas Pinheiro Lima	\N	bruno-lucas-pinheiro-lima	players/photo/9.jpg	82	\N	\N	1993-03-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	9
149	Gabriel Santos Velasco	\N	gabriel-santos-velasco	players/photo/9.jpg	84	\N	\N	1998-09-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	9
150	Yuri Alves Dos Reis	\N	yuri-alves-dos-reis	players/photo/9.jpg	84	\N	\N	1999-08-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	9
151	Bruno Rocha Lemos Leite	\N	bruno-rocha-lemos-leite	players/photo/9.jpg	85	\N	\N	1989-09-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	9
152	Paulo Elisio Marinho Abrantes	\N	paulo-elisio-marinho-abrantes	players/photo/9.jpg	86	\N	\N	1992-08-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	9
153	Marcos Antonio Nogueira Junior	\N	marcos-antonio-nogueira-junior	players/photo/9.jpg	87	\N	\N	1992-12-26	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	9
154	Diego Da Costa Chagas	\N	diego-da-costa-chagas	players/photo/9.jpg	88	\N	\N	1991-03-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	9
155	Leonardo Bona Do Nascimento	\N	leonardo-bona-do-nascimento	players/photo/9.jpg	91	\N	\N	1993-10-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	9
156	Gustavo De Carvalho Zaremba Bezerra	\N	gustavo-de-carvalho-zaremba-bezerra	players/photo/9.jpg	92	\N	\N	1992-07-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	9
157	Guilherme Medeiros	\N	guilherme-medeiros	players/photo/9.jpg	94	\N	\N	1990-11-09	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	9
158	Felipe Marques Da Silva	\N	felipe-marques-da-silva	players/photo/9.jpg	95	\N	\N	1991-05-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	9
159	Diogo Di Luccio Sabato	\N	diogo-di-luccio-sabato	players/photo/9.jpg	96	\N	\N	1985-12-16	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	9
160	Heitor Alabarse Federico	\N	heitor-alabarse-federico	players/photo/9.jpg	97	\N	\N	2000-01-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	9
161	Cristiano Monteiro Ferreira	\N	cristiano-monteiro-ferreira	players/photo/9.jpg	98	\N	\N	1992-01-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	9
162	Davi Furtado Da Silveira	\N	davi-furtado-da-silveira	players/photo/9.jpg	99	\N	\N	1990-02-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	9
163	Paulo Felippe Justen Gomes	\N	paulo-felippe-justen-gomes	players/photo/10.jpg	9	\N	\N	1999-01-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	10
164	Alec Campelo Perez	\N	alec-campelo-perez	players/photo/10.jpg	10	\N	\N	1999-04-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	10
165	Marcus Vinicius Noronha	\N	marcus-vinicius-noronha	players/photo/10.jpg	12	\N	\N	2002-09-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	10
166	Mateus Abadias Neres	\N	mateus-abadias-neres	players/photo/10.jpg	13	\N	\N	1999-02-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
167	Fernando Albert De Souza Vaz	\N	fernando-albert-de-souza-vaz	players/photo/10.jpg	16	\N	\N	1998-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
168	Alan Feitosa Silva	\N	alan-feitosa-silva	players/photo/10.jpg	17	\N	\N	1997-09-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
169	Geovane De Oliveira Sales	\N	geovane-de-oliveira-sales	players/photo/10.jpg	18	\N	\N	1995-11-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
170	Luís Fábio C. Pinho Filho	\N	luis-fabio-c-pinho-filho	players/photo/10.jpg	20	\N	\N	1998-10-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	10
171	Bismarck Gomes Martins	\N	bismarck-gomes-martins	players/photo/10.jpg	21	\N	\N	1991-11-03	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	10
172	Aloysio Cardoso Da Silva Moura Neto	\N	aloysio-cardoso-da-silva-moura-neto	players/photo/10.jpg	23	\N	\N	1994-02-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	10
173	Leonardo Araujo Andrade	\N	leonardo-araujo-andrade	players/photo/10.jpg	25	\N	\N	1995-02-17	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
174	Natanael Lima Ramos De Araujo	\N	natanael-lima-ramos-de-araujo	players/photo/10.jpg	26	\N	\N	1993-06-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	21	10
175	Dyego Mykael Monteiro De Souza	\N	dyego-mykael-monteiro-de-souza	players/photo/10.jpg	27	\N	\N	1995-01-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	10
176	Carlos Henrique Da Costa Santos	\N	carlos-henrique-da-costa-santos	players/photo/10.jpg	29	\N	\N	1992-06-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	10
177	Paulo Vinicius De Almeida Frazao	\N	paulo-vinicius-de-almeida-frazao	players/photo/10.jpg	30	\N	\N	1989-03-24	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	9	10
178	Leandro Hernandes Rodrigues De Souza	\N	leandro-hernandes-rodrigues-de-souza	players/photo/10.jpg	32	\N	\N	1986-08-04	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	10
179	João Pedro Souza	\N	joao-pedro-souza	players/photo/10.jpg	36	\N	\N	1999-07-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	3	10
180	Adelson	\N	adelson	players/photo/10.jpg	37	\N	\N	1996-09-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	10
181	Moises Lopes	\N	moises-lopes	players/photo/10.jpg	38	\N	\N	1996-08-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	4	10
182	Danilo Lopes Do Prado	\N	danilo-lopes-do-prado	players/photo/10.jpg	39	\N	\N	2002-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
183	Carlos Guilherme Teixeira Dos Santos	\N	carlos-guilherme-teixeira-dos-santos	players/photo/10.jpg	42	\N	\N	1988-02-22	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	10
184	Lucas Moreira Da Silva	\N	lucas-moreira-da-silva	players/photo/10.jpg	44	\N	\N	1994-05-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	10
185	Icaro Breno Santos De Oliveira	\N	icaro-breno-santos-de-oliveira	players/photo/10.jpg	46	\N	\N	1995-02-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
186	Daniel Michael Dias Costa	\N	daniel-michael-dias-costa	players/photo/10.jpg	51	\N	\N	1992-05-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	10
187	Fabio Davi De Sousa Vaz	\N	fabio-davi-de-sousa-vaz	players/photo/10.jpg	52	\N	\N	1995-04-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	10
188	Glendson Duarte Barros	\N	glendson-duarte-barros	players/photo/10.jpg	56	\N	\N	1989-02-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	10
189	Bryan Carnauba Santos Jacinto	\N	bryan-carnauba-santos-jacinto	players/photo/10.jpg	60	\N	\N	1998-05-29	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	5	10
190	Dalton Valadares Farrapeira	\N	dalton-valadares-farrapeira	players/photo/10.jpg	69	\N	\N	1995-11-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	10
191	Danilo Vieira Santos	\N	danilo-vieira-santos	players/photo/10.jpg	70	\N	\N	1991-11-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	10
192	Bruno Rodrigues Da Silva	\N	bruno-rodrigues-da-silva	players/photo/10.jpg	72	\N	\N	1989-10-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	10
193	Ritchely Barbosa Souto Sousa	\N	ritchely-barbosa-souto-sousa	players/photo/10.jpg	73	\N	\N	1989-05-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	10
194	Luiz Rodrigues Freire Neto	\N	luiz-rodrigues-freire-neto	players/photo/10.jpg	74	\N	\N	1985-08-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	10
195	Daniel Bondi Gomes	\N	daniel-bondi-gomes	players/photo/10.jpg	75	\N	\N	2001-04-15	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	10
196	Samuel Gomes Da Silva	\N	samuel-gomes-da-silva	players/photo/10.jpg	76	\N	\N	1985-02-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	7	10
197	Tiago De Morais Bastos	\N	tiago-de-morais-bastos	players/photo/10.jpg	78	\N	\N	1987-07-18	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	6	10
198	Kaiky Borges Lima Oliveira	\N	kaiky-borges-lima-oliveira	players/photo/10.jpg	80	\N	\N	1993-12-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	10
199	Caio De Andrade Da Costa	\N	caio-de-andrade-da-costa	players/photo/10.jpg	83	\N	\N	1994-01-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	10
200	Josué Junior	\N	josue-junior	players/photo/10.jpg	84	\N	\N	1996-05-05	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	17	10
201	Ricardo Luiz Fialho Coutinho	\N	ricardo-luiz-fialho-coutinho	players/photo/10.jpg	86	\N	\N	1971-12-10	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
202	Lucas Alves De Jesus	\N	lucas-alves-de-jesus	players/photo/10.jpg	87	\N	\N	1995-04-08	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	10
203	Victor Romario Borges De Oliveira Silva	\N	victor-romario-borges-de-oliveira-silva	players/photo/10.jpg	88	\N	\N	1999-04-14	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
204	Jeová Gomes Rodriguez	\N	jeova-gomes-rodriguez	players/photo/10.jpg	89	\N	\N	1990-06-01	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	10
205	Jhoni Danilo Santos De Oliveira	\N	jhoni-danilo-santos-de-oliveira	players/photo/10.jpg	89	\N	\N	1988-10-11	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	16	10
206	Michel Alves Da Silva Frazao	\N	michel-alves-da-silva-frazao	players/photo/10.jpg	91	\N	\N	1993-02-28	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	12	10
207	Bruno Otoni	\N	bruno-otoni	players/photo/10.jpg	93	\N	\N	1986-11-12	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	20	10
208	Brendon Soares De Carvalho Rodrigues	\N	brendon-soares-de-carvalho-rodrigues	players/photo/10.jpg	95	\N	\N	1993-03-25	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	14	10
209	Pedro Jose Canavarro Santos	\N	pedro-jose-canavarro-santos	players/photo/10.jpg	97	\N	\N	1990-10-21	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	10
210	Eduardo Sarmento	\N	eduardo-sarmento	players/photo/10.jpg	99	\N	\N	1995-04-23	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	13	10
211	Vinicius Garcia Bortolini	\N	vinicius-garcia-bortolini	players/photo/10.jpg	0	\N	\N	1999-09-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	1	10
212	Vitor Ferraz	\N	vitor-ferraz	players/photo/10.jpg	0	\N	\N	1989-01-31	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	8	10
1901	Brenno Luiz Araújo Garcia De Queiroz	\N	brenno-luiz-araujo-garcia-de-queiroz	players/photo/79.jpg	6	\N	\N	1994-11-30	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	15	79
1902	Victor Silva Santiago Cardoso	\N	victor-silva-santiago-cardoso	players/photo/79.jpg	7	\N	\N	1996-12-27	\N	\N	\N	2018-10-27 01:34:20.463997+00	2018-10-27 01:34:20.463997+00	2	79
935	Rodrigo De Medeiros Dantas	\N	rodrigo-de-medeiros-dantas	players/photo/Sem-Título-1.jpg	4	\N	\N	1992-09-25	https://www.facebook.com/rodrigo.dantas.4	https://www.instagram.com/rodrigodantas4/	\N	2018-10-27 01:34:20.463997+00	2019-02-18 00:15:08.276769+00	2	34
1514	Edilson Kovaleski	\N	edilson-kovaleski	players/photo/Edilson-Kovaleski.jpg	2	\N	\N	1995-06-02	\N	\N	\N	2018-10-27 01:34:20.463997+00	2019-02-24 03:58:17.480873+00	2	71
348	Diego Dias Fiaes	\N	diego-dias-fiaes	players/photo/Diego-Fiaes.jpg	26	\N	\N	2018-02-20	\N	\N	\N	2018-10-27 01:34:20.463997+00	2019-02-24 04:03:15.948262+00	3	16
422	Jeymes Kaléo Santos De Melo	\N	jeymes-kaleo-santos-de-melo	players/photo/Kaléo-Melo.jpg	42	\N	\N	1991-05-27	https://www.facebook.com/kaleomelo1	https://www.instagram.com/kaleomelo/	\N	2018-10-27 01:34:20.463997+00	2019-02-24 21:15:05.486576+00	13	17
\.


--
-- Data for Name: team_position; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.team_position (id, name, initials) FROM stdin;
1	Wide Receiver	WR
2	Quarterback	QB
3	Running Back	RB
4	Fullback	FB
5	Center	C
6	Offensive Tackle	OT
7	Offensive Guard	OG
8	Tight End	TE
9	Kicker	K
10	Punter	P
11	Long Snapper	LS
12	Defensive Tackle	DT
13	Defensive End	DE
14	Linebacker	LB
15	Cornerback	CB
16	Strong Safety	SS
17	Free Safety	FS
18	Punt Returner	PR
19	Kick Returner	KR
20	Outside Linebacker	OLB
21	Middle Linebacker	MLB
0	Não Informado	__
\.


--
-- Data for Name: team_team; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.team_team (id, name, "shortName", initials, slug, logo, foundation, facebook, instagram, "primaryColor", "secundaryColor", "terciaryColor", created, modified, city_id, category_id) FROM stdin;
72	Spartans	Spartans	SPA	spartans	logos/spartans.png	\N	https://www.facebook.com/SpartansFootball300/	https://www.instagram.com/spartansfa/	#870c10	#9b272b	#000	2018-10-21 04:13:36.575798+00	2019-05-06 17:55:40.881772+00	89	2
4	Belém Titans	Titans	TIT	belem-titans	logos/belem-titans.png	\N	https://www.facebook.com/belemtitansfa/	https://www.instagram.com/belemtitans/	#000f66	#001278	#fff	2018-10-20 23:59:51.105969+00	2019-05-06 17:57:27.384868+00	6	2
46	North Lions	Lions	LIO	north-lions	logos/nlions.png	\N	https://www.facebook.com/northlions/	https://www.instagram.com/northlions_fa/	#b68212	#cea73e	#000	2018-10-21 03:56:16.623673+00	2019-05-08 00:03:56.583054+00	55	2
27	Flamengo Imperadores	Flamengo	FLA	flamengo-imperadores	logos/fram.png	2008-01-23	https://www.facebook.com/FlaImperadores/	https://www.instagram.com/flamengofa/	#a00000	#b60a0a	#000	2018-10-21 00:13:52.589113+00	2019-05-06 18:08:09.815894+00	75	1
64	Istepôs	Istepôs	IST	istepos	logos/ist.png	2005-11-05	https://www.facebook.com/istepos/	https://www.instagram.com/isteposfa/	#ec3236	#ee4c4f	#fff	2018-10-21 04:09:22.853283+00	2019-05-07 22:19:10.661971+00	86	1
38	Macaé Oilers	Oilers	OIL	macae-oilers	logos/oil.png	\N	https://www.facebook.com/MacaeOilers/	https://www.instagram.com/macaeoilers/	#00131d	#051f2c	#fff	2018-10-21 00:20:27.331296+00	2019-05-06 18:09:01.525373+00	52	1
36	Leões de Judá	Leões	LEO	leoes-de-juda	logos/leos.png	2013-03-13	https://www.facebook.com/leoesFA/	https://www.instagram.com/leoesdejudafa/	#a38e59	#cab681	#000	2018-10-21 00:19:21.235586+00	2019-05-07 22:20:55.156328+00	11	1
76	Tubarões do Cerrado	Tubarões	TUB	tubaroes-do-cerrado	logos/tub.png	2004-09-26	https://www.facebook.com/TubaroesDoCerrado/	https://www.instagram.com/tdc_oficial/	#1e4586	#2e59a7	#fff	2018-10-21 04:15:22.007204+00	2019-05-07 22:31:41.76615+00	11	1
30	Galo	Galo	GAL	galo	logos/gaa.png	2014-11-06	https://www.facebook.com/galofamericano/	https://www.instagram.com/galofamericano/	#231f20	#080808	#fff	2018-10-21 00:15:25.14459+00	2019-05-07 22:34:22.859206+00	7	1
20	Corinthians Steamrollers	Corinthians	COR	corinthians-steamrollers	logos/timao.png	2006-02-09	https://www.facebook.com/CorinthiansSteamrollers/	https://www.instagram.com/corinthianssteamrollers/	#000	#080808	#fff	2018-10-21 00:09:34.477774+00	2019-05-07 22:37:38.579274+00	89	1
21	Coritiba Crocodiles	Coritiba	CTB	coritiba-crocodiles	logos/crocoo.png	2003-07-22	https://www.facebook.com/CoritibaCrocodiles/	https://www.instagram.com/coritibacrocodiles/	#103c19	#194522	#fbffff	2018-10-21 00:10:11.192428+00	2019-05-07 22:36:18.510549+00	29	1
198	Angra Destroyers	Destroyers	DES	angra-destroyers	logos/angra.png	\N	https://www.facebook.com/AngraDestroyersFA/	https://www.instagram.com/destroyers.fa/	#ff4e00	#ff6900	#000	2019-02-27 17:53:12.640534+00	2019-05-07 22:49:09.226111+00	109	4
9	Botafogo Reptiles	Botafogo	BOT	botafogo-reptiles	logos/botafogo-reptiles.png	1999-04-14	https://www.facebook.com/BotafogoReptiles/	https://www.instagram.com/botafogoreptiles/	#fff	#141414	#fff	2018-10-21 00:03:05.626214+00	2019-05-07 22:59:12.829298+00	75	4
190	América Big Riders	Big Riders	RID	america-big-riders	logos/riderss.png	\N	https://web.facebook.com/BigRidersFootball/	https://www.instagram.com/americabigriders/	#ba2441	#ba1641	#fff	2019-02-21 12:15:26.112811+00	2019-05-07 22:55:40.504339+00	75	3
216	Cabritos	Cabritos	CAB	cabritos	logos/cabritos.png	\N	\N	\N	#000	#080808	#fff	2019-02-28 16:46:39.692806+00	2019-05-07 23:35:44.706821+00	114	4
23	CSA Guerreiros	CSA	CSA	csa-guerreiros	logos/csa-guerreiros.png	\N	https://www.facebook.com/CSAGuerreiros/	https://www.instagram.com/csaguerreiros/	#240f81	#311d8a	#fff	2018-10-21 00:11:24.040962+00	2019-05-07 23:38:45.825633+00	53	3
48	Olinda Sharks	Sharks	OLI	olinda-sharks	logos/sharks.png	\N	https://www.facebook.com/OlindaSharks/	https://www.instagram.com/olindasharks/	#789290	#97adab	#fff	2018-10-21 03:57:24.643935+00	2019-05-05 05:39:11.724392+00	64	4
6	Betim Bulldogs	Bulldogs	BUL	betim-bulldogs	logos/betim-bulldogs.png	\N	https://www.facebook.com/betimbulldogs/	https://www.instagram.com/betimbulldogs/	#9c9c9c	#c3c3c4	#000	2018-10-21 00:01:12.00007+00	2019-05-06 17:54:29.193142+00	9	2
33	Jaraguá Breakers	Breakers	BRE	jaragua-breakers	logos/jaragua-breakers.png	2003-03-13	https://www.facebook.com/BreakersFootballTeam/	https://www.instagram.com/jaraguabreakers/	#d64f00	#ff5e00	#243263	2018-10-21 00:17:15.118657+00	2019-05-06 16:53:03.472952+00	44	1
12	Bulls Potiguares	Bulls	BUL	bulls-potiguares	logos/bulls-potiguares.png	2006-12-17	https://www.facebook.com/bullspotiguares/	https://www.instagram.com/bullspotiguares/	#3b2050	#4f286e	#189063	2018-10-21 00:05:03.663698+00	2019-05-05 20:19:43.061339+00	60	1
17	Ceará Caçadores	Caçadores	CAÇ	ceara-cacadores	logos/caçadores.png	2013-12-10	https://www.facebook.com/cearacacadores/	https://www.instagram.com/cearacacadores/	#868686	#beb6b6	#000	2018-10-21 00:07:34.092778+00	2019-05-06 16:50:36.465458+00	32	1
53	Portuguesa	Portuguesa	POR	portuguesa	logos/por.png	2007-03-16	https://www.facebook.com/lusafutebolamericano/	https://www.instagram.com/portuguesafa/	#a72121	#b63232	#fff	2018-10-21 04:01:38.164009+00	2019-05-06 16:52:34.397911+00	89	1
7	Black Hawks	Hawks	HAW	black-hawks	logos/black-hawks.png	2013-02-15	https://www.facebook.com/gasparblackhawks/	https://www.instagram.com/oficialblackhawks/	#007e8e	#0d96a8	#000	2018-10-21 00:01:51.133425+00	2019-05-06 16:53:21.292666+00	36	1
14	Carrancas	Carrancas	CAR	carrancas	logos/carrancas.png	\N	https://www.facebook.com/carrancasfa/	https://www.instagram.com/carrancasfa/	#074434	#0f5d47	#000	2018-10-21 00:06:02.327398+00	2019-05-06 17:45:59.329194+00	69	2
15	Caruaru Wolves	Wolves	WOL	caruaru-wolves	logos/caruaru-wolves.png	\N	https://www.facebook.com/caruaruwolves/	https://www.instagram.com/caruaruwolves/	#ea3200	#fe3c00	#000	2018-10-21 00:06:31.438005+00	2019-05-06 17:47:16.503198+00	21	2
31	Goiânia Saints	Saints	SAI	goiania-saints	logos/saints.png	\N	https://www.facebook.com/saintsfa	https://www.instagram.com/saintsfa/	#ffc106	#ffca06	#000	2018-10-21 00:16:06.019207+00	2019-05-06 17:47:19.946929+00	37	2
40	Manaus Broncos	Broncos	BRO	manaus-broncos	logos/broncos.png	\N	https://www.facebook.com/manausbroncosfa/	https://www.instagram.com/manausbroncosfa/	#295133	#2e613b	#fff	2018-10-21 00:21:25.487809+00	2019-05-06 17:49:15.768446+00	55	2
41	Manaus Cavaliers	Cavaliers	CAV	manaus-cavaliers	logos/cavs.png	2006-02-16	https://www.facebook.com/cavaliersfa/	https://www.instagram.com/cavsfa/	#4e4e4e	#666666	#f11926	2018-10-21 03:53:30.229537+00	2019-05-06 17:49:22.169242+00	55	2
51	Paysandu Lobos	Paysandu	PAY	paysandu-lobos	logos/paysandu.png	\N	https://www.facebook.com/paysandulobos/	https://www.instagram.com/paysandulobosfa/	#0369b8	#197ecb	#00000	2018-10-21 04:00:28.967446+00	2019-05-06 17:49:41.248388+00	6	2
35	Juventude	Juventude	JUV	juventude	logos/juventude.png	2014-03-15	https://www.facebook.com/JuventudeFA/	https://www.instagram.com/juventude_fa/	#048a45	#00a651	#fff	2018-10-21 00:18:49.487172+00	2019-05-06 17:51:46.992255+00	24	2
43	Maringá Pyros	Pyros	PYR	maringa-pyros	logos/pyros.png	\N	https://www.facebook.com/maringapyros/	https://www.instagram.com/maringapyros/	#a00000	#b60a0a	#000	2018-10-21 03:54:39.797844+00	2019-05-06 17:51:59.882485+00	56	2
11	Brown Spiders	Spiders	SPI	brown-spiders	logos/brown-spiders.png	2001-11-01	https://www.facebook.com/BrownSpidersFA/	https://www.instagram.com/brownspidersfa/	#d99506	#efae26	#483320	2018-10-21 00:04:16.966236+00	2019-05-06 17:52:07.983277+00	29	2
47	Nova Serrana Forgeds	Forgeds	FOR	nova-serrana-forgeds	logos/forgeds.png	\N	https://www.facebook.com/nsforgeds/	https://www.instagram.com/nsforgeds/	#1e2633	#253247	#a0e316	2018-10-21 03:56:51.134555+00	2019-05-06 17:54:48.211844+00	63	2
25	Dark Owls	Owls	OWL	dark-owls	logos/dark-owls.png	\N	https://www.facebook.com/darkowlsfa/	https://www.instagram.com/darkowlsfa/	#19190f	#252517	#fff	2018-10-21 00:12:20.710764+00	2019-05-06 17:55:29.881266+00	61	2
195	Rio de Janeiro Islanders	Islanders	ISL	rio-de-janeiro-islanders	logos/islanders.png	\N	https://web.facebook.com/islandersrio	https://www.instagram.com/rjislanders/	#001b57	#002657	#fff	2019-02-21 12:33:04.775752+00	2019-05-07 23:56:32.359+00	75	3
70	Sorocaba Vipers	Vipers	VIP	sorocaba-vipers	logos/vipers.png	2006-08-05	https://www.facebook.com/VipersFootball/	https://www.instagram.com/sorocabavipers/	#5a246e	#663479	#000	2018-10-21 04:12:28.155363+00	2019-05-06 17:56:20.422618+00	92	2
54	Univás Gladiadores	Gladiadores	GLA	univas-gladiadores	logos/glads.png	\N	https://www.facebook.com/gladiadoresoficial/	https://www.instagram.com/gladiadores.oficial/	#000621	#091134	#fff00f	2018-10-21 04:02:16.954143+00	2019-05-06 17:59:24.104458+00	71	2
61	Santa Cruz Chacais	Chacais	CHA	santa-cruz-chacais	logos/cha.png	\N	https://www.facebook.com/santacruzchacais/	https://www.instagram.com/chacaisscs/	#0676b8	#0192d5	#0b1634	2018-10-21 04:07:47.632547+00	2019-05-06 18:11:09.429017+00	79	2
73	Timbó Rex	Rex	REX	timbo-rex	logos/timbo-rex.png	2007-08-03	https://www.facebook.com/trexfootball/	https://www.instagram.com/rex4life/	#830000	#990000	#000	2018-10-21 04:14:04.601364+00	2019-05-07 22:28:58.909283+00	95	1
74	Tritões	Tritões	TRI	tritoes	logos/tritoes.png	2004-12-21	https://www.facebook.com/tritoes/	https://www.instagram.com/tritoes/	#e66f1f	#fd811d	#fff	2018-10-21 04:14:30.938725+00	2019-05-07 22:29:26.079333+00	102	1
13	Campo Grande Predadores	Predadores	PRE	campo-grande-predadores	logos/preds.png	2015-05-27	https://www.facebook.com/cgpredadores/	https://www.instagram.com/predadoresfa/	#0b360b	#196e19	#fff	2018-10-21 00:05:32.341872+00	2019-05-07 22:39:15.313563+00	16	1
10	Brasília Templários	Templários	TEM	brasilia-templarios	logos/temps.png	2014-10-31	https://www.facebook.com/brasiliatemplarios/?ref=br_rs	https://www.instagram.com/brasiliatemplarios/	#1950a0	#1266a6	#fff	2018-10-21 00:03:44.072915+00	2019-05-07 22:40:31.146131+00	11	1
121	Araçatuba Touros	Touros	TOU	aracatuba-touros	logos/araçatuba-touros.png	\N	https://www.facebook.com/aracatuba.touros/	https://www.instagram.com/aracatubatouros/	#000	#080808	#ffffff	2018-10-31 01:55:08.424481+00	2019-05-07 22:49:20.343126+00	2	3
29	Galaxy	Galaxy	GAL	galaxy	logos/galaxy.png	\N	https://www.facebook.com/SinopGalaxy/	https://www.instagram.com/sinopgalaxy/	#000128	#00043b	#fff	2018-10-21 00:14:48.138497+00	2019-05-07 23:44:07.620131+00	91	3
37	Lobos Guerreiros	Lobos	LOB	lobos-guerreiros	logos/guerr.png	\N	https://www.facebook.com/lobosguerreirosfa/	https://www.instagram.com/lobosguerreirosf.a/	#ffc106	#ffca06	#000	2018-10-21 00:19:54.429995+00	2019-05-07 23:46:37.116604+00	55	3
79	Vasco Patriotas	Vasco	VAS	vasco-patriotas	logos/vasco-da-gama-patriotas.png	2010-08-18	https://www.facebook.com/VascoDaGamaPatriotas/	https://www.instagram.com/vascopatriotasfa/	#000	#080808	#fff	2018-10-21 04:16:37.682001+00	2019-05-07 23:58:53.394233+00	75	4
81	Volta Redonda Falcons	Falcons	FAL	volta-redonda-falcons	logos/falcons.png	\N	https://www.facebook.com/VRFalcons/	https://www.instagram.com/vr_falcons/	#ffe400	#fff000	#000	2018-10-21 04:17:27.284494+00	2019-05-07 23:59:47.24219+00	75	4
230	Joinville Panzers	Panzers	PAN	joinville-panzers	logos/pan.png	\N	\N	\N	#000	#080808	#fff	2019-03-02 20:48:23.128965+00	2019-05-08 00:01:21.421364+00	46	4
236	Paraná HP Development	HP	HP	parana-hp-development	logos/paraná-hp.png	2013-10-27	https://www.facebook.com/paranaHP/	https://www.instagram.com/hp.football/	#3dcc40	#58ed5b	#fff	2019-05-08 00:10:35.968793+00	2019-05-08 00:10:35.968827+00	29	3
19	Contagem Incofidentes	Inconfidentes	INC	contagem-incofidentes	logos/contagem-inconfidentes.png	\N	https://www.facebook.com/InconfidentesFA/	https://www.instagram.com/inconfidentesfa/	#a00000	#b60a0a	#000	2018-10-21 00:08:56.156487+00	2019-05-06 17:55:02.949208+00	25	2
77	Tupinambás	Tupinambás	TUP	tupinambas	logos/tupinambas.png	\N	https://www.facebook.com/tupinambasfa/	https://www.instagram.com/tupinambasfa/	#8d1b1b	#bf1f29	#000	2018-10-21 04:15:47.631+00	2019-05-06 17:49:58.607016+00	87	2
1	América Locomotiva	América	AME	america-locomotiva	logos/americ.png	2005-10-01	https://www.facebook.com/americalocomotiva/	https://www.instagram.com/america.locomotiva/	#096337	#147144	#fff	2018-10-20 23:57:09.133055+00	2019-05-05 20:19:03.370756+00	7	1
57	Recife Vikings	Vikings	VIK	recife-vikings	logos/vikings.png	\N	https://www.facebook.com/recifevikings/	https://www.instagram.com/recifevikings/	#801423	#892533	#f68d21	2018-10-21 04:03:43.440739+00	2019-05-06 17:45:46.193004+00	73	2
63	Santa Maria Soldiers	Soldiers	SOL	santa-maria-soldiers	logos/sold.png	2009-12-02	https://www.facebook.com/smsoldiers/	https://www.instagram.com/smsoldiers/	#4e533c	#646d52	#fff	2018-10-21 04:08:54.729882+00	2019-05-06 16:53:55.020276+00	80	1
16	Cavalaria 2 de Julho	Cavalaria	CAV	cavalaria-2-de-julho	logos/cavalaria-2-de-julho.png	2014-08-18	https://www.facebook.com/Cavalaria2deJulhoFA/	https://www.instagram.com/cavalaria2dejulhofa/	#2b2e45	#393d55	#ffcc29	2018-10-21 00:06:59.930111+00	2019-05-06 16:50:43.314759+00	78	1
34	João Pessoa Espectros	Espectros	ESP	joao-pessoa-espectros	logos/joão-pessoa-espectros.png	2007-01-04	https://www.facebook.com/JPESPECTROS/	https://www.instagram.com/jpespectros/	#93211c	#cb1f26	#fff	2018-10-21 00:18:15.448273+00	2019-05-06 16:50:50.204385+00	45	1
45	Natal Scorpions	Scorpions	SCO	natal-scorpions	logos/scorpions.png	2008-05-01	https://www.facebook.com/NatalScorpions/	https://www.instagram.com/natalscorpions/	#000	#080808	#fff	2018-10-21 03:55:44.637191+00	2019-05-06 16:51:15.975169+00	60	1
59	Roma Gladiadores	Roma	ROM	roma-gladiadores	logos/roma.png	\N	https://www.facebook.com/asromagladiadores/	https://www.instagram.com/romagladiadores/	#9b3133	#a74143	#f58634	2018-10-21 04:04:37.866774+00	2019-05-06 17:46:11.52233+00	32	2
39	Maceió Marechais	Marechais	MAR	maceio-marechais	logos/marechais.png	\N	https://www.facebook.com/MaceioMarechais/	https://www.instagram.com/maceiomarechais/	#001b31	#072b49	#fff	2018-10-21 00:20:54.909244+00	2019-05-06 17:46:18.672643+00	53	2
68	Sergipe Redentores	Redentores	RED	sergipe-redentores	logos/redentores.png	\N	https://www.facebook.com/sergiperedentores/	https://www.instagram.com/sergiperedentores/	#00af9f	#00c5b3	#343434	2018-10-21 04:11:21.659579+00	2019-05-06 17:46:25.976905+00	1	2
65	São Luís Sharks	Sharks	SLZ	sao-luis-sharks	logos/sharks_oo4TOMp.png	\N	https://www.facebook.com/slsharks/	https://www.instagram.com/saoluissharks/	#000c4e	#0a1864	#fff	2018-10-21 04:09:52.794649+00	2019-05-06 17:47:02.04301+00	87	2
42	Manaus Raptors	Raptors	RAP	manaus-raptors	logos/raptros.png	\N	https://www.facebook.com/manausraptors/	https://www.instagram.com/manausraptors/	#003d38	#074a44	#fff	2018-10-21 03:54:07.938234+00	2019-05-06 17:49:28.507503+00	55	2
80	Vingadores	Vingadores	VIN	vingadores	logos/vingadores.png	2013-09-17	https://www.facebook.com/vingadorespa/	https://www.instagram.com/vingadorespa/	#295133	#2e613b	#fff	2018-10-21 04:17:01.561121+00	2019-05-06 17:50:04.801351+00	6	2
5	Bento Gonçalves Snakes	Snakes	SNA	bento-goncalves-snakes	logos/bento-gonçalves-snakes.png	\N	https://www.facebook.com/BGSnakes/	https://www.instagram.com/bgsnakes/	#2ea32c	#49b747	#fff	2018-10-21 00:00:36.484529+00	2019-05-06 17:51:53.119541+00	8	2
191	Delta	Delta	DEL	delta	logos/delta.png	2019-01-03	https://web.facebook.com/delta.rj.fa/	https://www.instagram.com/delta.rj.fa/	#13ff5d	#02ff6f	#363636	2019-02-21 12:21:36.107004+00	2019-05-06 17:54:36.200473+00	75	2
44	Mooca Destroyers	Destroyers	DES	mooca-destroyers	logos/mooca.png	\N	https://www.facebook.com/moocadestroyers/	https://www.instagram.com/moocadestroyers/	#380025	#690136	#fff	2018-10-21 03:55:16.978284+00	2019-05-06 17:54:42.438493+00	89	2
26	Espírito Santo Black Knights	Knights	BKN	espirito-santo-black-knights	logos/espirito-santo-black-knights.png	\N	https://www.facebook.com/esblackknights/	https://www.instagram.com/es_blackknights/	#000	#080808	#fff	2018-10-21 00:12:51.343604+00	2019-05-06 17:55:09.03001+00	102	2
86	Uberaba Zebus	Zebus	ZEB	uberaba-zebus	logos/Sem-Título-1_JHwzuFX.png	\N	https://www.facebook.com/UberabaZebus/	https://www.instagram.com/uberabazebus/	#a10e14	#d7020a	#0000	2018-10-26 03:24:20.57014+00	2019-05-07 23:58:17.106599+00	97	3
49	Palmeiras Locomotives	Palmeiras	PAL	palmeiras-locomotives	logos/palmeiras.png	\N	https://www.facebook.com/palmeiraslocomotives/	https://www.instagram.com/palmeiraslocomotives/	#295133	#2e613b	#fff	2018-10-21 03:57:53.962819+00	2019-05-06 17:55:35.183044+00	89	2
97	Tigres	Tigres	IPA	tigres	logos/ipatinga-tigres.png	\N	https://www.facebook.com/tigresfutebolamericano/	https://www.instagram.com/tigresfutebolamericano/	#f5bd0b	#ffcc2a	#353336	2018-10-31 01:19:30.999848+00	2019-05-06 17:56:08.216136+00	41	2
69	Sinop Coyotes	Coyotes	COY	sinop-coyotes	logos/coy.png	2008-11-26	https://www.facebook.com/SinopCoyotes/	https://www.instagram.com/sinop_coyotes/	#8f0608	#a51113	#fff	2018-10-21 04:11:54.36456+00	2019-05-07 22:22:36.954274+00	91	1
88	Araxá Redwolves	Redwolves	RED	araxa-redwolves	logos/araxá-redwolves.png	\N	https://www.facebook.com/araxaredwolves/	https://www.instagram.com/goredwolves/	#d03034	#df3134	#1b1818	2018-10-31 00:59:15.98986+00	2019-05-07 22:49:48.989489+00	3	3
199	Arcos Pegasus	Pegasus	PEG	arcos-pegasus	logos/pegasus.png	\N	https://www.facebook.com/ArcosPegasus/	\N	#313b78	#235c9c	#fff	2019-02-27 17:56:33.150551+00	2019-05-07 22:50:03.107829+00	110	4
89	Boa Vista Nordics	Nordics	NOR	boa-vista-nordics	logos/nor.png	\N	https://www.facebook.com/bvnordics/	https://www.instagram.com/bvnordics/	#ffc106	#ffca06	494949	2018-10-31 01:08:55.492676+00	2019-05-07 22:59:05.679177+00	10	3
92	Camboriú Broqueiros	Broqueiros	BRO	camboriu-broqueiros	logos/camboriu-broqueiros.png	\N	https://www.facebook.com/broqueiros/	https://www.instagram.com/broqueiros/	#d86b27	#f17721	#004830	2018-10-31 01:12:54.326937+00	2019-05-07 23:36:10.607611+00	5	3
93	Cascavel Olympians	Olympians	OLY	cascavel-olympians	logos/cascavel-olympians.png	\N	https://www.facebook.com/cascavelolympians/	https://www.instagram.com/cascavelolympians/	#000c4e	#0a165a	#fbe106	2018-10-31 01:14:05.779438+00	2019-05-07 23:37:34.868065+00	22	3
87	Criciúma Miners	Miners	MIN	criciuma-miners	logos/sss.png	\N	https://www.facebook.com/criciumaminers/	https://www.instagram.com/criciumaminers/	#ffc513	#ffb713	#fefefe	2018-10-26 03:25:59.659095+00	2019-05-07 23:38:23.86605+00	27	3
94	Cronos	Cronos	CRO	cronos	logos/cronos.png	\N	https://www.facebook.com/CronosFootball/	https://www.instagram.com/cronosfootball/	#5a2482	#67318f	#fff	2018-10-31 01:15:16.93845+00	2019-05-07 23:38:31.113706+00	89	3
85	Curitiba Lions	Lions	LIO	curitiba-lions	logos/lions.png	\N	https://www.facebook.com/CuritibaLions/	https://www.instagram.com/curitibalions/	#000122	#00043a	#edeee8	2018-10-26 03:21:55.754164+00	2019-05-07 23:39:08.610706+00	29	3
192	Erechim Coroados	Coroados	COR	erechim-coroados	logos/coroados.png	\N	https://web.facebook.com/ErechimCoroados/	https://www.instagram.com/erechimcoroados/	#fe9605	#feae05	#6b1010	2019-02-21 12:24:39.801691+00	2019-05-07 23:41:15.030267+00	106	3
98	Itaiópolis Xoklengs	Xoklengs	XOK	itaiopolis-xoklengs	logos/itaiopolis-xoklengs.png	\N	https://www.facebook.com/ItaiopolisXoklengs/	\N	#ffb10a	#ffc240	#00134e	2018-10-31 01:21:38.661808+00	2019-05-07 23:45:07.184817+00	42	3
83	Juiz de Fora Imperadores	Imperadores	IMP	juiz-de-fora-imperadores	logos/2.png	\N	https://www.facebook.com/jfimperadores/	https://www.instagram.com/jfimperadores_fa/	#956c33	#d2ae6d	#fff	2018-10-26 03:19:04.699254+00	2019-05-07 23:45:57.461013+00	105	3
100	Londrina Bristlebacks	Bristlebacks	BRI	londrina-bristlebacks	logos/londrina-bristleblacks.png	\N	https://www.facebook.com/LondrinaBristlebacks/	https://www.instagram.com/londrinabristlebacks/	#dc1119	#ec2028	#231f20	2018-10-31 01:23:34.99754+00	2019-05-07 23:46:43.843977+00	50	3
101	Mauá Vikings	Vikings	VIK	maua-vikings	logos/maua-vikings.png	\N	https://www.facebook.com/mauavikings	https://www.instagram.com/vikings_fa	#771006	#8a0e02	#fff	2018-10-31 01:24:27.896419+00	2019-05-07 23:47:38.658108+00	57	3
102	Monte Alto Rippers	Rippers	RIP	monte-alto-rippers	logos/monte-alto-rippers.png	\N	https://www.facebook.com/montealtorippersfa/	https://www.instagram.com/montealtorippersfa/	#59539c	#6965a4	#211d1e	2018-10-31 01:25:28.495085+00	2019-05-07 23:47:45.469934+00	58	3
103	Nêmesis	Nêmesis	NEM	nemesis	logos/nemesis.png	\N	https://www.facebook.com/sorocabafa/	\N	#cd020f	#e20614	#1c1c1b	2018-10-31 01:26:24.454945+00	2019-05-07 23:47:57.89132+00	92	3
58	Remo Lions	Remo	REM	remo-lions	logos/rem.png	\N	https://www.facebook.com/RemoLions/	https://www.instagram.com/remolions/	#0d182e	#0d1d2e	#fff	2018-10-21 04:04:11.755267+00	2019-05-06 17:49:52.931084+00	6	2
71	Sorriso Hornets	Hornets	HOR	sorriso-hornets	logos/sorriso-hornets.png	2014-04-16	https://www.facebook.com/SorrisoHornets.FA/	https://www.instagram.com/sorriso_hornets/	#ffc106	#ffca06	#000	2018-10-21 04:12:58.662797+00	2019-05-06 12:49:28.691448+00	93	1
50	Paraná HP	HP	HP	parana-hp	logos/paraná-hp.png	2013-10-27	https://www.facebook.com/paranaHP/	https://www.instagram.com/hp.football/	#3dcc40	#58ed5b	#fff	2018-10-21 03:59:54.622141+00	2019-05-06 16:53:29.43969+00	29	1
60	Rondonópolis Hawks	Hawks	HAW	rondonopolis-hawks	logos/hawks.png	2013-06-22	https://www.facebook.com/RondonopolisHawks/	https://www.instagram.com/rondonopolis_hawks/	#7e0308	#b00003	#fff	2018-10-21 04:05:37.321356+00	2019-05-06 12:49:21.261679+00	77	1
55	Recife Apaches	Apaches	APA	recife-apaches	logos/apaches.png	\N	https://www.facebook.com/RecifeApachesFootball/	https://www.instagram.com/recifeapachesfootball/	#aa9553	#c1ac6c	#92201d	2018-10-21 04:02:47.702588+00	2019-05-05 05:38:58.186555+00	73	2
78	Ufersa Petroleiros	Petroleiros	PET	ufersa-petroleiros	logos/ufersa-petroleiros.png	2008-01-06	https://www.facebook.com/UfersaPetroleiros/	https://www.instagram.com/ufersa_petroleiros/	#c13c00	#d94806	#000	2018-10-21 04:16:12.749628+00	2019-05-06 16:50:59.528497+00	59	1
62	Santa Cruz Pirates	Pirates	PIR	santa-cruz-pirates	logos/pirates.png	2007-07-07	https://www.facebook.com/RecifePirates/	https://www.instagram.com/santacruzpirates/	#00565f	#006570	#231f20	2018-10-21 04:08:18.628785+00	2019-05-06 16:51:07.052743+00	73	1
90	Brasília V8	V8	V8	brasilia-v8	logos/brasilia-v8.png	\N	https://www.facebook.com/brasiliav8/	https://www.instagram.com/brasiliav8/	#880f12	#951a1d	#000	2018-10-31 01:10:37.441718+00	2019-05-06 17:45:28.862665+00	11	2
91	Brasília Wizards	Wizards	WIZ	brasilia-wizards	logos/brasilia-wizards.png	\N	https://www.facebook.com/BrasiliaWizards/	https://www.instagram.com/brasilia.wizards/	#2b1c58	#582987	#ffc60a	2018-10-31 01:11:41.383162+00	2019-05-06 17:45:36.432622+00	11	2
95	Fortaleza Tritões	Tritões	TRI	fortaleza-tritoes	logos/fortaleza-tritoes.png	\N	https://www.facebook.com/fortalezatritoes/	https://www.instagram.com/fortalezatritoes/	#142541	#1f3559	#fff	2018-10-31 01:16:28.692999+00	2019-05-06 17:47:09.001333+00	32	2
75	Tropa Campina	Tropa	TRO	tropa-campina	logos/tropa-campina.png	2013-08-20	https://www.facebook.com/tropacampina/	https://www.instagram.com/tropacampina/	#003f24	#086f41	#ffd507	2018-10-21 04:14:58.295258+00	2019-05-06 17:47:12.940239+00	14	2
52	Porto Alegre Gorillas	Gorillas	GOR	porto-alegre-gorillas	logos/gorillas.png	\N	https://www.facebook.com/GorillasFA/	https://www.instagram.com/poagorillas/	#23073e	#301250	#fff	2018-10-21 04:01:01.542442+00	2019-05-06 17:51:39.508673+00	104	2
66	Tatuapé Monsters	Monsters	MON	tatuape-monsters	logos/monsters.png	\N	https://www.facebook.com/monstersfam/	https://www.instagram.com/gomonsters/	#cfb463	#dbc37d	#040e43	2018-10-21 04:10:27.82718+00	2019-05-06 17:55:23.845856+00	89	2
118	Votuporanga Mohawks	Mohawks	MOH	votuporanga-mohawks	logos/votuporanga-mohawks.png	\N	https://www.facebook.com/votuporangamohawks/	https://www.instagram.com/mohawksvotuporanga/	#09724b	#00955e	#00131a	2018-10-31 01:51:59.991593+00	2019-05-07 23:52:44.263144+00	103	3
111	Prudente Coronéis	Coronéis	COR	prudente-coroneis	logos/prudente-coroneis.png	\N	https://www.facebook.com/Prudente-Coron%C3%A9is-2185245501700739/	https://www.instagram.com/prudentecoroneisoficial/	#080808	#2a2a2a	#ffffff	2018-10-31 01:34:25.670773+00	2019-05-07 23:53:41.408887+00	72	3
112	Recife Horses	Horses	HOR	recife-horses	logos/recife-horses.png	\N	https://www.facebook.com/horsesfutebolamericano/	https://www.instagram.com/recife.horses/	#a00000	#b60a0a	#000	2018-10-31 01:35:11.851519+00	2019-05-07 23:53:47.814923+00	73	3
113	Santana Red Bulls	Red Bulls	BUL	santana-red-bulls	logos/santana-redbulls.png	\N	https://www.facebook.com/santanaredbulls/	https://www.instagram.com/santanaredbulls/	#080808	#2a2a2a	#ffffff	2018-10-31 01:43:39.945486+00	2019-05-07 23:57:00.48462+00	31	3
114	São Bento Snakes	Snakes	SNA	sao-bento-snakes	logos/sao-bento-snakes.png	\N	https://www.facebook.com/SBsnakes00/	https://www.instagram.com/sbsnakes/	#706a3e	#80783a	#280c08	2018-10-31 01:45:30.350936+00	2019-05-07 23:57:13.736749+00	83	3
115	São Miguel Indians	Indians	IND	sao-miguel-indians	logos/sao-miguel-indians.png	\N	https://www.facebook.com/saomiguelindians/	https://www.instagram.com/smindiansfa/	#b41517	#de251d	#fff	2018-10-31 01:47:22.414173+00	2019-05-07 23:57:50.282107+00	88	3
116	Taquaritinga Defenders	Defenders	DEF	taquaritinga-defenders	logos/taquaritinga-defenders.png	\N	https://www.facebook.com/defendersfa/	https://www.instagram.com/defendersfa/	#580100	#9e0608	#000	2018-10-31 01:48:29.042279+00	2019-05-07 23:57:56.39528+00	94	3
119	ABC Corsários	Corsários	COR	abc-corsarios	logos/abc-corsarios.png	\N	https://www.facebook.com/corsariosallblacks/	https://www.instagram.com/corsariosallblacks/	#000	#080808	#ffffff	2018-10-31 01:53:48.821105+00	2019-05-07 22:48:27.112334+00	84	3
122	Barões de Ribeirão Preto	Barões	BAR	baroes-de-ribeirao-preto	logos/baroes.png	\N	https://www.facebook.com/baroesderibeiraopreto/	https://www.instagram.com/baraoribeirao/	#49141a	#541418	#ffffff	2018-10-31 01:55:48.451013+00	2019-05-07 22:58:37.61013+00	74	3
193	Blumenau Vikings	Vikings	VIK	blumenau-vikings	logos/blumenau.png	\N	https://web.facebook.com/blumenauvikings/	https://www.instagram.com/blumenauvikings/	#929494	#cfcfcf	#313131	2019-02-21 12:29:04.811407+00	2019-05-07 22:58:57.764284+00	107	3
196	Brusque Weavers	Weavers	WEA	brusque-weavers	logos/weavers.png	\N	https://www.facebook.com/BrusqueWeavers/	https://www.instagram.com/brusqueweavers/	#0f602b	#027e28	#fff	2019-02-26 16:27:52.185248+00	2019-05-07 23:00:11.030589+00	108	3
123	Bulldogs	Bulldogs	BUL	bulldogs	logos/bulldogs.png	\N	https://www.facebook.com/bulldogsfutebolamericano/	https://www.instagram.com/bulldogsfutebolamericano/	#a00000	#b60a0a	#ffffff	2018-10-31 01:56:31.175526+00	2019-05-07 23:00:19.950748+00	100	3
124	Buriers	Buriers	BUR	buriers	logos/buriers.png	\N	https://www.facebook.com/buriersfootball/	https://www.instagram.com/buriersfootball/	#080808	#2a2a2a	#ffef00	2018-10-31 01:57:21.682134+00	2019-05-07 23:00:26.252502+00	18	4
126	Canoas Jaguars	Jaguars	JAG	canoas-jaguars	logos/canoas-jaguars.png	\N	https://www.facebook.com/canoasjaguarsfa/	https://www.instagram.com/canoasjaguarsfa/	#ffc106	#ffca06	#000	2018-10-31 01:58:57.313666+00	2019-05-07 23:37:06.166869+00	18	3
127	Caraguá Ghost Ship	Ghost Ship	GSH	caragua-ghost-ship	logos/caragua-ghost-ship.png	\N	https://www.facebook.com/caraguaghostship/	https://www.instagram.com/caragua_ghost_ship/	#080808	#2a2a2a	#ffffff	2018-10-31 01:59:45.170179+00	2019-05-07 23:37:17.399996+00	19	3
128	Carlos Barbosa Ximangos	Ximangos	XIM	carlos-barbosa-ximangos	logos/carlos-barbosa-ximangos.png	\N	https://www.facebook.com/ximangos/	https://www.instagram.com/cb_ximangos/	#9b110a	#ad0900	#fea900	2018-10-31 02:00:36.529451+00	2019-05-07 23:37:23.965753+00	20	3
129	Castanhal Yellow Blacks	Yellow Blacks	YBL	castanhal-yellow-blacks	logos/castanhal-yellow-blacks.png	\N	https://www.facebook.com/yellowblacksoficial/	https://www.instagram.com/yellowblacks/	#e8b31d	#fdc526	#181617	2018-10-31 02:05:14.177918+00	2019-05-07 23:37:42.412038+00	23	3
130	Curitiba Guardian Saints	Saints	SAI	curitiba-guardian-saints	logos/curitiba-guardian-saints.png	\N	https://www.facebook.com/guardiansaints/	https://www.instagram.com/guardiansaints/	#3e4098	#4a4ca6	#e4b739	2018-10-31 02:06:58.79413+00	2019-05-07 23:38:54.698845+00	29	3
132	Dourados Redlands	Redlands	RED	dourados-redlands	logos/dourados-redlands.png	\N	https://www.facebook.com/DouradosRedlands/	https://www.instagram.com/douradosredlands/	#a00000	#b60a0a	#000	2018-10-31 02:13:15.070302+00	2019-05-07 23:40:50.973315+00	30	3
133	Dourados Tenentes	Tenentes	TEM	dourados-tenentes	logos/dourados-tenentes.png	\N	https://www.facebook.com/DouradosTenentes/	https://www.instagram.com/tenentesfa/	#001e4e	#09295c	#ffc200	2018-11-01 23:39:00.211709+00	2019-05-07 23:40:58.598305+00	30	3
134	Francisco Beltrão Red Feet	Red Feet	RED	francisco-beltrao-red-feet	logos/francisco-beltrao-red-feet.png	\N	https://www.facebook.com/sudoesteredfeet/	https://www.instagram.com/fb.redfeet/	#9bb1bb	#b8c9d1	#000	2018-11-01 23:40:05.462665+00	2019-05-07 23:44:00.98062+00	35	3
135	Gravataí Spartans	Spartans	SPA	gravatai-spartans	logos/gravatai-spartans.png	\N	https://www.facebook.com/GravataiSpartans/	https://www.instagram.com/gravataispartans/	#9e1d24	#aa272e	#f5b332	2018-11-01 23:40:52.277981+00	2019-05-07 23:44:38.653785+00	38	3
136	Guarani Indians	Indians	IND	guarani-indians	logos/guarani-indians.png	\N	https://www.facebook.com/guaraniindians/	https://www.instagram.com/indiansfa/	#1b3f1e	#234a27	#ffffff	2018-11-01 23:41:40.815554+00	2019-05-07 23:44:46.279122+00	15	3
104	Norte Paraná	Norte	NPR	norte-parana	logos/norte-paraná.png	\N	https://www.facebook.com/NorteParanaFA/	https://www.instagram.com/norteparanafa/	#e1ab00	#f5be11	#404042	2018-10-31 01:27:14.356276+00	2019-05-07 23:48:04.221023+00	13	3
105	Nova Friburgo Yetis	Yetis	YET	nova-friburgo-yetis	logos/nova-friburgo-yetis.png	\N	https://www.facebook.com/NFYetis/	https://www.instagram.com/nfyetis/	#1d789f	#2f87ad	#1d1d1b	2018-10-31 01:29:11.495317+00	2019-05-07 23:48:16.176058+00	62	3
106	Osasco Soldiers	Soldiers	SOL	osasco-soldiers	logos/osasco-soldiers.png	\N	https://www.facebook.com/SoldiersFaOficial/	https://www.instagram.com/soldiersfaoficial/	#670001	#831b1c	#fbcd00	2018-10-31 01:30:07.144084+00	2019-05-07 23:49:40.240431+00	65	3
107	Outland Soldiers	Soldiers	SOL	outland-soldiers	logos/outland-soldiers.png	\N	https://www.facebook.com/outlandsoldiers/	https://www.instagram.com/outlandsoldiers/	#ffc106	#ffca06	#000	2018-10-31 01:31:00.240872+00	2019-05-07 23:49:47.536697+00	6	4
108	Palotina Celtics	Celtics	CEL	palotina-celtics	logos/palotina-celtics.png	\N	https://www.facebook.com/palotinaceltics/	https://www.instagram.com/palotinacelticsfa/	#009045	#00a54f	#fff	2018-10-31 01:31:45.37458+00	2019-05-07 23:50:05.011828+00	66	3
109	Passos Madbulls	Madbulls	MAD	passos-madbulls	logos/passos-madbulls.png	\N	https://www.facebook.com/passosmadbulls/	https://www.instagram.com/passos_madbulls/	#b4322b	#e1362b	#282a1d	2018-10-31 01:32:29.493832+00	2019-05-07 23:50:30.078496+00	67	3
110	Patos Red Dragons	Dragons	DRA	patos-red-dragons	logos/patos-red-dragons.png	\N	https://www.facebook.com/patosredragons/	https://www.instagram.com/patosreddragons/	#a00000	#b60a0a	#000	2018-10-31 01:33:22.324003+00	2019-05-07 23:50:47.33261+00	68	3
147	Piratas da Serra	Piratas	PIR	piratas-da-serra	logos/piratas-da-serra.png	\N	https://www.facebook.com/PiratasDaSerra/	https://www.instagram.com/piratasdaserra/	#480c60	#54196b	#ffffff	2018-11-01 23:55:39.597505+00	2019-05-07 23:52:52.987694+00	7	3
194	Piratas de Copacabana	Piratas	PIR	piratas-de-copacabana	logos/piratasss.png	\N	https://web.facebook.com/piratasdecopacabana/	https://www.instagram.com/piratasdecopacabanafa/	#4c4c4c	#7f7f7f	#000	2019-02-21 12:31:28.512523+00	2019-05-07 23:53:00.830855+00	75	3
150	Rio Preto Weilers	Weilers	WEI	rio-preto-weilers	logos/rio-preto-weillers.png	\N	https://www.facebook.com/Weilers.rp/	https://www.instagram.com/riopretoweilersfa/	#000	#080808	#ffffff	2018-11-01 23:57:59.396757+00	2019-05-06 17:56:26.539195+00	76	2
148	Ponte Preta Gorilas	Ponte Preta	PON	ponte-preta-gorilas	logos/ponte-preta-gorillas.png	\N	https://www.facebook.com/pontepretagorilas/	https://www.instagram.com/pontepretagorilas/	#000	#080808	#ffffff	2018-11-01 23:56:26.671693+00	2019-05-07 23:53:24.094682+00	15	3
149	Rio Football Academy	RFA	RFA	rio-football-academy	logos/Rio-Football-Academy.png	\N	https://www.facebook.com/RioFootballAcademy/	https://www.instagram.com/riofootballacademy/	#b1b1b1	#d8d8d8	#414243	2018-11-01 23:57:14.952518+00	2019-05-07 23:56:39.228697+00	75	3
151	Santos Tsunami	Santos	SAN	santos-tsunami	logos/santos-tsunami.png	\N	https://www.facebook.com/santostsunami/	https://www.instagram.com/santostsunami/	#0063a0	#007ac7	#ffffff	2018-11-01 23:58:39.328173+00	2019-05-07 23:57:07.4627+00	82	3
152	São José Jets	Jets	JET	sao-jose-jets	logos/são-josé-jets.png	\N	https://www.facebook.com/sao.jose.jets/	https://www.instagram.com/jets.oficial/	#0a2747	#102f52	#c6a76d	2018-11-01 23:59:20.165808+00	2019-05-07 23:57:20.19828+00	86	3
154	Tubarão Predadores	Predadores	TUB	tubarao-predadores	logos/tubarão-predadores.png	\N	https://www.facebook.com/TubaraoPredadores/	https://www.instagram.com/tubaraopredadores/	#00419f	#0055cf	#7a8c98	2018-11-02 00:00:36.297875+00	2019-05-07 23:58:09.961262+00	96	3
144	Moon Howlers	Howlers	HOW	moon-howlers	logos/moon-howlers.png	\N	https://www.facebook.com/MoonHowlersFutebolAmericano/	https://www.instagram.com/moonhowlers/	#ffc106	#ffca06	#000	2018-11-01 23:53:29.255257+00	2019-05-06 18:05:58.666158+00	29	2
138	Tomahawk	Tomahawk	TOM	tomahawk	logos/tom.png	\N	https://www.facebook.com/TomahawkFA/	https://www.instagram.com/tomahawkfa/	#9c9c9c	#c3c3c4	#e83642	2018-11-01 23:45:26.979813+00	2019-05-06 18:12:10.222387+00	49	2
117	Uberlândia Lobos	Lobos	LOB	uberlandia-lobos	logos/uberlandia.png	\N	https://www.facebook.com/uberlandialobos/	https://www.instagram.com/uberlandialobos/	#295133	#2e613b	#fff	2018-10-31 01:50:52.556686+00	2019-05-07 23:58:23.940352+00	98	3
155	União Snakes	Snakes	SNA	uniao-snakes	logos/união-snakes.png	\N	https://www.facebook.com/UniaoSnakesFA/	https://www.instagram.com/uniaosnakesfa/	#0c009e	#2b20af	#e7efe7	2018-11-02 00:01:17.038578+00	2019-05-07 23:58:37.304692+00	99	3
156	Viamão Raptors	Raptors	RAP	viamao-raptors	logos/viamão-raptors.png	\N	https://www.facebook.com/ViamaoRaptors/	https://www.instagram.com/viamaoraptors/	#3c1e00	#492909	#decd87	2018-11-02 00:01:52.550512+00	2019-05-07 23:59:31.158961+00	101	4
197	Ajuricaba Warriors	Warriors	WAR	ajuricaba-warriors	logos/ajuricaba.png	\N	https://www.facebook.com/ajuricabawarriorsfa/	https://www.instagram.com/ajuricabawarriors/	#059640	#05a840	#f1e200	2019-02-27 17:51:07.653781+00	2019-05-07 22:53:48.651798+00	55	4
24	Cuiabá Arsenal	Arsenal	ARS	cuiaba-arsenal	logos/ars.png	2002-10-01	https://www.facebook.com/cuiabaarsenal/	https://www.instagram.com/cuiabaarsenal/	#122f25	#234439	#fff	2018-10-21 00:11:53.024836+00	2019-05-06 12:49:08.611821+00	28	1
137	Guarapuva Dark Wolves	Dark Wolves	DWV	guarapuva-dark-wolves	logos/dark-wolves.png	\N	https://www.facebook.com/guarapuavadarkwolves/	https://www.instagram.com/guarapuavadarkwolves/	#a00000	#b60a0a	#000	2018-11-01 23:43:45.262947+00	2019-05-07 23:44:54.176139+00	39	3
157	Vasco Almirantes	Vasco	VAS	vasco-almirantes	logos/almirantes.png	2019-01-16	https://www.facebook.com/VascoAlmirantes/	https://www.instagram.com/vascoalmirantes/	#000	#080808	#fff	2019-02-15 15:28:21.031273+00	2019-05-06 16:52:56.926759+00	75	1
96	Franca Carrascos	Carrascos	CAR	franca-carrascos	logos/carrascos.png	\N	https://www.facebook.com/francacarrascos/	https://www.instagram.com/francacarrascos/	#1e0c40	#2f2059	#fff	2018-10-31 01:17:43.956604+00	2019-05-07 23:43:41.017489+00	34	3
153	Street Dogs	Dogs	DOG	street-dogs	logos/street-dogs.png	\N	https://www.facebook.com/StreetDogsFA/	https://www.instagram.com/streetdogs_fa/	#1d2040	#282b4e	#ffffff	2018-11-02 00:00:00.343997+00	2019-05-08 00:02:16.201824+00	17	3
139	Itajaí Dockers	Dockers	DOC	itajai-dockers	logos/itajai-dockers.png	\N	https://www.facebook.com/itajaidockers/	https://www.instagram.com/itajaidockersfa/	#9c9c9c	#c3c3c4	#000	2018-11-01 23:46:15.464711+00	2019-05-07 23:45:15.985987+00	43	3
141	Legião	Legião	LEG	legiao	logos/legião.png	\N	https://www.facebook.com/legiaofa/	https://www.instagram.com/legiaofa/	#000	#080808	#fff	2018-11-01 23:47:37.936168+00	2019-05-07 23:46:11.413057+00	6	4
142	Leme Lizards	Lizards	LIZ	leme-lizards	logos/leme-lizards.png	\N	https://www.facebook.com/LemeLizardsFutebolAmericano/	https://www.instagram.com/empyreo.leme.lizards/	#094e83	#00579a	#ffffff	2018-11-01 23:51:27.024686+00	2019-05-07 23:46:28.175651+00	48	3
143	Luverdense Jaguars	Jaguars	JAG	luverdense-jaguars	logos/luverdense-jaguars.png	\N	https://www.facebook.com/lrvjaguars/	https://www.instagram.com/lrv_jaguars/	#dcb324	#efc535	#000	2018-11-01 23:52:13.558953+00	2019-05-07 23:46:54.728838+00	51	3
140	Ocelots	Ocelots	OCE	ocelots	logos/jundiai-ocelots.png	\N	https://www.facebook.com/ocelotsfutebolamericano/	https://www.instagram.com/ocelotsfa/	e27a2f	#f08c44	#000	2018-11-01 23:46:56.061605+00	2019-05-07 23:48:24.932948+00	47	3
82	Operário Gravediggers	Gravediggers	GRA	operario-gravediggers	logos/Sem-Título-1.png	\N	https://www.facebook.com/cgrgravediggers/	https://www.instagram.com/operariogravediggers/	#000	#080808	#fff	2018-10-26 02:05:43.466719+00	2019-05-07 23:49:33.557262+00	16	4
145	Paraíso Miners	Miners	MIN	paraiso-miners	logos/paraiso-miners.png	\N	https://www.facebook.com/paraisominers/	https://www.instagram.com/minersfa/	#9c9c9c	#c3c3c4	#000	2018-11-01 23:54:13.232015+00	2019-05-07 23:50:13.345868+00	90	3
67	São Paulo Storm	Storm	STO	sao-paulo-storm	logos/storm.png	2006-08-31	https://www.facebook.com/SaoPauloStorm/	https://www.instagram.com/spstorm/	#174677	#124e8c	#fff	2018-10-21 04:10:55.403011+00	2019-05-06 16:52:40.666406+00	89	1
56	Recife Mariners	Mariners	MAR	recife-mariners	logos/marin.png	2006-12-19	https://www.facebook.com/RecifeMariners/	https://www.instagram.com/recifemariners/	#035593	#0066b3	#fff	2018-10-21 04:03:12.531796+00	2019-05-05 05:38:42.260243+00	73	1
120	Amazon Black Hawks	Black Hawks	BHK	amazon-black-hawks	logos/amazon-black-hawks.png	\N	https://www.facebook.com/blackhawksfa/	https://www.instagram.com/blackhawksfa/	#000	#080808	#ffffff	2018-10-31 01:54:26.89211+00	2019-05-06 17:49:07.763209+00	55	2
3	Armada Lions	Armada	ARM	armada-lions	logos/Sem-Título-1.png	\N	https://www.facebook.com/armadaf/	https://www.instagram.com/armadaf.a/	#000	#080808	#fff	2018-10-20 23:59:11.11329+00	2019-05-06 17:50:59.040777+00	104	2
8	Blaze	Blaze	BLA	blaze	logos/bl.png	\N	https://www.facebook.com/BlazeFutebolAmericano/	https://www.instagram.com/blaze_fa/	#000	#080808	#efd037	2018-10-21 00:02:23.617594+00	2019-05-06 17:54:23.233953+00	75	2
200	Armada	Armada	ARM	armada	logos/alfa.png	\N	https://www.facebook.com/armadalions/	https://www.instagram.com/armadalions/	#000	#080808	#ffffff	2019-02-27 17:58:08.800588+00	2019-05-07 22:50:12.844811+00	104	4
201	Avaré Mustangs	Mustangs	MUS	avare-mustangs	logos/avare.png	\N	\N	\N	#2a0c74	#2a1f74	#3cfe00	2019-02-28 10:39:23.825782+00	2019-05-07 22:50:23.682213+00	111	4
209	Ponta Grossa Phantoms	Phantoms	PHA	ponta-grossa-phantoms	logos/phantoms.png	\N	\N	\N	#27027f	#271b7f	#ff8e05	2019-02-28 11:05:39.962781+00	2019-05-07 23:53:17.260995+00	113	4
210	Porto Alegre Pumpkins	Pumpkins	PUM	porto-alegre-pumpkins	logos/pumpkins.png	\N	\N	\N	#f03f23	#f04e23	#fff	2019-02-28 11:06:50.208801+00	2019-05-07 23:53:30.09386+00	104	4
234	Leões de Judá Development	Leões	LEO	leoes-de-juda-development	logos/leos.png	2013-03-13	https://www.facebook.com/leoesFA/	https://www.instagram.com/leoesdejudafa/	#a38e59	#cab681	#000	2019-05-06 17:27:15.752749+00	2019-05-07 22:21:13.294433+00	11	2
215	Salvador All Saints	All Saints	AST	salvador-all-saints	logos/allsaints.png	\N	\N	\N	#d6b86a	#d6c06a	#000	2019-02-28 16:33:56.415395+00	2019-05-07 23:56:45.193998+00	78	4
223	Salvador Kings	Kings	KIN	salvador-kings	logos/kings.png	\N	\N	\N	#5f167a	#5f277a	#ffc800	2019-03-01 23:04:57.729598+00	2019-05-07 23:56:53.389608+00	78	4
226	São José WSI	WSI	WSI	sao-jose-wsi	logos/wsi.png	\N	\N	\N	#09224b	#0a2b61	#fff	2019-03-02 02:59:42.012214+00	2019-05-07 23:57:29.152623+00	85	4
233	São Leopoldo Mustangs	Mustangs	MUS	sao-leopoldo-mustangs	logos/mustangs.png	\N	\N	\N	#07112c	#071d2c	#fff	2019-03-02 20:53:08.781966+00	2019-05-07 23:57:43.488069+00	118	4
222	Treze Roosters	Roosters	ROS	treze-roosters	logos/roosters.png	\N	\N	\N	##000	#080808	#ffffff	2019-03-01 23:03:50.207531+00	2019-05-07 23:58:02.696578+00	14	4
202	Balneário Lobos do Mar	Lobos	LOB	balneario-lobos-do-mar	logos/balneario.png	\N	\N	\N	#0c2943	#04395f	#fff	2019-02-28 10:42:02.334651+00	2019-05-07 22:57:45.048803+00	112	4
217	UFPR Legends	Legends	LEG	ufpr-legends	logos/legends.png	\N	\N	\N	#db1306	#db3006	#bf9f5e	2019-03-01 02:11:48.706938+00	2019-05-07 23:58:30.637567+00	29	4
84	Universo Rednecks	Rednecks	RED	universo-rednecks	logos/redd.png	2012-02-09	https://www.facebook.com/goiania.rednecks/	https://www.instagram.com/goianiarednecks/	#101d52	#102752	#fff	2018-10-26 03:20:28.947361+00	2019-05-07 23:58:44.924275+00	37	3
214	Vitória Antares	Antares	ANT	vitoria-antares	logos/antares.png	\N	\N	\N	#aa2b2f	#aa382f	#fff	2019-02-28 16:14:43.760074+00	2019-05-07 23:59:38.552597+00	114	4
32	Ijuí Drones	Drones	DRO	ijui-drones	logos/drones.png	\N	https://www.facebook.com/IjuiDrones/	https://www.instagram.com/drones_ijui/	#ffc106	#ffca06	#000	2018-10-21 00:16:39.853015+00	2019-05-07 23:45:00.668273+00	40	3
146	Cane Cutters	Cutters	CUT	cane-cutters	logos/piracicaba-cane-cutters.png	\N	https://www.facebook.com/CaneCutters/	https://www.instagram.com/canecutters/	#0a2f59	#103b6b	#f6ce03	2018-11-01 23:54:57.039795+00	2019-05-07 23:36:37.116985+00	70	3
203	Bárbaros do Vale	Bárbaros	BAR	barbaros-do-vale	logos/barbaros.png	\N	\N	\N	#00733c	#007e3c	#fff	2019-02-28 10:44:32.944655+00	2019-05-07 22:57:52.487457+00	43	4
208	Brusque Admirals	Admirals	ADM	brusque-admirals	logos/admirals.png	\N	\N	\N	#007b3c	#00883c	#fff	2019-02-28 10:56:12.888792+00	2019-05-07 23:00:04.143202+00	108	4
2	Arcoverde Templários	Templários	TEM	arcoverde-templarios	logos/arcoverde-templários.png	\N	https://www.facebook.com/arcoverdetemplarios/	https://www.instagram.com/arcotemplarios/	#008979	#00a095	#cfbd95	2018-10-20 23:58:10.283256+00	2019-05-05 05:39:35.02315+00	4	3
18	Ribeirão Preto Challengers	Challengers	CHA	ribeirao-preto-challengers	logos/challengers_kfwh9Bg.png	2007-02-03	https://www.facebook.com/ChallengersFutebolAmericano/	https://www.instagram.com/challengers_f.a/	#0f074c	#1c1364	#fff	2018-10-21 00:08:10.770106+00	2019-05-06 16:52:26.971513+00	74	1
235	Recife Mariners Development	Mariners	MAR	recife-mariners-development	logos/marin.png	2006-12-19	https://www.facebook.com/RecifeMariners/	https://www.instagram.com/recifemariners/	#035593	#0066b3	#fff	2019-05-06 17:28:17.899645+00	2019-05-06 17:28:17.899679+00	73	2
125	Canoas Bulls	Bulls	BUL	canoas-bulls	logos/canoas-bulls.png	\N	https://www.facebook.com/CanoasBulls/	https://www.instagram.com/canoasbulls/	#97191d	#a32125	#ffffff	2018-10-31 01:58:11.593803+00	2019-05-06 17:51:04.706827+00	18	2
205	Blumenau Riesen	Riesen	RIE	blumenau-riesen	logos/riesen.png	\N	\N	\N	#e66f2e	#e67c2e	#1f1a16	2019-02-28 10:48:51.107984+00	2019-05-07 22:58:45.248943+00	107	4
206	Brasil Devilz	Devilz	DEV	brasil-devilz	logos/devilz.png	\N	\N	\N	#ffc106	#ffca06	#3084ca	2019-02-28 10:50:37.964449+00	2019-05-07 22:59:25.037894+00	89	4
207	Brasília Alligators	Alligators	ALI	brasilia-alligators	logos/gators.png	\N	\N	\N	#708c58	#abc44c	#000	2019-02-28 10:55:11.436171+00	2019-05-07 22:59:33.868007+00	11	4
229	Campo Grande Cobras	Cobras	COB	campo-grande-cobras	logos/cobrass.png	\N	\N	\N	#c11e00	#ff5549	#fff	2019-03-02 03:48:40.905174+00	2019-05-07 23:36:25.406636+00	16	4
219	Ceará Cangaceiros	Cangaceiros	CAN	ceara-cangaceiros	logos/cangaceiros.png	\N	\N	\N	#65240f	#913112	#fff	2019-03-01 02:35:59.958881+00	2019-05-07 23:37:53.058663+00	32	4
221	Ceará Fênix	Fênix	FEN	ceara-fenix	logos/fenix.png	\N	\N	\N	#011945	#012b45	#ff3e00	2019-03-01 23:01:20.046721+00	2019-05-07 23:37:59.129606+00	32	4
224	Confiança Imortais	Imortais	IMO	confianca-imortais	logos/imortais.png	\N	\N	\N	#224c7c	#275994	#fff	2019-03-01 23:05:49.327882+00	2019-05-07 23:38:06.006737+00	1	4
22	Corupá Búffalos	Búffalos	BUF	corupa-buffalos	logos/corupa-buffalos.png	\N	https://www.facebook.com/Corup%C3%A1-BUFFALOS-228348157206852/	https://www.instagram.com/corupa.buffalos/	#8d0f24	#a01027	#fff	2018-10-21 00:10:50.383159+00	2019-05-07 23:38:17.204036+00	26	3
211	Curitiba Hurricanes	Hurricanes	HUR	curitiba-hurricanes	logos/hurricanes.png	\N	\N	\N	#005492	#005e92	#fff	2019-02-28 11:24:25.016367+00	2019-05-07 23:39:02.204388+00	29	4
213	Curitiba Predadores	Predadores	PRE	curitiba-predadores	logos/predadores.png	\N	\N	\N	#000	#080808	#fff	2019-02-28 11:38:21.392646+00	2019-05-07 23:39:15.940015+00	29	4
227	Desportiva Piratas	Piratas	PIR	desportiva-piratas	logos/desportiva.png	\N	\N	\N	#640f22	#641c22	#fff	2019-03-02 03:43:07.640887+00	2019-05-07 23:40:43.745407+00	114	4
218	Dragões do Mar	Dragões	DRA	dragoes-do-mar	logos/dragoes.png	\N	\N	\N	#006136	#006d36	#fff	2019-03-01 02:35:20.504896+00	2019-05-07 23:41:07.476243+00	32	4
232	Fluminense Guerreiros	Fluminense	FLU	fluminense-guerreiros	logos/fluminense.png	\N	\N	\N	#880015	#881c15	#fff	2019-03-02 20:51:48.540233+00	2019-05-07 23:43:09.532634+00	75	4
28	Foz do Iguaçu Black Sharks	Black Sharks	BSK	foz-do-iguacu-black-sharks	logos/foz-do-iguaçu-black-sharks.png	2008-11-15	https://www.facebook.com/Fozblacksharks/	https://www.instagram.com/fozblacksharks/	#000	#080808	#fff	2018-10-21 00:14:20.797306+00	2019-05-07 23:43:19.20576+00	33	3
228	Goiânia Tigres	Tigres	TIG	goiania-tigres	logos/gotigres.png	\N	\N	\N	#eb7c22	#eb8a22	#000	2019-03-02 03:43:41.316218+00	2019-05-07 23:44:29.708276+00	37	4
225	Itapema White Sharks	White Sharks	IWS	itapema-white-sharks	logos/itapema.png	\N	\N	\N	#46728a	#467d8a	#fff	2019-03-02 02:40:24.039971+00	2019-05-07 23:45:23.346958+00	116	4
220	Jacarés do Pantanal	Jacarés	JAC	jacares-do-pantanal	logos/jacares.png	\N	\N	\N	#04341c	#04481c	#fff	2019-03-01 22:38:30.429363+00	2019-05-07 23:45:31.066576+00	16	4
99	Joinville Gladiators	Gladiators	GLA	joinville-gladiators	logos/joinville-gladiators.png	2008-10-12	https://www.facebook.com/joinvillefutebolamericano/	https://www.instagram.com/joinvillegladiatorsoficial/	#3d3d3b	#706d6f	#fff	2018-10-31 01:22:42.794684+00	2019-05-07 23:45:38.28826+00	46	3
204	Magé Barões	Barões	BAR	mage-baroes	logos/baronato.png	\N	\N	\N	#175d40	#176a40	#fff	2019-02-28 10:47:43.164557+00	2019-05-07 23:47:08.142818+00	54	4
212	Mamutes	Mamutes	MAM	mamutes	logos/mams.png	\N	\N	\N	#c31d1d	#ef1f2f	#ffffff	2019-02-28 11:36:40.167631+00	2019-05-07 23:47:26.039709+00	75	4
231	Paulínia Mavericks	Mavericks	MAV	paulinia-mavericks	logos/mavericks.png	\N	\N	\N	#004429	#00713c	#fff	2019-03-02 20:51:02.903942+00	2019-05-07 23:50:54.864288+00	117	3
\.


--
-- Data for Name: team_teamcategory; Type: TABLE DATA; Schema: public; Owner: yxtdybtfwvyjom
--

COPY public.team_teamcategory (id, name, created, modified) FROM stdin;
2	2º Divisão	2019-05-05 05:37:58.417329+00	2019-05-05 05:37:58.41738+00
3	Outros	2019-05-05 05:38:04.144668+00	2019-05-05 05:38:04.144715+00
4	Inativos	2019-05-05 05:38:12.04048+00	2019-05-05 05:38:12.040534+00
1	1º Divisão	2019-05-05 05:37:54.114073+00	2019-05-05 20:18:39.023289+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 78, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: championship_campaign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.championship_campaign_id_seq', 540, true);


--
-- Name: championship_championship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.championship_championship_id_seq', 8, true);


--
-- Name: championship_championshipcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.championship_championshipcategory_id_seq', 3, true);


--
-- Name: championship_conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.championship_conference_id_seq', 83, true);


--
-- Name: championship_division_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.championship_division_id_seq', 131, true);


--
-- Name: championship_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.championship_game_id_seq', 31, true);


--
-- Name: championship_round_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.championship_round_id_seq', 89, true);


--
-- Name: championship_season_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.championship_season_id_seq', 35, true);


--
-- Name: core_region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.core_region_id_seq', 1, false);


--
-- Name: core_slide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.core_slide_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1765, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 26, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 49, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: news_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.news_news_id_seq', 66, true);


--
-- Name: news_news_tagTeam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public."news_news_tagTeam_id_seq"', 47, true);


--
-- Name: news_news_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.news_news_tag_id_seq', 1, false);


--
-- Name: team_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.team_player_id_seq', 2, true);


--
-- Name: team_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.team_position_id_seq', 21, true);


--
-- Name: team_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.team_team_id_seq', 236, true);


--
-- Name: team_teamcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yxtdybtfwvyjom
--

SELECT pg_catalog.setval('public.team_teamcategory_id_seq', 4, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: championship_campaign championship_campaign_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_campaign
    ADD CONSTRAINT championship_campaign_pkey PRIMARY KEY (id);


--
-- Name: championship_championship championship_championship_name_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_championship
    ADD CONSTRAINT championship_championship_name_key UNIQUE (name);


--
-- Name: championship_championship championship_championship_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_championship
    ADD CONSTRAINT championship_championship_pkey PRIMARY KEY (id);


--
-- Name: championship_championship championship_championship_shortName_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_championship
    ADD CONSTRAINT "championship_championship_shortName_key" UNIQUE ("shortName");


--
-- Name: championship_championshipcategory championship_championshipcategory_name_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_championshipcategory
    ADD CONSTRAINT championship_championshipcategory_name_key UNIQUE (name);


--
-- Name: championship_championshipcategory championship_championshipcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_championshipcategory
    ADD CONSTRAINT championship_championshipcategory_pkey PRIMARY KEY (id);


--
-- Name: championship_conference championship_conference_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_conference
    ADD CONSTRAINT championship_conference_pkey PRIMARY KEY (id);


--
-- Name: championship_division championship_division_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_division
    ADD CONSTRAINT championship_division_pkey PRIMARY KEY (id);


--
-- Name: championship_game championship_game_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_game
    ADD CONSTRAINT championship_game_pkey PRIMARY KEY (id);


--
-- Name: championship_round championship_round_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_round
    ADD CONSTRAINT championship_round_pkey PRIMARY KEY (id);


--
-- Name: championship_round championship_round_week_season_id_7d8b9359_uniq; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_round
    ADD CONSTRAINT championship_round_week_season_id_7d8b9359_uniq UNIQUE (phase, season_id);


--
-- Name: championship_season championship_season_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_season
    ADD CONSTRAINT championship_season_pkey PRIMARY KEY (id);


--
-- Name: championship_season championship_season_slug_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_season
    ADD CONSTRAINT championship_season_slug_key UNIQUE (slug);


--
-- Name: core_city core_city_name_uf_id_073e0ffa_uniq; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.core_city
    ADD CONSTRAINT core_city_name_uf_id_073e0ffa_uniq UNIQUE (name, uf_id);


--
-- Name: core_city core_city_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.core_city
    ADD CONSTRAINT core_city_pkey PRIMARY KEY (code);


--
-- Name: core_region core_region_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.core_region
    ADD CONSTRAINT core_region_pkey PRIMARY KEY (id);


--
-- Name: core_slide core_slide_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.core_slide
    ADD CONSTRAINT core_slide_pkey PRIMARY KEY (id);


--
-- Name: core_state core_state_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.core_state
    ADD CONSTRAINT core_state_pkey PRIMARY KEY (code);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: news_news news_news_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_news
    ADD CONSTRAINT news_news_pkey PRIMARY KEY (id);


--
-- Name: news_news news_news_slug_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_news
    ADD CONSTRAINT news_news_slug_key UNIQUE (slug);


--
-- Name: news_news_teamTag news_news_tagTeam_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public."news_news_teamTag"
    ADD CONSTRAINT "news_news_tagTeam_pkey" PRIMARY KEY (id);


--
-- Name: news_news_tag news_news_tag_news_id_tag_id_18568e71_uniq; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_news_tag
    ADD CONSTRAINT news_news_tag_news_id_tag_id_18568e71_uniq UNIQUE (news_id, tag_id);


--
-- Name: news_news_tag news_news_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_news_tag
    ADD CONSTRAINT news_news_tag_pkey PRIMARY KEY (id);


--
-- Name: news_news_teamTag news_news_tagteam_news_id_team_id_47640f08_uniq; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public."news_news_teamTag"
    ADD CONSTRAINT news_news_tagteam_news_id_team_id_47640f08_uniq UNIQUE (news_id, team_id);


--
-- Name: news_tag news_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_tag
    ADD CONSTRAINT news_tag_pkey PRIMARY KEY (name);


--
-- Name: team_player team_player_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_player
    ADD CONSTRAINT team_player_pkey PRIMARY KEY (id);


--
-- Name: team_player team_player_slug_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_player
    ADD CONSTRAINT team_player_slug_key UNIQUE (slug);


--
-- Name: team_position team_position_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_position
    ADD CONSTRAINT team_position_pkey PRIMARY KEY (id);


--
-- Name: team_team team_team_name_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_team
    ADD CONSTRAINT team_team_name_key UNIQUE (name);


--
-- Name: team_team team_team_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_team
    ADD CONSTRAINT team_team_pkey PRIMARY KEY (id);


--
-- Name: team_team team_team_slug_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_team
    ADD CONSTRAINT team_team_slug_key UNIQUE (slug);


--
-- Name: team_teamcategory team_teamcategory_name_key; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_teamcategory
    ADD CONSTRAINT team_teamcategory_name_key UNIQUE (name);


--
-- Name: team_teamcategory team_teamcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_teamcategory
    ADD CONSTRAINT team_teamcategory_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: championship_campaign_division_id_dfb2b6fb; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_campaign_division_id_dfb2b6fb ON public.championship_campaign USING btree (division_id);


--
-- Name: championship_campaign_team_id_9a1dbbcd; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_campaign_team_id_9a1dbbcd ON public.championship_campaign USING btree (team_id);


--
-- Name: championship_championship_category_id_7955c040; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_championship_category_id_7955c040 ON public.championship_championship USING btree (category_id);


--
-- Name: championship_championship_name_96a87621_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_championship_name_96a87621_like ON public.championship_championship USING btree (name varchar_pattern_ops);


--
-- Name: championship_championship_shortName_987613d7_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX "championship_championship_shortName_987613d7_like" ON public.championship_championship USING btree ("shortName" varchar_pattern_ops);


--
-- Name: championship_championshipcategory_name_c49e3c51_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_championshipcategory_name_c49e3c51_like ON public.championship_championshipcategory USING btree (name varchar_pattern_ops);


--
-- Name: championship_conference_season_id_994e087f; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_conference_season_id_994e087f ON public.championship_conference USING btree (season_id);


--
-- Name: championship_division_conference_id_53c9e768; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_division_conference_id_53c9e768 ON public.championship_division USING btree (conference_id);


--
-- Name: championship_game_place_id_5b9c3c65; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_game_place_id_5b9c3c65 ON public.championship_game USING btree (place_id);


--
-- Name: championship_game_teamA_id_918229e2; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX "championship_game_teamA_id_918229e2" ON public.championship_game USING btree ("teamA_id");


--
-- Name: championship_game_teamB_id_eee9d631; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX "championship_game_teamB_id_eee9d631" ON public.championship_game USING btree ("teamB_id");


--
-- Name: championship_game_week_id_e8ea8afd; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_game_week_id_e8ea8afd ON public.championship_game USING btree (week_id);


--
-- Name: championship_round_season_id_937b125e; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_round_season_id_937b125e ON public.championship_round USING btree (season_id);


--
-- Name: championship_round_slug_da60caa0; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_round_slug_da60caa0 ON public.championship_round USING btree (slug);


--
-- Name: championship_round_slug_da60caa0_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_round_slug_da60caa0_like ON public.championship_round USING btree (slug varchar_pattern_ops);


--
-- Name: championship_season_champion_id_6dc6e756; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_season_champion_id_6dc6e756 ON public.championship_season USING btree (champion_id);


--
-- Name: championship_season_championship_id_72041f82; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_season_championship_id_72041f82 ON public.championship_season USING btree (championship_id);


--
-- Name: championship_season_slug_40a8783c_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX championship_season_slug_40a8783c_like ON public.championship_season USING btree (slug varchar_pattern_ops);


--
-- Name: core_city_uf_id_4889c16a; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX core_city_uf_id_4889c16a ON public.core_city USING btree (uf_id);


--
-- Name: core_state_region_id_2f7289ec; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX core_state_region_id_2f7289ec ON public.core_state USING btree (region_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: news_news_author_id_9f88be71; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX news_news_author_id_9f88be71 ON public.news_news USING btree (author_id);


--
-- Name: news_news_slug_2b9132f1_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX news_news_slug_2b9132f1_like ON public.news_news USING btree (slug varchar_pattern_ops);


--
-- Name: news_news_tagTeam_news_id_394ab2a1; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX "news_news_tagTeam_news_id_394ab2a1" ON public."news_news_teamTag" USING btree (news_id);


--
-- Name: news_news_tagTeam_team_id_fb86a9d2; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX "news_news_tagTeam_team_id_fb86a9d2" ON public."news_news_teamTag" USING btree (team_id);


--
-- Name: news_news_tag_news_id_b67a7058; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX news_news_tag_news_id_b67a7058 ON public.news_news_tag USING btree (news_id);


--
-- Name: news_news_tag_tag_id_84dbef31; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX news_news_tag_tag_id_84dbef31 ON public.news_news_tag USING btree (tag_id);


--
-- Name: news_news_tag_tag_id_84dbef31_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX news_news_tag_tag_id_84dbef31_like ON public.news_news_tag USING btree (tag_id varchar_pattern_ops);


--
-- Name: news_tag_name_8821d338_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX news_tag_name_8821d338_like ON public.news_tag USING btree (name varchar_pattern_ops);


--
-- Name: team_player_position_id_b1a13799; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX team_player_position_id_b1a13799 ON public.team_player USING btree (position_id);


--
-- Name: team_player_slug_85482c4d_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX team_player_slug_85482c4d_like ON public.team_player USING btree (slug varchar_pattern_ops);


--
-- Name: team_player_team_id_031b9c1d; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX team_player_team_id_031b9c1d ON public.team_player USING btree (team_id);


--
-- Name: team_team_category_id_184e6e02; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX team_team_category_id_184e6e02 ON public.team_team USING btree (category_id);


--
-- Name: team_team_city_id_fab005c6; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX team_team_city_id_fab005c6 ON public.team_team USING btree (city_id);


--
-- Name: team_team_name_b365d91c_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX team_team_name_b365d91c_like ON public.team_team USING btree (name varchar_pattern_ops);


--
-- Name: team_team_slug_15c52a45_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX team_team_slug_15c52a45_like ON public.team_team USING btree (slug varchar_pattern_ops);


--
-- Name: team_teamcategory_name_c9edee09_like; Type: INDEX; Schema: public; Owner: yxtdybtfwvyjom
--

CREATE INDEX team_teamcategory_name_c9edee09_like ON public.team_teamcategory USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_campaign championship_campaig_division_id_dfb2b6fb_fk_champions; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_campaign
    ADD CONSTRAINT championship_campaig_division_id_dfb2b6fb_fk_champions FOREIGN KEY (division_id) REFERENCES public.championship_division(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_campaign championship_campaign_team_id_9a1dbbcd_fk_team_team_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_campaign
    ADD CONSTRAINT championship_campaign_team_id_9a1dbbcd_fk_team_team_id FOREIGN KEY (team_id) REFERENCES public.team_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_championship championship_champio_category_id_7955c040_fk_champions; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_championship
    ADD CONSTRAINT championship_champio_category_id_7955c040_fk_champions FOREIGN KEY (category_id) REFERENCES public.championship_championshipcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_conference championship_confere_season_id_994e087f_fk_champions; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_conference
    ADD CONSTRAINT championship_confere_season_id_994e087f_fk_champions FOREIGN KEY (season_id) REFERENCES public.championship_season(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_division championship_divisio_conference_id_53c9e768_fk_champions; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_division
    ADD CONSTRAINT championship_divisio_conference_id_53c9e768_fk_champions FOREIGN KEY (conference_id) REFERENCES public.championship_conference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_game championship_game_place_id_5b9c3c65_fk_core_city_code; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_game
    ADD CONSTRAINT championship_game_place_id_5b9c3c65_fk_core_city_code FOREIGN KEY (place_id) REFERENCES public.core_city(code) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_game championship_game_teamA_id_918229e2_fk_team_team_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_game
    ADD CONSTRAINT "championship_game_teamA_id_918229e2_fk_team_team_id" FOREIGN KEY ("teamA_id") REFERENCES public.team_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_game championship_game_teamB_id_eee9d631_fk_team_team_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_game
    ADD CONSTRAINT "championship_game_teamB_id_eee9d631_fk_team_team_id" FOREIGN KEY ("teamB_id") REFERENCES public.team_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_game championship_game_week_id_e8ea8afd_fk_championship_round_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_game
    ADD CONSTRAINT championship_game_week_id_e8ea8afd_fk_championship_round_id FOREIGN KEY (week_id) REFERENCES public.championship_round(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_round championship_round_season_id_937b125e_fk_championship_season_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_round
    ADD CONSTRAINT championship_round_season_id_937b125e_fk_championship_season_id FOREIGN KEY (season_id) REFERENCES public.championship_season(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_season championship_season_champion_id_6dc6e756_fk_team_team_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_season
    ADD CONSTRAINT championship_season_champion_id_6dc6e756_fk_team_team_id FOREIGN KEY (champion_id) REFERENCES public.team_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: championship_season championship_season_championship_id_72041f82_fk_champions; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.championship_season
    ADD CONSTRAINT championship_season_championship_id_72041f82_fk_champions FOREIGN KEY (championship_id) REFERENCES public.championship_championship(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_city core_city_uf_id_4889c16a_fk_core_state_code; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.core_city
    ADD CONSTRAINT core_city_uf_id_4889c16a_fk_core_state_code FOREIGN KEY (uf_id) REFERENCES public.core_state(code) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_state core_state_region_id_2f7289ec_fk_core_region_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.core_state
    ADD CONSTRAINT core_state_region_id_2f7289ec_fk_core_region_id FOREIGN KEY (region_id) REFERENCES public.core_region(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_news news_news_author_id_9f88be71_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_news
    ADD CONSTRAINT news_news_author_id_9f88be71_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_news_tag news_news_tag_news_id_b67a7058_fk_news_news_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_news_tag
    ADD CONSTRAINT news_news_tag_news_id_b67a7058_fk_news_news_id FOREIGN KEY (news_id) REFERENCES public.news_news(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_news_tag news_news_tag_tag_id_84dbef31_fk_news_tag_name; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.news_news_tag
    ADD CONSTRAINT news_news_tag_tag_id_84dbef31_fk_news_tag_name FOREIGN KEY (tag_id) REFERENCES public.news_tag(name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_news_teamTag news_news_teamTag_news_id_bc583116_fk_news_news_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public."news_news_teamTag"
    ADD CONSTRAINT "news_news_teamTag_news_id_bc583116_fk_news_news_id" FOREIGN KEY (news_id) REFERENCES public.news_news(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_news_teamTag news_news_teamTag_team_id_a82183ca_fk_team_team_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public."news_news_teamTag"
    ADD CONSTRAINT "news_news_teamTag_team_id_a82183ca_fk_team_team_id" FOREIGN KEY (team_id) REFERENCES public.team_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: team_player team_player_position_id_b1a13799_fk_team_position_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_player
    ADD CONSTRAINT team_player_position_id_b1a13799_fk_team_position_id FOREIGN KEY (position_id) REFERENCES public.team_position(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: team_player team_player_team_id_031b9c1d_fk_team_team_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_player
    ADD CONSTRAINT team_player_team_id_031b9c1d_fk_team_team_id FOREIGN KEY (team_id) REFERENCES public.team_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: team_team team_team_category_id_184e6e02_fk_team_teamcategory_id; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_team
    ADD CONSTRAINT team_team_category_id_184e6e02_fk_team_teamcategory_id FOREIGN KEY (category_id) REFERENCES public.team_teamcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: team_team team_team_city_id_fab005c6_fk_core_city_code; Type: FK CONSTRAINT; Schema: public; Owner: yxtdybtfwvyjom
--

ALTER TABLE ONLY public.team_team
    ADD CONSTRAINT team_team_city_id_fab005c6_fk_core_city_code FOREIGN KEY (city_id) REFERENCES public.core_city(code) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: yxtdybtfwvyjom
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO yxtdybtfwvyjom;


--
-- PostgreSQL database dump complete
--

