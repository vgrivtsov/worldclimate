--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.18
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

-- Started on 2020-05-21 16:09:06 +10

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

--
-- TOC entry 1 (class 3079 OID 12390)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 192 (class 1259 OID 16416)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- TOC entry 191 (class 1259 OID 16414)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 191
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 194 (class 1259 OID 16426)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- TOC entry 193 (class 1259 OID 16424)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 190 (class 1259 OID 16408)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- TOC entry 189 (class 1259 OID 16406)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 196 (class 1259 OID 16434)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin
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


ALTER TABLE public.auth_user OWNER TO admin;

--
-- TOC entry 198 (class 1259 OID 16444)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin;

--
-- TOC entry 197 (class 1259 OID 16442)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin;

--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 195 (class 1259 OID 16432)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin;

--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 200 (class 1259 OID 16452)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin;

--
-- TOC entry 199 (class 1259 OID 16450)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin;

--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 202 (class 1259 OID 16512)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
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


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- TOC entry 201 (class 1259 OID 16510)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- TOC entry 2313 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 188 (class 1259 OID 16398)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- TOC entry 187 (class 1259 OID 16396)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- TOC entry 2314 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 186 (class 1259 OID 16387)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- TOC entry 185 (class 1259 OID 16385)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 203 (class 1259 OID 16543)
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- TOC entry 205 (class 1259 OID 16555)
-- Name: django_site; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO admin;

--
-- TOC entry 204 (class 1259 OID 16553)
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO admin;

--
-- TOC entry 2316 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- TOC entry 207 (class 1259 OID 16566)
-- Name: worldclim_city; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.worldclim_city (
    id integer NOT NULL,
    name character varying(140) NOT NULL
);


ALTER TABLE public.worldclim_city OWNER TO admin;

--
-- TOC entry 206 (class 1259 OID 16564)
-- Name: worldclim_city_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.worldclim_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.worldclim_city_id_seq OWNER TO admin;

--
-- TOC entry 2317 (class 0 OID 0)
-- Dependencies: 206
-- Name: worldclim_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.worldclim_city_id_seq OWNED BY public.worldclim_city.id;


--
-- TOC entry 209 (class 1259 OID 16574)
-- Name: worldclim_climate; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.worldclim_climate (
    id integer NOT NULL,
    date_time date NOT NULL,
    temp integer,
    press numeric(5,2),
    hum integer,
    city_id integer,
    CONSTRAINT worldclim_climate_hum_check CHECK ((hum >= 0))
);


ALTER TABLE public.worldclim_climate OWNER TO admin;

--
-- TOC entry 208 (class 1259 OID 16572)
-- Name: worldclim_climate_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.worldclim_climate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.worldclim_climate_id_seq OWNER TO admin;

--
-- TOC entry 2318 (class 0 OID 0)
-- Dependencies: 208
-- Name: worldclim_climate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.worldclim_climate_id_seq OWNED BY public.worldclim_climate.id;


--
-- TOC entry 2079 (class 2604 OID 16419)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2080 (class 2604 OID 16429)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2078 (class 2604 OID 16411)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2081 (class 2604 OID 16437)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2082 (class 2604 OID 16447)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2083 (class 2604 OID 16455)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2084 (class 2604 OID 16515)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2077 (class 2604 OID 16401)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2076 (class 2604 OID 16390)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2086 (class 2604 OID 16558)
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- TOC entry 2087 (class 2604 OID 16569)
-- Name: worldclim_city id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.worldclim_city ALTER COLUMN id SET DEFAULT nextval('public.worldclim_city_id_seq'::regclass);


--
-- TOC entry 2088 (class 2604 OID 16577)
-- Name: worldclim_climate id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.worldclim_climate ALTER COLUMN id SET DEFAULT nextval('public.worldclim_climate_id_seq'::regclass);


--
-- TOC entry 2281 (class 0 OID 16416)
-- Dependencies: 192
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2283 (class 0 OID 16426)
-- Dependencies: 194
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2279 (class 0 OID 16408)
-- Dependencies: 190
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can view permission	1	view_permission
5	Can add group	2	add_group
6	Can change group	2	change_group
7	Can delete group	2	delete_group
8	Can view group	2	view_group
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add site	6	add_site
22	Can change site	6	change_site
23	Can delete site	6	delete_site
24	Can view site	6	view_site
25	Can add log entry	7	add_logentry
26	Can change log entry	7	change_logentry
27	Can delete log entry	7	delete_logentry
28	Can view log entry	7	view_logentry
29	Can add city	8	add_city
30	Can change city	8	change_city
31	Can delete city	8	delete_city
32	Can view city	8	view_city
33	Can add climate	9	add_climate
34	Can change climate	9	change_climate
35	Can delete climate	9	delete_climate
36	Can view climate	9	view_climate
\.


--
-- TOC entry 2285 (class 0 OID 16434)
-- Dependencies: 196
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 2287 (class 0 OID 16444)
-- Dependencies: 198
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2289 (class 0 OID 16452)
-- Dependencies: 200
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2291 (class 0 OID 16512)
-- Dependencies: 202
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 2277 (class 0 OID 16398)
-- Dependencies: 188
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	sessions	session
6	sites	site
7	admin	logentry
8	worldclim	city
9	worldclim	climate
\.


--
-- TOC entry 2275 (class 0 OID 16387)
-- Dependencies: 186
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-05-21 08:25:08.242874+03
2	auth	0001_initial	2020-05-21 08:25:08.327675+03
3	admin	0001_initial	2020-05-21 08:25:08.46354+03
4	admin	0002_logentry_remove_auto_add	2020-05-21 08:25:08.50346+03
5	admin	0003_logentry_add_action_flag_choices	2020-05-21 08:25:08.526178+03
6	contenttypes	0002_remove_content_type_name	2020-05-21 08:25:08.571719+03
7	auth	0002_alter_permission_name_max_length	2020-05-21 08:25:08.581418+03
8	auth	0003_alter_user_email_max_length	2020-05-21 08:25:08.597869+03
9	auth	0004_alter_user_username_opts	2020-05-21 08:25:08.626415+03
10	auth	0005_alter_user_last_login_null	2020-05-21 08:25:08.65214+03
11	auth	0006_require_contenttypes_0002	2020-05-21 08:25:08.656282+03
12	auth	0007_alter_validators_add_error_messages	2020-05-21 08:25:08.680715+03
13	auth	0008_alter_user_username_max_length	2020-05-21 08:25:08.712677+03
14	auth	0009_alter_user_last_name_max_length	2020-05-21 08:25:08.736032+03
15	auth	0010_alter_group_name_max_length	2020-05-21 08:25:08.757175+03
16	auth	0011_update_proxy_permissions	2020-05-21 08:25:08.778201+03
17	sessions	0001_initial	2020-05-21 08:25:08.801271+03
18	sites	0001_initial	2020-05-21 08:25:08.824806+03
19	sites	0002_alter_domain_unique	2020-05-21 08:25:08.844418+03
20	worldclim	0001_initial	2020-05-21 08:25:08.86725+03
21	worldclim	0002_auto_20200517_1236	2020-05-21 08:25:08.878697+03
22	worldclim	0003_auto_20200517_1421	2020-05-21 08:25:08.885795+03
23	worldclim	0004_auto_20200517_1550	2020-05-21 08:25:08.918637+03
\.


--
-- TOC entry 2292 (class 0 OID 16543)
-- Dependencies: 203
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 2294 (class 0 OID 16555)
-- Dependencies: 205
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- TOC entry 2296 (class 0 OID 16566)
-- Dependencies: 207
-- Data for Name: worldclim_city; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.worldclim_city (id, name) FROM stdin;
1	Москва
2	Санкт-Петербург
3	Владивосток
\.


