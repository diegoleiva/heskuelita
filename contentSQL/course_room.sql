PGDMP                         w         
   contentSQL    11.2    11.2 	               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16488 
   contentSQL    DATABASE     �   CREATE DATABASE "contentSQL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "contentSQL";
             postgres    false            �            1259    16504    course_room    TABLE     �   CREATE TABLE public.course_room (
    id integer DEFAULT nextval('public.course_room_seq'::regclass) NOT NULL,
    "idRoom" integer NOT NULL,
    "idCourse" integer NOT NULL
);
    DROP TABLE public.course_room;
       public         postgres    false                      0    16504    course_room 
   TABLE DATA               ?   COPY public.course_room (id, "idRoom", "idCourse") FROM stdin;
    public       postgres    false    199   W	       �
           2606    16508    course_room course_room_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.course_room
    ADD CONSTRAINT course_room_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.course_room DROP CONSTRAINT course_room_pkey;
       public         postgres    false    199            �
           2606    16509    course_room fk_idCourse    FK CONSTRAINT     |   ALTER TABLE ONLY public.course_room
    ADD CONSTRAINT "fk_idCourse" FOREIGN KEY ("idCourse") REFERENCES public.course(id);
 C   ALTER TABLE ONLY public.course_room DROP CONSTRAINT "fk_idCourse";
       public       postgres    false    199            �
           2606    16514    course_room fk_idRoom    FK CONSTRAINT     v   ALTER TABLE ONLY public.course_room
    ADD CONSTRAINT "fk_idRoom" FOREIGN KEY ("idRoom") REFERENCES public.room(id);
 A   ALTER TABLE ONLY public.course_room DROP CONSTRAINT "fk_idRoom";
       public       postgres    false    199                  x������ � �     