PGDMP     .                    w         
   contentSQL    11.2    11.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16488 
   contentSQL    DATABASE     �   CREATE DATABASE "contentSQL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "contentSQL";
             postgres    false            �            1259    16489    student    TABLE     q  CREATE TABLE public.student (
    id integer DEFAULT nextval('public.student_seq'::regclass) NOT NULL,
    "firstName" character varying(30) NOT NULL,
    "lastName" character varying(30) NOT NULL,
    email character varying(40) NOT NULL,
    documentation character varying(10) NOT NULL,
    identification integer NOT NULL,
    sex character varying(10) NOT NULL
);
    DROP TABLE public.student;
       public         postgres    false                      0    16489    student 
   TABLE DATA               i   COPY public.student (id, "firstName", "lastName", email, documentation, identification, sex) FROM stdin;
    public       postgres    false    196   q       �
           2606    16529    student student_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public         postgres    false    196                  x������ � �     