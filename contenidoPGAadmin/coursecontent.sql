PGDMP     ;    /                w         
   Heskuelita    11.2    11.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393 
   Heskuelita    DATABASE     �   CREATE DATABASE "Heskuelita" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Heskuelita";
             postgres    false            �            1259    16413    coursecontent    TABLE     �   CREATE TABLE public.coursecontent (
    curse_name character varying(40) NOT NULL,
    content character varying(100) NOT NULL,
    id integer DEFAULT nextval('public.coursecontent_seq'::regclass) NOT NULL,
    "idCourse" integer NOT NULL
);
 !   DROP TABLE public.coursecontent;
       public         postgres    false                      0    16413    coursecontent 
   TABLE DATA               L   COPY public.coursecontent (curse_name, content, id, "idCourse") FROM stdin;
    public       postgres    false    196   j       �
           2606    16442 !   coursecontent contenidoCurso_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.coursecontent
    ADD CONSTRAINT "contenidoCurso_pkey" PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.coursecontent DROP CONSTRAINT "contenidoCurso_pkey";
       public         postgres    false    196            �
           2606    16455    coursecontent fk_course    FK CONSTRAINT     {   ALTER TABLE ONLY public.coursecontent
    ADD CONSTRAINT fk_course FOREIGN KEY ("idCourse") REFERENCES public.courses(id);
 A   ALTER TABLE ONLY public.coursecontent DROP CONSTRAINT fk_course;
       public       postgres    false    196                  x������ � �     