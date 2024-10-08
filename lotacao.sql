PGDMP     3    "                z            digital    14.0    14.0 &    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    16504    digital    DATABASE     g   CREATE DATABASE digital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE digital;
                postgres    false                        2615    33205    corporativo    SCHEMA        CREATE SCHEMA corporativo;
    DROP SCHEMA corporativo;
                postgres    false                        3079    33255 	   tablefunc 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;
    DROP EXTENSION tablefunc;
                   false            ,           0    0    EXTENSION tablefunc    COMMENT     `   COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';
                        false    2            �            1259    33207    cargo    TABLE     X   CREATE TABLE corporativo.cargo (
    id integer NOT NULL,
    nome character varying
);
    DROP TABLE corporativo.cargo;
       corporativo         heap    postgres    false    6            �            1259    33206    cargo_id_seq    SEQUENCE     �   CREATE SEQUENCE corporativo.cargo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE corporativo.cargo_id_seq;
       corporativo          postgres    false    6    212            -           0    0    cargo_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE corporativo.cargo_id_seq OWNED BY corporativo.cargo.id;
          corporativo          postgres    false    211            �            1259    33216    departamento    TABLE     _   CREATE TABLE corporativo.departamento (
    id integer NOT NULL,
    nome character varying
);
 %   DROP TABLE corporativo.departamento;
       corporativo         heap    postgres    false    6            �            1259    33215    departamento_id_seq    SEQUENCE     �   CREATE SEQUENCE corporativo.departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE corporativo.departamento_id_seq;
       corporativo          postgres    false    6    214            .           0    0    departamento_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE corporativo.departamento_id_seq OWNED BY corporativo.departamento.id;
          corporativo          postgres    false    213            �            1259    33225    funcionario    TABLE     �   CREATE TABLE corporativo.funcionario (
    id integer NOT NULL,
    nome character varying,
    nascimento date,
    pretensao_salarial numeric(18,2),
    pcd boolean
);
 $   DROP TABLE corporativo.funcionario;
       corporativo         heap    postgres    false    6            �            1259    33224    funcionario_id_seq    SEQUENCE     �   CREATE SEQUENCE corporativo.funcionario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE corporativo.funcionario_id_seq;
       corporativo          postgres    false    216    6            /           0    0    funcionario_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE corporativo.funcionario_id_seq OWNED BY corporativo.funcionario.id;
          corporativo          postgres    false    215            �            1259    33234    lotacao    TABLE     �   CREATE TABLE corporativo.lotacao (
    id integer NOT NULL,
    id_funcionario integer,
    id_departamento integer,
    id_cargo integer,
    salario numeric(18,2),
    cadastro date,
    ativo boolean
);
     DROP TABLE corporativo.lotacao;
       corporativo         heap    postgres    false    6            �            1259    33233    lotacao_id_seq    SEQUENCE     �   CREATE SEQUENCE corporativo.lotacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE corporativo.lotacao_id_seq;
       corporativo          postgres    false    6    218            0           0    0    lotacao_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE corporativo.lotacao_id_seq OWNED BY corporativo.lotacao.id;
          corporativo          postgres    false    217            �           2604    33210    cargo id    DEFAULT     n   ALTER TABLE ONLY corporativo.cargo ALTER COLUMN id SET DEFAULT nextval('corporativo.cargo_id_seq'::regclass);
 <   ALTER TABLE corporativo.cargo ALTER COLUMN id DROP DEFAULT;
       corporativo          postgres    false    211    212    212            �           2604    33219    departamento id    DEFAULT     |   ALTER TABLE ONLY corporativo.departamento ALTER COLUMN id SET DEFAULT nextval('corporativo.departamento_id_seq'::regclass);
 C   ALTER TABLE corporativo.departamento ALTER COLUMN id DROP DEFAULT;
       corporativo          postgres    false    214    213    214            �           2604    33228    funcionario id    DEFAULT     z   ALTER TABLE ONLY corporativo.funcionario ALTER COLUMN id SET DEFAULT nextval('corporativo.funcionario_id_seq'::regclass);
 B   ALTER TABLE corporativo.funcionario ALTER COLUMN id DROP DEFAULT;
       corporativo          postgres    false    216    215    216            �           2604    33237 
   lotacao id    DEFAULT     r   ALTER TABLE ONLY corporativo.lotacao ALTER COLUMN id SET DEFAULT nextval('corporativo.lotacao_id_seq'::regclass);
 >   ALTER TABLE corporativo.lotacao ALTER COLUMN id DROP DEFAULT;
       corporativo          postgres    false    217    218    218                      0    33207    cargo 
   TABLE DATA           .   COPY corporativo.cargo (id, nome) FROM stdin;
    corporativo          postgres    false    212   �)       !          0    33216    departamento 
   TABLE DATA           5   COPY corporativo.departamento (id, nome) FROM stdin;
    corporativo          postgres    false    214   _*       #          0    33225    funcionario 
   TABLE DATA           Y   COPY corporativo.funcionario (id, nome, nascimento, pretensao_salarial, pcd) FROM stdin;
    corporativo          postgres    false    216   �*       %          0    33234    lotacao 
   TABLE DATA           o   COPY corporativo.lotacao (id, id_funcionario, id_departamento, id_cargo, salario, cadastro, ativo) FROM stdin;
    corporativo          postgres    false    218   �+       1           0    0    cargo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('corporativo.cargo_id_seq', 7, true);
          corporativo          postgres    false    211            2           0    0    departamento_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('corporativo.departamento_id_seq', 2, true);
          corporativo          postgres    false    213            3           0    0    funcionario_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('corporativo.funcionario_id_seq', 13, true);
          corporativo          postgres    false    215            4           0    0    lotacao_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('corporativo.lotacao_id_seq', 13, true);
          corporativo          postgres    false    217            �           2606    33214    cargo cargo_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY corporativo.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY corporativo.cargo DROP CONSTRAINT cargo_pkey;
       corporativo            postgres    false    212            �           2606    33223    departamento departamento_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY corporativo.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY corporativo.departamento DROP CONSTRAINT departamento_pkey;
       corporativo            postgres    false    214            �           2606    33232    funcionario funcionario_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY corporativo.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY corporativo.funcionario DROP CONSTRAINT funcionario_pkey;
       corporativo            postgres    false    216            �           2606    33239    lotacao lotacao_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY corporativo.lotacao
    ADD CONSTRAINT lotacao_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY corporativo.lotacao DROP CONSTRAINT lotacao_pkey;
       corporativo            postgres    false    218            �           2606    33250    lotacao lotacao_id_cargo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY corporativo.lotacao
    ADD CONSTRAINT lotacao_id_cargo_fkey FOREIGN KEY (id_cargo) REFERENCES corporativo.cargo(id);
 L   ALTER TABLE ONLY corporativo.lotacao DROP CONSTRAINT lotacao_id_cargo_fkey;
       corporativo          postgres    false    218    212    3209            �           2606    33245 $   lotacao lotacao_id_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY corporativo.lotacao
    ADD CONSTRAINT lotacao_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES corporativo.departamento(id);
 S   ALTER TABLE ONLY corporativo.lotacao DROP CONSTRAINT lotacao_id_departamento_fkey;
       corporativo          postgres    false    214    218    3211            �           2606    33240 #   lotacao lotacao_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY corporativo.lotacao
    ADD CONSTRAINT lotacao_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES corporativo.funcionario(id);
 R   ALTER TABLE ONLY corporativo.lotacao DROP CONSTRAINT lotacao_id_funcionario_fkey;
       corporativo          postgres    false    216    218    3213               w   x�3�t�K��,.ITHIUpIL�/�2�(�O/J�򊸌*���J/L���2�t��/JI�)�<�X���e�b�g^ZQ"��{jq	P�[f^b^rjfQ>�9�+PMz��E��\1z\\\ �b.m      !   ;   x�3�IM����O�LTHIT��K�/�M<����|.#Nǔ�̼�⒢Ē̲|�=... �      #   �   x�M�An� Eן�̀�fi)�ȑz�nP���"#Q;�Qz����������3'p�MN� �ND���%����4MO�+�k�c����$�*l0�%��5�pM�ה��E$+����,�Ml5u�X���EO�O*T��̂�:�C?�i��4�:�X0��ԇ��+b���m�X����޸]͌s��3>�a����f�a)i��!/�z9[�y�^�v.6�"����R��TK      %   �   x�m��!�M.3j̑ˆ1�k��Y�W*(l��,�7	���u���;#�U^E�f64y�4�` d�i��.�c�p
��v	N̴�v��Jk�
���Z�XOZZl����<m~�ִ7�r�cRU�>w)���@-     