PGDMP     :                    w         
   contentSQL    11.2    11.2 	               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16488 
   contentSQL    DATABASE        CREATE DATABASE "contentSQL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "contentSQL";
             postgres    false            Ξ            1259    16563    student_teacher    TABLE     ½   CREATE TABLE public.student_teacher (
    id integer DEFAULT nextval('public.student_teacher_seq'::regclass) NOT NULL,
    "idStudent" integer NOT NULL,
    "idTeacher" integer NOT NULL
);
 #   DROP TABLE public.student_teacher;
       public         postgres    false                      0    16563    student_teacher 
   TABLE DATA               G   COPY public.student_teacher (id, "idStudent", "idTeacher") FROM stdin;
    public       postgres    false    206   »	       
           2606    16567 $   student_teacher student_teacher_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.student_teacher
    ADD CONSTRAINT student_teacher_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.student_teacher DROP CONSTRAINT student_teacher_pkey;
       public         postgres    false    206            
           2606    16568    student_teacher fk_idStudent    FK CONSTRAINT        ALTER TABLE ONLY public.student_teacher
    ADD CONSTRAINT "fk_idStudent" FOREIGN KEY ("idStudent") REFERENCES public.student(id);
 H   ALTER TABLE ONLY public.student_teacher DROP CONSTRAINT "fk_idStudent";
       public       postgres    false    206            
           2606    16573    student_teacher fk_idTeacher    FK CONSTRAINT        ALTER TABLE ONLY public.student_teacher
    ADD CONSTRAINT "fk_idTeacher" FOREIGN KEY ("idTeacher") REFERENCES public.teacher(id);
 H   ALTER TABLE ONLY public.student_teacher DROP CONSTRAINT "fk_idTeacher";
       public       postgres    false    206                  xΡγββ Ε ©     