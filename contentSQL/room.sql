PGDMP                         w         
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
             postgres    false            �            1259    16495    room    TABLE     �   CREATE TABLE public.room (
    capacity integer NOT NULL,
    "roomN" integer NOT NULL,
    id integer DEFAULT nextval('public.room_seq'::regclass) NOT NULL
);
    DROP TABLE public.room;
       public         postgres    false                      0    16495    room 
   TABLE DATA               5   COPY public.room (capacity, "roomN", id) FROM stdin;
    public       postgres    false    198   Q       �
           2606    16503    room room_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public         postgres    false    198                  x������ � �     