--
-- TOC entry 2298 (class 0 OID 16574)
-- Dependencies: 209
-- Data for Name: worldclim_climate; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.worldclim_climate (id, date_time, temp, press, hum, city_id) FROM stdin;
48	2019-12-31	0	730.50	87	1
95	2019-12-30	-4	752.30	86	1
143	2019-12-29	-3	752.40	86	1
190	2019-12-28	-2	742.80	93	1
238	2019-12-27	-1	739.30	100	1
286	2019-12-26	0	740.20	100	1
334	2019-12-25	0	740.20	100	1
377	2019-12-24	6	737.50	100	1
425	2019-12-23	3	735.10	100	1
473	2019-12-22	2	737.30	87	1
520	2019-12-21	-1	744.30	80	1
568	2019-12-20	2	743.70	70	1
616	2019-12-19	6	733.80	93	1
663	2019-12-18	2	741.60	100	1
711	2019-12-17	3	738.10	93	1
759	2019-12-16	1	736.50	100	1
805	2019-12-15	-2	742.00	100	1
852	2019-12-14	1	743.70	87	1
900	2019-12-13	2	747.40	87	1
948	2019-12-12	0	750.30	87	1
996	2019-12-11	3	742.30	100	1
1043	2019-12-10	3	737.30	93	1
1091	2019-12-09	2	736.60	81	1
1139	2019-12-08	0	732.80	75	1
1187	2019-12-07	1	735.80	75	1
1235	2019-12-06	2	738.10	93	1
1278	2019-12-05	-1	736.40	100	1
1326	2019-12-04	-3	740.50	80	1
1373	2019-12-03	-3	739.20	93	1
1421	2019-12-02	-5	742.60	86	1
1469	2019-12-01	0	734.90	75	1
1515	2019-11-30	2	733.60	93	1
1563	2019-11-29	0	740.70	93	1
1610	2019-11-28	-2	743.50	93	1
1658	2019-11-27	-2	746.50	93	1
1705	2019-11-26	-10	751.90	85	1
1753	2019-11-25	-4	755.70	59	1
1801	2019-11-24	-5	760.20	54	1
1849	2019-11-23	-9	763.60	73	1
1896	2019-11-22	-7	766.00	73	1
1943	2019-11-21	-4	765.40	46	1
1988	2019-11-20	4	757.80	100	1
2034	2019-11-19	4	754.30	93	1
2082	2019-11-18	5	753.60	93	1
2129	2019-11-17	4	752.80	100	1
2175	2019-11-16	2	753.40	81	1
2220	2019-11-15	3	753.50	87	1
2264	2019-11-14	3	753.50	87	1
2311	2019-11-13	2	753.40	87	1
2359	2019-11-12	6	740.60	100	1
2405	2019-11-11	8	747.10	93	1
2452	2019-11-10	4	749.10	100	1
2500	2019-11-09	4	752.80	100	1
2548	2019-11-08	3	743.10	100	1
2596	2019-11-07	10	728.90	100	1
2644	2019-11-06	10	729.70	88	1
2692	2019-11-05	9	734.00	94	1
2740	2019-11-04	4	738.20	100	1
2788	2019-11-03	2	743.70	87	1
2834	2019-11-02	1	742.20	93	1
2882	2019-11-01	-3	746.40	74	1
2930	2019-10-31	-3	745.70	74	1
2978	2019-10-30	2	737.30	100	1
3025	2019-10-29	2	741.60	70	1
3073	2019-10-28	13	729.00	77	1
3119	2019-10-27	11	738.60	82	1
3167	2019-10-26	8	744.90	76	1
3215	2019-10-25	9	748.70	87	1
3263	2019-10-24	11	746.50	72	1
3311	2019-10-23	10	745.00	94	1
3359	2019-10-22	9	747.90	100	1
3407	2019-10-21	13	748.10	77	1
3455	2019-10-20	14	747.50	72	1
3503	2019-10-19	10	746.50	100	1
3551	2019-10-18	14	742.30	72	1
3599	2019-10-17	9	746.40	76	1
3647	2019-10-16	2	751.90	81	1
3695	2019-10-15	15	738.80	82	1
3741	2019-10-14	10	742.80	82	1
3788	2019-10-13	9	735.50	94	1
3836	2019-10-12	9	741.20	94	1
3883	2019-10-11	8	733.90	93	1
3931	2019-10-10	5	739.00	93	1
3979	2019-10-09	3	742.30	70	1
4027	2019-10-08	1	739.50	87	1
4073	2019-10-07	1	736.50	100	1
4121	2019-10-06	5	743.20	87	1
4169	2019-10-05	5	739.00	87	1
4217	2019-10-04	15	735.80	59	1
4265	2019-10-03	14	738.80	82	1
4310	2019-10-02	6	735.30	93	1
4358	2019-10-01	13	729.80	94	1
4406	2019-09-30	9	736.20	100	1
4454	2019-09-29	9	744.20	76	1
4502	2019-09-28	7	744.80	93	1
4550	2019-09-27	4	743.90	87	1
4598	2019-09-26	4	745.40	93	1
4645	2019-09-25	4	745.40	70	1
4691	2019-09-24	3	744.60	75	1
4739	2019-09-23	4	738.20	87	1
4787	2019-09-22	5	736.00	93	1
4835	2019-09-21	5	742.50	93	1
4883	2019-09-20	6	741.80	93	1
4931	2019-09-19	7	732.40	87	1
4979	2019-09-18	7	731.60	93	1
5027	2019-09-17	10	730.30	88	1
5075	2019-09-16	9	734.80	94	1
5123	2019-09-15	8	744.10	82	1
5171	2019-09-14	17	742.50	59	1
5219	2019-09-13	17	750.60	49	1
5267	2019-09-12	17	754.30	56	1
5315	2019-09-11	15	754.20	88	1
5363	2019-09-10	13	754.10	88	1
5410	2019-09-09	15	755.00	82	1
5456	2019-09-08	14	752.70	88	1
5504	2019-09-07	15	748.20	94	1
5552	2019-09-06	15	746.80	100	1
5600	2019-09-05	16	744.60	100	1
5647	2019-09-04	17	745.40	73	1
5695	2019-09-03	15	745.30	94	1
5743	2019-09-02	15	746.10	94	1
5791	2019-09-01	15	748.20	88	1
5839	2019-08-31	14	749.00	94	1
5886	2019-08-30	13	750.40	77	1
5931	2019-08-29	10	753.90	82	1
5979	2019-08-28	12	750.30	88	1
6027	2019-08-27	17	749.10	73	1
6075	2019-08-26	12	754.80	88	1
6123	2019-08-25	14	750.40	88	1
6171	2019-08-24	14	753.50	82	1
6219	2019-08-23	14	753.50	88	1
6267	2019-08-22	19	750.00	88	1
6315	2019-08-21	19	750.70	94	1
6363	2019-08-20	16	748.30	100	1
6411	2019-08-19	17	742.50	88	1
6459	2019-08-18	15	741.10	100	1
6507	2019-08-17	15	744.50	77	1
6554	2019-08-16	15	744.50	88	1
6602	2019-08-15	18	742.50	88	1
6650	2019-08-14	20	740.60	83	1
6698	2019-08-13	14	746.00	94	1
6746	2019-08-12	11	745.10	88	1
6794	2019-08-11	11	742.10	88	1
6842	2019-08-10	14	734.30	100	1
6890	2019-08-09	19	732.30	88	1
6937	2019-08-08	15	740.30	94	1
6985	2019-08-07	11	739.40	82	1
7033	2019-08-06	9	734.00	94	1
7081	2019-08-05	8	736.20	82	1
7129	2019-08-04	11	735.60	100	1
7177	2019-08-03	12	737.20	88	1
7225	2019-08-02	12	738.70	100	1
7273	2019-08-01	11	737.80	82	1
7321	2019-07-31	11	734.10	67	1
7369	2019-07-30	10	737.80	76	1
7417	2019-07-29	15	738.10	68	1
7465	2019-07-28	21	741.40	78	1
7513	2019-07-27	21	746.40	73	1
7561	2019-07-26	17	745.40	94	1
7609	2019-07-25	15	742.40	100	1
7655	2019-07-24	17	741.70	94	1
7703	2019-07-23	18	743.20	83	1
7751	2019-07-22	17	746.20	83	1
7799	2019-07-21	16	743.10	100	1
7847	2019-07-20	14	738.80	100	1
7893	2019-07-19	14	737.30	88	1
7941	2019-07-18	15	737.40	100	1
7988	2019-07-17	15	740.30	94	1
8036	2019-07-16	14	741.50	88	1
8084	2019-07-15	14	741.50	77	1
8132	2019-07-14	15	741.10	72	1
8180	2019-07-13	12	739.40	88	1
8228	2019-07-12	11	737.10	94	1
8276	2019-07-11	13	732.80	100	1
8324	2019-07-10	14	732.80	82	1
8372	2019-07-09	13	735.00	82	1
8420	2019-07-08	15	734.30	72	1
8468	2019-07-07	11	732.60	94	1
8516	2019-07-06	14	735.70	72	1
8564	2019-07-05	11	740.10	77	1
8612	2019-07-04	12	737.20	88	1
8660	2019-07-03	14	736.50	88	1
8708	2019-07-02	21	733.20	83	1
8756	2019-07-01	13	739.50	88	1
8804	2019-06-30	12	737.20	88	1
8852	2019-06-29	11	729.70	94	1
8898	2019-06-28	14	729.10	100	1
8946	2019-06-27	14	745.20	100	1
8994	2019-06-26	17	752.80	56	1
9042	2019-06-25	17	752.20	56	1
9090	2019-06-24	18	749.20	64	1
9138	2019-06-23	20	746.40	83	1
9186	2019-06-22	23	745.00	61	1
9234	2019-06-21	21	746.40	53	1
9282	2019-06-20	18	745.50	68	1
9330	2019-06-19	19	744.10	56	1
9378	2019-06-18	20	743.30	69	1
9425	2019-06-17	15	744.50	77	1
9473	2019-06-16	15	743.80	88	1
9521	2019-06-15	14	744.50	94	1
9569	2019-06-14	13	751.90	63	1
9617	2019-06-13	14	750.40	67	1
9665	2019-06-12	19	748.50	52	1
9713	2019-06-11	20	750.10	69	1
9761	2019-06-10	21	750.10	69	1
9809	2019-06-09	22	750.90	61	1
9857	2019-06-08	21	750.80	53	1
9905	2019-06-07	20	750.80	53	1
9953	2019-06-06	18	750.60	52	1
9998	2019-06-05	15	750.50	55	1
10046	2019-06-04	14	750.40	55	1
10094	2019-06-03	17	742.50	77	1
10142	2019-06-02	13	746.60	77	1
10190	2019-06-01	18	744.70	83	1
10238	2019-05-31	15	748.20	94	1
10282	2019-05-30	22	745.70	53	1
10330	2019-05-29	22	744.90	61	1
10378	2019-05-28	18	742.50	64	1
10426	2019-05-27	14	737.30	67	1
10474	2019-05-26	16	737.40	83	1
10522	2019-05-25	11	742.80	72	1
10570	2019-05-24	12	740.10	88	1
10618	2019-05-23	18	739.00	60	1
10666	2019-05-22	18	744.00	60	1
10714	2019-05-21	12	748.80	67	1
10762	2019-05-20	12	748.10	51	1
10810	2019-05-19	12	745.10	67	1
10858	2019-05-18	10	747.90	67	1
10906	2019-05-17	10	751.70	50	1
10954	2019-05-16	12	748.10	77	1
11002	2019-05-15	14	746.70	94	1
11050	2019-05-14	15	748.20	72	1
11098	2019-05-13	15	751.30	77	1
11146	2019-05-12	15	746.80	68	1
11194	2019-05-11	17	741.20	77	1
11242	2019-05-10	14	743.00	100	1
11290	2019-05-09	10	742.10	100	1
11338	2019-05-08	14	738.80	67	1
11386	2019-05-07	14	740.20	59	1
11434	2019-05-06	14	743.00	77	1
11482	2019-05-05	6	742.50	66	1
11529	2019-05-04	8	734.70	87	1
11577	2019-05-03	9	728.00	76	1
11625	2019-05-02	11	736.40	35	1
11673	2019-05-01	5	745.50	42	1
11721	2019-04-30	4	747.60	39	1
11768	2019-04-29	3	748.30	56	1
11815	2019-04-28	16	737.40	42	1
11863	2019-04-27	18	745.50	34	1
11911	2019-04-26	16	749.10	42	1
11959	2019-04-25	12	751.90	58	1
12007	2019-04-24	11	753.30	50	1
12055	2019-04-23	9	753.20	58	1
12103	2019-04-22	7	753.00	53	1
12151	2019-04-21	6	751.50	87	1
12199	2019-04-20	4	752.80	61	1
12247	2019-04-19	5	754.40	57	1
12295	2019-04-18	4	755.10	52	1
12342	2019-04-17	3	755.00	65	1
12390	2019-04-16	4	752.80	45	1
12438	2019-04-15	0	751.10	100	1
12485	2019-04-14	3	749.80	56	1
12533	2019-04-13	1	748.90	70	1
12581	2019-04-12	5	746.90	61	1
12629	2019-04-11	2	744.50	100	1
12676	2019-04-10	7	740.60	93	1
12724	2019-04-09	11	740.90	50	1
12772	2019-04-08	4	746.90	61	1
12820	2019-04-07	1	749.60	87	1
12868	2019-04-06	3	750.50	70	1
12916	2019-04-05	3	747.50	48	1
12964	2019-04-04	0	751.10	69	1
13012	2019-04-03	-1	753.20	75	1
13060	2019-04-02	-1	749.50	100	1
13108	2019-04-01	7	736.90	71	1
13156	2019-03-31	6	740.60	81	1
13204	2019-03-30	2	740.30	100	1
13252	2019-03-29	0	746.60	80	1
13300	2019-03-28	-1	745.10	86	1
13348	2019-03-27	0	737.90	80	1
13396	2019-03-26	1	736.50	65	1
13442	2019-03-25	0	737.20	100	1
13490	2019-03-24	0	745.90	75	1
13537	2019-03-23	0	740.70	87	1
13585	2019-03-22	2	745.30	81	1
13633	2019-03-21	0	748.10	87	1
13681	2019-03-20	3	747.50	100	1
13729	2019-03-19	2	746.00	87	1
13777	2019-03-18	1	743.70	87	1
13825	2019-03-17	0	736.50	80	1
13873	2019-03-16	0	740.20	80	1
13921	2019-03-15	0	742.10	69	1
13969	2019-03-14	-7	742.50	73	1
14017	2019-03-13	-4	736.20	86	1
14065	2019-03-12	-1	729.70	80	1
14113	2019-03-11	3	727.70	81	1
14161	2019-03-10	1	736.50	60	1
14209	2019-03-09	2	735.00	87	1
14257	2019-03-08	-2	743.50	64	1
14305	2019-03-07	-9	744.60	62	1
14353	2019-03-06	3	722.00	93	1
14401	2019-03-05	1	727.50	100	1
14449	2019-03-04	-7	729.30	86	1
14497	2019-03-03	-8	734.40	73	1
14545	2019-03-02	-7	730.10	79	1
14593	2019-03-01	0	718.80	93	1
14641	2019-02-28	-2	730.40	74	1
14689	2019-02-27	-1	740.10	100	1
14737	2019-02-26	1	734.30	93	1
14785	2019-02-25	0	742.90	100	1
14833	2019-02-24	-6	749.20	93	1
14881	2019-02-23	-8	752.10	73	1
14929	2019-02-22	-9	735.10	86	1
14977	2019-02-21	1	728.30	100	1
15025	2019-02-20	-1	736.40	55	1
15072	2019-02-19	-7	747.60	68	1
15119	2019-02-18	-1	734.80	69	1
15167	2019-02-17	1	736.50	87	1
15215	2019-02-16	2	740.30	87	1
15263	2019-02-15	-2	748.80	93	1
15311	2019-02-14	-4	743.30	80	1
15359	2019-02-13	1	740.20	93	1
15407	2019-02-12	-1	740.60	86	1
15455	2019-02-11	-5	741.80	86	1
15503	2019-02-10	-2	745.00	93	1
15551	2019-02-09	-1	745.80	80	1
15599	2019-02-08	-3	747.10	80	1
15646	2019-02-07	-3	744.20	80	1
15694	2019-02-06	-3	752.40	80	1
15742	2019-02-05	2	745.30	100	1
15790	2019-02-04	1	745.90	100	1
15838	2019-02-03	-4	747.10	93	1
15886	2019-02-02	-4	745.60	100	1
15934	2019-02-01	-1	743.50	100	1
15982	2019-01-31	-3	741.90	100	1
16030	2019-01-30	-2	741.30	93	1
16078	2019-01-29	-7	740.20	93	1
16124	2019-01-28	-10	737.30	92	1
16172	2019-01-27	-9	738.10	86	1
16220	2019-01-26	-12	751.00	85	1
16268	2019-01-25	-11	745.10	85	1
16315	2019-01-24	-14	745.70	85	1
16363	2019-01-23	-17	745.50	92	1
16411	2019-01-22	-14	739.30	85	1
16459	2019-01-21	-4	737.70	80	1
16507	2019-01-20	-10	740.80	85	1
16555	2019-01-19	1	729.80	93	1
16603	2019-01-18	-1	726.70	100	1
16651	2019-01-17	-6	731.60	86	1
16699	2019-01-16	-5	727.20	86	1
16747	2019-01-15	-2	723.90	86	1
16795	2019-01-14	-3	726.60	93	1
16843	2019-01-13	-9	726.20	93	1
16891	2019-01-12	-10	732.10	85	1
16939	2019-01-11	-8	744.60	93	1
16987	2019-01-10	-12	745.80	92	1
17034	2019-01-09	-9	739.60	93	1
17082	2019-01-08	-11	744.40	92	1
17130	2019-01-07	-11	748.80	85	1
17178	2019-01-06	-7	741.00	93	1
17226	2019-01-05	-5	740.40	100	1
17274	2019-01-04	-4	741.20	100	1
17322	2019-01-03	-3	737.70	93	1
17370	2019-01-02	-2	735.60	93	1
17418	2019-01-01	-5	749.20	93	1
17466	2019-12-31	4	740.20	87	2
17513	2019-12-30	-2	758.90	80	2
17561	2019-12-29	-4	773.80	80	2
17608	2019-12-28	0	767.30	87	2
17656	2019-12-27	1	757.40	87	2
17704	2019-12-26	3	754.70	87	2
17752	2019-12-25	4	752.40	93	2
17795	2019-12-24	4	750.10	93	2
17843	2019-12-23	5	746.30	93	2
17891	2019-12-22	2	745.60	87	2
17938	2019-12-21	1	753.90	87	2
17986	2019-12-20	1	761.20	87	2
18034	2019-12-19	2	736.70	87	2
18081	2019-12-18	3	753.20	93	2
18129	2019-12-17	3	750.90	87	2
18177	2019-12-16	0	746.30	100	2
18223	2019-12-15	2	750.90	81	2
18270	2019-12-14	1	752.30	87	2
18318	2019-12-13	0	753.90	93	2
18366	2019-12-12	-2	760.50	80	2
18414	2019-12-11	-3	759.70	86	2
18461	2019-12-10	5	743.30	81	2
18509	2019-12-09	1	736.70	93	2
18557	2019-12-08	1	735.20	93	2
18605	2019-12-07	5	741.00	87	2
18653	2019-12-06	5	744.80	81	2
18696	2019-12-05	4	750.10	93	2
18744	2019-12-04	-2	753.10	86	2
18791	2019-12-03	-3	750.80	93	2
18839	2019-12-02	0	749.30	75	2
18887	2019-12-01	-6	750.80	93	2
18933	2019-11-30	2	739.00	93	2
18981	2019-11-29	2	744.80	87	2
19028	2019-11-28	0	751.60	93	2
19076	2019-11-27	-2	756.70	80	2
19123	2019-11-26	-5	763.50	86	2
19171	2019-11-25	-9	768.00	86	2
19219	2019-11-24	-9	771.00	86	2
19267	2019-11-23	-6	773.80	63	2
19314	2019-11-22	-1	775.40	86	2
19361	2019-11-21	3	775.40	87	2
19406	2019-11-20	5	769.60	87	2
19452	2019-11-19	5	767.30	93	2
19500	2019-11-18	8	765.10	87	2
19547	2019-11-17	3	764.30	93	2
19593	2019-11-16	4	767.30	81	2
19638	2019-11-15	10	759.80	94	2
19682	2019-11-14	8	756.00	82	2
19729	2019-11-13	2	762.70	87	2
19777	2019-11-12	3	755.50	93	2
19823	2019-11-11	7	754.70	87	2
19870	2019-11-10	4	756.80	93	2
19918	2019-11-09	0	764.30	93	2
19966	2019-11-08	-5	758.20	93	2
20014	2019-11-07	-2	751.60	69	2
20062	2019-11-06	1	743.30	87	2
20110	2019-11-05	1	748.60	81	2
20158	2019-11-04	4	746.30	93	2
20206	2019-11-03	2	747.10	93	2
20252	2019-11-02	0	757.40	64	2
20300	2019-11-01	3	754.70	93	2
20348	2019-10-31	-3	764.30	80	2
20396	2019-10-30	-1	758.90	75	2
20443	2019-10-29	0	755.90	80	2
20491	2019-10-28	2	744.10	100	2
20537	2019-10-27	8	744.80	100	2
20585	2019-10-26	13	750.90	77	2
20633	2019-10-25	8	760.60	76	2
20681	2019-10-24	9	759.00	82	2
20729	2019-10-23	11	753.20	72	2
20777	2019-10-22	5	762.70	87	2
20825	2019-10-21	8	756.80	93	2
20873	2019-10-20	10	756.80	88	2
20921	2019-10-19	6	758.30	93	2
20969	2019-10-18	5	756.00	87	2
21017	2019-10-17	6	755.50	81	2
21065	2019-10-16	3	766.60	81	2
21113	2019-10-15	5	756.80	87	2
21159	2019-10-14	8	755.50	82	2
21207	2019-10-13	8	744.80	82	2
21255	2019-10-12	10	747.90	88	2
21303	2019-10-11	7	749.40	93	2
21351	2019-10-10	5	750.90	93	2
21399	2019-10-09	4	750.10	87	2
21447	2019-10-08	2	754.60	75	2
21493	2019-10-07	2	758.90	81	2
21541	2019-10-06	-2	761.20	93	2
21589	2019-10-05	2	754.00	81	2
21637	2019-10-04	4	751.70	87	2
21685	2019-10-03	6	752.40	81	2
21730	2019-10-02	6	740.20	93	2
21778	2019-10-01	11	739.10	94	2
21826	2019-09-30	10	744.10	94	2
21874	2019-09-29	8	754.70	93	2
21922	2019-09-28	8	760.60	87	2
21970	2019-09-27	8	759.00	82	2
22018	2019-09-26	4	759.00	93	2
22065	2019-09-25	4	760.50	70	2
22111	2019-09-24	5	761.30	61	2
22159	2019-09-23	4	760.50	75	2
22207	2019-09-22	6	751.70	87	2
22255	2019-09-21	5	757.50	81	2
22303	2019-09-20	4	756.80	75	2
22351	2019-09-19	4	753.20	81	2
22399	2019-09-18	8	744.80	87	2
22447	2019-09-17	9	741.80	76	2
22495	2019-09-16	11	739.10	88	2
22543	2019-09-15	9	757.50	76	2
22591	2019-09-14	11	752.40	94	2
22639	2019-09-13	14	758.30	82	2
22687	2019-09-12	16	761.30	63	2
22735	2019-09-11	18	765.10	78	2
22783	2019-09-10	14	765.10	100	2
22830	2019-09-09	13	768.20	82	2
22876	2019-09-08	11	767.40	82	2
22924	2019-09-07	12	761.30	82	2
22972	2019-09-06	14	756.80	82	2
23020	2019-09-05	15	757.50	77	2
23067	2019-09-04	13	759.80	88	2
23115	2019-09-03	16	756.90	88	2
23163	2019-09-02	16	759.80	72	2
23211	2019-09-01	14	762.80	82	2
23259	2019-08-31	18	762.20	83	2
23306	2019-08-30	15	762.80	77	2
23351	2019-08-29	16	767.40	72	2
23399	2019-08-28	14	768.20	77	2
23447	2019-08-27	16	763.60	94	2
23495	2019-08-26	14	767.40	82	2
23543	2019-08-25	13	766.70	88	2
23591	2019-08-24	16	760.60	88	2
23639	2019-08-23	15	765.90	72	2
23687	2019-08-22	15	762.80	100	2
23735	2019-08-21	17	764.40	77	2
23783	2019-08-20	17	758.40	83	2
23831	2019-08-19	14	757.50	88	2
23879	2019-08-18	13	760.60	77	2
23927	2019-08-17	12	760.60	82	2
23974	2019-08-16	13	756.80	88	2
24022	2019-08-15	15	754.10	82	2
24070	2019-08-14	15	754.10	88	2
24118	2019-08-13	16	756.90	100	2
24166	2019-08-12	16	757.50	94	2
24214	2019-08-11	14	759.00	82	2
24262	2019-08-10	13	754.70	94	2
24310	2019-08-09	16	749.50	100	2
24357	2019-08-08	14	752.40	82	2
24405	2019-08-07	10	753.20	82	2
24453	2019-08-06	10	750.10	88	2
24501	2019-08-05	12	750.90	67	2
24549	2019-08-04	10	754.70	82	2
24597	2019-08-03	13	754.00	88	2
24645	2019-08-02	12	756.00	82	2
24693	2019-08-01	12	756.80	77	2
24741	2019-07-31	10	751.70	82	2
24789	2019-07-30	12	755.50	63	2
24837	2019-07-29	14	758.30	55	2
24885	2019-07-28	22	758.40	73	2
24933	2019-07-27	21	763.70	73	2
24981	2019-07-26	19	762.20	83	2
25029	2019-07-25	15	759.00	72	2
25075	2019-07-24	17	757.60	68	2
25123	2019-07-23	16	758.30	68	2
25171	2019-07-22	15	760.60	77	2
25219	2019-07-21	16	759.00	83	2
25267	2019-07-20	16	753.30	94	2
25313	2019-07-19	16	751.00	94	2
25361	2019-07-18	16	753.30	88	2
25407	2019-07-17	17	754.80	64	2
25455	2019-07-16	13	755.50	77	2
25503	2019-07-15	12	756.00	77	2
25551	2019-07-14	11	754.70	72	2
25599	2019-07-13	11	753.20	88	2
25647	2019-07-12	7	754.00	81	2
25695	2019-07-11	12	752.40	67	2
25743	2019-07-10	12	750.10	94	2
25791	2019-07-09	14	749.50	88	2
25839	2019-07-08	13	747.20	77	2
25887	2019-07-07	12	747.10	77	2
25935	2019-07-06	11	743.40	88	2
25983	2019-07-05	10	751.70	71	2
26031	2019-07-04	14	748.00	88	2
26079	2019-07-03	16	746.40	77	2
26127	2019-07-02	16	746.40	77	2
26175	2019-07-01	15	751.00	77	2
26223	2019-06-30	16	750.20	68	2
26271	2019-06-29	14	754.70	51	2
26317	2019-06-28	15	751.80	88	2
26365	2019-06-27	14	757.50	77	2
26413	2019-06-26	15	765.90	59	2
26461	2019-06-25	14	768.20	72	2
26509	2019-06-24	14	764.40	59	2
26557	2019-06-23	14	761.30	77	2
26605	2019-06-22	20	755.60	94	2
26653	2019-06-21	21	756.90	73	2
26701	2019-06-20	17	758.40	73	2
26749	2019-06-19	14	759.00	67	2
26797	2019-06-18	17	756.10	73	2
26844	2019-06-17	15	757.50	82	2
26892	2019-06-16	14	759.00	88	2
26940	2019-06-15	15	759.80	88	2
26988	2019-06-14	14	762.10	82	2
27036	2019-06-13	12	768.20	54	2
27084	2019-06-12	15	763.60	77	2
27132	2019-06-11	14	763.60	63	2
27180	2019-06-10	14	763.60	63	2
27228	2019-06-09	22	761.40	65	2
27276	2019-06-08	19	762.90	73	2
27324	2019-06-07	21	762.90	69	2
27372	2019-06-06	19	762.90	64	2
27417	2019-06-05	20	759.90	56	2
27465	2019-06-04	11	762.10	58	2
27513	2019-06-03	9	758.30	87	2
27561	2019-06-02	14	756.80	51	2
27609	2019-06-01	8	758.30	66	2
27657	2019-05-31	8	762.80	50	2
27701	2019-05-30	8	758.30	62	2
27749	2019-05-29	14	754.00	94	2
27797	2019-05-28	11	751.70	88	2
27845	2019-05-27	9	746.30	87	2
27893	2019-05-26	10	748.60	88	2
27941	2019-05-25	12	754.00	67	2
27989	2019-05-24	8	758.30	62	2
28037	2019-05-23	16	752.50	83	2
28085	2019-05-22	15	756.80	88	2
28133	2019-05-21	17	759.10	64	2
28181	2019-05-20	13	762.10	72	2
28229	2019-05-19	12	762.80	72	2
28277	2019-05-18	10	765.10	67	2
28325	2019-05-17	9	768.20	71	2
28372	2019-05-16	5	769.60	76	2
28420	2019-05-15	7	768.10	81	2
28468	2019-05-14	14	766.70	48	2
28516	2019-05-13	9	767.40	87	2
28564	2019-05-12	11	751.70	88	2
28612	2019-05-11	15	756.00	72	2
28660	2019-05-10	10	759.00	67	2
28708	2019-05-09	4	760.50	75	2
28756	2019-05-08	5	755.50	93	2
28804	2019-05-07	6	757.50	66	2
28852	2019-05-06	2	756.70	93	2
28900	2019-05-05	4	751.70	87	2
28947	2019-05-04	3	745.60	60	2
28995	2019-05-03	7	730.70	81	2
29043	2019-05-02	9	744.10	50	2
29091	2019-05-01	4	759.00	61	2
29139	2019-04-30	0	765.00	69	2
29186	2019-04-29	4	767.30	48	2
29233	2019-04-28	6	760.60	57	2
29281	2019-04-27	11	758.30	62	2
29329	2019-04-26	12	765.10	38	2
29377	2019-04-25	9	767.40	54	2
29425	2019-04-24	10	768.20	54	2
29473	2019-04-23	11	768.20	50	2
29521	2019-04-22	4	768.10	65	2
29569	2019-04-21	2	768.80	81	2
29617	2019-04-20	10	768.90	50	2
29665	2019-04-19	2	773.20	70	2
29713	2019-04-18	5	771.60	66	2
29760	2019-04-17	5	773.90	66	2
29808	2019-04-16	2	771.60	75	2
29856	2019-04-15	4	773.20	45	2
29903	2019-04-14	3	772.40	60	2
29951	2019-04-13	2	769.60	60	2
29999	2019-04-12	-1	766.60	75	2
30047	2019-04-11	0	759.70	87	2
30094	2019-04-10	1	754.60	93	2
30142	2019-04-09	1	751.60	93	2
30190	2019-04-08	6	756.80	49	2
30238	2019-04-07	2	763.50	65	2
30286	2019-04-06	5	767.30	45	2
30334	2019-04-05	5	762.70	45	2
30382	2019-04-04	2	765.80	35	2
30430	2019-04-03	-2	768.80	74	2
30478	2019-04-02	-1	765.80	80	2
30526	2019-04-01	1	753.10	93	2
30574	2019-03-31	5	751.70	81	2
30622	2019-03-30	5	752.40	81	2
30670	2019-03-29	6	758.30	66	2
30718	2019-03-28	-3	762.70	64	2
30766	2019-03-27	-2	755.40	80	2
30814	2019-03-26	0	747.90	100	2
30860	2019-03-25	1	750.90	70	2
30908	2019-03-24	4	754.00	93	2
30955	2019-03-23	2	766.60	60	2
31003	2019-03-22	4	754.00	87	2
31051	2019-03-21	1	757.40	93	2
31099	2019-03-20	1	758.20	93	2
31147	2019-03-19	2	753.20	93	2
31195	2019-03-18	3	750.10	81	2
31243	2019-03-17	1	748.60	81	2
31291	2019-03-16	2	746.30	87	2
31339	2019-03-15	0	749.30	80	2
31387	2019-03-14	-2	755.40	69	2
31435	2019-03-13	-4	751.60	93	2
31483	2019-03-12	-6	743.20	80	2
31531	2019-03-11	-2	739.70	80	2
31579	2019-03-10	1	741.80	87	2
31627	2019-03-09	3	738.20	93	2
31675	2019-03-08	0	746.30	93	2
31723	2019-03-07	-6	755.90	58	2
31771	2019-03-06	-9	742.40	79	2
31819	2019-03-05	-2	737.40	86	2
31867	2019-03-04	-9	744.00	86	2
31915	2019-03-03	-1	739.70	80	2
31963	2019-03-02	-7	752.30	68	2
32011	2019-03-01	-4	741.70	74	2
32059	2019-02-28	2	741.00	81	2
32107	2019-02-27	-1	762.70	75	2
32155	2019-02-26	3	754.70	75	2
32203	2019-02-25	2	756.70	93	2
32251	2019-02-24	1	764.30	93	2
32299	2019-02-23	-9	775.30	79	2
32347	2019-02-22	-7	766.50	68	2
32395	2019-02-21	-4	745.50	86	2
32443	2019-02-20	2	741.80	93	2
32490	2019-02-19	0	755.90	55	2
32538	2019-02-18	-2	760.50	55	2
32586	2019-02-17	3	747.10	81	2
32634	2019-02-16	2	757.40	87	2
32682	2019-02-15	2	756.70	87	2
32730	2019-02-14	-1	756.70	86	2
32777	2019-02-13	-3	753.90	86	2
32825	2019-02-12	1	745.60	87	2
32873	2019-02-11	2	748.60	87	2
32921	2019-02-10	2	750.10	81	2
32969	2019-02-09	2	752.40	87	2
33017	2019-02-08	-1	757.40	93	2
33064	2019-02-07	-9	761.10	86	2
33112	2019-02-06	-2	761.20	80	2
33160	2019-02-05	-5	761.20	86	2
33208	2019-02-04	1	757.40	93	2
33256	2019-02-03	-3	760.50	93	2
33304	2019-02-02	-4	761.20	93	2
33352	2019-02-01	-10	760.40	92	2
33400	2019-01-31	0	755.90	93	2
33448	2019-01-30	-3	749.30	93	2
33496	2019-01-29	-12	753.00	85	2
33542	2019-01-28	-16	754.50	85	2
33590	2019-01-27	-12	750.70	85	2
33638	2019-01-26	-14	762.60	85	2
33686	2019-01-25	-18	765.60	78	2
33733	2019-01-24	-6	754.60	86	2
33781	2019-01-23	-16	758.80	85	2
33829	2019-01-22	-17	758.80	85	2
33877	2019-01-21	-14	752.20	78	2
33925	2019-01-20	-5	749.30	86	2
33973	2019-01-19	-11	747.00	85	2
34021	2019-01-18	-3	734.40	93	2
34069	2019-01-17	-4	743.20	80	2
34117	2019-01-16	-4	736.70	86	2
34165	2019-01-15	1	729.80	93	2
34213	2019-01-14	-3	733.60	93	2
34261	2019-01-13	-7	739.60	93	2
34309	2019-01-12	0	737.40	93	2
34357	2019-01-11	-5	757.40	86	2
34405	2019-01-10	-5	757.40	93	2
34452	2019-01-09	-3	750.00	93	2
34500	2019-01-08	-1	754.60	86	2
34548	2019-01-07	-4	763.50	86	2
34596	2019-01-06	-4	762.00	86	2
34644	2019-01-05	-7	754.60	93	2
34692	2019-01-04	-5	763.50	86	2
34740	2019-01-03	-2	751.60	86	2
34788	2019-01-02	1	737.40	93	2
34836	2019-01-01	-2	758.90	86	2
34884	2019-12-31	-14	764.40	56	3
34931	2019-12-30	-5	764.40	74	3
34979	2019-12-29	-17	771.30	71	3
35026	2019-12-28	-19	768.20	65	3
35074	2019-12-27	-15	763.60	60	3
35122	2019-12-26	-9	765.90	79	3
35166	2019-12-25	-18	771.30	65	3
35213	2019-12-24	-15	769.70	66	3
35261	2019-12-23	-12	765.90	72	3
35309	2019-12-22	-13	766.70	78	3
35356	2019-12-21	-18	768.20	84	3
35404	2019-12-20	-19	767.50	77	3
35452	2019-12-19	-16	768.20	78	3
35499	2019-12-18	-3	762.90	50	3
35547	2019-12-17	-1	761.50	80	3
35592	2019-12-16	-2	766.70	69	3
35640	2019-12-15	-14	772.00	72	3
35686	2019-12-14	-5	762.10	74	3
35734	2019-12-13	-20	767.40	84	3
35782	2019-12-12	-7	757.60	73	3
35830	2019-12-11	-6	762.10	80	3
35877	2019-12-10	-1	762.20	100	3
35925	2019-12-09	-7	767.50	63	3
35973	2019-12-08	-16	768.20	66	3
36021	2019-12-07	-16	768.20	78	3
36064	2019-12-06	-14	774.10	39	3
36112	2019-12-05	-15	770.50	35	3
36160	2019-12-04	-14	765.20	43	3
36207	2019-12-03	-10	760.60	44	3
36255	2019-12-02	-5	762.90	63	3
36303	2019-12-01	-4	765.20	86	3
36349	2019-11-30	-14	774.10	78	3
36397	2019-11-29	-15	773.30	78	3
36444	2019-11-28	-10	775.60	44	3
36487	2019-11-27	-2	767.50	93	3
36533	2019-11-26	-13	774.80	78	3
36581	2019-11-25	-5	768.20	54	3
36629	2019-11-24	7	764.50	100	3
36677	2019-11-23	-1	768.20	100	3
36724	2019-11-22	-9	772.00	93	3
36770	2019-11-21	-16	771.30	85	3
36816	2019-11-20	-10	765.90	48	3
36862	2019-11-19	-10	759.80	52	3
36909	2019-11-18	-1	760.70	51	3
36957	2019-11-17	-6	766.70	32	3
37001	2019-11-16	-8	762.10	53	3
37046	2019-11-15	-11	762.10	85	3
37092	2019-11-14	-2	755.60	69	3
37139	2019-11-13	0	763.70	64	3
37187	2019-11-12	5	758.40	53	3
37233	2019-11-11	8	754.10	87	3
37280	2019-11-10	-7	763.60	68	3
37328	2019-11-09	1	764.50	23	3
37376	2019-11-08	-4	763.60	39	3
37424	2019-11-07	-1	758.40	59	3
37472	2019-11-06	3	761.50	28	3
37520	2019-11-05	-3	762.90	64	3
37568	2019-11-04	-1	767.60	55	3
37616	2019-11-03	4	765.30	36	3
37662	2019-11-02	2	765.30	48	3
37710	2019-11-01	8	759.20	27	3
37758	2019-10-31	7	758.40	71	3
37806	2019-10-30	1	759.20	75	3
37852	2019-10-29	14	754.10	67	3
37899	2019-10-28	0	759.90	93	3
37946	2019-10-27	-1	760.70	100	3
37994	2019-10-26	12	758.40	100	3
38042	2019-10-25	4	767.60	93	3
38090	2019-10-24	7	766.80	66	3
38138	2019-10-23	4	764.50	75	3
38186	2019-10-22	3	764.50	70	3
38234	2019-10-21	12	762.20	88	3
38282	2019-10-20	9	763.00	87	3
38330	2019-10-19	6	768.30	76	3
38378	2019-10-18	0	771.30	80	3
38426	2019-10-17	1	768.30	75	3
38474	2019-10-16	-2	767.50	86	3
38522	2019-10-15	2	772.10	44	3
38570	2019-10-14	7	767.60	53	3
38618	2019-10-13	3	767.60	48	3
38666	2019-10-12	7	766.80	49	3
38714	2019-10-11	13	759.90	100	3
38762	2019-10-10	9	759.20	94	3
38810	2019-10-09	11	756.90	38	3
38856	2019-10-08	13	757.70	88	3
38903	2019-10-07	7	766.80	76	3
38951	2019-10-06	2	767.60	75	3
38999	2019-10-05	8	763.00	76	3
39047	2019-10-04	12	759.20	88	3
39091	2019-10-03	19	760.00	94	3
39139	2019-10-02	16	763.70	100	3
39187	2019-10-01	14	761.50	94	3
39235	2019-09-30	12	759.20	100	3
39283	2019-09-29	17	759.90	88	3
39331	2019-09-28	17	765.30	94	3
39379	2019-09-27	15	766.80	100	3
39427	2019-09-26	8	766.00	93	3
39472	2019-09-25	5	763.00	87	3
39520	2019-09-24	8	758.40	87	3
39568	2019-09-23	12	763.00	72	3
39616	2019-09-22	8	766.00	93	3
39664	2019-09-21	8	763.70	100	3
39712	2019-09-20	8	761.50	57	3
39760	2019-09-19	4	762.20	93	3
39807	2019-09-18	12	757.70	82	3
39854	2019-09-17	13	759.90	72	3
39902	2019-09-16	10	757.70	100	3
39950	2019-09-15	11	758.40	88	3
39998	2019-09-14	18	758.50	83	3
40046	2019-09-13	11	763.00	100	3
40093	2019-09-12	11	764.50	94	3
40141	2019-09-11	15	761.50	94	3
40188	2019-09-10	17	757.00	100	3
40234	2019-09-09	19	754.20	100	3
40282	2019-09-08	25	750.40	74	3
40330	2019-09-07	21	758.50	100	3
40378	2019-09-06	19	758.50	100	3
40426	2019-09-05	19	762.30	100	3
40473	2019-09-04	19	761.60	100	3
40521	2019-09-03	19	761.60	94	3
40569	2019-09-02	18	760.00	94	3
40617	2019-09-01	15	758.40	100	3
40665	2019-08-31	18	753.40	94	3
40709	2019-08-30	19	752.70	88	3
40757	2019-08-29	17	753.40	100	3
40805	2019-08-28	19	755.70	100	3
40853	2019-08-27	19	758.50	100	3
40901	2019-08-26	18	758.50	100	3
40949	2019-08-25	17	757.80	100	3
40997	2019-08-24	18	754.20	100	3
41045	2019-08-23	18	753.40	100	3
41093	2019-08-22	18	755.00	100	3
41141	2019-08-21	18	757.00	94	3
41189	2019-08-20	18	759.30	94	3
41237	2019-08-19	19	755.70	94	3
41285	2019-08-18	20	749.60	94	3
41333	2019-08-17	21	742.80	100	3
41380	2019-08-16	20	745.10	100	3
41428	2019-08-15	19	752.70	94	3
41475	2019-08-14	19	755.70	100	3
41523	2019-08-13	18	755.00	100	3
41571	2019-08-12	18	757.00	100	3
41619	2019-08-11	18	758.50	94	3
41667	2019-08-10	19	756.50	94	3
41714	2019-08-09	23	753.40	100	3
41762	2019-08-08	22	754.20	100	3
41810	2019-08-07	24	756.50	94	3
41858	2019-08-06	23	757.00	100	3
41906	2019-08-05	23	756.50	100	3
41954	2019-08-04	22	757.80	94	3
42002	2019-08-03	21	757.00	100	3
42050	2019-08-02	22	754.20	100	3
42098	2019-08-01	21	752.70	100	3
42146	2019-07-31	23	748.90	100	3
42193	2019-07-30	22	751.90	100	3
42241	2019-07-29	22	751.90	100	3
42289	2019-07-28	21	753.40	100	3
42336	2019-07-27	18	751.90	100	3
42384	2019-07-26	19	753.40	100	3
42432	2019-07-25	23	751.90	89	3
42479	2019-07-24	22	750.40	94	3
42527	2019-07-23	20	749.60	100	3
42575	2019-07-22	22	750.40	100	3
42623	2019-07-21	24	757.00	89	3
42669	2019-07-20	21	756.50	100	3
42717	2019-07-19	20	754.20	100	3
42765	2019-07-18	19	757.00	100	3
42812	2019-07-17	17	758.40	94	3
42860	2019-07-16	17	758.40	100	3
42907	2019-07-15	18	754.20	94	3
42955	2019-07-14	17	752.70	100	3
43003	2019-07-13	18	750.40	94	3
43051	2019-07-12	16	755.00	94	3
43099	2019-07-11	13	759.90	94	3
43147	2019-07-10	17	758.40	88	3
43195	2019-07-09	15	756.90	100	3
43243	2019-07-08	14	759.20	100	3
43291	2019-07-07	15	758.40	94	3
43339	2019-07-06	16	755.00	94	3
43387	2019-07-05	16	753.40	100	3
43435	2019-07-04	18	754.20	88	3
43483	2019-07-03	16	755.00	100	3
43531	2019-07-02	14	752.60	88	3
43579	2019-07-01	15	750.40	100	3
43627	2019-06-30	12	750.30	100	3
43673	2019-06-29	12	751.80	100	3
43721	2019-06-28	13	751.80	88	3
43769	2019-06-27	19	753.40	94	3
43817	2019-06-26	17	759.20	94	3
43865	2019-06-25	17	759.20	88	3
43913	2019-06-24	15	756.40	100	3
43961	2019-06-23	14	756.40	94	3
44009	2019-06-22	14	754.90	94	3
44057	2019-06-21	12	753.30	100	3
44105	2019-06-20	15	751.10	94	3
44151	2019-06-19	13	753.30	100	3
44199	2019-06-18	12	756.40	94	3
44241	2019-06-17	8	755.60	100	3
44289	2019-06-16	13	752.60	100	3
44337	2019-06-15	15	752.60	100	3
44385	2019-06-14	14	754.10	100	3
44433	2019-06-13	13	756.40	82	3
44480	2019-06-12	10	756.40	100	3
44528	2019-06-11	12	757.70	88	3
44576	2019-06-10	12	757.70	88	3
44624	2019-06-09	13	756.90	88	3
44672	2019-06-08	13	755.60	88	3
44720	2019-06-07	15	756.90	94	3
44765	2019-06-06	13	757.70	94	3
44813	2019-06-05	13	756.40	100	3
44861	2019-06-04	15	754.10	94	3
44909	2019-06-03	12	752.60	100	3
44957	2019-06-02	11	753.30	77	3
45005	2019-06-01	10	750.30	94	3
45049	2019-05-31	13	750.30	88	3
45097	2019-05-30	13	751.00	82	3
45145	2019-05-29	8	748.80	87	3
45193	2019-05-28	15	742.00	88	3
45241	2019-05-27	18	754.20	49	3
45289	2019-05-26	13	754.90	88	3
45337	2019-05-25	10	754.10	88	3
45385	2019-05-24	10	754.10	88	3
45433	2019-05-23	10	749.50	100	3
45481	2019-05-22	9	746.50	94	3
45529	2019-05-21	8	745.00	100	3
45577	2019-05-20	15	753.30	88	3
45625	2019-05-19	15	759.90	88	3
45673	2019-05-18	11	758.40	100	3
45721	2019-05-17	12	757.70	100	3
45769	2019-05-16	10	757.70	88	3
45817	2019-05-15	7	759.20	100	3
45865	2019-05-14	10	759.90	88	3
45913	2019-05-13	7	763.00	87	3
45961	2019-05-12	7	763.70	81	3
46009	2019-05-11	10	757.70	62	3
46057	2019-05-10	9	754.10	62	3
46105	2019-05-09	9	748.00	71	3
46153	2019-05-08	6	752.60	71	3
46201	2019-05-07	4	756.40	75	3
46249	2019-05-06	6	759.90	81	3
46297	2019-05-05	11	759.90	88	3
46344	2019-05-04	7	759.90	66	3
46392	2019-05-03	4	756.90	75	3
46440	2019-05-02	10	750.30	47	3
46488	2019-05-01	9	754.10	71	3
46535	2019-04-30	8	759.90	76	3
46583	2019-04-29	8	761.50	71	3
46630	2019-04-28	4	761.50	70	3
46678	2019-04-27	0	761.50	93	3
46726	2019-04-26	8	758.40	46	3
46774	2019-04-25	5	757.70	76	3
46822	2019-04-24	8	756.40	100	3
46870	2019-04-23	10	759.90	25	3
46918	2019-04-22	2	759.20	60	3
46966	2019-04-21	7	756.40	76	3
47014	2019-04-20	2	759.90	32	3
47062	2019-04-19	4	759.20	39	3
47109	2019-04-18	8	750.30	57	3
47157	2019-04-17	4	755.60	81	3
47205	2019-04-16	5	758.40	66	3
47253	2019-04-15	5	755.60	66	3
47298	2019-04-14	3	759.20	93	3
47346	2019-04-13	3	759.90	70	3
47394	2019-04-12	-1	757.70	69	3
47442	2019-04-11	0	757.70	80	3
47489	2019-04-10	2	763.00	70	3
47537	2019-04-09	2	761.50	87	3
47585	2019-04-08	-1	756.40	69	3
47633	2019-04-07	0	754.10	100	3
47681	2019-04-06	2	752.60	60	3
47729	2019-04-05	6	749.50	36	3
47777	2019-04-04	2	756.40	70	3
47825	2019-04-03	-3	762.90	54	3
47873	2019-04-02	-5	761.40	86	3
47920	2019-04-01	-2	761.50	86	3
47968	2019-03-31	0	758.40	87	3
48016	2019-03-30	0	763.00	87	3
48064	2019-03-29	-4	760.60	50	3
48112	2019-03-28	-4	757.70	50	3
48160	2019-03-27	0	759.90	40	3
48208	2019-03-26	0	752.60	87	3
48254	2019-03-25	2	754.10	70	3
48302	2019-03-24	-7	760.60	73	3
48349	2019-03-23	-7	762.10	58	3
48397	2019-03-22	-4	755.60	86	3
48445	2019-03-21	4	754.10	52	3
48493	2019-03-20	2	756.40	70	3
48541	2019-03-19	-2	754.90	80	3
48589	2019-03-18	-1	761.50	80	3
48637	2019-03-17	-7	762.10	68	3
48685	2019-03-16	-5	760.60	74	3
48733	2019-03-15	-4	761.40	74	3
48781	2019-03-14	-7	758.30	68	3
48829	2019-03-13	-2	754.10	47	3
48877	2019-03-12	-2	752.60	80	3
48925	2019-03-11	-4	759.10	46	3
48973	2019-03-10	0	763.00	37	3
49021	2019-03-09	1	760.70	93	3
49069	2019-03-08	-5	762.10	46	3
49117	2019-03-07	-3	762.10	31	3
49165	2019-03-06	-1	761.50	100	3
49213	2019-03-05	-3	761.50	86	3
49261	2019-03-04	-2	759.20	86	3
49309	2019-03-03	-3	760.70	74	3
49357	2019-03-02	-6	762.10	54	3
49405	2019-03-01	-4	760.60	74	3
49453	2019-02-28	0	762.20	75	3
49501	2019-02-27	-9	768.20	53	3
49548	2019-02-26	-8	764.40	41	3
49596	2019-02-25	1	759.90	27	3
49644	2019-02-24	-5	763.60	74	3
49692	2019-02-23	1	763.70	32	3
49740	2019-02-22	-6	763.60	63	3
49788	2019-02-21	-9	765.20	57	3
49835	2019-02-20	1	759.90	56	3
49883	2019-02-19	-3	765.20	86	3
49931	2019-02-18	-12	762.90	61	3
49979	2019-02-17	-13	760.60	51	3
50027	2019-02-16	-7	762.10	49	3
50075	2019-02-15	-15	769.70	51	3
50123	2019-02-14	-16	772.50	38	3
50171	2019-02-13	-17	772.50	46	3
50219	2019-02-12	-20	770.40	54	3
50267	2019-02-11	-19	770.40	54	3
50315	2019-02-10	-17	769.70	50	3
50363	2019-02-09	-23	768.10	58	3
50411	2019-02-08	-18	766.70	26	3
50458	2019-02-07	-11	763.60	26	3
50506	2019-02-06	-9	765.20	11	3
50554	2019-02-05	-16	765.20	38	3
50602	2019-02-04	-1	756.40	47	3
50650	2019-02-03	-11	762.90	57	3
50698	2019-02-02	-14	759.80	47	3
50746	2019-02-01	-17	762.10	46	3
50794	2019-01-31	-7	763.60	17	3
50842	2019-01-30	-8	765.90	62	3
50888	2019-01-29	-6	764.40	45	3
50936	2019-01-28	-3	756.90	59	3
50984	2019-01-27	-15	766.70	66	3
51032	2019-01-26	-8	765.90	58	3
51080	2019-01-25	-18	766.70	71	3
51127	2019-01-24	-11	763.60	79	3
51175	2019-01-23	-10	756.30	73	3
51223	2019-01-22	-18	759.10	71	3
51271	2019-01-21	-12	759.80	44	3
51319	2019-01-20	-15	761.40	60	3
51367	2019-01-19	-18	768.20	54	3
51415	2019-01-18	-14	765.90	22	3
51463	2019-01-17	-18	759.10	71	3
51511	2019-01-16	-12	764.40	44	3
51559	2019-01-15	-10	764.40	79	3
51607	2019-01-14	-11	767.50	85	3
51655	2019-01-13	-13	767.50	56	3
51703	2019-01-12	-17	768.20	65	3
51751	2019-01-11	-7	765.20	38	3
51798	2019-01-10	-16	762.90	66	3
51846	2019-01-09	-11	767.50	37	3
51894	2019-01-08	-18	765.90	65	3
51942	2019-01-07	-19	769.00	71	3
51990	2019-01-06	-10	769.00	37	3
52038	2019-01-05	-7	765.20	45	3
52086	2019-01-04	-18	772.00	78	3
52134	2019-01-03	-11	771.30	48	3
52182	2019-01-02	-10	769.00	28	3
52230	2019-01-01	-13	772.50	43	3
\.


