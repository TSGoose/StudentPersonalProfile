PGDMP  !                    |         	   profiledb    16.3    16.2 9    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            k           1262    16753 	   profiledb    DATABASE     }   CREATE DATABASE profiledb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE profiledb;
                postgres    false                        3079    16754    pldbgapi 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;
    DROP EXTENSION pldbgapi;
                   false            l           0    0    EXTENSION pldbgapi    COMMENT     Y   COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';
                        false    2            �            1259    16894 	   EventTags    TABLE     ^   CREATE TABLE public."EventTags" (
    id bigint NOT NULL,
    event bigint,
    tag bigint
);
    DROP TABLE public."EventTags";
       public         heap    postgres    false            �            1259    16791    Events    TABLE     �   CREATE TABLE public."Events" (
    id bigint NOT NULL,
    name text NOT NULL,
    text text NOT NULL,
    date time with time zone NOT NULL,
    organization text NOT NULL,
    address text NOT NULL,
    img text NOT NULL
);
    DROP TABLE public."Events";
       public         heap    postgres    false            �            1259    16796    Groups    TABLE     Q   CREATE TABLE public."Groups" (
    id bigint NOT NULL,
    name text NOT NULL
);
    DROP TABLE public."Groups";
       public         heap    postgres    false            �            1259    16801 	   Institute    TABLE     T   CREATE TABLE public."Institute" (
    id bigint NOT NULL,
    name text NOT NULL
);
    DROP TABLE public."Institute";
       public         heap    postgres    false            �            1259    16806    Role    TABLE     O   CREATE TABLE public."Role" (
    id bigint NOT NULL,
    name text NOT NULL
);
    DROP TABLE public."Role";
       public         heap    postgres    false            �            1259    16811    Specialization    TABLE     Y   CREATE TABLE public."Specialization" (
    id bigint NOT NULL,
    name text NOT NULL
);
 $   DROP TABLE public."Specialization";
       public         heap    postgres    false            �            1259    16816    Students    TABLE     <  CREATE TABLE public."Students" (
    "ID_Students" bigint NOT NULL,
    "Number" text NOT NULL,
    "Full_Name" text NOT NULL,
    "Institute" bigint NOT NULL,
    "Specialization" bigint NOT NULL,
    "Groups" bigint NOT NULL,
    "Phone" text NOT NULL,
    "Mail" text NOT NULL,
    "Student_IMG" text NOT NULL
);
    DROP TABLE public."Students";
       public         heap    postgres    false            �            1259    16821    Tags    TABLE     O   CREATE TABLE public."Tags" (
    id bigint NOT NULL,
    name text NOT NULL
);
    DROP TABLE public."Tags";
       public         heap    postgres    false            �            1259    16826    Teacher    TABLE     �   CREATE TABLE public."Teacher" (
    id bigint NOT NULL,
    id_login text NOT NULL,
    full_name text NOT NULL,
    department text NOT NULL,
    phone text NOT NULL,
    mail text NOT NULL,
    institute bigint NOT NULL,
    img text
);
    DROP TABLE public."Teacher";
       public         heap    postgres    false            �            1259    16831    Users    TABLE     u   CREATE TABLE public."Users" (
    "Login" text NOT NULL,
    "Password" text NOT NULL,
    "Role" bigint NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    16911    contacts    TABLE     =  CREATE TABLE public.contacts (
    id character varying(255) NOT NULL,
    address character varying(255),
    email character varying(255),
    name character varying(255),
    phone character varying(255),
    photo_url character varying(255),
    status character varying(255),
    title character varying(255)
);
    DROP TABLE public.contacts;
       public         heap    postgres    false            �            1259    16919    events    TABLE       CREATE TABLE public.events (
    id bigint NOT NULL,
    address character varying(255),
    date timestamp(6) without time zone,
    img character varying(255),
    name character varying(255),
    organizations character varying(255),
    text character varying(255)
);
    DROP TABLE public.events;
       public         heap    postgres    false            �            1259    16918    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    233            m           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    232            �           2604    16922 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            b          0    16894 	   EventTags 
   TABLE DATA           5   COPY public."EventTags" (id, event, tag) FROM stdin;
    public          postgres    false    230   �?       Y          0    16791    Events 
   TABLE DATA           T   COPY public."Events" (id, name, text, date, organization, address, img) FROM stdin;
    public          postgres    false    221   �?       Z          0    16796    Groups 
   TABLE DATA           ,   COPY public."Groups" (id, name) FROM stdin;
    public          postgres    false    222   �?       [          0    16801 	   Institute 
   TABLE DATA           /   COPY public."Institute" (id, name) FROM stdin;
    public          postgres    false    223   @       \          0    16806    Role 
   TABLE DATA           *   COPY public."Role" (id, name) FROM stdin;
    public          postgres    false    224   7@       ]          0    16811    Specialization 
   TABLE DATA           4   COPY public."Specialization" (id, name) FROM stdin;
    public          postgres    false    225   T@       ^          0    16816    Students 
   TABLE DATA           �   COPY public."Students" ("ID_Students", "Number", "Full_Name", "Institute", "Specialization", "Groups", "Phone", "Mail", "Student_IMG") FROM stdin;
    public          postgres    false    226   q@       _          0    16821    Tags 
   TABLE DATA           *   COPY public."Tags" (id, name) FROM stdin;
    public          postgres    false    227   �@       `          0    16826    Teacher 
   TABLE DATA           e   COPY public."Teacher" (id, id_login, full_name, department, phone, mail, institute, img) FROM stdin;
    public          postgres    false    228   �@       a          0    16831    Users 
   TABLE DATA           >   COPY public."Users" ("Login", "Password", "Role") FROM stdin;
    public          postgres    false    229   �@       c          0    16911    contacts 
   TABLE DATA           ]   COPY public.contacts (id, address, email, name, phone, photo_url, status, title) FROM stdin;
    public          postgres    false    231   �@       e          0    16919    events 
   TABLE DATA           S   COPY public.events (id, address, date, img, name, organizations, text) FROM stdin;
    public          postgres    false    233   A       n           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 1, true);
          public          postgres    false    232            �           2606    16898    EventTags EventTags_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."EventTags"
    ADD CONSTRAINT "EventTags_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."EventTags" DROP CONSTRAINT "EventTags_pkey";
       public            postgres    false    230            �           2606    16837    Events Events_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT "Events_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Events" DROP CONSTRAINT "Events_pkey";
       public            postgres    false    221            �           2606    16839    Groups Groups_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Groups"
    ADD CONSTRAINT "Groups_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Groups" DROP CONSTRAINT "Groups_pkey";
       public            postgres    false    222            �           2606    16841    Institute Institute_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Institute"
    ADD CONSTRAINT "Institute_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Institute" DROP CONSTRAINT "Institute_pkey";
       public            postgres    false    223            �           2606    16843    Role Role_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Role"
    ADD CONSTRAINT "Role_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Role" DROP CONSTRAINT "Role_pkey";
       public            postgres    false    224            �           2606    16845 "   Specialization Specialization_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Specialization"
    ADD CONSTRAINT "Specialization_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Specialization" DROP CONSTRAINT "Specialization_pkey";
       public            postgres    false    225            �           2606    16847    Students Students_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_pkey" PRIMARY KEY ("ID_Students");
 D   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_pkey";
       public            postgres    false    226            �           2606    16849    Tags Tags_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Tags" DROP CONSTRAINT "Tags_pkey";
       public            postgres    false    227            �           2606    16851    Teacher Teacher_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT "Teacher_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Teacher" DROP CONSTRAINT "Teacher_pkey";
       public            postgres    false    228            �           2606    16853    Users Users_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("Login");
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    229            �           2606    16917    contacts contacts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
       public            postgres    false    231            �           2606    16926    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    233            �           1259    16904    fki_tag_event    INDEX     F   CREATE INDEX fki_tag_event ON public."EventTags" USING btree (event);
 !   DROP INDEX public.fki_tag_event;
       public            postgres    false    230            �           1259    16910    fki_tag_tag    INDEX     B   CREATE INDEX fki_tag_tag ON public."EventTags" USING btree (tag);
    DROP INDEX public.fki_tag_tag;
       public            postgres    false    230            �           2606    16859    Teacher Login_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT "Login_ID" FOREIGN KEY (id_login) REFERENCES public."Users"("Login") NOT VALID;
 >   ALTER TABLE ONLY public."Teacher" DROP CONSTRAINT "Login_ID";
       public          postgres    false    228    4792    229            �           2606    16864    Students Login_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Login_ID" FOREIGN KEY ("Number") REFERENCES public."Users"("Login") NOT VALID;
 ?   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Login_ID";
       public          postgres    false    226    4792    229            �           2606    16869    Users Role_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Role_fkey" FOREIGN KEY ("Role") REFERENCES public."Role"(id) NOT VALID;
 =   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Role_fkey";
       public          postgres    false    229    4782    224            �           2606    16874    Students Student_Groups    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Student_Groups" FOREIGN KEY ("Groups") REFERENCES public."Groups"(id) NOT VALID;
 E   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Student_Groups";
       public          postgres    false    226    4778    222            �           2606    16879    Students Student_Institute    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Student_Institute" FOREIGN KEY ("Institute") REFERENCES public."Institute"(id) NOT VALID;
 H   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Student_Institute";
       public          postgres    false    226    4780    223            �           2606    16884    Students Student_Specialization    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Student_Specialization" FOREIGN KEY ("Specialization") REFERENCES public."Specialization"(id) NOT VALID;
 M   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Student_Specialization";
       public          postgres    false    225    226    4784            �           2606    16889    Teacher Teacher_Institute    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT "Teacher_Institute" FOREIGN KEY (institute) REFERENCES public."Institute"(id) NOT VALID;
 G   ALTER TABLE ONLY public."Teacher" DROP CONSTRAINT "Teacher_Institute";
       public          postgres    false    228    223    4780            �           2606    16899    EventTags tag_event    FK CONSTRAINT        ALTER TABLE ONLY public."EventTags"
    ADD CONSTRAINT tag_event FOREIGN KEY (event) REFERENCES public."Events"(id) NOT VALID;
 ?   ALTER TABLE ONLY public."EventTags" DROP CONSTRAINT tag_event;
       public          postgres    false    4776    221    230            �           2606    16905    EventTags tag_tag    FK CONSTRAINT     y   ALTER TABLE ONLY public."EventTags"
    ADD CONSTRAINT tag_tag FOREIGN KEY (tag) REFERENCES public."Tags"(id) NOT VALID;
 =   ALTER TABLE ONLY public."EventTags" DROP CONSTRAINT tag_tag;
       public          postgres    false    4788    227    230            b      x������ � �      Y      x������ � �      Z      x������ � �      [      x������ � �      \      x������ � �      ]      x������ � �      ^      x������ � �      _      x������ � �      `      x������ � �      a      x������ � �      c      x������ � �      e   (   x�3�4�4�47�50"+ �300�B�=... ��s     