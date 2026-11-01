--
-- PostgreSQL database dump
--

\restrict zwBJRLs1c0dX5qse0b72VBURccc4hOVqoBF0OPSdNU3fayfwVoMBhUf9reZxd0g

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-01 18:06:14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 16438)
-- Name: lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson (
    lesson_id integer NOT NULL,
    class_id integer NOT NULL,
    teacher_id integer NOT NULL,
    subject_id integer NOT NULL,
    day_of_week character varying(10) NOT NULL,
    lesson_number integer NOT NULL,
    classroom character varying(10) NOT NULL,
    weekly_hours integer NOT NULL
);


ALTER TABLE public.lesson OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16437)
-- Name: lesson_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.lesson ALTER COLUMN lesson_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.lesson_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16390)
-- Name: school_class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.school_class (
    class_id integer NOT NULL,
    class_name character varying(10) NOT NULL,
    student_count integer NOT NULL
);


ALTER TABLE public.school_class OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16389)
-- Name: school_class_class_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.school_class ALTER COLUMN class_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.school_class_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 16410)
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    subject_id integer NOT NULL,
    subject_name character varying(100) NOT NULL
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16409)
-- Name: subject_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.subject ALTER COLUMN subject_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.subject_subject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16401)
-- Name: teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher (
    teacher_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    teacher_category character varying(50)
);


ALTER TABLE public.teacher OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16400)
-- Name: teacher_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.teacher ALTER COLUMN teacher_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.teacher_teacher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 5042 (class 0 OID 16438)
-- Dependencies: 226
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lesson (lesson_id, class_id, teacher_id, subject_id, day_of_week, lesson_number, classroom, weekly_hours) FROM stdin;
1	1	1	1	MON	1	102	5
2	1	2	2	MON	2	203	4
3	1	3	3	MON	3	101	3
4	1	4	4	MON	4	102	2
5	2	1	1	MON	1	203	5
6	2	2	2	MON	2	101	4
7	2	3	3	TUE	1	102	3
8	3	4	4	TUE	2	203	2
9	3	1	1	TUE	3	101	5
10	4	2	2	WED	1	102	4
\.


--
-- TOC entry 5036 (class 0 OID 16390)
-- Dependencies: 220
-- Data for Name: school_class; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.school_class (class_id, class_name, student_count) FROM stdin;
1	9-А	27
2	8-А	24
3	7-В	28
4	7-А	25
\.


--
-- TOC entry 5040 (class 0 OID 16410)
-- Dependencies: 224
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject (subject_id, subject_name) FROM stdin;
1	Математика
2	Українська мова
3	Історія
4	Інформатика
\.


--
-- TOC entry 5038 (class 0 OID 16401)
-- Dependencies: 222
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher (teacher_id, first_name, last_name, teacher_category) FROM stdin;
1	Олена	Коваленко	Вища категорія
2	Андрій	Шевченко	Перша категорія
3	Ірина	Мельник	Друга категорія
4	Олександр	Бондаренко	Спеціаліст
\.


--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 225
-- Name: lesson_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_lesson_id_seq', 10, true);


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 219
-- Name: school_class_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.school_class_class_id_seq', 4, true);


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 223
-- Name: subject_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subject_subject_id_seq', 4, true);


--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 221
-- Name: teacher_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teacher_teacher_id_seq', 4, true);


--
-- TOC entry 4882 (class 2606 OID 16475)
-- Name: lesson lesson_class_day_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_class_day_number_key UNIQUE (class_id, day_of_week, lesson_number);


--
-- TOC entry 4884 (class 2606 OID 16447)
-- Name: lesson lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (lesson_id);


--
-- TOC entry 4872 (class 2606 OID 16399)
-- Name: school_class school_class_class_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school_class
    ADD CONSTRAINT school_class_class_name_key UNIQUE (class_name);


--
-- TOC entry 4874 (class 2606 OID 16397)
-- Name: school_class school_class_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school_class
    ADD CONSTRAINT school_class_pkey PRIMARY KEY (class_id);


--
-- TOC entry 4878 (class 2606 OID 16416)
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (subject_id);


--
-- TOC entry 4880 (class 2606 OID 16418)
-- Name: subject subject_subject_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_subject_name_key UNIQUE (subject_name);


--
-- TOC entry 4876 (class 2606 OID 16408)
-- Name: teacher teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (teacher_id);


--
-- TOC entry 4885 (class 2606 OID 16450)
-- Name: lesson lesson_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.school_class(class_id);


--
-- TOC entry 4886 (class 2606 OID 16469)
-- Name: lesson lesson_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subject(subject_id);


--
-- TOC entry 4887 (class 2606 OID 16464)
-- Name: lesson lesson_teacher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teacher(teacher_id);


-- Completed on 2026-11-01 18:06:14

--
-- PostgreSQL database dump complete
--

\unrestrict zwBJRLs1c0dX5qse0b72VBURccc4hOVqoBF0OPSdNU3fayfwVoMBhUf9reZxd0g

