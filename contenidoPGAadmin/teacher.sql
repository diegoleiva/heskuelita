PGDMP         6                w         
   Heskuelita    11.2    11.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393 
   Heskuelita    DATABASE     �   CREATE DATABASE "Heskuelita" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Heskuelita";
             postgres    false            �            1259    16477    teacher    TABLE     �   CREATE TABLE public.teacher (
    first_name character varying(40) NOT NULL,
    last_name character varying(40) NOT NULL,
    id integer NOT NULL,
    "idCourse" integer NOT NULL
);
    DROP TABLE public.teacher;
       public         postgres    false            �
          0    16477    teacher 
   TABLE DATA               H   COPY public.teacher (first_name, last_name, id, "idCourse") FROM stdin;
    public       postgres    false    200   �       �
           2606    16487    teacher teacher_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_pkey;
       public         postgres    false    200            �
   9   x��*M����/H��4�44��M�+M����/JO�4�4
%�C�sr��qqq �@�     