--
-- TOC entry 2319 (class 0 OID 0)
-- Dependencies: 191
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 2320 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2321 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- TOC entry 2322 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2323 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- TOC entry 2324 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2325 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 2326 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- TOC entry 2327 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- TOC entry 2328 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- TOC entry 2329 (class 0 OID 0)
-- Dependencies: 206
-- Name: worldclim_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.worldclim_city_id_seq', 1, false);


--
-- TOC entry 2330 (class 0 OID 0)
-- Dependencies: 208
-- Name: worldclim_climate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.worldclim_climate_id_seq', 52230, true);


--
-- TOC entry 2103 (class 2606 OID 16541)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2108 (class 2606 OID 16468)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2111 (class 2606 OID 16431)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2105 (class 2606 OID 16421)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2098 (class 2606 OID 16459)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2100 (class 2606 OID 16413)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2119 (class 2606 OID 16449)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2122 (class 2606 OID 16483)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2113 (class 2606 OID 16439)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2125 (class 2606 OID 16457)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2128 (class 2606 OID 16497)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2116 (class 2606 OID 16535)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2131 (class 2606 OID 16521)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2093 (class 2606 OID 16405)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2095 (class 2606 OID 16403)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2091 (class 2606 OID 16395)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2135 (class 2606 OID 16550)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2139 (class 2606 OID 16562)
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- TOC entry 2141 (class 2606 OID 16560)
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- TOC entry 2143 (class 2606 OID 16571)
-- Name: worldclim_city worldclim_city_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.worldclim_city
    ADD CONSTRAINT worldclim_city_pkey PRIMARY KEY (id);


