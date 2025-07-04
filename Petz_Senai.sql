toc.dat                                                                                             0000600 0004000 0002000 00000037011 15031756745 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   9    9    
            }            Petz    17.5    17.5 5    U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         X           1262    17754    Petz    DATABASE     }   CREATE DATABASE "Petz" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Petz";
                     postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false         Y           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4         �            1259    17756    cliente    TABLE     �  CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome character varying(40) NOT NULL,
    senha character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    celular character(13) NOT NULL,
    telefone character(13),
    id_genero integer,
    data_nascimento date NOT NULL,
    cpf character(11) NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);
    DROP TABLE public.cliente;
       public         heap r       postgres    false    4         �            1259    17755    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public               postgres    false    218    4         Z           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public               postgres    false    217         �            1259    18057    compra    TABLE     S  CREATE TABLE public.compra (
    id_compra integer NOT NULL,
    id_inventario integer,
    id_cliente integer,
    valor_pago numeric(6,2),
    data_venda date,
    funcionario character varying(30),
    quantidade_vendida integer,
    promocao boolean,
    ultima_atualizacao timestamp without time zone,
    quantidade_venda integer
);
    DROP TABLE public.compra;
       public         heap r       postgres    false    4         �            1259    18056    compra_id_compra_seq    SEQUENCE     �   CREATE SEQUENCE public.compra_id_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.compra_id_compra_seq;
       public               postgres    false    4    228         [           0    0    compra_id_compra_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.compra_id_compra_seq OWNED BY public.compra.id_compra;
          public               postgres    false    227         �            1259    17862    genero    TABLE     �   CREATE TABLE public.genero (
    id_genero integer NOT NULL,
    nome character varying(10),
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.genero;
       public         heap r       postgres    false    4         �            1259    17861    genero_id_genero_seq    SEQUENCE     �   CREATE SEQUENCE public.genero_id_genero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.genero_id_genero_seq;
       public               postgres    false    4    224         \           0    0    genero_id_genero_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.genero_id_genero_seq OWNED BY public.genero.id_genero;
          public               postgres    false    223         �            1259    17778 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    id_inventario integer NOT NULL,
    id_produto integer NOT NULL,
    estoque integer NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);
    DROP TABLE public.inventario;
       public         heap r       postgres    false    4         �            1259    17777    inventario_id_inventario_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.inventario_id_inventario_seq;
       public               postgres    false    4    222         ]           0    0    inventario_id_inventario_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.inventario_id_inventario_seq OWNED BY public.inventario.id_inventario;
          public               postgres    false    221         �            1259    17773    marca    TABLE     �   CREATE TABLE public.marca (
    id_marca integer NOT NULL,
    nome character varying(30) NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);
    DROP TABLE public.marca;
       public         heap r       postgres    false    4         �            1259    17772    marca_id_marca_seq    SEQUENCE     �   CREATE SEQUENCE public.marca_id_marca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.marca_id_marca_seq;
       public               postgres    false    4    220         ^           0    0    marca_id_marca_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.marca_id_marca_seq OWNED BY public.marca.id_marca;
          public               postgres    false    219         �            1259    18020    produto    TABLE     *  CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    nome character varying(40),
    codigo character(13),
    descricao text,
    id_marca integer,
    avaliacao integer,
    tamanho character varying(5),
    preco numeric(5,2),
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.produto;
       public         heap r       postgres    false    4         �            1259    18019    produto_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produto_id_produto_seq;
       public               postgres    false    4    226         _           0    0    produto_id_produto_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;
          public               postgres    false    225         �           2604    17759    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public               postgres    false    218    217    218         �           2604    18060    compra id_compra    DEFAULT     t   ALTER TABLE ONLY public.compra ALTER COLUMN id_compra SET DEFAULT nextval('public.compra_id_compra_seq'::regclass);
 ?   ALTER TABLE public.compra ALTER COLUMN id_compra DROP DEFAULT;
       public               postgres    false    228    227    228         �           2604    17865    genero id_genero    DEFAULT     t   ALTER TABLE ONLY public.genero ALTER COLUMN id_genero SET DEFAULT nextval('public.genero_id_genero_seq'::regclass);
 ?   ALTER TABLE public.genero ALTER COLUMN id_genero DROP DEFAULT;
       public               postgres    false    224    223    224         �           2604    17781    inventario id_inventario    DEFAULT     �   ALTER TABLE ONLY public.inventario ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventario_id_inventario_seq'::regclass);
 G   ALTER TABLE public.inventario ALTER COLUMN id_inventario DROP DEFAULT;
       public               postgres    false    221    222    222         �           2604    17776    marca id_marca    DEFAULT     p   ALTER TABLE ONLY public.marca ALTER COLUMN id_marca SET DEFAULT nextval('public.marca_id_marca_seq'::regclass);
 =   ALTER TABLE public.marca ALTER COLUMN id_marca DROP DEFAULT;
       public               postgres    false    220    219    220         �           2604    18023    produto id_produto    DEFAULT     x   ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);
 A   ALTER TABLE public.produto ALTER COLUMN id_produto DROP DEFAULT;
       public               postgres    false    226    225    226         H          0    17756    cliente 
   TABLE DATA           �   COPY public.cliente (id_cliente, nome, senha, email, celular, telefone, id_genero, data_nascimento, cpf, ultima_atualizacao) FROM stdin;
    public               postgres    false    218       4936.dat R          0    18057    compra 
   TABLE DATA           �   COPY public.compra (id_compra, id_inventario, id_cliente, valor_pago, data_venda, funcionario, quantidade_vendida, promocao, ultima_atualizacao, quantidade_venda) FROM stdin;
    public               postgres    false    228       4946.dat N          0    17862    genero 
   TABLE DATA           E   COPY public.genero (id_genero, nome, ultima_atualizacao) FROM stdin;
    public               postgres    false    224       4942.dat L          0    17778 
   inventario 
   TABLE DATA           \   COPY public.inventario (id_inventario, id_produto, estoque, ultima_atualizacao) FROM stdin;
    public               postgres    false    222       4940.dat J          0    17773    marca 
   TABLE DATA           C   COPY public.marca (id_marca, nome, ultima_atualizacao) FROM stdin;
    public               postgres    false    220       4938.dat P          0    18020    produto 
   TABLE DATA              COPY public.produto (id_produto, nome, codigo, descricao, id_marca, avaliacao, tamanho, preco, ultima_atualizacao) FROM stdin;
    public               postgres    false    226       4944.dat `           0    0    cliente_id_cliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 5, true);
          public               postgres    false    217         a           0    0    compra_id_compra_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.compra_id_compra_seq', 16, true);
          public               postgres    false    227         b           0    0    genero_id_genero_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.genero_id_genero_seq', 3, true);
          public               postgres    false    223         c           0    0    inventario_id_inventario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inventario_id_inventario_seq', 11, true);
          public               postgres    false    221         d           0    0    marca_id_marca_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.marca_id_marca_seq', 4, true);
          public               postgres    false    219         e           0    0    produto_id_produto_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produto_id_produto_seq', 19, true);
          public               postgres    false    225         �           2606    17788    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public                 postgres    false    218         �           2606    18062    compra compra_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id_compra);
 <   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_pkey;
       public                 postgres    false    228         �           2606    17867    genero genero_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public                 postgres    false    224         �           2606    17796    inventario inventario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_inventario);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public                 postgres    false    222         �           2606    17794    marca marca_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id_marca);
 :   ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_pkey;
       public                 postgres    false    220         �           2606    18027    produto produto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public                 postgres    false    226         �           2606    18063    compra fk_cliente    FK CONSTRAINT     }   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 ;   ALTER TABLE ONLY public.compra DROP CONSTRAINT fk_cliente;
       public               postgres    false    228    218    4774         �           2606    17868    cliente fk_genero    FK CONSTRAINT     z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_genero FOREIGN KEY (id_genero) REFERENCES public.genero(id_genero);
 ;   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_genero;
       public               postgres    false    224    218    4780         �           2606    18068    compra fk_inventario    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT fk_inventario FOREIGN KEY (id_inventario) REFERENCES public.inventario(id_inventario);
 >   ALTER TABLE ONLY public.compra DROP CONSTRAINT fk_inventario;
       public               postgres    false    228    222    4778         �           2606    18028    produto fk_marca    FK CONSTRAINT     v   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT fk_marca FOREIGN KEY (id_marca) REFERENCES public.marca(id_marca);
 :   ALTER TABLE ONLY public.produto DROP CONSTRAINT fk_marca;
       public               postgres    false    226    4776    220         �           2606    18033    inventario fk_produto    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);
 ?   ALTER TABLE ONLY public.inventario DROP CONSTRAINT fk_produto;
       public               postgres    false    222    4782    226                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               4936.dat                                                                                            0000600 0004000 0002000 00000001337 15031756745 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Jorge Dos Santos	Mengão1212	Jorjão@gmail.com	5524992476542	null         	1	1987-09-14	13467823568	2025-07-04 09:09:52.771931
2	Douglas Da Silva Caosta	paodesal20	douglinhasdograu@gmail.com	5524988301678	null         	2	1999-10-13	18071290317	2025-07-04 09:09:52.771931
3	Pedro Barros Almeida	farinha33	barrospedracosa@gmail.com	5524988456712	null         	1	2011-08-10	33090145697	2025-07-04 09:09:52.771931
4	Henrique Aldebaran De Santos	fluminensemenor146	fluminensemenordorio@gmail.com	5524988807134	null         	2	1998-03-01	90145678297	2025-07-04 09:09:52.771931
5	Nicolas Claudio De Colombo	colombodecaminhas3	colombinhovascaino@gmail.com	5524988578910	null         	1	2001-07-06	90876213457	2025-07-04 09:09:52.771931
\.


                                                                                                                                                                                                                                                                                                 4946.dat                                                                                            0000600 0004000 0002000 00000002317 15031756745 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	3	99.98	2025-05-12	Fernando de Assunsão	2	f	2025-07-04 10:49:32.995455	2
2	8	4	2699.97	2025-07-03	Fernando de Assunsão	3	f	2025-07-04 10:49:32.995455	3
3	10	5	90.00	2025-07-03	José Amorim	2	f	2025-07-04 10:49:32.995455	2
4	4	2	839.87	2025-03-04	Carlinha Fagundes	3	t	2025-07-04 10:49:32.995455	3
5	7	4	32.49	2025-03-04	Fernando de Assunsão	1	f	2025-07-04 10:49:32.995455	1
6	2	4	299.94	2025-04-15	João Amorim	6	t	2025-07-04 10:49:32.995455	6
7	2	5	199.96	2025-06-23	João Amorim	4	f	2025-07-04 10:49:32.995455	4
8	6	2	260.00	2025-05-03	Fernando de Assunsão	10	t	2025-07-04 10:49:32.995455	10
9	10	1	135.00	2025-06-25	João Amorim	3	t	2025-07-04 10:49:32.995455	3
10	11	1	999.99	2025-04-13	Fernando de Assunsão	1	f	2025-07-04 10:49:32.995455	1
11	3	2	450.00	2025-08-14	Fernando de Assunsão	20	t	2025-07-04 10:49:32.995455	20
12	5	3	239.98	2025-03-06	Carlinha Fagundes	2	f	2025-07-04 10:49:32.995455	2
13	3	4	157.50	2025-05-18	Fernando de Assunsão	7	t	2025-07-04 10:49:32.995455	7
14	6	3	208.00	2025-06-19	Carlinha Fagundes	8	f	2025-07-04 10:49:32.995455	8
15	9	5	682.68	2025-06-21	Carlinha Fagundes	12	t	2025-07-04 10:49:32.995455	12
16	5	2	359.97	2025-03-09	Fernando de Assunsão	3	f	2025-07-04 10:49:32.995455	3
\.


                                                                                                                                                                                                                                                                                                                 4942.dat                                                                                            0000600 0004000 0002000 00000000165 15031756745 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Masculino	2025-07-02 11:02:24.856632
2	Feminino	2025-07-02 11:02:24.856632
3	Outro	2025-07-02 11:02:24.856632
\.


                                                                                                                                                                                                                                                                                                                                                                                                           4940.dat                                                                                            0000600 0004000 0002000 00000000545 15031756745 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	10	50	2025-07-04 10:06:32.933644
3	11	80	2025-07-04 10:06:32.933644
4	12	40	2025-07-04 10:06:32.933644
5	13	120	2025-07-04 10:06:32.933644
6	14	20	2025-07-04 10:06:32.933644
7	15	30	2025-07-04 10:06:32.933644
8	16	60	2025-07-04 10:06:32.933644
9	17	20	2025-07-04 10:06:32.933644
10	18	50	2025-07-04 10:06:32.933644
11	19	1	2025-07-04 10:06:32.933644
\.


                                                                                                                                                           4938.dat                                                                                            0000600 0004000 0002000 00000000221 15031756745 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Petz	2025-07-02 10:33:59.578259
2	ZeeDog	2025-07-02 10:33:59.578259
3	Kelco	2025-07-02 10:33:59.578259
4	PETWA	2025-07-02 10:33:59.578259
\.


                                                                                                                                                                                                                                                                                                                                                                               4944.dat                                                                                            0000600 0004000 0002000 00000002207 15031756745 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10	Ração Premium	1043673423741	Ração muito boa muito legal uau	2	4	15Kg	49.99	2025-07-04 09:38:08.516093
11	Mordedor Macio Pequeno	1823762835624	Mordedor fofo para cachorros pequenos raivosos	3	4	7cm	22.50	2025-07-04 09:38:08.516093
12	Gaiola Média	1251955627457	Gaiola para papagaios e passarinhos com galhos de enfeite	1	5	60cm	279.99	2025-07-04 09:38:08.516093
13	Cama Conforto Com Almofada	5126430018743	Cama almofadada macia vermelha	4	4	70cm	119.99	2025-07-04 09:38:08.516093
14	Alpiste Saborizado De Banana	1023748258361	Alpiste com sabor de banana madura	1	3	30g	26.00	2025-07-04 09:38:08.516093
15	Roupinha Para Morcego	2341694757456	Uma roupinha de algodão para deixar estiloso	4	5	P	32.49	2025-07-04 09:38:08.516093
16	Pula-Pula Para Cavalo	3452748575645	Pula cavalinho	2	5	2m	899.99	2025-07-04 09:38:08.516093
17	Sapatinho Para Rinoceronte	7128219781500	Seu rinoceronte vai amar	2	4	GG	56.89	2025-07-04 09:38:08.516093
18	Escova De Dente Para Golfinho	3287031767321	Escova de dente macia totoza	1	4	20cm	45.00	2025-07-04 09:38:08.516093
19	Brinquedo De Osso	3425618112356	TALVEZ SEU GATO GOSTE	2	1	12m	999.99	2025-07-04 09:38:08.516093
\.


                                                                                                                                                                                                                                                                                                                                                                                         restore.sql                                                                                         0000600 0004000 0002000 00000031435 15031756745 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "Petz";
--
-- Name: Petz; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Petz" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Petz" OWNER TO postgres;

\connect "Petz"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome character varying(40) NOT NULL,
    senha character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    celular character(13) NOT NULL,
    telefone character(13),
    id_genero integer,
    data_nascimento date NOT NULL,
    cpf character(11) NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO postgres;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compra (
    id_compra integer NOT NULL,
    id_inventario integer,
    id_cliente integer,
    valor_pago numeric(6,2),
    data_venda date,
    funcionario character varying(30),
    quantidade_vendida integer,
    promocao boolean,
    ultima_atualizacao timestamp without time zone,
    quantidade_venda integer
);


ALTER TABLE public.compra OWNER TO postgres;

--
-- Name: compra_id_compra_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compra_id_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.compra_id_compra_seq OWNER TO postgres;

--
-- Name: compra_id_compra_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compra_id_compra_seq OWNED BY public.compra.id_compra;


--
-- Name: genero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genero (
    id_genero integer NOT NULL,
    nome character varying(10),
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.genero OWNER TO postgres;

--
-- Name: genero_id_genero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genero_id_genero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genero_id_genero_seq OWNER TO postgres;

--
-- Name: genero_id_genero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genero_id_genero_seq OWNED BY public.genero.id_genero;


--
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventario (
    id_inventario integer NOT NULL,
    id_produto integer NOT NULL,
    estoque integer NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- Name: inventario_id_inventario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventario_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventario_id_inventario_seq OWNER TO postgres;

--
-- Name: inventario_id_inventario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventario_id_inventario_seq OWNED BY public.inventario.id_inventario;


--
-- Name: marca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marca (
    id_marca integer NOT NULL,
    nome character varying(30) NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);


ALTER TABLE public.marca OWNER TO postgres;

--
-- Name: marca_id_marca_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marca_id_marca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.marca_id_marca_seq OWNER TO postgres;

--
-- Name: marca_id_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marca_id_marca_seq OWNED BY public.marca.id_marca;


--
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    nome character varying(40),
    codigo character(13),
    descricao text,
    id_marca integer,
    avaliacao integer,
    tamanho character varying(5),
    preco numeric(5,2),
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- Name: produto_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produto_id_produto_seq OWNER TO postgres;

--
-- Name: produto_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;


--
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- Name: compra id_compra; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra ALTER COLUMN id_compra SET DEFAULT nextval('public.compra_id_compra_seq'::regclass);


--
-- Name: genero id_genero; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genero ALTER COLUMN id_genero SET DEFAULT nextval('public.genero_id_genero_seq'::regclass);


--
-- Name: inventario id_inventario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventario_id_inventario_seq'::regclass);


--
-- Name: marca id_marca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marca ALTER COLUMN id_marca SET DEFAULT nextval('public.marca_id_marca_seq'::regclass);


--
-- Name: produto id_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_cliente, nome, senha, email, celular, telefone, id_genero, data_nascimento, cpf, ultima_atualizacao) FROM stdin;
\.
COPY public.cliente (id_cliente, nome, senha, email, celular, telefone, id_genero, data_nascimento, cpf, ultima_atualizacao) FROM '$$PATH$$/4936.dat';

--
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compra (id_compra, id_inventario, id_cliente, valor_pago, data_venda, funcionario, quantidade_vendida, promocao, ultima_atualizacao, quantidade_venda) FROM stdin;
\.
COPY public.compra (id_compra, id_inventario, id_cliente, valor_pago, data_venda, funcionario, quantidade_vendida, promocao, ultima_atualizacao, quantidade_venda) FROM '$$PATH$$/4946.dat';

--
-- Data for Name: genero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genero (id_genero, nome, ultima_atualizacao) FROM stdin;
\.
COPY public.genero (id_genero, nome, ultima_atualizacao) FROM '$$PATH$$/4942.dat';

--
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventario (id_inventario, id_produto, estoque, ultima_atualizacao) FROM stdin;
\.
COPY public.inventario (id_inventario, id_produto, estoque, ultima_atualizacao) FROM '$$PATH$$/4940.dat';

--
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marca (id_marca, nome, ultima_atualizacao) FROM stdin;
\.
COPY public.marca (id_marca, nome, ultima_atualizacao) FROM '$$PATH$$/4938.dat';

--
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (id_produto, nome, codigo, descricao, id_marca, avaliacao, tamanho, preco, ultima_atualizacao) FROM stdin;
\.
COPY public.produto (id_produto, nome, codigo, descricao, id_marca, avaliacao, tamanho, preco, ultima_atualizacao) FROM '$$PATH$$/4944.dat';

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 5, true);


--
-- Name: compra_id_compra_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compra_id_compra_seq', 16, true);


--
-- Name: genero_id_genero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genero_id_genero_seq', 3, true);


--
-- Name: inventario_id_inventario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventario_id_inventario_seq', 11, true);


--
-- Name: marca_id_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marca_id_marca_seq', 4, true);


--
-- Name: produto_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_produto_seq', 19, true);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: compra compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id_compra);


--
-- Name: genero genero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);


--
-- Name: inventario inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_inventario);


--
-- Name: marca marca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id_marca);


--
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);


--
-- Name: compra fk_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: cliente fk_genero; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_genero FOREIGN KEY (id_genero) REFERENCES public.genero(id_genero);


--
-- Name: compra fk_inventario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT fk_inventario FOREIGN KEY (id_inventario) REFERENCES public.inventario(id_inventario);


--
-- Name: produto fk_marca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT fk_marca FOREIGN KEY (id_marca) REFERENCES public.marca(id_marca);


--
-- Name: inventario fk_produto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   