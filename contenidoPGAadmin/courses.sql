PGDMP                         w         
   Heskuelita    11.2    11.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393 
   Heskuelita    DATABASE     �   CREATE DATABASE "Heskuelita" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Heskuelita";
             postgres    false            �            1259    16443    courses    TABLE     �   CREATE TABLE public.courses (
    name character varying(40) NOT NULL,
    id integer DEFAULT nextval('public.courses_seq'::regclass) NOT NULL,
    "studentsAmount" integer NOT NULL,
    "idCourses" integer NOT NULL
);
    DROP TABLE public.courses;
       public         postgres    false                       0    16443    courses 
   TABLE DATA               J   COPY public.courses (name, id, "studentsAmount", "idCourses") FROM stdin;
    public       postgres    false    197   �       �
           2606    16450    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public         postgres    false    197                ,   x�s�4�44�4��J,K�4�44�4�r���4�42 �b���� }�     