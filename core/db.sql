PGDMP     2    :            	    y            prueba-useit    12.7    12.7 �    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    108405    prueba-useit    DATABASE     �   CREATE DATABASE "prueba-useit" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "prueba-useit";
                postgres    false            �            1259    108587    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            �            1259    108633    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    223            8           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    225            �            1259    108597    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id bigint NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            �            1259    108659     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    224            9           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    226            �            1259    108437 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    108435    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            :           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    108447    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    108445    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            ;           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    108429    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    108427    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            <           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    108455 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    108465    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    108463    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            =           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    108453    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            >           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    108473    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    108471 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    108533    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    108531    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            @           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    108419    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    108417    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            A           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    108408    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    108406    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            B           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    108564    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    108576    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            �            1259    108574    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    222            C           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    221            �            1259    116467    empresa_contanctosempresa    TABLE     A  CREATE TABLE public.empresa_contanctosempresa (
    id bigint NOT NULL,
    nombre character varying(150) NOT NULL,
    apellido character varying(150) NOT NULL,
    email character varying(250) NOT NULL,
    telefono character varying(150) NOT NULL,
    celular character varying(128) NOT NULL,
    empresa_id bigint
);
 -   DROP TABLE public.empresa_contanctosempresa;
       public         heap    postgres    false            �            1259    116465     empresa_contanctosempresa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_contanctosempresa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.empresa_contanctosempresa_id_seq;
       public          postgres    false    236            D           0    0     empresa_contanctosempresa_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.empresa_contanctosempresa_id_seq OWNED BY public.empresa_contanctosempresa.id;
          public          postgres    false    235            �            1259    108673    empresa_empresa    TABLE     �  CREATE TABLE public.empresa_empresa (
    id bigint NOT NULL,
    nit character varying(13) NOT NULL,
    nombre character varying(250) NOT NULL,
    nombre_comercial character varying(250) NOT NULL,
    direccion character varying(250) NOT NULL,
    telefono character varying(128) NOT NULL,
    email character varying(250) NOT NULL,
    web character varying(250) NOT NULL,
    paisestadociudad_id bigint,
    user_id integer NOT NULL
);
 #   DROP TABLE public.empresa_empresa;
       public         heap    postgres    false            �            1259    108671    empresa_empresa_id_seq    SEQUENCE        CREATE SEQUENCE public.empresa_empresa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.empresa_empresa_id_seq;
       public          postgres    false    230            E           0    0    empresa_empresa_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.empresa_empresa_id_seq OWNED BY public.empresa_empresa.id;
          public          postgres    false    229            �            1259    108684    empresa_empresa_usuarios    TABLE     �   CREATE TABLE public.empresa_empresa_usuarios (
    id bigint NOT NULL,
    empresa_id bigint NOT NULL,
    user_id integer NOT NULL
);
 ,   DROP TABLE public.empresa_empresa_usuarios;
       public         heap    postgres    false            �            1259    108682    empresa_empresa_usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_empresa_usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.empresa_empresa_usuarios_id_seq;
       public          postgres    false    232            F           0    0    empresa_empresa_usuarios_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.empresa_empresa_usuarios_id_seq OWNED BY public.empresa_empresa_usuarios.id;
          public          postgres    false    231            �            1259    116482    empresa_empresacliente    TABLE     �  CREATE TABLE public.empresa_empresacliente (
    id bigint NOT NULL,
    nit character varying(13) NOT NULL,
    nombre character varying(250) NOT NULL,
    nombre_comercial character varying(250) NOT NULL,
    direccion character varying(250) NOT NULL,
    telefono character varying(128) NOT NULL,
    email character varying(250) NOT NULL,
    web character varying(250) NOT NULL,
    paisestadociudad_id bigint
);
 *   DROP TABLE public.empresa_empresacliente;
       public         heap    postgres    false            �            1259    116497    empresa_empresacliente_contacto    TABLE     �   CREATE TABLE public.empresa_empresacliente_contacto (
    id bigint NOT NULL,
    empresacliente_id bigint NOT NULL,
    contanctosempresa_id bigint NOT NULL
);
 3   DROP TABLE public.empresa_empresacliente_contacto;
       public         heap    postgres    false            �            1259    116495 &   empresa_empresacliente_contacto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_empresacliente_contacto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.empresa_empresacliente_contacto_id_seq;
       public          postgres    false    240            G           0    0 &   empresa_empresacliente_contacto_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.empresa_empresacliente_contacto_id_seq OWNED BY public.empresa_empresacliente_contacto.id;
          public          postgres    false    239            �            1259    116480    empresa_empresacliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_empresacliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.empresa_empresacliente_id_seq;
       public          postgres    false    238            H           0    0    empresa_empresacliente_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.empresa_empresacliente_id_seq OWNED BY public.empresa_empresacliente.id;
          public          postgres    false    237            �            1259    116361    empresa_invitaciones    TABLE     �   CREATE TABLE public.empresa_invitaciones (
    id bigint NOT NULL,
    estado character varying(10) NOT NULL,
    empresa_id bigint,
    user_id integer NOT NULL
);
 (   DROP TABLE public.empresa_invitaciones;
       public         heap    postgres    false            �            1259    116359    empresa_invitaciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_invitaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.empresa_invitaciones_id_seq;
       public          postgres    false    234            I           0    0    empresa_invitaciones_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.empresa_invitaciones_id_seq OWNED BY public.empresa_invitaciones.id;
          public          postgres    false    233            �            1259    108664    empresa_paisestadociudad    TABLE     u   CREATE TABLE public.empresa_paisestadociudad (
    id bigint NOT NULL,
    nombre character varying(150) NOT NULL
);
 ,   DROP TABLE public.empresa_paisestadociudad;
       public         heap    postgres    false            �            1259    108662    empresa_paisestadociudad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_paisestadociudad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.empresa_paisestadociudad_id_seq;
       public          postgres    false    228            J           0    0    empresa_paisestadociudad_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.empresa_paisestadociudad_id_seq OWNED BY public.empresa_paisestadociudad.id;
          public          postgres    false    227                       2604    108635    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    223                       2604    108661    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    224            �
           2604    108440    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    108450    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    108432    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    108458    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    108468    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    108476    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    108536    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �
           2604    108422    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    108411    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                        2604    108579    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222                       2604    116470    empresa_contanctosempresa id    DEFAULT     �   ALTER TABLE ONLY public.empresa_contanctosempresa ALTER COLUMN id SET DEFAULT nextval('public.empresa_contanctosempresa_id_seq'::regclass);
 K   ALTER TABLE public.empresa_contanctosempresa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236                       2604    108676    empresa_empresa id    DEFAULT     x   ALTER TABLE ONLY public.empresa_empresa ALTER COLUMN id SET DEFAULT nextval('public.empresa_empresa_id_seq'::regclass);
 A   ALTER TABLE public.empresa_empresa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230                       2604    108687    empresa_empresa_usuarios id    DEFAULT     �   ALTER TABLE ONLY public.empresa_empresa_usuarios ALTER COLUMN id SET DEFAULT nextval('public.empresa_empresa_usuarios_id_seq'::regclass);
 J   ALTER TABLE public.empresa_empresa_usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232                       2604    116485    empresa_empresacliente id    DEFAULT     �   ALTER TABLE ONLY public.empresa_empresacliente ALTER COLUMN id SET DEFAULT nextval('public.empresa_empresacliente_id_seq'::regclass);
 H   ALTER TABLE public.empresa_empresacliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            	           2604    116500 "   empresa_empresacliente_contacto id    DEFAULT     �   ALTER TABLE ONLY public.empresa_empresacliente_contacto ALTER COLUMN id SET DEFAULT nextval('public.empresa_empresacliente_contacto_id_seq'::regclass);
 Q   ALTER TABLE public.empresa_empresacliente_contacto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240                       2604    116364    empresa_invitaciones id    DEFAULT     �   ALTER TABLE ONLY public.empresa_invitaciones ALTER COLUMN id SET DEFAULT nextval('public.empresa_invitaciones_id_seq'::regclass);
 F   ALTER TABLE public.empresa_invitaciones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234                       2604    108667    empresa_paisestadociudad id    DEFAULT     �   ALTER TABLE ONLY public.empresa_paisestadociudad ALTER COLUMN id SET DEFAULT nextval('public.empresa_paisestadociudad_id_seq'::regclass);
 J   ALTER TABLE public.empresa_paisestadociudad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228                       0    108587    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    223   �'      !          0    108597    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    224   (                0    108437 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   7(                0    108447    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   T(                0    108429    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   q(                0    108455 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �*                0    108465    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ^,                0    108473    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   {,                0    108533    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �,                0    108419    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   �5                0    108408    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   h6                0    108564    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   �9                0    108576    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    222   �B      -          0    116467    empresa_contanctosempresa 
   TABLE DATA           o   COPY public.empresa_contanctosempresa (id, nombre, apellido, email, telefono, celular, empresa_id) FROM stdin;
    public          postgres    false    236   C      '          0    108673    empresa_empresa 
   TABLE DATA           �   COPY public.empresa_empresa (id, nit, nombre, nombre_comercial, direccion, telefono, email, web, paisestadociudad_id, user_id) FROM stdin;
    public          postgres    false    230   zC      )          0    108684    empresa_empresa_usuarios 
   TABLE DATA           K   COPY public.empresa_empresa_usuarios (id, empresa_id, user_id) FROM stdin;
    public          postgres    false    232   D      /          0    116482    empresa_empresacliente 
   TABLE DATA           �   COPY public.empresa_empresacliente (id, nit, nombre, nombre_comercial, direccion, telefono, email, web, paisestadociudad_id) FROM stdin;
    public          postgres    false    238   HD      1          0    116497    empresa_empresacliente_contacto 
   TABLE DATA           f   COPY public.empresa_empresacliente_contacto (id, empresacliente_id, contanctosempresa_id) FROM stdin;
    public          postgres    false    240   �D      +          0    116361    empresa_invitaciones 
   TABLE DATA           O   COPY public.empresa_invitaciones (id, estado, empresa_id, user_id) FROM stdin;
    public          postgres    false    234   �D      %          0    108664    empresa_paisestadociudad 
   TABLE DATA           >   COPY public.empresa_paisestadociudad (id, nombre) FROM stdin;
    public          postgres    false    228   	E      K           0    0    account_emailaddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 7, true);
          public          postgres    false    225            L           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    226            M           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            N           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            O           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    206            P           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            Q           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 10, true);
          public          postgres    false    212            R           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            S           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 145, true);
          public          postgres    false    218            T           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    204            U           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);
          public          postgres    false    202            V           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    221            W           0    0     empresa_contanctosempresa_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.empresa_contanctosempresa_id_seq', 8, true);
          public          postgres    false    235            X           0    0    empresa_empresa_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.empresa_empresa_id_seq', 15, true);
          public          postgres    false    229            Y           0    0    empresa_empresa_usuarios_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.empresa_empresa_usuarios_id_seq', 30, true);
          public          postgres    false    231            Z           0    0 &   empresa_empresacliente_contacto_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.empresa_empresacliente_contacto_id_seq', 2, true);
          public          postgres    false    239            [           0    0    empresa_empresacliente_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.empresa_empresacliente_id_seq', 1, true);
          public          postgres    false    237            \           0    0    empresa_invitaciones_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.empresa_invitaciones_id_seq', 83, true);
          public          postgres    false    233            ]           0    0    empresa_paisestadociudad_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.empresa_paisestadociudad_id_seq', 2689, true);
          public          postgres    false    227            @           2606    108620 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    223            B           2606    108625 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    223            G           2606    108604 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    224            I           2606    108651 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    224                       2606    108562    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    108489 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    108452 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    108442    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209                       2606    108480 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                       2606    108434 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            '           2606    108470 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            *           2606    108504 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            !           2606    108460    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            -           2606    108478 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            0           2606    108518 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            $           2606    108556     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            3           2606    108542 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219                       2606    108426 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205                       2606    108424 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205                       2606    108416 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            7           2606    108571 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            ;           2606    108583 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    222            =           2606    108581    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    222            b           2606    116479 ?   empresa_contanctosempresa empresa_contanctosempresa_celular_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.empresa_contanctosempresa
    ADD CONSTRAINT empresa_contanctosempresa_celular_key UNIQUE (celular);
 i   ALTER TABLE ONLY public.empresa_contanctosempresa DROP CONSTRAINT empresa_contanctosempresa_celular_key;
       public            postgres    false    236            e           2606    116475 8   empresa_contanctosempresa empresa_contanctosempresa_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.empresa_contanctosempresa
    ADD CONSTRAINT empresa_contanctosempresa_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.empresa_contanctosempresa DROP CONSTRAINT empresa_contanctosempresa_pkey;
       public            postgres    false    236            h           2606    116477 @   empresa_contanctosempresa empresa_contanctosempresa_telefono_key 
   CONSTRAINT        ALTER TABLE ONLY public.empresa_contanctosempresa
    ADD CONSTRAINT empresa_contanctosempresa_telefono_key UNIQUE (telefono);
 j   ALTER TABLE ONLY public.empresa_contanctosempresa DROP CONSTRAINT empresa_contanctosempresa_telefono_key;
       public            postgres    false    236            N           2606    108681 $   empresa_empresa empresa_empresa_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.empresa_empresa DROP CONSTRAINT empresa_empresa_pkey;
       public            postgres    false    230            Q           2606    116354 6   empresa_empresa empresa_empresa_telefono_4554dd3a_uniq 
   CONSTRAINT     u   ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_telefono_4554dd3a_uniq UNIQUE (telefono);
 `   ALTER TABLE ONLY public.empresa_empresa DROP CONSTRAINT empresa_empresa_telefono_4554dd3a_uniq;
       public            postgres    false    230            X           2606    108703 R   empresa_empresa_usuarios empresa_empresa_usuarios_empresa_id_user_id_9743e3d0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresa_usuarios
    ADD CONSTRAINT empresa_empresa_usuarios_empresa_id_user_id_9743e3d0_uniq UNIQUE (empresa_id, user_id);
 |   ALTER TABLE ONLY public.empresa_empresa_usuarios DROP CONSTRAINT empresa_empresa_usuarios_empresa_id_user_id_9743e3d0_uniq;
       public            postgres    false    232    232            Z           2606    108689 6   empresa_empresa_usuarios empresa_empresa_usuarios_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.empresa_empresa_usuarios
    ADD CONSTRAINT empresa_empresa_usuarios_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.empresa_empresa_usuarios DROP CONSTRAINT empresa_empresa_usuarios_pkey;
       public            postgres    false    232            U           2606    116357 1   empresa_empresa empresa_empresa_web_4303cfbc_uniq 
   CONSTRAINT     k   ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_web_4303cfbc_uniq UNIQUE (web);
 [   ALTER TABLE ONLY public.empresa_empresa DROP CONSTRAINT empresa_empresa_web_4303cfbc_uniq;
       public            postgres    false    230            s           2606    116519 _   empresa_empresacliente_contacto empresa_empresacliente_c_empresacliente_id_contan_dd8dd753_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresacliente_contacto
    ADD CONSTRAINT empresa_empresacliente_c_empresacliente_id_contan_dd8dd753_uniq UNIQUE (empresacliente_id, contanctosempresa_id);
 �   ALTER TABLE ONLY public.empresa_empresacliente_contacto DROP CONSTRAINT empresa_empresacliente_c_empresacliente_id_contan_dd8dd753_uniq;
       public            postgres    false    240    240            w           2606    116502 D   empresa_empresacliente_contacto empresa_empresacliente_contacto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresacliente_contacto
    ADD CONSTRAINT empresa_empresacliente_contacto_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.empresa_empresacliente_contacto DROP CONSTRAINT empresa_empresacliente_contacto_pkey;
       public            postgres    false    240            k           2606    116490 2   empresa_empresacliente empresa_empresacliente_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.empresa_empresacliente
    ADD CONSTRAINT empresa_empresacliente_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.empresa_empresacliente DROP CONSTRAINT empresa_empresacliente_pkey;
       public            postgres    false    238            n           2606    116492 :   empresa_empresacliente empresa_empresacliente_telefono_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.empresa_empresacliente
    ADD CONSTRAINT empresa_empresacliente_telefono_key UNIQUE (telefono);
 d   ALTER TABLE ONLY public.empresa_empresacliente DROP CONSTRAINT empresa_empresacliente_telefono_key;
       public            postgres    false    238            q           2606    116494 5   empresa_empresacliente empresa_empresacliente_web_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.empresa_empresacliente
    ADD CONSTRAINT empresa_empresacliente_web_key UNIQUE (web);
 _   ALTER TABLE ONLY public.empresa_empresacliente DROP CONSTRAINT empresa_empresacliente_web_key;
       public            postgres    false    238            ^           2606    116366 .   empresa_invitaciones empresa_invitaciones_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.empresa_invitaciones
    ADD CONSTRAINT empresa_invitaciones_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.empresa_invitaciones DROP CONSTRAINT empresa_invitaciones_pkey;
       public            postgres    false    234            K           2606    108669 6   empresa_paisestadociudad empresa_paisestadociudad_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.empresa_paisestadociudad
    ADD CONSTRAINT empresa_paisestadociudad_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.empresa_paisestadociudad DROP CONSTRAINT empresa_paisestadociudad_pkey;
       public            postgres    false    228            >           1259    108621 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    223            C           1259    108611 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    223            D           1259    108636 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     �   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    224            E           1259    108617 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    224                       1259    108563    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    108500 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    108501 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                       1259    108486 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            %           1259    108516 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            (           1259    108515 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            +           1259    108530 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            .           1259    108529 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            "           1259    108557     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            1           1259    108553 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            4           1259    108554 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            5           1259    108573 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            8           1259    108572 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            9           1259    108584     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    222            `           1259    116509 /   empresa_contanctosempresa_celular_81b5fe2c_like    INDEX     �   CREATE INDEX empresa_contanctosempresa_celular_81b5fe2c_like ON public.empresa_contanctosempresa USING btree (celular varchar_pattern_ops);
 C   DROP INDEX public.empresa_contanctosempresa_celular_81b5fe2c_like;
       public            postgres    false    236            c           1259    116532 -   empresa_contanctosempresa_empresa_id_a3d82917    INDEX     y   CREATE INDEX empresa_contanctosempresa_empresa_id_a3d82917 ON public.empresa_contanctosempresa USING btree (empresa_id);
 A   DROP INDEX public.empresa_contanctosempresa_empresa_id_a3d82917;
       public            postgres    false    236            f           1259    116508 0   empresa_contanctosempresa_telefono_0237a597_like    INDEX     �   CREATE INDEX empresa_contanctosempresa_telefono_0237a597_like ON public.empresa_contanctosempresa USING btree (telefono varchar_pattern_ops);
 D   DROP INDEX public.empresa_contanctosempresa_telefono_0237a597_like;
       public            postgres    false    236            L           1259    108700 ,   empresa_empresa_paisestadociudad_id_3f4ce9d7    INDEX     w   CREATE INDEX empresa_empresa_paisestadociudad_id_3f4ce9d7 ON public.empresa_empresa USING btree (paisestadociudad_id);
 @   DROP INDEX public.empresa_empresa_paisestadociudad_id_3f4ce9d7;
       public            postgres    false    230            O           1259    116355 &   empresa_empresa_telefono_4554dd3a_like    INDEX     z   CREATE INDEX empresa_empresa_telefono_4554dd3a_like ON public.empresa_empresa USING btree (telefono varchar_pattern_ops);
 :   DROP INDEX public.empresa_empresa_telefono_4554dd3a_like;
       public            postgres    false    230            R           1259    108701     empresa_empresa_user_id_b3dc69b9    INDEX     _   CREATE INDEX empresa_empresa_user_id_b3dc69b9 ON public.empresa_empresa USING btree (user_id);
 4   DROP INDEX public.empresa_empresa_user_id_b3dc69b9;
       public            postgres    false    230            V           1259    108714 ,   empresa_empresa_usuarios_empresa_id_40bc5c08    INDEX     w   CREATE INDEX empresa_empresa_usuarios_empresa_id_40bc5c08 ON public.empresa_empresa_usuarios USING btree (empresa_id);
 @   DROP INDEX public.empresa_empresa_usuarios_empresa_id_40bc5c08;
       public            postgres    false    232            [           1259    108715 )   empresa_empresa_usuarios_user_id_41ad7af4    INDEX     q   CREATE INDEX empresa_empresa_usuarios_user_id_41ad7af4 ON public.empresa_empresa_usuarios USING btree (user_id);
 =   DROP INDEX public.empresa_empresa_usuarios_user_id_41ad7af4;
       public            postgres    false    232            S           1259    116358 !   empresa_empresa_web_4303cfbc_like    INDEX     p   CREATE INDEX empresa_empresa_web_4303cfbc_like ON public.empresa_empresa USING btree (web varchar_pattern_ops);
 5   DROP INDEX public.empresa_empresa_web_4303cfbc_like;
       public            postgres    false    230            t           1259    116531 =   empresa_empresacliente_contacto_contanctosempresa_id_a1d7c2d8    INDEX     �   CREATE INDEX empresa_empresacliente_contacto_contanctosempresa_id_a1d7c2d8 ON public.empresa_empresacliente_contacto USING btree (contanctosempresa_id);
 Q   DROP INDEX public.empresa_empresacliente_contacto_contanctosempresa_id_a1d7c2d8;
       public            postgres    false    240            u           1259    116530 :   empresa_empresacliente_contacto_empresacliente_id_9bf5fcb7    INDEX     �   CREATE INDEX empresa_empresacliente_contacto_empresacliente_id_9bf5fcb7 ON public.empresa_empresacliente_contacto USING btree (empresacliente_id);
 N   DROP INDEX public.empresa_empresacliente_contacto_empresacliente_id_9bf5fcb7;
       public            postgres    false    240            i           1259    116517 3   empresa_empresacliente_paisestadociudad_id_eaf9aea0    INDEX     �   CREATE INDEX empresa_empresacliente_paisestadociudad_id_eaf9aea0 ON public.empresa_empresacliente USING btree (paisestadociudad_id);
 G   DROP INDEX public.empresa_empresacliente_paisestadociudad_id_eaf9aea0;
       public            postgres    false    238            l           1259    116515 -   empresa_empresacliente_telefono_ea6c4b3f_like    INDEX     �   CREATE INDEX empresa_empresacliente_telefono_ea6c4b3f_like ON public.empresa_empresacliente USING btree (telefono varchar_pattern_ops);
 A   DROP INDEX public.empresa_empresacliente_telefono_ea6c4b3f_like;
       public            postgres    false    238            o           1259    116516 (   empresa_empresacliente_web_418ab848_like    INDEX     ~   CREATE INDEX empresa_empresacliente_web_418ab848_like ON public.empresa_empresacliente USING btree (web varchar_pattern_ops);
 <   DROP INDEX public.empresa_empresacliente_web_418ab848_like;
       public            postgres    false    238            \           1259    116377 (   empresa_invitaciones_empresa_id_e9e5e2d9    INDEX     o   CREATE INDEX empresa_invitaciones_empresa_id_e9e5e2d9 ON public.empresa_invitaciones USING btree (empresa_id);
 <   DROP INDEX public.empresa_invitaciones_empresa_id_e9e5e2d9;
       public            postgres    false    234            _           1259    116391 %   empresa_invitaciones_user_id_469503d0    INDEX     i   CREATE INDEX empresa_invitaciones_user_id_469503d0 ON public.empresa_invitaciones USING btree (user_id);
 9   DROP INDEX public.empresa_invitaciones_user_id_469503d0;
       public            postgres    false    234            �           2606    108605 J   account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
       public          postgres    false    2849    223    213            �           2606    108644 P   account_emailconfirmation account_emailconfirmation_email_address_id_5b7f8c58_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk;
       public          postgres    false    2882    224    223            z           2606    108495 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    2836    211            y           2606    108490 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    211    2841            x           2606    108481 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2831    207    205            |           2606    108510 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    2841    209            {           2606    108505 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2849    213    215            ~           2606    108524 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    207    2836            }           2606    108519 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2849    213    217                       2606    108543 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2831    219            �           2606    108548 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2849    219    213            �           2606    116533 O   empresa_contanctosempresa empresa_contanctosem_empresa_id_a3d82917_fk_empresa_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_contanctosempresa
    ADD CONSTRAINT empresa_contanctosem_empresa_id_a3d82917_fk_empresa_e FOREIGN KEY (empresa_id) REFERENCES public.empresa_empresacliente(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.empresa_contanctosempresa DROP CONSTRAINT empresa_contanctosem_empresa_id_a3d82917_fk_empresa_e;
       public          postgres    false    238    236    2923            �           2606    108690 I   empresa_empresa empresa_empresa_paisestadociudad_id_3f4ce9d7_fk_empresa_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_paisestadociudad_id_3f4ce9d7_fk_empresa_p FOREIGN KEY (paisestadociudad_id) REFERENCES public.empresa_paisestadociudad(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.empresa_empresa DROP CONSTRAINT empresa_empresa_paisestadociudad_id_3f4ce9d7_fk_empresa_p;
       public          postgres    false    2891    228    230            �           2606    108695 @   empresa_empresa empresa_empresa_user_id_b3dc69b9_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_user_id_b3dc69b9_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.empresa_empresa DROP CONSTRAINT empresa_empresa_user_id_b3dc69b9_fk_auth_user_id;
       public          postgres    false    213    2849    230            �           2606    108704 N   empresa_empresa_usuarios empresa_empresa_usua_empresa_id_40bc5c08_fk_empresa_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresa_usuarios
    ADD CONSTRAINT empresa_empresa_usua_empresa_id_40bc5c08_fk_empresa_e FOREIGN KEY (empresa_id) REFERENCES public.empresa_empresa(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.empresa_empresa_usuarios DROP CONSTRAINT empresa_empresa_usua_empresa_id_40bc5c08_fk_empresa_e;
       public          postgres    false    2894    232    230            �           2606    108709 R   empresa_empresa_usuarios empresa_empresa_usuarios_user_id_41ad7af4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresa_usuarios
    ADD CONSTRAINT empresa_empresa_usuarios_user_id_41ad7af4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.empresa_empresa_usuarios DROP CONSTRAINT empresa_empresa_usuarios_user_id_41ad7af4_fk_auth_user_id;
       public          postgres    false    232    2849    213            �           2606    116525 _   empresa_empresacliente_contacto empresa_empresaclien_contanctosempresa_id_a1d7c2d8_fk_empresa_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresacliente_contacto
    ADD CONSTRAINT empresa_empresaclien_contanctosempresa_id_a1d7c2d8_fk_empresa_c FOREIGN KEY (contanctosempresa_id) REFERENCES public.empresa_contanctosempresa(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.empresa_empresacliente_contacto DROP CONSTRAINT empresa_empresaclien_contanctosempresa_id_a1d7c2d8_fk_empresa_c;
       public          postgres    false    2917    236    240            �           2606    116520 \   empresa_empresacliente_contacto empresa_empresaclien_empresacliente_id_9bf5fcb7_fk_empresa_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresacliente_contacto
    ADD CONSTRAINT empresa_empresaclien_empresacliente_id_9bf5fcb7_fk_empresa_e FOREIGN KEY (empresacliente_id) REFERENCES public.empresa_empresacliente(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.empresa_empresacliente_contacto DROP CONSTRAINT empresa_empresaclien_empresacliente_id_9bf5fcb7_fk_empresa_e;
       public          postgres    false    238    2923    240            �           2606    116510 U   empresa_empresacliente empresa_empresaclien_paisestadociudad_id_eaf9aea0_fk_empresa_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresacliente
    ADD CONSTRAINT empresa_empresaclien_paisestadociudad_id_eaf9aea0_fk_empresa_p FOREIGN KEY (paisestadociudad_id) REFERENCES public.empresa_paisestadociudad(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.empresa_empresacliente DROP CONSTRAINT empresa_empresaclien_paisestadociudad_id_eaf9aea0_fk_empresa_p;
       public          postgres    false    228    238    2891            �           2606    116386 S   empresa_invitaciones empresa_invitaciones_empresa_id_e9e5e2d9_fk_empresa_empresa_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_invitaciones
    ADD CONSTRAINT empresa_invitaciones_empresa_id_e9e5e2d9_fk_empresa_empresa_id FOREIGN KEY (empresa_id) REFERENCES public.empresa_empresa(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.empresa_invitaciones DROP CONSTRAINT empresa_invitaciones_empresa_id_e9e5e2d9_fk_empresa_empresa_id;
       public          postgres    false    230    2894    234            �           2606    116392 J   empresa_invitaciones empresa_invitaciones_user_id_469503d0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_invitaciones
    ADD CONSTRAINT empresa_invitaciones_user_id_469503d0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.empresa_invitaciones DROP CONSTRAINT empresa_invitaciones_user_id_469503d0_fk_auth_user_id;
       public          postgres    false    213    234    2849                6   x�3�,(M�+I-�*�40vH�M���K���,B.s��Ģ�l4qC�=... ]��      !      x������ � �            x������ � �            x������ � �         U  x�m�Ѯ�0�����	�� m�����.R�3��_pLb������q�����C�����[Ͽ������ƇgT
�8��_9�Bl �
�ö@������WX�0��k%�;j��莰Wꏱh���b����p���1O���`���Ps{}!b��A;�����L����Y5``�Ԧ��c�O@KoG /O@W��4\���|s?�k�Z�~��j����67jD�h��w�K������4�e�ɮ��ځa<��{a�g�ش�e��z��UFʤ/a����O]����n 6��  ���t9$������k���,@Cڲa�8z�
6�R�&������5��p��'�/�n?�@��6�:��õ��"��eqm'k�R וW�va����a���ܠ⊁�3)��ڲw.��A�^߹v_�Rې�x�L��3����^����Q75�[�r����G�˝A����v��2��V�ǎ�E��7Dc�aOU�h�+�ە
���1K�s�����uZJ�6��ًn/rY�dg����(&\�k�ƏҼͅ����g��+��)¨n��a�>TY֞���˲�0jTDGn������<�M�         x  x�m��j�@���^�N�����,����6��)���`v���%>}��"�s�?R6+���:�1�*���&�'JC��$�6��ī�2]��i˂��q�{�`����Fy�n��U蹅/<�8S0`4D0D��ӁKDL�Q%m�\Q�����8?�����>ø�(#&3�;�!�߻�[��ݮ����n9���ge�.��n[��o]o~ݕ�c[��Ig�ng^8m_��nr�>fP�,� �:z#%�@���<�3-����K�&�N�z�?w�&
��A�fF�T��Y��4mb"����`s�<''�/;�̟n܇�%#�����A�%��ʯ����M�MX�����O��ҿ�oZ����W��            x������ � �            x������ � �         	  x���Ko��ϣO1�)���G�l|�%��i�ìf��cK�FJ���)6�-vuS֣���׿�,�;t���wq�g�!u�%����w_wW���n�;���st�s=��3r��9�?'�9���,��<����܋�(y�������/�_^��p���x����t}�r<럿\~�z���?�w�����|�bɾ颸 �e������������y�<�����:��ϟ���Tǿ�������'���������?�����>������������Nw�����[L�Eѡt�)�q��N7����sr����\wW�_s��?��#"�!��w�c�!���������O���q�������O��<�J��&�hc���C�>?ꯉ�
C�0��1Ta�bB�a�@X���FDEmML�0���$�oc|�	L�Kf51Ra���+=�%Oe�?|��9}��9:͢��#v�|���c0��`5��m0V�s�F�E�ҁ�F��h���F��"ޗɳ�RE��f쉺����Ѿ�f���RL ��lt���Dfs�P2.�c�m4��F�@<��ѩ�6Z�!���6�bqU|���z*޲��Jl8[ʻ��Ұ��R0P)��n�c����j����������t�K�Dt�n���
�Dr��nW\!hN�_�nA�{����@ �XE@���z����e ��u�� aB�E�i��*Dl hD�uD���`cR�"�#��>�zt$I\&�����V��N��b獎@���	���F�@�+lU:At�,��H����N'�V��q�U��U��	�H�2��V'H���H�r��V'H�V��4UְU+R�6��Xls���X�N��q�l�V�'V�$r,�i�T�'V�Zm�AA�2��X�+V�#$K�@��J�b�~N�����C��U�����ؘ���*v��T�V���U,j�����"�⬡�t"V�$N��fS�,;BR�Fj�U�#��^�#��)�Ӑ	U2���=��75dB�L�B�#��~԰5�l�/�h�@O�8X=7�������4X���4���r!0��J�Ji~&�|�|�Э�����p%��!z�/g=n��+��Ѐ�����\���B�]`G��[���"��E��2F����0S!`�(���	qCʬR�|�p8�mC�?��2�6��c��G�i���2{ms��@K��xW�Bn(�c{t��L{�R�sC��LY2�;G���s#ŵ�s���CR������Sn�
7n��JZJ9w��mul.i�i��%���<ٱ�.��W�X=����zltK�s�@���Ot��#��`��9�S?i6΅��Y�D�-`١�7�źE�\�*B�%8y��/�l� ��Ϋk��+K�@��oXO���NH����`��uG�;|Kw����`$�tw�M+Xuרg�y��trK��$!B��r|�����[.�J9���3^�%�k�;���Z��ƺy�.E������$�L�{;�^-����<����璒Lg�^��n�O���}��ۗKޱ�|�l�q��
��[�Wu�f�R9��0�aJl҉]��]z��ٜ=HAG���������t�$�������y<�������{p7���;�;��>�u�����s�&6	��;��Zh���V5i�Rl�^kK�h��\��%�'ǆ�<�.��TЛ-�؆���b6�Q6m�ۆ�gt��#l+�Y�"�N��h<�OB�j#pq1����d5.Y@�
�� ߛ����9�W�E�U갈xt�E�-�6C=0�z�ɯ�Q��l��6�瓤�~|x�jUA����U���U� �l�C��B��{�3c%�}���n��g;ғ���:A�1m�8V��r�u�#�o�5�6m���%��[��6����lJ��/�$�s�&i)oڐ�m=ɪ辎iS1��ҳP~1�mې��#�C%A�M��1���i��K|x���tE�
ڌ�B��>n�E�hx��$n+n��P.�1l*n��@!7�UsaS͑����
=ۑ������pѦ������dʗ�i[1��mH��=�M���/�P;;-i�嬡�Q6��G �8�E��{6�E�mȩ�l;�4�|b�|8�1n;�d�|K�pە��� 7���� o:���rC~xs<�qn������SN�W��6T�9���\�B�8�w?���n��oύ_�� ���gim� ��P�!R,�Vj��#�_��������         �   x�]��!D�ۏ1���_|i ��.ZL���z!�K�f&����	�|�I���7(�N,�9��E�5���K4�w�sR��\�|܃�gZ>@XͶL<y�[R��H!T���[��D����`1A!�V��=�@��w�ݦ#NwV�Vݶ�����f��Ǐl�x^!���i           x���in*;��U���\��ky�e��m������������������r��еcl����c|��c�2�w`���A9�N�Jh-�;�o����@1�:	�.�u���6�!��Mw�2�/��s�=-��p<>fb�ĐW�2H��a���4����@�Ȓ�ɄR߼µ���~�m8��$m���қ{�C3��_b��!U�����&�'��C��L�2�/�i��xu�,�QDIIo���2>vG[�lcȒфaL�״��y�s�Ȥ��(���;��fo��'�~���SpM�^J�M}c�����ޟ�0��}�|��g���f�5�4��H��G/�4ӹa W��t���ŠF�1jÀ�.�P�����U�{,_[��M}����2Li>��솸��tR����z�}�I���y���f���ѱi�����3���zJ���M����	C�DZĬ�R����"��bn;�R��)�$��	���vL8i*М� ����C��h��q�TF��Y%Kެj=0�� B;�aL>ըJ ��R�a���|e�.U�`Z��cl�G�v7�M� u*CL	��Am�i1�"hK��7����8�N�J)-U(g%@�����r��=r��qMkK;o�C)]P	�qñ���đBq3_�Xr�#N:�؞1<�.6w�󂲍��j�K�	��VFz"Ƞ2�4|^(0ř��Z��e2�&�TR�J 2ǔ���1t�,W�h ��Ec������!��N7Vhc7�I��
�:D�*������z{{�T�R         ?	  x�ݘY��J���Wq7���d������)<�,�y�Y��n��]���w�|�s""!)I:��iR�k��E�'�@ݪ�6s��-�}͏����J,�*l�ꮛ�G�5��e�:��&%�*֨��&����1�2�y�9΍���s���<�IU�˩��&�%�;�[�,�l*%T��\xs�;�Ǻэ��v�F�S}A��5��>>7�|wiw�&�����k�%����^�jA�,�mNGe�� �i8_���!� ��?����C�1�|���k2+/��L�Ȭ���N@)��o���w���i��7=�#�1nI�DE�܆�M��;}zܕp*X��GՋ��(W�Rg�'������!z��ϡUӳ5���K�GՂ�
3�p���S�����#�i(�ar��Q�OAlF�7���*���U:��i�4��mt�� |�.���E�s��?��P���B�r�]�Na��{u2
��c�XCPc�&����.5C�i��9�Nqu\��zk�ȯ������]�:_�T%h���]���:�؁�0�̷=�����qS��j*�*Pc���&�dnյ&������t�6��o����U���b@ľ�V�oz�"�Z}҂ht�T�;y�c�����2$=ֶW�X�¹2�)+.�EM�|���'[ިss��*�3�1���C�,e^é� �z,��lXӋ���]��}8?�ܧ���:�k-���c�8���:xP���f�x�SHp���v�a[�^d�}D��l!��{$FW|�p�Lk'���r�n�i
si���w�!4Z/��8ϣ�K?��9t�Y�.x;����-����]����nB�~�(��v$f�nw��A
�b���0>�������@ b,��Ǆc�;"������)⊺s����%��C
�/�hb�_�lY-'zubʋ�u�tr[�\���EaT�*6�[�"��E���@��Sd�ek��
��¥,�!�h>�&@?ٵ��'�O�1�(��V��ݲGc�Ʌ*)O����]M�*T�s0�N��nv��sw?�s������U]����
�W]�kH7������OUU=3ɰ����[\���rQ�v"+Mb�n�E_�;�?�~jV���Ǳ���^3��s�v7�<M�/o��S7���ԃ�?��Tj�Yol�[]��`&��Ԟ�q����0�7r�HX�3@ �����	]2�L@��27�I�8l����	�|���r#u���a�Z�Q.��+t�������j��
��bE�E"� ���Hibq��BN�Ņ��V��ؙ�h�^��/iˣ����آ��%� iW�����6���2>)���P���'D���!�a��\n��)ĭ���	~��Qj�-�򬍓/��z��[������eq�o'���n�u�@�*������%��G�����+��	5CW�A�(�G����<�YQ\��'��B��Sjo�\5� �b�|M���"�Ц��������ICg�]/`���Ր���65�a��y�i��n�J�F��G���<�3��HѼ��i�mP9�2:�OT�],�v��2t�Z�u_��}���奁G+t%�(����c�p=9��o�t%���noMoG�3�$���L�O��$���N�tFm�ܧ���"ʫӔjm܃Q-J�3VN� ,���W����CV���:)���p+ש�5;��U)Q�t[�`<{�0�����5fۯ��3�3�}�����MdM�X:zU6����a1���MD�.���z�C��9+�W��#��V~�`�8,����f����BD��� b��Z�4^X�$�7b���q̲y��H���M��S�����,%G�eE�Vw��(HHw����B�>��_�o䈈��Ȍr,&�1�@6�+аo{4�����?��2�dsyZ��հ`��zӴ���T��q�����X�[��Pr�ψ���XA��Y�<�*��8vҢc�.)�Wv��%��R��xj�e�n����mW�1o��� \͟���t�3~E�j!����|�z\f�S��R��[�s�I�.E�4B�5��� �T�a�l���Ʃo�>����M2��o�R����ψ����GD���,ډv]f����?M��� ���QC<1֓D�ԋA��YHFlsosߵ�$]$�t�l��/o;��"E��A��"|�{��v��0���y�:��z<WX-��"r&6���S��׻�Ӆ�ҽ�⃚o��s���M\��<��yŖH^��b��-���i��G�뜮�'����t\��+�҄}!�jX����:1�*�s5�Rv��p/�H��������}BĂ�� @4��f߿�?R�D�            x�3�L�H�-�I�K��Efs��qqq �<	�      -   Z   x����*M�SNMJ,.�L��(M�+I-Vp�/��KL��,�d[;��&f��%��rZ����rj��Z�pr��qqq �M      '   �   x�e��
�0F盧�.���G�S�.�����&�Ц�F����%��q���!�������q�������N!�|���KB)�h��Z3�w� ���ӡ�sμ����H������[��6$[�_�I�q17�/����g����B�      )      x�3�44��26�44�44������ !F�      /   V   x�3�00�347�342�5��/-)M�Qɉ99�
F�چF�F���F�f朕`�T(����˙QRRPl��_^^��,n\1z\\\ /��      1      x�3�4������� 	`      +   (   x�35�t-.H-J���4�0B�ZpY#�p��qqq U�@      %      x���[sɕ&�L�
�饲y�|L $@�B$E�yf2��P�O���̬Y���d��5kj�$��ٴI[jY���}H`�-���[ϣ�K�����#	�eF"<�|~;��~������pb�H}��0�`�ŵ���D.?���x�U�)�Y`;P�/� ���V���y�o�=��h��\G*�⏶����*��X-��2���Uo�����1�G�ZΕ�7�]�o��[��=1��=�o�F��m?R���[�׺'�~:R:{l����l?J/�2b��z4RxU�+ P��}�F����F�am?KQw��{�r���U�=\L}�8��ӛ��������*R��V�_��k�@`� ��Np�!��ȣ����[�?[�z��\�.�1��HGS��k4���\G�(?R��F�J���m�����V��	B5�������ɴ���4�����*�y{�$:U�Kܼ]�9쪩Hb����tݼ�jt7�T��:|.5�`�#-�����Pm56�|�E��m߼�o57X�����DVh��Ba.����&	�˄����ܼ����>�������V��Y�p�l�����O�kY�N�����d����3]I���>C�	��V��Y���ױ�h��(vw���Ux�>�fo3�Y�1��hr��V��A�ұo�e�By&[��ڋߤ<�Z�=6ר4SB/�yo�[���o�K�\�[�6ylB&t�i<'w[�ͪ����#I�m�l��0��Tm�U��(�(�{&���������xNS-c���2���{�/Tx˭���%h/���ׅ���Z��x���������;$D�)#f���NI<�ԑ��8Y������������[�FI��(�w�(�v�$�c����V�U҆��L$b�j�K�#�Edr���"�jwJ걷�}n�>��!�(]��\��iE�|��K���h���,�P϶�"s�ñ�k��vvJ�n��@Q��l�z�z�E����:7���ґ���˹VI��k��ci4\����*:c4�(����.qG&QKr�Մ��Sytd��K�V�[��5I�r �Ȣ�؏{�1�p�=Le*H#=7[����D��cpy��S�O�'zlHQ�V�^���b�e��n�x��1�m���6��{�
WE6���&*P�p'�����2���V���#k���v
ʮ� �P���u�\1�K�,���m�Ȳ%���WɔS5�#/n�v*�&tafz��0%o������5����ND2�%h�J5RO"�k�+����fo�z�BRR� �����^�?�$��븘�
��z��m��X�H�{_Bۏ�j��r�q:U!�=�0L"o��6q� ����]̉��	Y, �1�V���A��|oQ��>7����~���;�3/�h�c������8�!�.��Kߠz����~˥���t����+�	`*lFM��429W�ySM�&����l,�L��;�8K�YM���nTbF*ǟ�/��N�c䍘`�}�y짊,�Wy��R�����kh;�]@���t���ɹ��/f����0ۇ��c}�^�$,���:U�����E�ɞ���p�Iz�.-s�ڕ��<�5�����41����ԅ�e{��ǩ���f���2W�8?�P�Z�]�rf_����ײQ��0��0��F��-.�h���Tvn��(�;��' $"������;�,�3���ȋ�@�K�)/�.~�D��o�n�@��F�}bX<Ak���E%/@堠o�N�QM��m'q��7`9����P�V��,m�=3�KA�*h�ˈ��Qz���Ğ%�@��4�/����n�Ž�,c�W��x�C��s�;.�����8Q�Ĥ����6�.���$�eDk#t�}]������h�m�	s&լ$�]gy��n/�t��_`[.�\��L�R)��81̰�b�`�~B�#p����	�◐�r��)U��$�e�bN�|��0�&�y4�d��P_r@��
g��~8�6��P֩�9��RIp󋏶�߿�����d���-���9��Lo RN
���F*��|�ܨ�O��d�S%�t�YAm�c�
~�1���$֪�����p���EV�D�"�+���������\ǾԨSA<Z�J	x���[�C���'t���� ���]���qzE=��AW�Ѭ2y�[��ٛ<�A�k+UbJ���C���-! �<��`����*w_�7<��gC�T��f����}�]��=�,�3�*O��急�(�:�}] �����ժ P���19��RE U�y���G	��d��d�ޮ�����I���Ӯot��}>�v9f>�6Hc���~��w��h�,c���fD�6����FE�*s?Nc�V v6�#e��T�����]�)ÀUy��Z�O��Un�`������y�^0��sl�;U����&`qG�4�P>"�������TdFGT�W;U���� ��
ffI���N���ƿ�>W:BNӝ�&�G2��+z�ڱ4U�L�ȮBY@�l~4q��ԏ1v�~Q�?( �6c5���9���#o��ڮ�19�ơ� �\Y�כP����m.��C���H!J�}�g�"zu(Z�3%B$4&(`u�|�Eۍn�;3���.�@���u�p"1z2�s��^��(P/���p�H#�=.�ܼ�A�P����=_'�D1�򓝅7o1 @Mt1���D���
�]�p�^�?A�VKs��2F����SY��肎�4Q��m2��D�� #t|�6��\.�@�����N1�>��ETٮ�e8�����@�, �#R�Ku�)�G��(�c�m�0P��M#L��T�:�������5"���(|B��!�`ly�ؚP3��]��):���|�P�Ie���Y�JN^�!�LϽpI2�ލ{�zD>[�#�w7h��lg�_ѿi'�t8A��@(�w�c+yDC��Y�_�U��>���eg&�{��|�-�]
�M�����a�M��x��^v��&�E��(�BvS%��+�(�ĮC|��!.� �\���0{��wHg 1��G�f�Ha�i����~}���(4W���]����R�!1����T��pMwl��pt2K�]i9�}3�v�����W�L�9�Ґ%�
��RX��25��/ ]�bƢ�3�l�tj���vh.�������pn2A��u���@_q��>At�9��I'��R��s�-O]>`�����=6U�e�.�J�]�E�OTCi��5\��87`,�./���g�����Z�t� �.��s5�W$#Q�k�c�p�>��egP��c�D�e'j}X@vv�>8ٜK�Y�o���b��f������G���	�K�$�	i4�%M�a*���E:ƘܼU���O�������)#e��=q���?!;��uʐ�
j��/� "Cj*��	���HP�%���xn5�;.�2��R|'JCOt� Xw����;G�Q�t�MU��YҞ�K=-���J��Ԭ�(�r��\�-�v��,1��" j�����̂�D���$D�s1�1�4��e�A�������q[;9y�6�����F����阔�	��?N���\�=3Qb0Y���U�p%�M*�����A�ʨ�ڲ�<31G$�]y�@�L���$x]+�����pԜ��S7'�a����N��-�ɓ=ckU��r��b�$(�@��b �!t���/�e��X]qHl�-�\���\��=%(�	؃��4����~��Y� )QԼHRn�y�{��f��Q-(�M�5�_hR�í]����L��T�+�&U�%��nI?��ٲ�j�%��W�Y�H�hD|��~I���7���,`�c�~�ΎC6�#���P�N��?ŧk�(��"����	Z�)3�H���	�3a��#���m��4>B%s�Z�3�%�]�M��Zqv<ႊ���,�'�/�0��}⁻s ;�c6���+P/��	A�nAE�ω�=t5hSA��	� c��/h{^k�SKY쫭��5����    b�L^�T�����4�;�����6�����t�w�ډ^��N}(�y�,�t0F�~2y�Ni �\�0C�m7�
�4ר�+�%���X�[�w��I�C�Ҭ[�CE��}[��x���*�+u�Bp8I��eL��+��
��W'[&&�ހ71܅k�JV?��/��i�l{�J���81�{Lr�*��d�eN@�c�w�e��Vs�C�f�����K�ˮ�J�>�^���	��ҭ?�����+�`��s�]E��OѬ��]i�9cc���촂M���0>ET�g�����8{
�`�	�qeCƑ��U�����������/C;^a����#�~݁D4��w��v�4T�װb��-��O��O�T�ZP�yy�Hbw�)
P�Sk1����O� ��ȱm��A��-B�v
*I�rwU�4Lb�P[�� �)�9#� ����Z��B+>Ǭ%5�;ԣk�;22�~ޤT��?�x(���= �MF7NϱY��p3��$�N0�����Tz
��I�^�Q����l����U�&�L�Q��Ϩ�B��~�Ɋ{�Mj?9��̩����:F�4|�ވ	dP{N��L��x����]���R@��I�0e�*\n5�;N��*�׫��p���F���QJDK���ʃ�@eaD�<*�Kcw�OC5֤6*wC�WVf� �
P�)���~�~Od�K'�N)�A�������}`� �A��Ӂ�&��A�ħ!GYC[C�	(���qꍼ1���F�~r�2�r��`Ԅ��S�"��l?�\C{ɶxd�<
L�إ�&4��o��K�#���\��H�ͱ����]��qe\s���c#�c�����&/bW|��3.�z�8 �)G���d�{ײ���d�v�"|�Q��U:��K}�7Q�D:NI"�8R�i�ܯ� 0׳P_�����}/�A�Ie���=���f���q� :�*�]2���Nnio�S:��	���H_a�{~�u�&�?ޑ���g���1GZYQ8�}=��N�׿�����u�)����|�D���p4���$E
Ϳ ����&���FTb�5���%9'J�Y��C������8a�p�2v��H�*�eApՓ2v��x���]mf�Ϳ��d��bU�y��.��@[�{�#|Ĭ ��%����1�����x�����~�J�"�]�]M����OFfN�K�(��&t���GPf��!�&���l�1���<.�R2�Jg��10�O}U;�����N����q���:6�
���S�2��=�+Q��JZ�@�jB!�3���h�_;Yn���Ԅe�s}��DjR;R`��gb�d���s�-�,"�B����s/�&�%���s��+k���{�����̤�I��)n�>3�S�"/:�������K������k1 lB5�o��.��ߡ�ڽz�H ��胗���ÂÞ,7����>��{9���-<_\��U��},��C�p�v��-���r@N_�+^��4�u��"+�N�����ײ8ބ���PZU�ō�WW^��xqmWQ�lBϯ �2�XKٓ�t�����\�z���0D���f�+�^�0��C�� vE�>�)
C��(k *�P�����Zı�..|�Ʋ8�����Ŵ��)3{��6�z�c����sn�����vLك9R�OY��̆���).�1�&�뱖E>k���np|�,>��tdL�n0y a,\a��]Q�	:�g�hjp���Ezd� ,����5\^�j�v����+�K����W&Z�?+��D�7)�����:��
�X�c�����Ig���W0��jC���$��J&(�ܮ�Т��D4��W�Cu�d��;F"@��(�4����;`�U�k�I�!�4��o"v�z�FQ��WP�\\��XY���L�v�b_A?�0vLi��4�Am����}���d��	���뗘�솪W�������'��T'vke*� �n�I�(���Q�n�7y��L�Y��9��?���+]`�U���?����4ļ�j�"��F[���~���d�i��1��ap�Tm�v07��#0Zh!���T�׿�f���@�s� R)f��*[�8��(���X5��͜xE�f���'\����w���QfG��i������=/�3��#NT�rQ ������/���:;�&�g�l/�>�֡�Ne�ѱ��j�9��_D藙Ni�)��,�� B��V}ǭ3W���Z�LH�Uc�(��' S�̛T����+����\ [p�s4PoRR[e��}��vYUA�U�;���νȘ��Bx�2���,��G*��*S�F-Y��B��VZ*�/�9`=fW����%�9E����!}l�d� ���!GPU@�o��Ma�s/+b�d���{���\�!��d) G�{C��/Im9T�xu��=*�VDs@��Z���`���|��g�gЀWh�F'��0Ni=�1��N�|�4�9��:��(����4��_땏���ϔzEJ)h�H�u.ɨ~NG.�L�����V��S` i�i�W�fb='���R�)��QP���"]?�C�d5�M7sȵ�JA����n�r�k߳U-�D�[�!����͂�O��l�Q�� @.�*����O�h���ȓ"����Hcbl�ʼ�2m��S�:�����3l�z�:
�@�k5~��m���ժp��� �Ί�jU��e�*-;ū����|���|��6 L�~Zf �NN/�<p� �O5�V���d��ɗ���U�é	���+a'����_x�.y	],f�l��T��c��(I�<~���,ǈQZJC�V�`���/3Y*o�v�,~��>텁Dn���D���d�Ð��j�������k�P����jwX~�#��
RE+ �sP<ʉ��1,��}�}7;��T2���Cws��DeK�� �����2��8r=�լD��`��)&��Y ���i"��t�+v�K�i�rl���)�'f�I��}���`��X������.�O����#ֿ�|E�v+),�y�ʘ�q�*���
��� U��2;�d�6[]��VB�<ǘ�u9:H���h�����j<��u9�0r!'�D���{'b��g�쉠۷[a�-I�(q���4	�e)$�	7���Oxh
�N�nc_/4�I{K����;J7�f���Q���ɧ�Tݶ@� qP���B��Z]�=0t��_
y4Y	��$gi�Y�;'��C��j��V� �E�3Z��b��6ZZv
O<ZK��I�5}��8D��.��%�K��~�^��٦�����jﯲ��{.��M@��
a���gC�lq=�\y���i��i�)R�x)��U �z������ $I�_Aui�u:G�Z��
z�7�z/��Q ������"�a��3h����g }mO��N��^q1��̾F��C�݊OE��tu�� �3��`dG%�h���0�2����ko)�7�=�	z7�k�����+�K/��[�9 �2�	W�W2�����Ȋ~F<4��/B˨/�ͭ6U��<F����5�7s.�T�@?�o��T�A?�Qr�����fQ�yb�U	�d�2g� ?�:��{/�-Ǟ�N�dUx��t�b&R���lbtL�&?��2k�P�f"�w����U�=��I���<�bkY��$�B�q�O��ǆ�����ǆ�Hg���ڦ�� �"%# ֫�iC�����&����U�p�Qh8����/w�i�q�M5.���M��G�}.g�ڢő�<�o�
�Q@��V��Aen����|n���Y제��٦>�!�ԅ��0P��ػ��X�P|�T�WR1J�1�����L���P1�T�2�-C�Z G� *��ƾ��Y(�u���g<[�����۟E%e;T���͑B��bw����ܡ���}��m@_�5�������|W���������H2�?_qIn{?J�%b�?�����l�o�N=��
J�$i�c���������� ��,F#�*��緟�Pr�}�~�}��ˀ��G&���i@�4+���f[mj���-y�^    6š�a
��æ�7dv����:��7�~�h���V&2��|?l��`��������n~�b�P����Y�����j�>1|��־JA��g��C~f���Wҵ�G����L��P���
�'��u}��Q��V`1y�B{(��l� �w ��Zi�֑='؆r�Q�44�<�������>������'�(���u^��i��A0�s��4|�u�0�YhC�, '�l`�Q{a����e?㥎�� �0�����Kn�E~:�(��uKj/�_G	&{X��|fs_ �=7�mV{�c�9����X9�M܄dZ}��*[��&�f6���<9w ��WW�?ؿ�AB�W5�4��ʃ@4�ӑ�Ɉ<@j:�C �� �r6�C���o�?
��M�H>Ѭ����I�gD��)@�dG����2 ��]'��v��B������^�z��l3	��_��P�\E��C"�L�]2AT��<���*���Ã��C��P4C��Pf����]1r�&��˝�	m(���ز�rT�3�*7�L̉	��]�Co���l�H���@���1weo�ꠁ���ع��g�$���n���H�{o"ֳG��Jʒ{������ӱQw�B�����Se���"kč�vw�ɝ�6��h�F��$��E��H?=�_�rw7:v��G��G�AAb��ZtD��O�1�DN6�|��	�D���T�␐�����0=���ww$[��Z�V����Uh����}iW�HL�O=
hw��-��_�º��W�4������Y��/I6���v��/�X+#�(��ww�W3W��	|wk+Q~諀ܗ^ٻ��i�e���eت�l������r$�r�����E�Z�dܞIhb���ۨ�����K*�1$�5��	�jH�X�L�,��ݤg�H�b#帻+��/ t�6���1���bq�>A_HB�3j��Ld��|�zPa�
)��ZYW�@l��g4XU4x����J7H9�)�i��]�W��CGHE�P�Ɯ�� �m7�F+9��3x�`kJXe���� �^P{%u0�dMR�5��2�L�.��g�7̻��㦫"/ɟ�9l�b�����М,�p8x"��^ Iʟ+���ߍ �9!����D��x$�co&�Ύ�E��SpJ�_�� ���p�g��4�[�K��!%b5|��*P'w=� ���F��m��nx�Sw�y��|���O�Q�PO�6��=_�s��F!�d��h�O�/�v����"�f3t+���0���_��0������u�~���	��Kt�I���(N��N�a�C���8)���M.�ۃ(Z����+1?������q��9	�˛rw��X��'\˛�5�n��>Pȗp�%��̋f�Ü�����K/�8ƾ�p��~7Y�+�:��U/)C�;\=�W4�eY�������8,P�������{�bN���o|��ø['�<����r��t����?��M^�%t��h�+�z���" ���Aʡ��A�K�yW-��w�@�#��:oT@uXz�R����������������euz�;У�Sk��Z�M�j�ㆁ���[�d�/_�N�0���p�̆�\��w$����ځ�\O�B��Ap�@U.���������V�[EJF�����&P�= ����J}�H��aT(�]�u�����u�@��T⹝0s�q�dXI�%	Q���s���4��~]-��g���Q�����-��g��Y��$��I�Bq��,����N���ӈ��a)sW$���8N{��	uj
gy��Fy���6�O�r�6����J5��{���~$�����n�h�v�c
�&+|�m��C�W��H���%ᰲ܌<Hş.�3)O-���T줗4m��/y�y��[������J����2����釵Q�OT텎,bH�|��	�;��s����'�W➩�s�Z%�l��(�tL�.b�ǯ�ݼ�P���S���:�����%�I^��vu��ދ�X���yHx3�M�e��H-���n����ST�{���o�d����޵o�"J��,Ntx��"/=^ou��f���{�p)���?b��� s߼GG�VK���<�c��0�y�#u�Jw�jI?�Û�&q�6ИM��fȁ�sy�#�����?�� vY���<�^h��n�z�<hx��~��pzr�X됩A�c��M><M��On�R���o���EN�폣��x��=���D)�[�� ^�22Z_��b��bOnޯ��8��ݴ��P�'�^�L�Zt���������S:2UOtP0p��Sz�f��Gw<�}�\Z�5<�h��x?��T�Q��v��>����A"�\c��Y0�NYۗ8��
��Q��Od����� ��7o٣��H�M� Gr��%?�^���	M{�ę��:��[�뱗����k�/��t����P�"�S��~8�����F��L�&(�#�D쏅;ˬ���'4��&�Y�o>�
M����aA;෴����9wh�����o��(��$����ґ���~����L̏�~���s��X[W�ޅ'I���d��!Hc�M0.�s��O�&2ͽV���3�Iɢ�+o�P�	r���$";t�f�=|�|F�3��>3�5���S]�8TѲ4>_�I�%1�"+���,i���ux YM���.���\�c� h�2��M�� i��(M��dH�`��BǺ���۬�=����L&evw
��@g��q��n�d�BW��&N:3�y:��N�^/�JTP��*�����$����<?�N�X��ݺ��D��*m��^]уL�^�x')���9)#w�f��/X���{^��@y�=�c�C9���������=�Xx�9O|r$@9�Jޞyfx�*-W_�h�����)��s������Յ&Y��4R���o���땲��t.M�@g,��t䀓<Ak:45]�����PK�ͧ���Q�Aj;�}y��  ��QM!S���4��Ә�|�ѭ�q4�c$��`2��� r+���쾢xԛю�s���%ĩ+�_B�c���A�E��XЊQq��kG��)��4N�}�ķ=V�f�b(��mW�DJ�4�1�f	>V��p��Bq���H�ũ�9�t��ɥ���w�Yz�d��+��)���̹W�5T��O$������(�p�������j��)��5V��iNmәBr���Rs�����b�yaį@��54y^�����[���sڐ��Z@�����n��a��82���:Mp� �)u�TȜ��(���xa�b�n�՗��1L��p7{�M�&L����Y�z��cA9|���Y�T��
y�H
�Gt�ov����g��g:ڮ�N&��=����U񑊌��;�*�sÍ�����+�PE�D�Y�漉W����](���AC�����>�4�&�v��d-���=��]��yLF�AAf{rb�eZE�{��-0̬]f��R�䙿�%�
\_LH,y�@R��7���I�oA��Zt� ��t�(����5��w �ʜ�@�guj�\��uX;3P�S�<ʮ.����B��4��/��O���^�by����0�a����RB��^l� �zY9����=4KC;���i���F�
/���V;�8�e\{&�/�c�v�'�v�D���;9ˆB��R9 ��m�g�Xv�w�����@������?�<�҅ʚ�N��h-��g����鳎���^Z;M� �t��ji���P��81�F�����_������xj}U�Q�٣]]��ݞ+����Y�c؁'�1Di�nq-ڑ�A�9oɘ�A䕉f@�>@���#�:��v�@�g#���N���| *�����LWRz��B�<��hy�QnH���>�.MB���+s�g��0�R��4$7�_�Ӊ���ϡ8����3��������`�PN9����:����n�^���V"��
�<�4Jȑ����9�@�    %��[#:�$�@n9q�X����8AIl"�u���{S�3P���2siFi`��
��=�,��s0���N�=�0\8�I#e�,e�N��F���6I��XF��)�8���0�T��]�9o���V��_��	�]��T�I��%VC��?f�]�:�|E��t��3j3'�;$�i�����)�k�A���r�Ջ}��4�`Tao�ژ��2�F��i@�њ]@`�z��Uζ~��a�@�0T��1�9]����t۱Ճfx������+a��:?/_�};6��0����yQ�a:��ЃB�Ӭ��(:�UP��2�'H�L��FD��gwj1ڀ�)(�l�mGz.xA�t��A6�Ri�z�D�c���}�x�;3OW�E?�.4����B��Qc�Ȝ,����]3�k��t<߃:�� ���
 J�~S�l�a�Ș�M�;����oڠ�s �� BU�K�z��]mf��=^*52�v����.-\zu3=� �Df�f�뀤^A:���p�]I��U.'��N������num������k����������_�y����p��12�ʃr߃Z�� hQ��o"^aӃ^����s�M=�ݿL�2�v���b�0G�B��(���{�0��!��s K�,a2����"��<��3�^��N�g	�����W���5J?&=,�Z�'���lɳY2����>��5�ު�}-�+M;�^����<�����OP.�	��8��MuN���G�i��d�Er�I�ㄽb��Uf|��Q��[�߽�P)�q�w�v�"K �%m ��K��)$�I���iŴg���`�ں��H�`#奍�{��բ�4���^�[=��:Q�1]-���|19���#[�Ƣ%_�v�i���G�Jb���D�3�ܾVi��5�C֩{��=k�J��B�t��v�ܪ4�d��R7T��X/Y9����J�=^Y��lǐ.#5��V������e �J�<��E���+q�z>
��	�,N��уy�>��
�E*�nlt�lOW��������%�Ǔ�P�<�CY9T٭sh�v+��J�\����%f�}箎|h褼��d�}o���}:)u3�	j�2�򹶶��
S̺�'��B�ٷ,�����Bܡa�HS��u���H�z�9^���ԋVڧ�5�h-���M��{�F-@'�W���h�+���܏���8�Bz���b^��q5� ��A`ە�8�K$��
Bi���ԮK��dE ��K?2ׁA7��f�_ �]P>qv(ĸ��Ճ��K�R1��{H�~d���
*d	��g�_�؁�����y����C�b���^����\Y��Û�c=���ە��jIs+�l��SA�yh����Q��@-dw�y4*�Օ��9`9o\1� �� 6\P�z.��\1v����\�r.<�8? �0�7A�xr�S���-� �|�%+��F�����L~,"��s}�j���*�< m7�	O��!;%�E:��}Lm�Ko.��-�]���h�vf&rH�y-��9pT����Fu�/A�E i��`��,o�z<����M�;C_���,�3-4��%�����b�2T�r�R�LjQ ���vb l]e��[�Q}�-n�Gt#kjG���h�i"�9�%���:��3�vƬ�vy���l��H��w��i|�I�v�.wA=���Jl>x���vb��JE�R3����"�W��d�"�����Il���d�ѯd�ql?���e�\P��jh	dF�i����0��z��5���ƀ8��{�y�Ձ������GiY��=2\]��È��b �9 �����8��)�>4ڌf�ֱ���W���m��_�#��v��'�t
�^��.OL��G!����T1���׃�:�QU皈^���(����c����/��l��ݖ�xp��)-Y]���)�k_2���U�TM��4�W&͌������f�
����;�5�x�ಙ�#���e��7_"c��x�WWA�4�8{1�h�9���ǧ�P��4��\)�Rѕ"�]���d�k4�� ����(_�&җ�vJ(�L0�Q�@D�(&xS.���~��y<q�N���~8��_��3i�:s闄י�(��5��C�-�/�x�`:A ���Ѡ+L�S#ra�F�� v��B檕���@Ycύ��k�Ő�d����K�%������K��a�����"dC��ĭ$>�s�k�fʧ^ya��6F���̛J��K�Q��u���2*q��l�n��n8|�ԋ�;�I��>}E��tػ��o!m��@�?xL�Ev�. @_Tr���L����ց�<M7e��=apt��
"$i.�_+�>ӥ�)�{]����*�)�z|iB�td�j�(~�4�@qIP��RA�"G�jr��c��������.Gh��������oj����Y0Ѿ�ݕm���ڪC9Qf
�
�j���(�!D�Z���~n��<�-^�ݪ���H�x�Z�����[���0�#E�a�-B����*�~�!���+\���Bhu��GOP��{��� �A<�LD�-��f����<zy$��������A���2)K��Ю4����3/L}@�m#���ܛ�w0�6��n|��F���
�>�}��A�3t�:ף�h}�(��u���]_J��h|�o�v����	kҽ+Ͳ+B�C?lW� ��X$v�<���7{gt*(�V:�g8入�Ɲ��=�-���Y��R�Ӹ�8%��<^�u���1G�B��
�� �Ir��Tx���fi�ێ �-@����c�:��9wq7]閐�4C��~��Ї�Z��L�t�s�&�S��/�σ,y�`��9�B#}Gr���v�
�^��bO��#c�.<�i��B�y��נ��s�ܹ�l��Ӈv�� ?���hy������B�@a������_h�9<:5>��WM:�Y �Vr�}�.���=�7�z9��D�ʂ&��k��+��qJ������F&A-z;9�y���ݝ�i�I��^�ȃ�2�U���������[p���'b���)��hd��5��s�����-o��Z9}N�H�ex��� h�C���+���|�n���Nx�.1 �J�R�.�_�45�7��R�~�W�}�/��	�y{�f��^�ǃ�Ҏ �3�gF���G<IAU=�v��~��|~�4�"�����9��oT����H��$��������$�t�r>�H��=�WI�cp�D�g7�L��)>���fs���;��BGA��8���'ޔ�G�s���d�8!w2���en�`��	��)�'hw�m����S�>d~�Q��T����[m$�v�}N���oOд׆z>��r��}5���?���ʣ�2��m�	.�w�WP���9������N�yE�����/�ٻ��%�;;W� ��d$�B:Im�����(7��m����ۄȂ٧{�v�s�x���N�䡞��\�N̢���NɄ���:��bJr��5<0b�L&\��������'����]�A�j�΁�cu�����q#��Cz��s����96���Y�SZ�_�o=3�� ��g����3�޼�Q��%��db�ҡ�N��Q�Y���B����"��9o����6V?��^�?�'��0p�
.�F��=��)�#�R��%�*��Z��0{[#���㛚���ٗjt)�h�L��崦]�-�j�O�x� �9�_���h���۷�H�Ȧ��U.��)�~���ҍN��C���RY.k2�(�q���Í����F�Gb��5��gy�\�7x�.>���ec��bl�d��j
���i�&r���J�A�g7k�3 �_rSn�&�i`φn62 Wd�D�8����a 43�Л�6���)��y�>r���RN�Q��ZY�s1�Ǵ�Q��vF{���Y4�6��	��ɕf'/��虷�}�x�cI��|��.�8�d�n� RhV�6�6���=���3�+��ؿx����L��)��f87�	j��-Q���QrN    �ܼ]��R�qf�o+�i��>�a���n
�Ĝ�����8��l}H�Y�����6�}�����CpD`^D�L�߽K��&�l�V�f?]�(K�Knߣ@�<݂n8�۬���if6�,]e���H���!oU�Lr��(8
��,ge�@�zr�����BG���;�����z r4sn�B���o�^IC�E��O�����j\�z��6����&���TȘk�־�OL(�>�p�O?�ȃv��A4QvH�\�ŧ��9:F&�<1T~k휋7���1ϟ��|�Mc�T~I�|va^�Nβ!���ڮ
8���}͞H!����s͹���YyK�F�C+Gl�3z�-g��j��g�W����X�PV�gHl�D�򎲫�G��I,�]$@3_k�N�u)F''�Y��nĥ�9�!�|�j�c29"6DobD��be��\����L} ��S�s2�h�50�`�[e)��y���zYI�W�J����U*8O�qfL�"o
v�\p�L{�������݂��z�f׫�ws=��݂��Q��Vrp!��.��(������!�h���`�G`��s�#�����B�񲗒`��s�s��6!;�ϳ�8���^�����27R�^�DHN��+2Й�U(�d���@<��fb����h����!$Y��+���A�O0S:^��� �A��M�	Z,�m�XJ�s�+�r�G�j��I�J(Z���wmR���/��M ~ʆ�Mi�A��W��R:���n�*�%@N�yv9��Xf�\߁�U��2|����2"�eZ��-�<mȚA	�!���7ooIm:T�J�[��@��i��ρA=Z.��q��ޕ���%�o��B��#*~"�<^E6�nA�$�FeRz�\]h4�z�����!�6�~���Fe�^p��:t��!�A�I]!�Z��S݋L:㓴�Q�7�'y�R��T�S�f��8�}Oj+�)��<+5H�t�Il�����wi�2�)*� ur�+�zT��ӕd��I�"�H���u�ݷ4�ڀ��'��ɏ�u?��x(6$�wr�l"xe��k�m)�/�Dl�S��2�6Q5�#�B���.q�΍�ā,v�`Љ?볙�s�
���S�/�q�Z�i�+xu�4�_����`�Q:��B�QHaZ�W��6��t���)���$��S���lSJ�ꬦ������|�Js���Q?��z��$�ʚN!D��:D�J4-�k�JҌ5�ˮ�LVJ$݂O5��y�J{7:e{o��yD��0�?�4��D��ur����ݏ��V.$�@�B�E1��q!�X=�&$4n=Ϳ��8e�Ăem��Ķ��{���|�^� >��N�ZB֟�tl"��Ӵ&/�mC6;e�t�Q1#��eG���)�	��N�#�^I�9a$�)81�I��J~��{<@#[�^ƉV�)���\E��GZ7ѫ�����*�БNS���=}9�����2-���$K�HsSz_��r��K~`$�y|-�<��4x��ˡ|紵�վ�o�U2��e���.섪p�Ɏ�nN��so�.=��9�%�E�$4r�9?)�72�zBF=������CĲ;��*��S�2{*�+T��uUg:9�X陖s��K�#z$��iF4#�	��p����	ZW�$��F��]\)9F���)8I%V#m��RꝂ5'���2@b��=�ܖ'IoN<֜��`�͑Q.Ҵ���������NYDޢPH얕�Pr �WF��^�� ���ȅ�!��N��{��4X�n���G�I3�7��Fـd4��u�,dB� y�Pp䜦Hۧ+���D��m;M�u� �Sȱ�I��ȭ����:ʿ$Ǻe_�x��)$�\I�q����X�4k���ݜ43#�R�NԹz�`�.w�e��$�Z��q���}�T�������!�F ]�H,��PX��2�W��9��N������jU<H(X�S���F�Bn5I\ZF���*ͻ*�ɍ�� �� H�.�U��Վֿ��!�r�+��W@{��k�5��囆d�iV��'�1C� �,�� c�8ޫgR[�S��X�ZG���e� �S�$�7�fE���fڙ�l"Fn���C0���a���H��Y��#����ΎC��d�iu�6��
�L�@e����������N��ȉ'*��`ķ��o�6$�妩���3O-� 1m������=u��t\L�a8ɟ�v���$�E��W�h��y�ֿ�)���)�C�'N1G�F=��D�\?SZ���'�u���x��|���|��|�e���?2~a>mCD�|?���^�\�#�Yi��(|��ڤ��|.̹��l߁.������,Bd	�|T�2�Q�ޑ��Ӱ����īy���J?K�f�e(h�y���`�E�k/����=�x8�A5�j��@�ᑽ	Ǭoj�1��b��e��41�v�P۽:�J��u���;�O���a�o=�L���B���ԫ�jNI���n�����g?��F�Kb.4�kT`gKpq)��~���v�������G��Χpj�G5�o-�#t���C��I#M5�
�@��oj��4�^B3C�%����(����z�L�b��V
��=�{�5�P^�\��R��q���FK�W:@�Zz��Շ����X��ң1 �]�����s���f�ۤ���Do@����xF����㥓@���=�`�2e֯���O��J
}N��P�Z;�&���ʳJ�=5/�J~۸�Fy1_�T��f�<�#y�ܪ���w�3dB�@�i� y��C����<H��;$�l�����~=�i d�ǏC�mh�Zզ)Sj�l��2N0�I�]���	�#!-��O7O��HV���2��35��^�@6��0�4�(b�AR����ʌ��B�&A\x��fخ���ۢ�A��<ᖩu����ӧ��u�>�Ƭ�,�)��X�R�UUq1�H�I�s�tj6�r���h�\�����_���{{�2+�|�{p�&Y��gŇ>�:#"�UD��$"fѨ 0a-c�I�7�QmkP	t`Ӆ�o=�p�v� a�
,�C,_�^�t�\�3���4��e�EU�h�G���T1\��N�|/YNeI�A�����hd7�B؉��U0O�i��:N�̭��t3I��
�Yn?˘{��ϗ�e��Cܑ������>`���j˜���L�Z?��h߹	��[���h��N����XvW�3.%�j�����$�}W���$���XYG²�zN��nF?� ���o���i*y�2b���������)��g0�X(�����}"�&�WK|�Nֿ��d��&�ߦ�ـ�Q@ǽ&�yz��X=���3߈8b�:�����"��wM�g>�h�e����Yt+C9�RܹϺ�[j�%�4���xlS�T&4�:E�А���ogt�M �!����7ty�Z��eV�$�#O͞ϡ��l�5�o � ��RdA��e��2�|@�cb�>ݾg�A	.`��IJ�>Ng=�P�D������-yf�P�Ff�������)9yV� r���MT+o��q�Q�D���%7�D���m�����^�	��Ƀ L���K��r�x���"�����mY-d*����,!�ͭ���RN���]�`yaȘN�<��IߕN�\���;O��6Z3i������Y
e$��ҤW�W�~9E��fK�tgY��_�r3I�y�ևY	B�g��"�G��w�+��&<I��ڛp5�	��@���R���ʛyI�[ҏͅ]�/��M(���.�]��P��L���h�y�([�nB=v���m���HnB3.�CO<�xa�Y6��]Q��L6����u��%ۘsyH�
/6�/��_κg�������:{f�/�O�Q4���I�#��k�/��:h��]y��+��r	���F��w�^�����)�����W�AY���kk����"��7��ޱ��Sx��p�/t�4�.O��o�.��n?׷_���]���4��X�;���J�K)l�J/n�~R-0t�4p���P�4�(F������0_]����o�r��L�~>�R���    �K�Eev	�կ\��q�G���)��q��`�����~��3^
>�x�`��7����0q�g�8�
�v 4UO���%�I��A��h�ꋛ�����_Ĵ�y:K��J~J2�B��,�"HD�@<�-���^���{+oF�'��/�O�\X�_�o��ܾ�2WY��zI���We�Ԓ�On�7S#��'K�X/�,�%0B��}�"�0�D(	�P2v��{qZ������d$��u<�0�6Ǽ�2��q�A�" 7[��sb��ە��������<��O�z�e��Z:�����~M�ބ&���Ǣ���"���O���q��@.Q���3�I���C|"7���`���[^��?2E��nBL�o��\4A
�<]rM�P�n��}�h�������5ۭ��Z���|E��v��U���LD+n�;ժ���)e�f��|& :�`�]�>r:��]rwE��k����c*��@t
CB�}>I��Y�S�|��,�z�F��M�$�yg"�t0I����lME~7�Ar�sw.}�s�ai;��H�U���c^��4�FA1�Z�̐�-�C�Ҭ�[��~�����S#Ct��o���}m0�����Lz!�
t�we��V<4c^�Y;W���A�����Ajh�E����;7�`5��ܧupì	�Ʉg+k�л2M%�(qr_��!l�d^b�H�k:8v�ڞ�v��(m�Pa��h<�Yѷ�UF��gR�j��l����~Ax�b�Kܣ�?ŵ]��!���y�Ǜ]����E;�}�(+	��e�P��N0~3I���ȣ'^ �:m�/
�	�D�
��H��P�UA�i[�[i�	{ń��H�w������o٨:�߇�g�l�P�MfGXۣ�.O�c�s%��6al?�(Gd�Z%�9�j�^�$�K�*$[H�Ю�@\b��1F�K6{�|���LRCX�� K��`��у�.A��ݪ�4{����bQ)O��%�i�3%y���)I��h�����/e��z	ڻ�N*�t��4Jȣ�DY2E��Ӽ6.�0����;1Ϧ�y?��M �a���w�(��=�3�H�~��힏�D���a���)�k�� �a�.�T��'�wo�`�,[��Yɓ�ޔ~��̄�!l�"HT��
.����Y"�Q�<]�~��V�S=�;!���!��P7�t���D�*�=�^zE��v��N��|�کRy[��Qg&��"�[��M_\�k�JY���e���ǧ�mA�i�T.��O�Ósu�?�B�	����~a�IdV��z�륎̅؆_a��d$uU��y�h�N4�r[P\��"�� ͜�-h���<�n$��\3I��ĵ�m�/��C�����p��OBP]���nAmuA�Y�uE��B�m�{�h��@pv�sg�;&u(��o�Ɠ[�i��3"�6
�h�$�y�Q��/��t��~�#%�#>����h|�hs�5{H�kr�Qm�/_���;�r�6� PՓM�?F?a�,���5�u>����,Z�jXr'
mf��x&�2´�FS�m�""���Y���rԕc��^�jͅ=x��l�j�[g�(�F�hc�@6]�A��r�.�Ƞ�� ��v(�����4mR��߿��o��7_}�o~KT�E�Ȯ�O�[�'���Ab�%�{�&�ܩ�U���o~����O�����.h���ަ'�o>����w��%"�曯���9��ԫF����	�߄L�'ȭ�
s~�hZ��x�Xw�G*Z���A�����
g���.YX�
����
W�y"!~��o��oY"*�}�0=if��Q��~������
��"x��Ir��O}��F$V��"R���"���|�����?]�U�ꩇq]zL"��է�X�c��I�� ���_K�d��f���C�T��+z����7�,�
��|���1�]�����9#VZ��d�������J#�Wy��Ъ��=ۍ�$���]3�wi�@{<��Ѯ�_�UY��J[xWS|��n��J�{AVf��Y��U�k���
�w�+�~�y��
�w1�œ����41TWr������T��&���������Ѳ<H�0�q ~;� �j���!L�?�����*�`�.6~J�Z� 3h��KH�g�s�u�qb���d�:���~7%�>I�g�#�U�g����^
��,�����<�;=�ɬ������z��];{��)jf�')`Ԓ7ɱ��5��_��ڥ��! �%b���4a���� &��hQ,S�a����Xф
_�A	��ίix"����+Wk�3i��Q�+R6v�P�m����s�,	�%uM�E/}k5���G����L�O���ZJ�v��A������o�q���{�~E��T��K&�G������ꪮ�n�%Hf�QLf�3�,�O�����Xc�3^c5��Z�n�ڱ����X5X�`���_��}��H�d@���22���D�K�g��I���d�v�ri~
��z>Y�}f�]y�D���9<��O��C(�ְ#�])~�J�FUl'(���D>OA�;D�v���4�}�p0O�bHS�V
g9��,M�ZZ7�`&����p_)��t'F-��vQ��5�?�-��[����dD��4N�]����rԉ��,�}#+�Pr�q�^�������U�������QP�'Aޞ����w^@n�i �/L���#[�z�Y��H�C.��qHk��TA�O-��H�ݽ4Y�%<A�6�r��q�p^,�4�
+_Ĭ�����QWO�P�������~�~������Ee�o��B�<��ZtP�p����fn�P�����M[���L��@bjLc�4�P�7Ovj��4��q֫@�]V�r�v��գ�VS�X��2F����/�jVP�P"��|�*8@sb�c��R��_�x������y`�x�����[\�z��J ?rɺ�&�]�����0����ģ��!r%��G)�$�ԗRB�@���!.b��!
��!|�(��@Ua�C��=�g%r������߫>wY�fy���pnM��=�R�y9�Ou� �w�g��m0x�Z9���	B�ŕ4 9+5�C��^����8���m`kҩ�D�t=Ih�k�3c����N��F k�U��JNݏM�+i��.̞���5'j�~�]z��{�z��8��"-Lg
�Cc���7]��P��^�Ԛ ��j�1=R�:-�� �խ��p�p�<��<
eU�6�Q�aZL���O���;`����ڞOq#<���a*ͼ��'�ƦY��,�������<ʃ�k�� v�ƀ�� ��͕�!-R�N����( �i�σ_�A9�Ͳ$�Q�2z0�{%��̜�8��p�b��1N��-��p�/2���,��E �BD�";	E�]Q�pd�A<{�W+"K�J���'e!��J�~"�[���b���ӺWr��ͅ�&Ym[o�"4,{�W2�L}�� 7��e�k��c^���P}:��'(��כN!uD����,����Ӏز���a]yp9�MX��g!�u�  �/p�
�yeC\���q`
O�2I ɿ:VR�A�.��B6�!��KW/L�3&�+㙌��V�}�/ۂq4�u����FRa:�32�#�_��	��Ԁ�E�z���T�$�h8#G�z��@�,��>Q�~ߨ1�T.��kd`��9��f�hd1a$��,q.j<�����a���`��#����೽Nz�t�s�wtLN~��X�k\�m�d=6�p��Q�#�Pg!��h ]}n��%�=w�IS�iEw��� t�wjI�ʣ`�������g��v??#�"���7�33��yJ,MpAO���ĥ���y�Q�a;A���Z�Z����/,0}3y��C;V}ވ:���vk�gE:�p�gs�T�fM�g�?�f���s0�����󨏘ȜJf)���Y�r7cb�y��kW�Xs�^
W��X� q�j�ï4����`�$M X]4��U�R��v�z��rwC[�"	6�+���f�Pa�S�w    J��ʯ$_�k΃&���$_2"��ǒFm5ڠ��R��CU��"K����[޴��O��̭^Aq @���]�)O��S�bFq��
�i4�A�����_�(w�\� ��/i�Ex��2�Rk#{��RF3��R.̀s�t��y�\j,�2�!A�t��	C���E�,ȏXO�H���MS�u����М���F�{�"ڞ �%�	fh�1#��(�g������A��ҷ�F�\��%6����#_$H�6����F��
d�y{*{
D�YU��=�Eb���̢��5m`J]}��
Xa�<��26����9��dĲtr�kmo]�SH"&�/cq��k7H-���~Hr_[R='I��>Aj��U����єo5���!G�/_����r�j4N�^�5��]�p�	���f�a�����I��gtP(���vI�9��ڟĎ��ֳ.�Z��WҺC�h�ydHZ����21p�72$�K2�+!a��ٟ��7�o���e:�!(͒"���K���sj���8/�ƍEY'�j�iƭ/��u�7��t�b�u�5]v�SY^m������b�[��r'�b�k-&��0���V�觷���sd*��tyB5���5�G��0�'��v��$�KgKnK�B�o8,:�<O��:h^���������+��O#.�1��pXuh��5������[��\fxV��d�<�\E��Ƕ~�a�Y�R�-	��"4��-Z��p��li:�92p�r6	���M�5�&6��$��o:�y��<M� �Ú�l�~�0�%i����bSiS�z�c�NīЉ������ʾ�1<r��px�z���^)��|�a�3m]��%��}��I����9���#���!/�`� V)��ĥF)f�٫"��F`=c�����q��h^f���@�\Tlk����Wϻ����z��׮d*�U&��ȅ�t\��\�d!�{�2��t}L)>�#H��_��Rq���F�_wA�+)�E� �o̜��o�(�0��)�����+��dB��6s�7���e�y��t���Y�� L���t$9�� �>J�A:K P�kϨL@5�7�<r��%;~=�C�$	��^��e�"�T@v	B�d8���7PB�1��hR����Z5��!T�"�TPYT_�k͹��K̮Y���C����*�q(2z�� �*Y���U���/�62��S-܄�w]���� Y�#n���zv��c��A��e`���h��A�.�*DP��NI��F��$N����~�񼏻X�.޽�׿��.����8�	��n8��4��߁�,hWA2�=
,�$����o{�q�܏\�lr��X�/p�M'�b�]���R�:��gb�me�q���"B͒������s����W��Dx�SN��ЩUꐅ�0;�s�ɪSr�l6�"S�@�ʮ(}�Q��nwĽ�b�j��wJn��d"{4\��Z>�f���`hy ���D��'����ɋdQ��_7-KЅ�K�_Q�Ð[����%��#~��cN���2��w�b[�R,䱊�ݻ��� �Zɍ�sY�t��z��mޞC�?�
�\�����&Z�j�&��~��W���� c�K�}����M�W�Xo�<�}��)�Э*zǊ��%���E@�o+=Qvc�� �*��&6u�N��d� !���K���;���GiAxq���M��'� ԫ�'�v|�X�Q��A�mA�qQ��m�i$s� &}ad��<��� �DD�Fj�O�y
��Ki�s�~o��I��Vm��3��6�-}���l�n�M:K��Z"�M�}6���o`f�-]����" ex�@�h�-U0�/^�������X�����N`J�G-������+ �ǃH4�HU�.��7
�'p���#RV�ĴC�:c����U���%��.pۧAFK�����@���i��Ŭ8�cȑ앶�4���\�^NmQ:���	%�q�i�(�.q)�A-�����I.N���[+������;�,�l7��2K�K`R�>Ak�'����c���Dz˩=3P	/.�b���T6jKZ"Ε�����a�0����9�FN ?.�i�T���ܝ]�x��팚m��믡�!Ê_�d��T�$
E�9Ky�����^�H��Hsp�S+�N�&s�r�(����<�����Ȉ/�߅*�y:P!��-��,�;A �c�"������`����Z�Ek4s>u��K��1���yt�F�0��fΞgiD�\"�9c �V�@�$����-/gѥP��=��1������2�@$iy9����^�R����CO����}�Tqjy9�N���JY
ԜE��#8�ҙy���|�p�A�1/I[^Ω�RRz:D��m;]b��6(����s��2Q�z:�l*��{E���m���\���a��Tl�q�������,��1�YȰ���a��j�����J5?��9K�J<S��fz���-l�Z~��L\��
=;'�%l����=�ֶ7�s3���U@h�\��R�{�G�\�����=�Hz�ow��k�x�D��~�E���C(��p�s���Z{?�C���M�íM��#���k�6�Z��~�^�C�V�6��W�����Z5lO6R:��JK��sY��l�{p%�xDtK�P9�~��n*Je�l�d=	�T6�Ψ�֊\jU���4od�V��U�����jm�Dj����È�����F$�
�!#T�2�˶�����NPe�L.R"BV��VQ;Ɵ��U�HwXCd* �����͊���Hf3)���F���
E�,�\�y��Έ+ׇ���e{�)N�ylx�rF�^C���"y-�.Hm��sa�d��xd�kRƥ��:�#���]K�0�nu6Z��e+T� � �����M6k� y���d#Z��c�P� Ɩ��t�=B�$���zl�q�x�h��-���i4�r�hhC�:��㪽�6S;�BhuZ�i��,6p�߇�cK��s����E�L�0�^c���0�]���N�>N�"�U�PW�����E�͑�PoJtvQ3��H�ENA����Y���ڷ��Q6����o���U����[I�R����� �mo��.Ҿ�Y��o�1�L?F\gy�Y��R6-�94|
o�u���sc�E,.J�o��/�f������ے���!�m~�쀶
�a ��<z}��f�e^6汹�ß�&^ސ��&M����P���oq�Ү�my�ި[�^?7[�ڽ����nq�ڮ՜��B3b��/���."ڵ�U37�?����
/��y6��i�E�҆��'����%��GG�'�b�����T��W�U�|�t�B�/���][d�L�y^��`�QN��,�_& iW!=�PI�����hg����Q����~&��g�M[��
��(�����\��".o���74y
��&h�I<�ߠz",o ��2{��Uɏ� �L ����4��% imC"�wR m0�I:���Y��܊vx�h����D,���*K��^T����s�mZ#����k��Vۦ �`�e���&��?����Y�I�6��J��d,.�L�9�4��`�a�=W׈�|���6���&�{!4��&e��cWq�$k���D��j�:�(D<��N�</\btI����6�h�#Qs��i}��@�.�H)�v�i�n�m�`���t�Pr����V�tϡ��|A�C��w����a6�rн�F�Aq�*;'8���N�&�~T����68a5Ue�#�!���d#8�o{�Jf�������.��[,�Y�F�\�v�W���������P�l��v�n�E�����5�Vڞ��}��BA� ��� Z��$0.��+H��s�iO10�qE� �/�Ȑ�x �d�ul��d�:hC\/ ��=��H�4/����p�N�,�<�Sw0':�����sM��6��ʸi��@�NI��R|_�UL��`�Χ    BE
�E~SKA�l(~~{��Bj��)���s5[G��|'�]�(�VH���}�_���BS&iS/��[g̣��N5Õ|��2%��^%�Rd� ��ܱ�rۡ��0��*���?�$7�	��z�A,���c��=hV�)6�m���_�Q�\-���E�f���d�E�I <p4V�N
d����q�-�wVfmm��idc)��f�������;%�8��nQǜ�D�F��ܩ]`��z�A�/�H] zp�b�k~G�?�Zqm������C�d�V�sH[���%�j4Wi8�r*�sA^#�+�XZ�w�$CSm��9
����AjO1Eb.ːJ��G�
��cRT�嗘+��͌}��r�!��T���O��c�h���0�ax�<m��8�.�B�8�;�J��2��~��w�훅Jx�*�Q*�� �A٣�p�4PS�}d(�������,��R�;7�_N��|�u�5��G����K-��<jq�;+��ү˥�u�
9�<a��b$������|��p���&��]�:{/��-]!p��8Ld�'����v��]���-�\ �<���þ^���&]�
�=��89��|�"��Ƣ,�a⹌~:�9�μ�t�&v�{��Ђ�pq_�>/����q��8�|��ј1��d{0��}:{��E8���AW�~���d��j����E���A������C��#4m� ���1��c3��_��Ss{�	��>F8�,o��'�w��p8���]���6 �alO�����@&36̰�� �}/�}*�X�p����GdY����XdW��׆��[�sV���AL�+s#�@9�uL���H{9"?����)!��4�F	�q�P����L�%��,�����0��7&�\�wD��Q�od�j��ODG$��vb������tE������X��}�]�yFB�`�����q e��(�������m R]������$+��s9Y֌�����:���wD�+ꮬs9!��0���p܍�xdpY�����d�o���
�4�6��Gilj#� �;ߒ�-�+[n3��0%3�_.�q)�����.U��@����;%�O��&�7peE.c^�p5���~�Pv�F��sDťRt0GK�;͒ݲRM3~+��R6��\6(�g��ҘX잛΀'�ؒ�0m^�>
m�Ή�w�8��%��bY�0Y��
��H�i�YB��,�)��eɖ�w�3�0��Pr�Xς9��JX8O@,�}�;�W�uLm�%[�d@��J�h�P2�b����W��v|�d�3�r�P-Bl���G"a-HUt���J�����_(G�|��\7�O�QfC���(�W��;\�K�ˢ���&�J���ǎ���U.�x%�^e�5g�2��
�rF Ā�M���vG�����d�d�E�d���~�/9i1�O��%Cu\�ϧ���͕�����_w:~<�UO��e���4��<O&܆�.;ǌi��Kv��0_W*L���9�\��!�Lt���2�1ูL��3��W�/y�"�"Z8I ����g�s��c�6��RF�Jɍ��O�"�۶�����3Gk��/�E�_,�y�nު���)����*ٚ=�4��X�	8�Y�q��pX�.�I�8��]�Z�X�%dZpa7��}�[ ,y}"R�l\���`�L�w��n���;�V��Sx��8��.x�)#{�l�#���h�;�/�|?P� �"�n0�d�+�ݕ������1mDp'�iW�=�N�x����;�ӗ7���C�Վ�j����̘�Z��Z���4�r����.ykg�e9�F:�f۶3�J�K�@$�Ώ�	z񖳲�)��PZ�0	l�,�����%s�Ɠ���Z�ǂZ�!^C���k�KO\�b��?������8}̉l'�����]LT�u-��|%�46Z�\vN���ݗKl�������)}q������=�/�Z�-�|����jL��S��<��6hi7ܲ<P����8C6a�'
�gKe����}1>���,d��>�;+��A��쾖r-'�X����ς[��]���~H��#�Wp	#�8�W�yr��L����E�!�F�SJ�*]�#4����mp�pH	P�!n�&�P�� $�����
/�5\�Y�Wh�8�}+(��]��`ܠ�'h�����q����'BڅJ�'����<�����$��-����.�S�S�x�"�z��}�7�'`�������wOf[�Q�	]�k��Y����&Ѐ47 �&����^�mW��7��ߨ(�LSf��ۻϦ"�����n��Z����B�Ի{���{��ꫛ�g}Y�����~��^:���F������9�تz���f�0��>��*sH^�{�7���|�Ӊ}vޘ��[�)ʨs����@�7�[�}S$ŋ`);���7��Q�a���3�6J9�r��@�ל�0�F��� ��J؝9�!~�_0�s1����!��#�#���҉�l�H,�" N1�)�����σ���M�S	M�Ȍ�r��HI!�a0�{D�(��"� _� ZH�"c�!{�bL�3!7rr1FDR����y�"F�e��g���/�Y�{�k��#����(��5N5&̦�d/L�:�'�I������?�����v\(������bso��9�����7���A(� a�m@?�W��o��} X�=�!�+�8.��fA�������dc�� $bF:4�̠HC�Qh~A;����e��f�-譒.�6��\h,1���\:c��Z�=8�������h��v�h<�#55A@��De�XW*�u�Pk���P�v��oE8�1[��bn��	��[�h��鼒�/f3�!����ƈ�㹺�������9|]��"P ^n�9�����4c����i�~��^�u�qט%@-�{��V�����ˌ�@u�<��H�SXN�%��s�O3�*E�iB���ٽ0�hz��F�k�D�b���qh�X�#�-���1c���̮�S�8W�y�C����=S��*�T�-�P�yi�}��) |?�t��%@o9��9.0�/(m��}�L�	.��4P�������E�,��7������"	L���6����]����0jȃ��O�5�~Z�"A^H��lL��g�X��d�V4Z2���-�Y5�����lh׿��f�؉dź4���i��j�����_J��x����A(5�%�a���T�_Ȕ/3�v�8ը�������t����y�{��.r�id��s ��=��0I@����ȿg��g�u�ɍ�+��y��_́m�x���9&�|��2��KhɅ=Hd�*r{x�������6�����ۄ���v�=�/�����z#��	��3*��ˀ�Je�N	:2!��1�=�H��@�T�tD�7)w5�ZI���o��)��,���5�����5J����p�3W�L�t �غ�s~ 数����ǔb#(�P}�6"#���)�N(*�z�Ml�ZOπqXzlx�t:���o� �I,��¼}�=>���fI�$ԲHRsKq}�;m� �����S�F���A@��X^n�e`�������K��j:��Rv�,�W"h������?K���d���V��<�Z�3�} �[ �5Q	Vyꔠ��1K��Z���B8
�	�q2ǝJ�P)H�F�j��T:�!ˡ�E�9̼ F��e�)��	p�(_I�L8��k�
/i!��6᾿Vs��D�XY��ih0���C/͈�Z�p�yapx���Lfv3��e����=�
6��id���8S.unZP�
���=�q.�&���	����38��R�^��Y��?�xۓ!��?Z��Y�+֛Ut)�o����Zݫ��O�NQ.�1��(	�#R�kz�ު���^���*�v�nCCX�N�&���TQ�d�Sp�28s����s�gA��&�4�/T�	o�>)�B�5���;�*���0��X��H�0���$`�*����,�u�)���D�l-�Qm��    ��0�l����g��NߤD�۟���
�, �ڂª��>�$`����F���)�����v6
K�ܐ\r�1)�c��ͪ�Q����n����4�^[�Y����.X�l�����PDw������S\��XZ��خ0F�Y�+��-����.�('�7���)x� oZ��R���Kݷ'<O�w�a�й�]P���>�X�NN��lFC�0��x�%���7����c2��ELW��
C��(��w���k���c��� XZ�ӡ,U�����-����a��n)�!z��y�<9@ܢA�/�e�v� d7O����>Kh]\��n��\�ycC5����6���u�d���L�ش5�X��O�(�R�c�����6/
�
���b`lƌ[ۇ��Gʑ�DE�a�E���i<Ivl,9=0IyD�޳/�t�H&,�5.��q4��gi�C��P�j3�^0��N騁�z�,UáZ��3��ƜEv��#B�.�k������(��]:a�ɾ|n�C"@ZDO�quq�N�o����h��u��d�Lwԧ� �r�1�!���r�V=� �!�j";Zȱ��x�l0�V�uh"�`��D����t��ne�ʭ�w�`��jj��&ҡL�$g��� ��|1�No4֏�� lS�<E�t�B���76��6W�J���D'� .$���E��tc>�9�,�*�t���+��|M�@�+��56(Wf�� �%e��$�D�zF�ܚ}�-�<aGa�Ҏ�Lπ�|�-❥!�U�蜨(Z��=�&T�d4fc�|�Na��'NfB���`R5�9��^KR�g��;�f4��L��TE���� ���p�5��uکL�P�՘:����q��>.b]	��4����j"֕�2$�F�<fLUwP���ۖ[�.�m[2��R+^db�$]�wك�.�~���W�I�P '	��q����]mW�s����2��*�\��jWP���'��Jc�%L}���z}o��cxΓ\����vA�+N�$Y@������Ot1~�Q�'���0����#\�dмJ���*�7����y*2W�E5ɸR��+����{qy���V�XR�[h��
Y�b��)�_���螈�i�'�!tm�`	}I�$�}4D=䝚�2��9�Ě�FR�e�]�{��}��P�Yޞ��6(
�@����^)w��nS����|x�SfЬd@-.�J��;�����k�Q:=�@�%������K��&�=�:���s�F/Q6 d)��=���M��YΡ{��A+g
�.��|L�.�ujP�z���G&���
��[���t�:w���pig:�9���1x1�f0�?�������Ww[�vwN?@���_�1l�oY5��<Z�)���|�V���l��W�p.�/�,�Q�y��ث������. �J&���%��?�Kz)&�#.^��y5*-8���F��NW#\�E�#F-��^���*�00/���2�[���1��6� |k_���d{{r�A:66_vf�\�c�~4ϟBm��."�d,���t����Ԙ��}.a���vntހ�/ �s��K��)�#�ep�h67Fd�=@�nb�\69i{3�p�yEa�)��� nc^`1J��12S6�G����ppZ�������Sy��<W�b���*�G4�W{�YY����>���J�M���t9�N�jl�u�.�O�E�7~�6ñ�e����p ���L��.�PR�F#'	L{���YN���sw)..�AN�����R��ҡ������Yp8���үth��%s�h<��L܋�2�ε�p��a-ѭUq�4Z!l��ը�u�"���I��h��_]$Jz� 9y
��ȹ���5`�{%̿�"[��c�&��`�w����2�*���5����ǫúȘ.�`�5t�t�ot�䀹Q��S�"^���a����
Ud��Z�9�NQE�)+5P�f��&�)D<H������3�I�T}�0�����SpAA�J=����k^-�w�K���wK�/_;gɳ�8�8��P���RH�N����"��Z'�2v�+�g��ANfy��:˂�nW#hVA�Xs�seR��I@�%��,���j}l7� 4J���g��w_xc�YR��k�n� �e�ԋ�w	2���C�!�6I�y/�(Y ��������	s�\���Vzh�R��%s�] tzE�a��ߪk��A,�V�
��W�@����ģĤ�Σ$Q��9�D��N���m��̌m�b��ɴ�h:��d��q�z�������O��(�����қ�ݻ��N������<�x[s�:-����+K���w��*o�
�S}`&>K���;Vyo̥��0�'�<��bizz��#6�j�n+�����m�o@x4���\� ����������X���'j2Y�U����IL̂�f�xeV#��	�W�N����ediP}'o�|�4K�*(������R��2��܊@su���R��>M��JH��J��2�ZBW��R�w߀\+�ҁ#�c#��wE��cUw
@�\H�P���KT+���x1���g��ϋ��q��(%o��qEˣ1�F���i����xg��������do��/�G�<LA-$d0�M�^2��<ZQ������AG���&�l-�%szz��62.ȉzɟ� �������^r��րܓ4S0��99G6��	�6�[փ<���6��&���<zɭ��}5gɬ�'kϳ�PNo2�q��C]t�F�a�-x��A\#����4a%�d[��4��%�%ۺ�"$ '�k�τW����ӹ�Z?��.��2S	X�������7�JGX����iL9g7a����<K`���%/���FO�2󊔜<T+͸m4ヶD�Yr�T�}>�'hN������	�YAvF$NV��}&@m8]kN��#����Y�;�j"$6{�dӣP��D��ǐ��+��Nx��� �dڑ���� ��4۫H��q�v��2���C����z*\b��f<PK���~�QG5�ъ���Wr�Q2�9c�40����OМa+��|o��j��RV�K.�Fčp��W$�(�xi&X<^k��+�A ��u��k�'F�˼���"���l�+���qK��)+�cw�8������%�d�-�}�V�Lv̌ur�4/��@�{4�t��b�F��ڙ0�w��{N��JO"�]���/Yu�〟��D�pf�K�q�*t�"	�3>�*��7|\0���e�����̼U��BGf�=@���8�נ�L���{|���K�.ka4��%P�1Зn�,�Y�Z%���U`��߽�蛄4�c��0��BK�������|��aGA8��`��l5����͌e+�Փ�@�)8�J^�X�/)�Bk�U�ބ�Ұj&G�%�zj)E�	P�TF3�>YTg1���,��*֑F�Dܳ^���.�����'�aW�?��G�ɞY��u���Ѹ����G��O��z�5� �%u!�!g2���^n?�2��Al~���~�(�����?DJ|pFo����:���^?7�vxl���/�~�'�>�'�jDs땶L�����v?=��I��{�yP�n��>��B��>��N��!O�.������h�&5d��6�A�}��*hGʌ̓�"	D�@<N߃�k`�L�4ħȊ��J�U,ܾp�%/��?~XoB�)��h���
m�&��pҧ���-��
��|ˣ�+hqSP�0�?�K� ��Ў��/d�X1_ϥ� ��P�
�T�-ѭ�����z�M�7��|�dkv@�\�>ݶ���T�{c-{O+�i��f�e�I�,F�"��*9����Xh.����[�k	�os�ˮ�a�P����!�͇Z5�u����Xj8�mּJf�H��~��+y�oO���V�	Ft��<�������Ɔ;�OP]�3����OGu�b�Y��Q�L5 ^r�����ANf�jf�Un.R�1S�0s��§ �.�=����Ku��Oq�\���V��2�����ֳY��N�2�L�/p.#O� �  �Y���vM-��HI/&����%�ق!T��" �Y�q�O4<�ԛ"(x؈����W�	sL����Ь���,�^��L�/@l�D:�0c�"%/��M2V�YH7�xN1�˹�.�2�_�t-��G0�}=��2�D��F�g��eV������+3\��T�=�:4a?�li���*��/Z��pt#���Ō��,6�5�=n�͜-֬��1�Kb�db�i,@����rbB��l	�U����[�å�k�H���_N��n�sy/�?�ꓥH�����Kc�`d�����l:,>N��s��2X,�(�ynm��� D�M7���'&1��
;?�����l��G2���)ho��a#=�㥈������	��Җ%@v�><��$=2�U�p!�qn������E����,�b�h7��~�aԝ�az���P�����cR]1�Vی���'؃5E,�1�1�N�J� \E@{�9Xa�I���Hsz̸�i$��Hj�.ܼS����\0Eb�@�p +�s5L�bl�춙�L4Q�xz
g�;dc�><�8S?����_�Zs� ���p�����6 �C�T͔`(ڲ�������ذ�jm��"�щ����.R�&F�	v�Bc�Y�,n��Qƛ� �i�������u��SiuM7[[큫���p��1zSk�=d��: !���m�Z[M���4�̧�l��օN�3��q�kck�I��K��`Q9��@�[�q6ֆ
�2��g"���%�r;��j�� �d\dnꠑ�9+|�1�U�Skw�lo5ʥd��a#1��`����j�Ki��AsÀ�J{�=��d5N�sl?TCj�����f�;�MP���T<��D�b��w��V;��٬���-ޟ@;��L��nm��D�	f��;L��C{�l79P��ʛ��V��X%e�`E�fg���GO�t&����k�j @_����=�����f&=8�͙��j�I�t�p��^��j�� ���qXf��/a��;�Ig���V��}9��t�A��f_�Z�b�z����nv��F�Xĉ���I�$h�]�e�3�|7^P;��{�UN�O��PM���邷�@�,�'��0��9���j�s���CU��ZD>�>�,�\�{{[-�T6��5�m���!מd�f����))F&*�����xw�*;������K.�NKdoo��Oda�O<N�W����"N�wbF�=F��^
x"|t�z�����%�24t�H%��n8`5He���׿�� �Y��U�8In�s��LP^���@�H���	=K�
e���3+��� �d�dGW�|��vX$��� uT�b�a��Z"�=`�I@��=�����1���t�.�%������X�1Xv�!�^w�ı�Lb��ݺнjs_�%@v�w��j�"��7���+�w�1�(�ʺ��n<�!) ;W���>�.�+O�o�s�ԁ=ӫ���%oh=ȥ��5�XSܩQ�"��S#��x��z�T� jT@���Ge����:Q}�`/��)������<H��n&#�5"��W ����-�r�X�V�и#`a^�h���P̩Z�P"V}��w60S�T�Po���x$�`!�UV��pS2�  ��W�!m�@�\�ʖ���ZB�"O��+Xt��8-��O����n��U��!ԍ��,��wS����z��D���=�
��`�r��c�8d��b��ʬ��#x��F
�����<��k��Pmu�������F,DV���bs�.�������-L�z�In?�l#������ )��8]�0W�D�u�y@0�f�pp!�7}7��@��ڛp����/�Q�f�D��)�m�*c�"�pF�LZ<UoR�L�ӗ�/c�̸3�̥���~�`�+�%<iUa��4�
�����+�>�(�$]M"�_��ch�y.B��=���Wx[���C�fq��0�d��N�� ��8�_ɤ��^�M��"�W�|��}=\��)�y~��y�D���ӯ�VV�}c���	~����?W2�Τ9���X�p�e��V���pB���O��v�^B�J��3�RCxR#C����?6��Ҕ��ޔ���<�a��h���?�������s����ﭿ�N�f	�������V�^ݿ����W�R��J���j�a]�[T��W�su�6����:P�M�1���4@��L���� R]ao���@uJ�'���~�� �׿����W;/��F��X��T�˝'�BWQ�@ȟ��O������%�-�Q�t�bK8I@.����t����6����s����ҝ�����L�i�'&X�(��#�Ϳ����$R��*7�+HbM6����^k�=V���H�;N#^��\�m�'qZMϞ,�HB��=���NMw���Mv���̝Sa�X���N���ǪH������i����U��9�q����PYj�|����������fP�/�<�����H���E�0z��;Y�ͪ��Q���>I�Qh�u��f�����O@.��ڰM=����9L~"��4k�Y��=�׿��Y�˱|A�a� �:R�9��<���ϥ�������x����C}�$��Q�$/v�®h�r�S�i�lܬ�[R��;Nd���h+���;@NCu ��O����9�t,�k�?|�9�
�q���i�r�m�?���g'�2�;��7�)�;�/��i���1� ��6�?��^�F��a.1s;I@��K:��d�O���gֆѯy� gBt?���_�~���g~k<��������/EW��*����z���U�2������/����Ww�����.�]�%�/Y�5�@H0��H���9C��w�U;P�����B_N�����^�i�}%����}�ţ��7�ۗ�#�_�i��ۗϝ��#K��4��/������
c�9��_omO�����XX�j�םF�qʼ��f��S��G�:S��ث�����g҂#3rġ���f�YOs~ V߄a4W~ �0JeC
�;��d�]Ě���K��:�x�$T�b�b=�������[�����9�	?�S��>�/F���4s�?82	���h\�k��Ep���"����Va��BBk4���
Ѧ����z.���/] �d`_�m����L�^+�� �ܬ���u�DjB��3�g r�W��w�K@+��}���E�Έ�,v�ٵZ��W֧����&�0d�����"Ig/<��)�޽�+Rs��K�ǟ�B�Ve
�VN�+.<l\2!�s����~�B}Dľ��y����[N�G1���"g�c��7E�ZN����o�)��9���}�"b�38/���Z�P
��McpS�y����&���we��yf�3��{��*XW����j�z-��SK����?T~���
Nv����s����t\55�p�tER "������u��V�p<L�v6r� �{s��tp�f�0�eI�ol�x�����A��:kn�Nf�e1L���L��������<�� ���kaҏ�	�}��2��[d��z	É%��챞����@�}5'@�7P���N�t�TQ侊�� fY���@����'s���J+��f��qGD���.�j Z6ՊR5c��Sx˶�U�H�9=�/t�h���so.8cTC�%_ߜ����8�0k��fա�}�Z�_P�<��D];��VI��T����-�m�R8(̟�u��-J�[�(���/��k�D�o��\��n��1� S�`�tVȸٙ�b�\�>!\$W�=��!�i��n��F%Ox���ǥ�3~�Y-�l�ٱ��f�a�#�(8Qҫ�<��EP-�OTL5���P{)�p����h�ȧ���A�~��cL�T�z���c=���o~���?� 2o     