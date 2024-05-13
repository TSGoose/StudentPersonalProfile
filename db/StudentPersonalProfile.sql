PGDMP      %                |         	   profiledb    16.3    16.3 )               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398 	   profiledb    DATABASE     }   CREATE DATABASE profiledb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE profiledb;
                postgres    false                        3079    16399    pldbgapi 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;
    DROP EXTENSION pldbgapi;
                   false                       0    0    EXTENSION pldbgapi    COMMENT     Y   COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';
                        false    2            �            1259    16457    Events    TABLE     =  CREATE TABLE public."Events" (
    "ID_Event" bigint NOT NULL,
    "Name_Event" text NOT NULL,
    "Event_Text" text NOT NULL,
    "Event_Date" time with time zone NOT NULL,
    "Event_Organizations" text NOT NULL,
    "Event_Address" text NOT NULL,
    "Event_IMG" text NOT NULL,
    "Event_Tegs" bigint NOT NULL
);
    DROP TABLE public."Events";
       public         heap    postgres    false            �            1259    16451    Groups    TABLE     c   CREATE TABLE public."Groups" (
    "ID_groups" bigint NOT NULL,
    "Groups_name" text NOT NULL
);
    DROP TABLE public."Groups";
       public         heap    postgres    false            �            1259    16445 	   Institute    TABLE     l   CREATE TABLE public."Institute" (
    "ID_Institute" bigint NOT NULL,
    "Institute_name" text NOT NULL
);
    DROP TABLE public."Institute";
       public         heap    postgres    false            �            1259    16439    Role    TABLE     V   CREATE TABLE public."Role" (
    "ID_role" bigint NOT NULL,
    role text NOT NULL
);
    DROP TABLE public."Role";
       public         heap    postgres    false            �            1259    16448    Specialization    TABLE     {   CREATE TABLE public."Specialization" (
    "ID_Specialization" bigint NOT NULL,
    "Specialization_name" text NOT NULL
);
 $   DROP TABLE public."Specialization";
       public         heap    postgres    false            �            1259    16463    Students    TABLE     C  CREATE TABLE public."Students" (
    "ID_Students" bigint NOT NULL,
    "Nuber_Student" text NOT NULL,
    "Full_Name" text NOT NULL,
    "Institute" bigint NOT NULL,
    "Specialization" bigint NOT NULL,
    "Groups" bigint NOT NULL,
    "Phone" text NOT NULL,
    "Mail" text NOT NULL,
    "Student_IMG" text NOT NULL
);
    DROP TABLE public."Students";
       public         heap    postgres    false            �            1259    16454    Tags    TABLE     X   CREATE TABLE public."Tags" (
    "ID_tegs" bigint NOT NULL,
    "Tegs" text NOT NULL
);
    DROP TABLE public."Tags";
       public         heap    postgres    false            �            1259    16460    Teacher    TABLE       CREATE TABLE public."Teacher" (
    "ID_Teacher" bigint NOT NULL,
    "ID_Login" text NOT NULL,
    "Full_Name" text NOT NULL,
    "Teacher_Department" text NOT NULL,
    "Teacher_Phone" text NOT NULL,
    "Teacher_Mail" text NOT NULL,
    "Teacher_Institute" bigint NOT NULL
);
    DROP TABLE public."Teacher";
       public         heap    postgres    false            �            1259    16442    Users    TABLE     u   CREATE TABLE public."Users" (
    "Ligin" text NOT NULL,
    "Password" text NOT NULL,
    "Role" bigint NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false                      0    16457    Events 
   TABLE DATA           �   COPY public."Events" ("ID_Event", "Name_Event", "Event_Text", "Event_Date", "Event_Organizations", "Event_Address", "Event_IMG", "Event_Tegs") FROM stdin;
    public          postgres    false    227   (0                 0    16451    Groups 
   TABLE DATA           >   COPY public."Groups" ("ID_groups", "Groups_name") FROM stdin;
    public          postgres    false    225   E0                 0    16445 	   Institute 
   TABLE DATA           G   COPY public."Institute" ("ID_Institute", "Institute_name") FROM stdin;
    public          postgres    false    223   b0                 0    16439    Role 
   TABLE DATA           1   COPY public."Role" ("ID_role", role) FROM stdin;
    public          postgres    false    221   0                 0    16448    Specialization 
   TABLE DATA           V   COPY public."Specialization" ("ID_Specialization", "Specialization_name") FROM stdin;
    public          postgres    false    224   �0                 0    16463    Students 
   TABLE DATA           �   COPY public."Students" ("ID_Students", "Nuber_Student", "Full_Name", "Institute", "Specialization", "Groups", "Phone", "Mail", "Student_IMG") FROM stdin;
    public          postgres    false    229   �0                 0    16454    Tags 
   TABLE DATA           3   COPY public."Tags" ("ID_tegs", "Tegs") FROM stdin;
    public          postgres    false    226   �0                 0    16460    Teacher 
   TABLE DATA           �   COPY public."Teacher" ("ID_Teacher", "ID_Login", "Full_Name", "Teacher_Department", "Teacher_Phone", "Teacher_Mail", "Teacher_Institute") FROM stdin;
    public          postgres    false    228   �0                 0    16442    Users 
   TABLE DATA           >   COPY public."Users" ("Ligin", "Password", "Role") FROM stdin;
    public          postgres    false    222   1       p           2606    16497    Events Events_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT "Events_pkey" PRIMARY KEY ("ID_Event");
 @   ALTER TABLE ONLY public."Events" DROP CONSTRAINT "Events_pkey";
       public            postgres    false    227            l           2606    16481    Groups Groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Groups"
    ADD CONSTRAINT "Groups_pkey" PRIMARY KEY ("ID_groups");
 @   ALTER TABLE ONLY public."Groups" DROP CONSTRAINT "Groups_pkey";
       public            postgres    false    225            h           2606    16485    Institute Institute_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Institute"
    ADD CONSTRAINT "Institute_pkey" PRIMARY KEY ("ID_Institute");
 F   ALTER TABLE ONLY public."Institute" DROP CONSTRAINT "Institute_pkey";
       public            postgres    false    223            d           2606    16469    Role Role_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Role"
    ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("ID_role");
 <   ALTER TABLE ONLY public."Role" DROP CONSTRAINT "Role_pkey";
       public            postgres    false    221            j           2606    16489 "   Specialization Specialization_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."Specialization"
    ADD CONSTRAINT "Specialization_pkey" PRIMARY KEY ("ID_Specialization");
 P   ALTER TABLE ONLY public."Specialization" DROP CONSTRAINT "Specialization_pkey";
       public            postgres    false    224            t           2606    16493    Students Students_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_pkey" PRIMARY KEY ("ID_Students");
 D   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_pkey";
       public            postgres    false    229            n           2606    16473    Tags Tags_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY ("ID_tegs");
 <   ALTER TABLE ONLY public."Tags" DROP CONSTRAINT "Tags_pkey";
       public            postgres    false    226            r           2606    16501    Teacher Teacher_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT "Teacher_pkey" PRIMARY KEY ("ID_Teacher");
 B   ALTER TABLE ONLY public."Teacher" DROP CONSTRAINT "Teacher_pkey";
       public            postgres    false    228            f           2606    16477    Users Users_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("Ligin");
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    222            v           2606    16507    Events Event_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT "Event_fkey" FOREIGN KEY ("Event_Tegs") REFERENCES public."Tags"("ID_tegs") NOT VALID;
 ?   ALTER TABLE ONLY public."Events" DROP CONSTRAINT "Event_fkey";
       public          postgres    false    227    226    4718            w           2606    16512    Teacher Login_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT "Login_ID" FOREIGN KEY ("ID_Login") REFERENCES public."Users"("Ligin") NOT VALID;
 >   ALTER TABLE ONLY public."Teacher" DROP CONSTRAINT "Login_ID";
       public          postgres    false    4710    228    222            y           2606    16522    Students Login_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Login_ID" FOREIGN KEY ("Nuber_Student") REFERENCES public."Users"("Ligin") NOT VALID;
 ?   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Login_ID";
       public          postgres    false    229    222    4710            u           2606    16502    Users Role_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Role_fkey" FOREIGN KEY ("Role") REFERENCES public."Role"("ID_role") NOT VALID;
 =   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Role_fkey";
       public          postgres    false    222    221    4708            z           2606    16537    Students Student_Groups    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Student_Groups" FOREIGN KEY ("Groups") REFERENCES public."Groups"("ID_groups") NOT VALID;
 E   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Student_Groups";
       public          postgres    false    4716    225    229            {           2606    16527    Students Student_Institute    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Student_Institute" FOREIGN KEY ("Institute") REFERENCES public."Institute"("ID_Institute") NOT VALID;
 H   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Student_Institute";
       public          postgres    false    4712    223    229            |           2606    16532    Students Student_Specialization    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Student_Specialization" FOREIGN KEY ("Specialization") REFERENCES public."Specialization"("ID_Specialization") NOT VALID;
 M   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Student_Specialization";
       public          postgres    false    224    4714    229            x           2606    16517    Teacher Teacher_Institute    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher"
    ADD CONSTRAINT "Teacher_Institute" FOREIGN KEY ("Teacher_Institute") REFERENCES public."Institute"("ID_Institute") NOT VALID;
 G   ALTER TABLE ONLY public."Teacher" DROP CONSTRAINT "Teacher_Institute";
       public          postgres    false    4712    223    228                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     