--
-- TOC entry 2146 (class 2606 OID 16580)
-- Name: worldclim_climate worldclim_climate_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.worldclim_climate
    ADD CONSTRAINT worldclim_climate_pkey PRIMARY KEY (id);


--
-- TOC entry 2101 (class 1259 OID 16542)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2106 (class 1259 OID 16479)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2109 (class 1259 OID 16480)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2096 (class 1259 OID 16465)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2117 (class 1259 OID 16495)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2120 (class 1259 OID 16494)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2123 (class 1259 OID 16509)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2126 (class 1259 OID 16508)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2114 (class 1259 OID 16536)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2129 (class 1259 OID 16532)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2132 (class 1259 OID 16533)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2133 (class 1259 OID 16552)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2136 (class 1259 OID 16551)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2137 (class 1259 OID 16563)
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- TOC entry 2144 (class 1259 OID 16586)
-- Name: worldclim_climate_city_id_3237f1a5; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX worldclim_climate_city_id_3237f1a5 ON public.worldclim_climate USING btree (city_id);


--
-- TOC entry 2149 (class 2606 OID 16474)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2148 (class 2606 OID 16469)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2147 (class 2606 OID 16460)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2151 (class 2606 OID 16489)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2150 (class 2606 OID 16484)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2153 (class 2606 OID 16503)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2152 (class 2606 OID 16498)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2154 (class 2606 OID 16522)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2155 (class 2606 OID 16527)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2156 (class 2606 OID 16581)
-- Name: worldclim_climate worldclim_climate_city_id_3237f1a5_fk_worldclim_city_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.worldclim_climate
    ADD CONSTRAINT worldclim_climate_city_id_3237f1a5_fk_worldclim_city_id FOREIGN KEY (city_id) REFERENCES public.worldclim_city(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-05-21 16:09:06 +10

--
-- PostgreSQL database dump complete
--

