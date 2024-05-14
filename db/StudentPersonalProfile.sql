PGDMP      )                |         	   profiledb    16.3    16.2 X    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16753 	   profiledb    DATABASE     }   CREATE DATABASE profiledb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE profiledb;
                postgres    false                        3079    16754    pldbgapi 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;
    DROP EXTENSION pldbgapi;
                   false            �           0    0    EXTENSION pldbgapi    COMMENT     Y   COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';
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
       public         heap    postgres    false            �            1259    16816    Students    TABLE     1  CREATE TABLE public."Students" (
    id bigint NOT NULL,
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
       public          postgres    false    233            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    232            �            1259    16928    groups    TABLE     X   CREATE TABLE public.groups (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.groups;
       public         heap    postgres    false            �            1259    16927    groups_id_seq    SEQUENCE     v   CREATE SEQUENCE public.groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public          postgres    false    235            �           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          postgres    false    234            �            1259    16935 	   institute    TABLE     [   CREATE TABLE public.institute (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.institute;
       public         heap    postgres    false            �            1259    16934    institute_id_seq    SEQUENCE     y   CREATE SEQUENCE public.institute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.institute_id_seq;
       public          postgres    false    237            �           0    0    institute_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.institute_id_seq OWNED BY public.institute.id;
          public          postgres    false    236            �            1259    16942    specialization    TABLE     `   CREATE TABLE public.specialization (
    id bigint NOT NULL,
    name character varying(255)
);
 "   DROP TABLE public.specialization;
       public         heap    postgres    false            �            1259    16941    specialization_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.specialization_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.specialization_id_seq;
       public          postgres    false    239            �           0    0    specialization_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.specialization_id_seq OWNED BY public.specialization.id;
          public          postgres    false    238            �            1259    16949    students    TABLE     9  CREATE TABLE public.students (
    id bigint NOT NULL,
    full_name character varying(255),
    mail character varying(255),
    number character varying(255),
    phone character varying(255),
    student_img character varying(255),
    group_id bigint,
    institute_id bigint,
    specialization_id bigint
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    16948    students_id_seq    SEQUENCE     x   CREATE SEQUENCE public.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    241            �           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    240            �           2604    16922 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16931 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    16938    institute id    DEFAULT     l   ALTER TABLE ONLY public.institute ALTER COLUMN id SET DEFAULT nextval('public.institute_id_seq'::regclass);
 ;   ALTER TABLE public.institute ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    16945    specialization id    DEFAULT     v   ALTER TABLE ONLY public.specialization ALTER COLUMN id SET DEFAULT nextval('public.specialization_id_seq'::regclass);
 @   ALTER TABLE public.specialization ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    16952    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �          0    16894 	   EventTags 
   TABLE DATA           5   COPY public."EventTags" (id, event, tag) FROM stdin;
    public          postgres    false    230   $b       |          0    16791    Events 
   TABLE DATA           T   COPY public."Events" (id, name, text, date, organization, address, img) FROM stdin;
    public          postgres    false    221   Ab       }          0    16796    Groups 
   TABLE DATA           ,   COPY public."Groups" (id, name) FROM stdin;
    public          postgres    false    222   ^b       ~          0    16801 	   Institute 
   TABLE DATA           /   COPY public."Institute" (id, name) FROM stdin;
    public          postgres    false    223   �b                 0    16806    Role 
   TABLE DATA           *   COPY public."Role" (id, name) FROM stdin;
    public          postgres    false    224   �b       �          0    16811    Specialization 
   TABLE DATA           4   COPY public."Specialization" (id, name) FROM stdin;
    public          postgres    false    225   c       �          0    16816    Students 
   TABLE DATA           �   COPY public."Students" (id, "Number", "Full_Name", "Institute", "Specialization", "Groups", "Phone", "Mail", "Student_IMG") FROM stdin;
    public          postgres    false    226   %c       �          0    16821    Tags 
   TABLE DATA           *   COPY public."Tags" (id, name) FROM stdin;
    public          postgres    false    227   Bc       �          0    16826    Teacher 
   TABLE DATA           e   COPY public."Teacher" (id, id_login, full_name, department, phone, mail, institute, img) FROM stdin;
    public          postgres    false    228   _c       �          0    16831    Users 
   TABLE DATA           >   COPY public."Users" ("Login", "Password", "Role") FROM stdin;
    public          postgres    false    229   |c       �          0    16911    contacts 
   TABLE DATA           ]   COPY public.contacts (id, address, email, name, phone, photo_url, status, title) FROM stdin;
    public          postgres    false    231   �c       �          0    16919    events 
   TABLE DATA           S   COPY public.events (id, address, date, img, name, organizations, text) FROM stdin;
    public          postgres    false    233   �c       �          0    16928    groups 
   TABLE DATA           *   COPY public.groups (id, name) FROM stdin;
    public          postgres    false    235   �c       �          0    16935 	   institute 
   TABLE DATA           -   COPY public.institute (id, name) FROM stdin;
    public          postgres    false    237   Ad       �          0    16942    specialization 
   TABLE DATA           2   COPY public.specialization (id, name) FROM stdin;
    public          postgres    false    239   �d       �          0    16949    students 
   TABLE DATA           ~   COPY public.students (id, full_name, mail, number, phone, student_img, group_id, institute_id, specialization_id) FROM stdin;
    public          postgres    false    241   �d       �           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 1, true);
          public          postgres    false    232            �           0    0    groups_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.groups_id_seq', 1, false);
          public          postgres    false    234            �           0    0    institute_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.institute_id_seq', 1, false);
          public          postgres    false    236            �           0    0    specialization_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.specialization_id_seq', 1, false);
          public          postgres    false    238            �           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 3, true);
          public          postgres    false    240            �           2606    16898    EventTags EventTags_pkey 
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
   CONSTRAINT     X   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_pkey" PRIMARY KEY (id);
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
       public            postgres    false    233            �           2606    16933    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    235            �           2606    16940    institute institute_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.institute
    ADD CONSTRAINT institute_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.institute DROP CONSTRAINT institute_pkey;
       public            postgres    false    237            �           2606    16947 "   specialization specialization_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.specialization
    ADD CONSTRAINT specialization_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.specialization DROP CONSTRAINT specialization_pkey;
       public            postgres    false    239            �           2606    16956    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    241            �           1259    16904    fki_tag_event    INDEX     F   CREATE INDEX fki_tag_event ON public."EventTags" USING btree (event);
 !   DROP INDEX public.fki_tag_event;
       public            postgres    false    230            �           1259    16910    fki_tag_tag    INDEX     B   CREATE INDEX fki_tag_tag ON public."EventTags" USING btree (tag);
    DROP INDEX public.fki_tag_tag;
       public            postgres    false    230            �           2606    16957 #   students FK2emr96ubv2wyn0raim8vujjc    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT "FK2emr96ubv2wyn0raim8vujjc" FOREIGN KEY (group_id) REFERENCES public.groups(id);
 O   ALTER TABLE ONLY public.students DROP CONSTRAINT "FK2emr96ubv2wyn0raim8vujjc";
       public          postgres    false    235    241    4826            �           2606    16967 $   students FK5bjubwsyos8s3rd9d2jxtvhve    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT "FK5bjubwsyos8s3rd9d2jxtvhve" FOREIGN KEY (specialization_id) REFERENCES public.specialization(id);
 P   ALTER TABLE ONLY public.students DROP CONSTRAINT "FK5bjubwsyos8s3rd9d2jxtvhve";
       public          postgres    false    239    241    4830            �           2606    16962 $   students FK65ccie5vnw8drx7jcai8swe0e    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT "FK65ccie5vnw8drx7jcai8swe0e" FOREIGN KEY (institute_id) REFERENCES public.institute(id);
 P   ALTER TABLE ONLY public.students DROP CONSTRAINT "FK65ccie5vnw8drx7jcai8swe0e";
       public          postgres    false    241    4828    237            �           2606    16859    Teacher Login_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT "Login_ID" FOREIGN KEY (id_login) REFERENCES public."Users"("Login") NOT VALID;
 >   ALTER TABLE ONLY public."Teacher" DROP CONSTRAINT "Login_ID";
       public          postgres    false    4816    229    228            �           2606    16864    Students Login_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Login_ID" FOREIGN KEY ("Number") REFERENCES public."Users"("Login") NOT VALID;
 ?   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Login_ID";
       public          postgres    false    4816    226    229            �           2606    16869    Users Role_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Role_fkey" FOREIGN KEY ("Role") REFERENCES public."Role"(id) NOT VALID;
 =   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Role_fkey";
       public          postgres    false    229    4806    224            �           2606    16874    Students Student_Groups    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Student_Groups" FOREIGN KEY ("Groups") REFERENCES public."Groups"(id) NOT VALID;
 E   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Student_Groups";
       public          postgres    false    222    4802    226            �           2606    16879    Students Student_Institute    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Student_Institute" FOREIGN KEY ("Institute") REFERENCES public."Institute"(id) NOT VALID;
 H   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Student_Institute";
       public          postgres    false    226    223    4804            �           2606    16884    Students Student_Specialization    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Student_Specialization" FOREIGN KEY ("Specialization") REFERENCES public."Specialization"(id) NOT VALID;
 M   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Student_Specialization";
       public          postgres    false    225    4808    226            �           2606    16889    Teacher Teacher_Institute    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT "Teacher_Institute" FOREIGN KEY (institute) REFERENCES public."Institute"(id) NOT VALID;
 G   ALTER TABLE ONLY public."Teacher" DROP CONSTRAINT "Teacher_Institute";
       public          postgres    false    223    4804    228            �           2606    16899    EventTags tag_event    FK CONSTRAINT        ALTER TABLE ONLY public."EventTags"
    ADD CONSTRAINT tag_event FOREIGN KEY (event) REFERENCES public."Events"(id) NOT VALID;
 ?   ALTER TABLE ONLY public."EventTags" DROP CONSTRAINT tag_event;
       public          postgres    false    4800    230    221            �           2606    16905    EventTags tag_tag    FK CONSTRAINT     y   ALTER TABLE ONLY public."EventTags"
    ADD CONSTRAINT tag_tag FOREIGN KEY (tag) REFERENCES public."Tags"(id) NOT VALID;
 =   ALTER TABLE ONLY public."EventTags" DROP CONSTRAINT tag_tag;
       public          postgres    false    227    230    4812            �      x������ � �      |      x������ � �      }   4   x�3估�P�K.,��H�А�MĈ�MĘ�MĄ�MĔ+F��� h�*�      ~   /   x�3�0�����".#g텹\Ɯ_Xpa�	r��qqq ���            x�3�,.)MI�+����� $��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�322022�44261�4����� $X      �      x������ � �      �   (   x�3�4�4�47�50"+ �300�B�=... ��s      �   4   x�3估�P�K.,��H�А�MĈ�MĘ�MĄ�MĔ+F��� h�*�      �   /   x�3�0�����".#g텹\Ɯ_Xpa�	r��qqq ���      �   >   x�3�0�/,�2�0ș{a	�1�9�˄�� s���\��\�ua��9\1z\\\ �"y      �   v   x�3�0�¦.콰��&GY��휉�z��FF@�iailnhbjnndʙ��n�	�\Ɯ&\�}a�]��V���;��ь6m@��S��
��9c� �+F��� ��S�     