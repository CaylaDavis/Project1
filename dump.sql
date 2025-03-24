--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4 (Homebrew)

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: azure_pg_admin
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO azure_pg_admin;

--
-- Name: azure; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS azure WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION azure; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION azure IS 'azure extension for PostgreSQL service';


--
-- Name: pgaadauth; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgaadauth WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION pgaadauth; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgaadauth IS 'Azure Active Directory Authentication';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: orderdetails; Type: TABLE; Schema: public; Owner: citus
--

CREATE TABLE public.orderdetails (
    orderdetailid integer NOT NULL,
    orderid integer,
    productid integer,
    quantity integer,
    price numeric(10,2)
);


ALTER TABLE public.orderdetails OWNER TO citus;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: citus
--

CREATE TABLE public.orders (
    orderid integer NOT NULL,
    customerid integer,
    orderdate timestamp without time zone,
    paymentstatus character varying(20)
);


ALTER TABLE public.orders OWNER TO citus;

--
-- Data for Name: orderdetails; Type: TABLE DATA; Schema: public; Owner: citus
--

COPY public.orderdetails (orderdetailid, orderid, productid, quantity, price) FROM stdin;
1	1	58	5	121.31
2	1	36	5	21.51
3	1	82	1	215.72
4	2	12	4	272.92
5	2	100	4	420.31
6	2	91	5	236.66
7	3	53	5	452.81
8	4	95	2	51.66
9	4	73	5	247.92
10	4	3	5	245.60
11	5	57	1	334.12
12	6	82	5	469.14
13	6	92	5	397.97
14	7	81	2	283.76
15	7	84	1	247.69
16	7	24	5	273.85
17	8	97	3	174.25
18	8	97	1	50.94
19	8	30	4	251.82
20	9	8	4	310.47
21	9	67	3	354.14
22	10	43	1	61.31
23	10	76	2	83.84
24	10	87	2	161.52
25	11	96	4	346.57
26	12	76	4	489.61
27	12	60	3	336.98
28	12	90	3	454.64
29	13	32	4	397.55
30	13	42	1	252.03
31	14	24	3	313.02
32	14	10	2	61.80
33	15	88	2	68.17
34	15	93	1	387.13
35	15	85	3	419.72
36	16	62	1	153.02
37	16	67	4	484.13
38	16	51	5	144.28
39	17	55	1	406.72
40	17	61	2	445.11
41	18	66	4	11.93
42	19	94	4	318.04
43	19	33	4	320.32
44	20	21	3	141.05
45	21	74	3	154.34
46	22	99	5	390.17
47	23	23	2	303.58
48	24	42	2	376.81
49	24	29	2	281.24
50	25	67	2	170.69
51	26	61	5	385.33
52	26	11	3	106.71
53	27	67	5	483.58
54	27	34	2	420.00
55	28	26	5	252.94
56	29	14	5	43.53
57	29	2	1	61.97
58	30	85	2	394.65
59	31	38	4	288.40
60	32	70	5	100.63
61	32	80	3	401.44
62	33	33	3	294.41
63	34	78	1	19.18
64	34	50	2	44.89
65	34	79	5	198.97
66	35	46	2	37.23
67	35	26	4	186.05
68	35	74	3	302.25
69	36	22	1	17.16
70	36	60	3	356.92
71	37	46	1	143.41
72	37	57	5	198.16
73	37	69	1	254.92
74	38	15	1	166.87
75	39	42	2	128.82
76	39	39	4	23.60
77	39	15	3	410.40
78	40	75	2	152.91
79	41	40	2	120.02
80	41	41	2	51.60
81	41	24	4	313.10
82	42	52	2	464.44
83	42	51	1	359.71
84	43	73	2	328.78
85	44	75	3	387.70
86	44	38	3	425.03
87	45	72	5	179.86
88	45	66	5	467.70
89	45	14	5	400.40
90	46	92	3	190.93
91	46	64	1	352.91
92	47	4	1	225.46
93	47	22	3	351.97
94	47	18	4	361.84
95	48	91	3	466.11
96	48	46	3	100.43
97	49	60	3	165.57
98	49	53	5	354.68
99	49	63	1	417.03
100	50	89	2	145.60
101	51	7	4	82.62
102	51	86	4	384.21
103	52	25	2	354.79
104	52	40	5	365.82
105	53	63	2	471.83
106	53	55	3	34.41
107	53	98	2	339.98
108	54	73	2	325.88
109	54	99	1	93.50
110	55	62	4	144.14
111	56	54	3	52.24
112	57	30	3	377.26
113	58	78	4	261.54
114	58	12	3	15.14
115	59	100	3	493.85
116	60	52	2	126.09
117	61	6	1	175.69
118	62	54	4	190.00
119	62	11	1	331.66
120	63	30	5	119.51
121	63	81	2	160.65
122	64	97	1	456.58
123	65	78	1	170.42
124	66	33	3	238.08
125	66	52	5	193.31
126	66	78	2	92.79
127	67	24	4	311.06
128	67	81	5	288.92
129	68	88	4	140.60
130	68	96	5	148.08
131	68	69	4	493.49
132	69	81	2	429.40
133	69	47	5	430.63
134	69	54	2	134.78
135	70	21	3	136.92
136	71	83	4	401.66
137	71	20	5	312.34
138	71	87	2	160.46
139	72	34	4	34.53
140	73	66	5	95.59
141	73	29	2	196.97
142	73	41	1	275.45
143	74	41	3	485.05
144	74	62	3	238.94
145	74	49	2	435.36
146	75	50	2	480.52
147	75	31	4	114.92
148	75	58	4	430.29
149	76	89	2	426.66
150	76	89	3	253.47
151	76	12	2	89.68
152	77	53	5	34.11
153	77	95	1	476.89
154	78	56	1	245.82
155	79	12	1	468.11
156	80	34	5	452.57
157	81	86	2	319.27
158	81	58	2	389.94
159	82	86	3	28.24
160	82	44	5	158.35
161	83	16	5	65.01
162	83	72	3	251.82
163	84	32	3	483.85
164	85	69	5	115.17
165	86	74	2	487.24
166	86	69	4	349.63
167	87	80	2	473.34
168	88	7	1	387.37
169	88	24	5	368.06
170	88	35	5	460.64
171	89	68	5	459.16
172	90	20	1	321.48
173	90	44	4	115.59
174	91	29	5	70.77
175	92	52	1	184.62
176	92	86	1	277.80
177	92	91	1	261.47
178	93	87	3	474.08
179	94	36	2	409.87
180	94	24	2	369.51
181	94	87	2	283.07
182	95	74	2	246.64
183	95	7	5	205.58
184	96	16	4	266.12
185	96	97	4	270.29
186	96	36	4	265.53
187	97	19	3	329.53
188	98	67	4	300.35
189	99	22	5	79.69
190	99	96	5	349.57
191	99	96	5	122.36
192	100	93	5	127.16
193	100	57	5	455.86
194	101	6	2	426.62
195	102	32	1	59.72
196	102	20	5	434.03
197	103	10	5	349.15
198	104	2	1	214.32
199	105	50	3	22.44
200	106	98	1	219.27
201	107	86	2	459.67
202	107	48	3	110.39
203	107	75	4	307.82
204	108	35	3	165.42
205	108	44	1	270.66
206	108	74	2	192.74
207	109	87	5	61.47
208	109	70	3	254.33
209	110	42	2	55.27
210	110	94	1	328.88
211	110	87	1	103.15
212	111	54	1	388.00
213	112	64	2	141.91
214	112	97	3	40.39
215	113	9	1	387.74
216	113	95	1	186.57
217	113	15	2	103.66
218	114	64	5	197.66
219	114	7	2	170.86
220	115	35	4	248.45
221	115	35	5	240.02
222	115	70	5	88.82
223	116	48	1	376.42
224	116	12	5	66.69
225	117	77	5	351.52
226	117	45	2	289.29
227	118	24	2	229.57
228	118	53	4	50.55
229	118	6	5	277.26
230	119	49	3	25.18
231	119	17	1	358.68
232	120	29	1	190.35
233	121	52	2	209.61
234	121	53	2	55.19
235	121	87	5	452.84
236	122	18	4	274.24
237	122	26	3	149.26
238	122	33	5	335.94
239	123	44	2	42.43
240	124	4	4	458.84
241	124	28	3	280.73
242	124	52	4	279.69
243	125	28	1	363.89
244	125	78	3	427.22
245	125	20	2	275.30
246	126	66	1	275.16
247	127	11	3	253.80
248	127	81	5	174.73
249	127	97	3	367.97
250	128	52	5	276.10
251	128	27	3	130.76
252	129	30	4	185.81
253	129	81	4	115.11
254	130	24	4	112.81
255	131	23	1	478.24
256	131	60	1	153.14
257	131	49	3	201.88
258	132	73	2	294.35
259	132	3	4	225.55
260	132	97	3	308.63
261	133	23	2	391.27
262	134	25	3	389.20
263	135	91	5	453.87
264	135	63	4	98.48
265	136	51	4	388.59
266	136	97	1	60.37
267	136	2	4	47.62
268	137	7	3	457.26
269	137	45	4	426.98
270	137	57	2	163.26
271	138	88	3	359.30
272	139	7	2	292.14
273	139	45	2	377.25
274	139	7	1	479.89
275	140	76	1	360.41
276	140	37	1	371.73
277	140	71	1	248.49
278	141	52	4	107.78
279	141	56	1	190.22
280	141	96	5	224.73
281	142	26	4	296.27
282	142	16	3	192.98
283	143	71	5	365.80
284	143	31	2	435.11
285	144	35	5	16.24
286	145	88	4	281.82
287	146	70	5	380.05
288	146	12	2	317.62
289	147	49	1	25.65
290	147	38	1	220.25
291	147	60	1	481.06
292	148	91	2	95.26
293	149	18	5	175.32
294	150	90	5	12.46
295	150	80	1	276.91
296	151	23	2	211.52
297	151	35	4	431.47
298	151	35	1	72.66
299	152	76	1	57.10
300	152	40	3	119.46
301	153	2	1	55.78
302	153	33	4	76.16
303	154	69	4	194.28
304	154	60	3	296.28
305	155	93	5	349.66
306	155	80	1	77.52
307	155	71	2	164.90
308	156	92	1	371.82
309	157	38	4	101.80
310	157	37	2	401.73
311	158	8	3	355.05
312	159	15	2	450.86
313	159	65	5	125.39
314	160	13	2	444.26
315	160	11	1	128.40
316	160	53	2	307.41
317	161	80	1	258.88
318	161	39	3	335.69
319	162	21	3	86.04
320	163	22	4	73.24
321	163	80	1	81.45
322	163	44	1	494.10
323	164	45	5	396.80
324	165	91	1	249.49
325	166	69	4	396.78
326	167	77	2	63.04
327	167	37	4	340.40
328	167	21	3	97.16
329	168	87	1	304.71
330	169	28	1	55.82
331	169	77	3	258.86
332	170	33	4	181.54
333	171	44	4	468.02
334	171	76	2	226.93
335	172	48	1	451.78
336	172	100	2	297.52
337	172	95	4	94.22
338	173	39	5	444.05
339	173	49	3	158.23
340	173	100	5	487.48
341	174	65	3	267.75
342	174	17	4	36.24
343	175	37	2	172.53
344	176	40	5	293.00
345	176	91	5	319.24
346	176	80	5	214.96
347	177	82	3	484.19
348	177	8	1	426.18
349	177	17	2	318.97
350	178	34	3	47.21
351	178	14	2	387.15
352	178	82	1	141.02
353	179	76	5	186.15
354	180	78	3	484.82
355	181	68	3	480.10
356	182	80	3	20.84
357	182	16	2	52.56
358	183	36	3	66.99
359	184	98	2	424.81
360	185	72	4	491.97
361	185	75	5	414.38
362	186	5	4	191.76
363	186	41	1	49.26
364	187	30	4	32.92
365	187	73	1	333.91
366	188	92	5	407.55
367	188	22	2	84.00
368	188	8	3	420.53
369	189	84	4	308.38
370	189	21	1	394.56
371	189	80	2	247.18
372	190	18	2	441.72
373	190	59	4	258.70
374	191	60	4	253.20
375	191	75	3	314.17
376	191	19	2	485.66
377	192	88	1	172.93
378	193	33	4	226.41
379	194	1	5	103.96
380	194	22	1	318.98
381	194	76	5	291.13
382	195	17	4	232.27
383	196	84	4	423.93
384	196	37	4	168.40
385	196	17	5	381.71
386	197	7	4	265.53
387	197	12	1	176.55
388	197	35	4	131.87
389	198	34	5	494.53
390	198	30	3	53.68
391	199	1	5	33.11
392	199	2	4	168.95
393	199	33	5	264.52
394	200	86	3	481.24
395	201	50	3	140.65
396	201	76	2	225.51
397	202	88	1	490.38
398	202	48	2	227.66
399	202	16	4	476.38
400	203	70	1	256.90
401	204	80	2	397.31
402	204	54	1	36.78
403	205	18	3	23.60
404	205	58	5	282.26
405	206	67	3	487.73
406	206	47	2	108.86
407	207	75	3	57.25
408	207	68	5	73.49
409	208	66	1	383.56
410	209	41	2	396.85
411	209	50	5	369.90
412	209	58	1	112.30
413	210	43	1	405.35
414	211	28	2	369.11
415	211	10	1	310.34
416	212	72	3	190.30
417	212	1	5	109.49
418	212	65	3	329.32
419	213	79	2	244.27
420	213	89	2	484.22
421	214	5	4	166.39
422	215	62	2	217.56
423	215	14	3	170.17
424	216	99	4	167.21
425	216	32	3	299.27
426	216	29	5	247.48
427	217	60	4	371.22
428	217	22	1	397.71
429	217	88	3	384.15
430	218	77	5	54.89
431	218	44	4	281.49
432	218	68	3	299.74
433	219	5	5	326.01
434	220	96	2	252.55
435	220	57	2	252.22
436	220	20	2	432.44
437	221	53	2	471.51
438	221	64	3	93.47
439	222	74	3	446.33
440	223	50	1	439.12
441	223	81	5	311.62
442	224	26	5	198.47
443	225	40	3	39.07
444	225	100	1	104.42
445	225	76	3	104.56
446	226	74	2	335.77
447	227	39	4	246.74
448	227	74	4	347.36
449	228	29	4	99.78
450	229	89	2	134.16
451	229	59	5	255.83
452	229	81	1	210.16
453	230	73	1	366.02
454	230	20	3	493.98
455	231	39	3	467.78
456	231	93	1	194.32
457	232	67	1	410.47
458	232	11	1	297.65
459	232	55	1	476.51
460	233	64	2	215.90
461	233	33	5	499.26
462	233	13	3	330.43
463	234	22	5	400.58
464	234	49	2	38.92
465	234	49	4	403.03
466	235	61	4	392.43
467	236	85	3	234.67
468	236	61	4	310.68
469	236	54	5	389.86
470	237	19	4	330.21
471	237	4	2	157.06
472	238	11	4	224.60
473	238	14	4	222.76
474	238	11	2	491.97
475	239	36	5	217.15
476	239	37	2	299.33
477	240	88	4	489.98
478	241	27	1	52.09
479	242	76	5	226.58
480	242	54	2	263.86
481	242	54	4	107.85
482	243	89	1	290.33
483	244	66	4	412.38
484	245	100	1	443.29
485	245	33	5	313.67
486	245	60	5	371.52
487	246	14	5	123.35
488	246	39	1	406.62
489	246	64	3	482.80
490	247	93	5	396.63
491	248	16	5	279.33
492	248	5	1	476.79
493	248	97	5	68.94
494	249	11	3	192.67
495	249	25	2	472.91
496	250	26	4	399.52
497	250	63	5	351.67
498	251	48	4	246.12
499	251	83	2	458.70
500	251	63	4	281.19
501	252	84	1	193.45
502	252	51	5	235.94
503	253	42	5	140.51
504	254	89	2	250.36
505	254	5	4	148.32
506	254	58	5	94.87
507	255	1	2	297.11
508	255	67	3	456.21
509	255	2	4	444.89
510	256	54	4	415.65
511	257	60	1	179.87
512	258	17	5	212.29
513	258	67	2	162.27
514	258	37	4	64.43
515	259	10	4	356.20
516	259	78	5	423.16
517	260	58	1	497.88
518	260	73	5	373.39
519	260	30	3	266.57
520	261	56	5	110.30
521	261	67	3	234.82
522	261	57	5	313.01
523	262	75	5	188.42
524	263	23	3	102.66
525	263	77	1	292.15
526	263	43	3	119.52
527	264	60	4	218.86
528	264	84	4	174.52
529	264	66	4	229.11
530	265	80	3	127.20
531	265	59	4	70.23
532	265	76	3	476.23
533	266	38	2	135.12
534	266	31	2	295.16
535	267	37	3	466.08
536	267	42	4	92.13
537	268	21	1	203.62
538	268	97	4	253.06
539	268	64	2	317.94
540	269	50	1	113.23
541	269	38	2	455.98
542	270	27	5	301.86
543	270	79	5	278.02
544	270	14	4	252.02
545	271	31	5	280.16
546	271	3	2	220.66
547	271	98	2	395.23
548	272	58	4	447.87
549	272	56	3	377.33
550	272	39	5	314.47
551	273	24	2	21.13
552	273	31	3	412.79
553	273	8	3	338.72
554	274	9	1	29.80
555	274	62	3	420.05
556	274	42	2	386.99
557	275	15	2	467.13
558	276	13	4	413.86
559	277	69	5	330.85
560	277	92	5	222.44
561	278	62	2	347.97
562	279	26	5	303.06
563	280	30	2	483.66
564	280	98	2	71.80
565	280	89	2	386.80
566	281	85	3	279.28
567	281	71	2	412.67
568	281	81	2	359.32
569	282	87	5	340.69
570	282	69	3	231.35
571	283	22	5	465.65
572	283	78	2	360.44
573	284	48	4	96.99
574	284	44	4	138.02
575	284	78	5	265.00
576	285	25	5	463.07
577	285	20	2	237.70
578	285	33	2	401.53
579	286	29	2	286.45
580	287	17	2	161.98
581	288	68	4	202.81
582	289	50	1	222.07
583	289	78	1	123.99
584	289	24	3	96.45
585	290	59	4	81.26
586	290	11	4	54.43
587	290	9	1	169.48
588	291	74	4	242.51
589	291	4	3	435.79
590	291	37	1	192.54
591	292	98	5	215.46
592	293	93	4	283.47
593	294	52	5	420.49
594	295	95	5	189.02
595	295	3	1	273.72
596	296	94	4	263.70
597	297	36	3	475.81
598	298	33	3	110.59
599	298	56	2	216.56
600	299	47	3	123.36
601	300	41	2	147.22
602	300	67	4	25.68
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: citus
--

COPY public.orders (orderid, customerid, orderdate, paymentstatus) FROM stdin;
1	93	2024-09-14 15:49:36	Failed
2	38	2024-04-09 15:49:36	Pending
3	37	2024-07-28 15:49:36	Pending
4	173	2024-05-01 15:49:36	Failed
5	13	2024-03-29 15:49:36	Failed
6	124	2024-03-26 15:49:36	Completed
7	1	2024-07-31 15:49:36	Failed
8	96	2024-06-14 15:49:36	Pending
9	143	2024-12-09 15:49:36	Completed
10	49	2025-01-04 15:49:36	Pending
11	52	2024-08-22 15:49:36	Pending
12	12	2024-04-20 15:49:36	Pending
13	123	2024-11-11 15:49:36	Failed
14	118	2024-09-13 15:49:36	Completed
15	58	2024-06-24 15:49:36	Failed
16	139	2024-02-12 15:49:36	Pending
17	158	2024-11-05 15:49:36	Pending
18	122	2025-02-02 15:49:36	Failed
19	18	2024-04-15 15:49:36	Pending
20	9	2024-08-10 15:49:36	Failed
21	46	2024-04-07 15:49:36	Pending
22	167	2024-10-19 15:49:36	Pending
23	70	2024-08-09 15:49:36	Completed
24	61	2024-04-17 15:49:36	Completed
25	45	2024-12-29 15:49:36	Completed
26	93	2024-08-22 15:49:36	Pending
27	100	2024-06-25 15:49:36	Failed
28	6	2024-02-19 15:49:36	Completed
29	109	2024-08-31 15:49:36	Completed
30	41	2024-08-03 15:49:36	Failed
31	49	2024-06-04 15:49:36	Pending
32	3	2024-10-07 15:49:36	Completed
33	76	2024-09-02 15:49:36	Failed
34	50	2024-05-13 15:49:36	Completed
35	198	2024-08-30 15:49:36	Failed
36	188	2024-02-16 15:49:36	Pending
37	78	2025-02-06 15:49:36	Completed
38	178	2024-03-18 15:49:36	Failed
39	185	2024-12-04 15:49:36	Failed
40	19	2024-10-11 15:49:36	Failed
41	23	2024-10-26 15:49:36	Pending
42	2	2024-02-23 15:49:36	Pending
43	162	2024-09-18 15:49:36	Completed
44	136	2024-07-16 15:49:36	Pending
45	6	2025-01-09 15:49:36	Failed
46	184	2024-04-16 15:49:36	Failed
47	129	2024-03-06 15:49:36	Failed
48	77	2024-08-12 15:49:36	Completed
49	193	2024-05-06 15:49:36	Completed
50	81	2024-02-28 15:49:36	Pending
51	53	2024-07-30 15:49:36	Failed
52	29	2024-03-20 15:49:36	Completed
53	105	2024-11-13 15:49:36	Pending
54	164	2024-03-01 15:49:36	Pending
55	88	2024-11-11 15:49:36	Completed
56	144	2024-02-24 15:49:36	Pending
57	63	2024-04-24 15:49:36	Pending
58	196	2024-07-28 15:49:36	Pending
59	191	2024-02-21 15:49:36	Failed
60	14	2025-01-02 15:49:36	Pending
61	193	2024-09-01 15:49:36	Pending
62	106	2024-10-18 15:49:36	Failed
63	191	2024-03-25 15:49:36	Failed
64	139	2025-02-06 15:49:36	Failed
65	171	2024-08-31 15:49:36	Completed
66	172	2024-07-24 15:49:36	Pending
67	195	2024-11-09 15:49:36	Pending
68	168	2024-12-12 15:49:36	Completed
69	189	2024-06-12 15:49:36	Failed
70	185	2024-03-05 15:49:36	Failed
71	130	2024-07-29 15:49:36	Pending
72	62	2024-03-12 15:49:36	Completed
73	76	2024-11-14 15:49:36	Failed
74	167	2024-03-08 15:49:36	Completed
75	20	2024-12-20 15:49:36	Pending
76	118	2024-06-16 15:49:36	Failed
77	167	2024-02-08 15:49:36	Failed
78	43	2024-07-06 15:49:36	Completed
79	106	2024-03-04 15:49:36	Completed
80	137	2024-12-27 15:49:36	Pending
81	173	2025-01-23 15:49:36	Pending
82	109	2025-01-26 15:49:36	Failed
83	31	2024-10-27 15:49:36	Failed
84	46	2024-07-18 15:49:36	Completed
85	131	2024-09-12 15:49:36	Completed
86	187	2024-04-04 15:49:36	Completed
87	104	2024-08-28 15:49:36	Pending
88	72	2024-07-11 15:49:36	Failed
89	194	2024-12-25 15:49:36	Completed
90	6	2024-12-23 15:49:36	Completed
91	189	2024-02-29 15:49:36	Pending
92	98	2024-05-07 15:49:36	Pending
93	87	2024-10-10 15:49:36	Failed
94	61	2024-12-02 15:49:36	Completed
95	41	2024-06-21 15:49:36	Failed
96	10	2024-07-24 15:49:36	Pending
97	115	2025-01-25 15:49:36	Completed
98	125	2024-09-25 15:49:36	Pending
99	69	2024-05-20 15:49:36	Failed
100	74	2024-05-12 15:49:36	Completed
101	19	2024-04-26 15:49:36	Pending
102	148	2024-04-30 15:49:36	Completed
103	76	2024-04-29 15:49:36	Pending
104	179	2024-07-02 15:49:36	Pending
105	18	2024-05-22 15:49:36	Completed
106	150	2024-04-15 15:49:36	Completed
107	38	2024-02-20 15:49:36	Failed
108	105	2024-08-22 15:49:36	Completed
109	36	2024-07-05 15:49:36	Completed
110	129	2025-01-01 15:49:36	Completed
111	82	2024-10-06 15:49:36	Completed
112	150	2024-04-28 15:49:36	Failed
113	94	2024-05-24 15:49:36	Failed
114	176	2025-01-06 15:49:36	Failed
115	74	2024-10-22 15:49:36	Failed
116	129	2024-06-05 15:49:36	Failed
117	121	2024-02-15 15:49:36	Completed
118	144	2024-02-25 15:49:36	Failed
119	109	2024-07-30 15:49:36	Failed
120	152	2025-01-27 15:49:36	Completed
121	68	2024-02-18 15:49:36	Failed
122	166	2024-12-09 15:49:36	Failed
123	184	2024-02-23 15:49:36	Failed
124	75	2024-10-07 15:49:36	Failed
125	125	2024-02-24 15:49:36	Completed
126	54	2024-06-18 15:49:36	Completed
127	99	2024-07-26 15:49:36	Pending
128	137	2024-08-01 15:49:36	Pending
129	184	2025-02-04 15:49:36	Pending
130	196	2024-11-04 15:49:36	Pending
131	8	2025-01-31 15:49:36	Failed
132	140	2024-04-11 15:49:36	Failed
133	118	2024-08-30 15:49:36	Pending
134	171	2024-10-26 15:49:36	Pending
135	104	2024-12-07 15:49:36	Failed
136	133	2024-11-08 15:49:36	Pending
137	166	2024-03-22 15:49:36	Completed
138	74	2024-12-29 15:49:36	Completed
139	29	2024-12-16 15:49:36	Completed
140	70	2024-07-10 15:49:36	Failed
141	46	2024-12-16 15:49:36	Completed
142	51	2024-10-27 15:49:36	Failed
143	60	2024-03-04 15:49:36	Failed
144	106	2024-07-05 15:49:36	Failed
145	31	2024-09-03 15:49:36	Failed
146	73	2024-05-08 15:49:36	Failed
147	168	2024-06-22 15:49:36	Completed
148	193	2025-02-02 15:49:36	Failed
149	107	2024-03-25 15:49:36	Completed
150	122	2024-08-07 15:49:36	Completed
151	154	2024-12-21 15:49:36	Completed
152	181	2024-12-12 15:49:36	Failed
153	188	2024-02-27 15:49:36	Pending
154	55	2024-09-13 15:49:36	Pending
155	161	2024-10-15 15:49:36	Failed
156	74	2024-04-02 15:49:36	Pending
157	82	2024-05-29 15:49:36	Failed
158	11	2025-01-10 15:49:36	Completed
159	151	2024-09-01 15:49:36	Pending
160	153	2024-08-09 15:49:36	Failed
161	142	2024-06-30 15:49:36	Failed
162	36	2024-12-18 15:49:36	Completed
163	68	2025-02-05 15:49:36	Pending
164	59	2024-12-30 15:49:36	Completed
165	96	2024-02-10 15:49:36	Failed
166	196	2024-04-02 15:49:36	Completed
167	170	2024-07-04 15:49:36	Failed
168	138	2024-03-19 15:49:36	Pending
169	36	2024-08-19 15:49:36	Pending
170	22	2024-03-23 15:49:36	Failed
171	131	2024-08-05 15:49:36	Failed
172	52	2024-08-03 15:49:36	Failed
173	127	2024-07-31 15:49:36	Completed
174	71	2024-07-26 15:49:36	Pending
175	195	2024-07-31 15:49:36	Failed
176	154	2024-07-28 15:49:36	Failed
177	121	2024-07-22 15:49:36	Pending
178	173	2024-05-18 15:49:36	Completed
179	23	2024-02-09 15:49:36	Failed
180	40	2024-05-10 15:49:36	Completed
181	62	2024-08-10 15:49:36	Completed
182	14	2024-12-20 15:49:36	Pending
183	111	2024-11-30 15:49:36	Pending
184	95	2024-02-28 15:49:36	Failed
185	163	2024-08-31 15:49:36	Completed
186	96	2024-06-13 15:49:36	Failed
187	30	2024-11-30 15:49:36	Completed
188	66	2024-09-10 15:49:36	Pending
189	183	2024-05-23 15:49:36	Pending
190	35	2024-04-17 15:49:36	Failed
191	150	2024-09-25 15:49:36	Failed
192	8	2024-11-25 15:49:36	Completed
193	124	2024-09-22 15:49:36	Failed
194	78	2024-08-15 15:49:36	Completed
195	108	2024-12-28 15:49:36	Completed
196	33	2025-01-04 15:49:36	Pending
197	143	2024-09-28 15:49:36	Pending
198	120	2024-08-11 15:49:36	Pending
199	44	2024-10-08 15:49:36	Failed
200	113	2024-12-02 15:49:36	Pending
201	181	2024-03-01 15:49:36	Completed
202	196	2024-11-27 15:49:36	Pending
203	44	2024-06-24 15:49:36	Completed
204	191	2024-12-16 15:49:36	Completed
205	5	2024-04-08 15:49:36	Pending
206	105	2024-02-15 15:49:36	Pending
207	51	2024-09-14 15:49:36	Pending
208	164	2024-04-29 15:49:36	Failed
209	165	2024-12-28 15:49:36	Failed
210	188	2024-04-16 15:49:36	Completed
211	194	2024-10-29 15:49:36	Failed
212	118	2024-03-18 15:49:36	Completed
213	149	2024-07-12 15:49:36	Pending
214	118	2024-11-26 15:49:36	Failed
215	179	2024-11-24 15:49:36	Failed
216	122	2024-10-31 15:49:36	Failed
217	199	2024-11-02 15:49:36	Completed
218	89	2024-08-03 15:49:36	Pending
219	3	2024-10-07 15:49:36	Failed
220	137	2024-07-09 15:49:36	Pending
221	177	2024-12-20 15:49:36	Failed
222	56	2024-09-16 15:49:36	Failed
223	168	2024-10-02 15:49:36	Pending
224	6	2024-06-08 15:49:36	Completed
225	51	2024-08-26 15:49:36	Failed
226	114	2024-05-26 15:49:36	Pending
227	108	2024-02-15 15:49:36	Failed
228	140	2025-01-15 15:49:36	Completed
229	86	2024-11-21 15:49:36	Failed
230	87	2024-02-21 15:49:36	Failed
231	190	2024-08-20 15:49:36	Pending
232	12	2024-10-05 15:49:36	Pending
233	132	2024-12-07 15:49:36	Pending
234	63	2024-04-09 15:49:36	Failed
235	118	2024-09-15 15:49:36	Pending
236	146	2024-04-10 15:49:36	Pending
237	26	2024-10-30 15:49:36	Pending
238	111	2024-12-24 15:49:36	Failed
239	68	2025-01-27 15:49:36	Pending
240	37	2024-02-12 15:49:36	Completed
241	169	2024-08-08 15:49:36	Completed
242	184	2024-07-09 15:49:36	Pending
243	49	2024-10-02 15:49:36	Completed
244	11	2024-10-16 15:49:36	Completed
245	73	2024-11-27 15:49:36	Failed
246	107	2024-11-24 15:49:36	Failed
247	56	2024-04-24 15:49:36	Pending
248	149	2025-01-03 15:49:36	Completed
249	33	2024-08-16 15:49:36	Failed
250	146	2024-02-18 15:49:36	Failed
251	188	2024-06-03 15:49:36	Completed
252	5	2024-04-13 15:49:36	Pending
253	91	2024-03-31 15:49:36	Pending
254	158	2024-06-01 15:49:36	Failed
255	50	2024-03-12 15:49:36	Pending
256	7	2024-03-27 15:49:36	Pending
257	61	2024-09-24 15:49:36	Pending
258	86	2024-03-14 15:49:36	Failed
259	110	2024-10-23 15:49:36	Failed
260	84	2024-06-03 15:49:36	Completed
261	174	2024-03-02 15:49:36	Completed
262	156	2024-08-18 15:49:36	Completed
263	164	2024-10-13 15:49:36	Completed
264	52	2024-12-04 15:49:36	Completed
265	21	2024-06-30 15:49:36	Completed
266	163	2024-12-25 15:49:36	Completed
267	90	2024-09-26 15:49:36	Completed
268	199	2024-03-02 15:49:36	Completed
269	171	2024-10-01 15:49:36	Failed
270	75	2024-10-21 15:49:36	Failed
271	167	2024-09-19 15:49:36	Completed
272	45	2024-07-29 15:49:36	Failed
273	6	2024-07-29 15:49:36	Failed
274	121	2024-11-09 15:49:36	Failed
275	191	2025-01-31 15:49:36	Completed
276	183	2024-11-16 15:49:36	Failed
277	133	2024-08-29 15:49:36	Failed
278	157	2024-12-26 15:49:36	Pending
279	14	2024-02-28 15:49:36	Failed
280	118	2024-08-24 15:49:36	Completed
281	73	2024-10-20 15:49:36	Pending
282	192	2024-03-11 15:49:36	Failed
283	187	2024-04-05 15:49:36	Failed
284	111	2025-01-18 15:49:36	Failed
285	163	2024-10-11 15:49:36	Failed
286	132	2024-05-19 15:49:36	Pending
287	47	2024-07-08 15:49:36	Failed
288	90	2024-07-27 15:49:36	Pending
289	149	2024-04-11 15:49:36	Completed
290	137	2024-09-13 15:49:36	Pending
291	64	2024-10-23 15:49:36	Failed
292	198	2024-11-15 15:49:36	Failed
293	110	2024-06-30 15:49:36	Completed
294	55	2024-11-07 15:49:36	Completed
295	46	2024-05-13 15:49:36	Pending
296	17	2024-06-02 15:49:36	Completed
297	59	2024-07-30 15:49:36	Pending
298	80	2024-11-03 15:49:36	Failed
299	28	2024-09-23 15:49:36	Completed
300	107	2024-03-10 15:49:36	Failed
\.


--
-- Name: orderdetails orderdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: citus
--

ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_pkey PRIMARY KEY (orderdetailid);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: citus
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);


--
-- Name: orderdetails orderdetails_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: citus
--

ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);


--
-- Name: FUNCTION pg_replication_origin_advance(text, pg_lsn); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_advance(text, pg_lsn) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_create(text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_create(text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_drop(text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_drop(text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_oid(text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_oid(text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_progress(text, boolean); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_progress(text, boolean) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_session_is_setup(); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_is_setup() TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_session_progress(boolean); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_progress(boolean) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_session_reset(); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_reset() TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_session_setup(text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_setup(text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_xact_reset(); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_reset() TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) TO azure_pg_admin;


--
-- Name: FUNCTION pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn) TO azure_pg_admin;


--
-- Name: FUNCTION pg_stat_reset(); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset() TO azure_pg_admin;


--
-- Name: FUNCTION pg_stat_reset_shared(target text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_shared(target text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_stat_reset_single_function_counters(oid); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_function_counters(oid) TO azure_pg_admin;


--
-- Name: FUNCTION pg_stat_reset_single_table_counters(oid); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_table_counters(oid) TO azure_pg_admin;


--
-- Name: COLUMN pg_config.name; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(name) ON TABLE pg_catalog.pg_config TO azure_pg_admin;


--
-- Name: COLUMN pg_config.setting; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(setting) ON TABLE pg_catalog.pg_config TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.line_number; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(line_number) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.type; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(type) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.database; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(database) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.user_name; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(user_name) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.address; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(address) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.netmask; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(netmask) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.auth_method; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(auth_method) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.options; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(options) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.error; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(error) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_replication_origin_status.local_id; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(local_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;


--
-- Name: COLUMN pg_replication_origin_status.external_id; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(external_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;


--
-- Name: COLUMN pg_replication_origin_status.remote_lsn; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(remote_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;


--
-- Name: COLUMN pg_replication_origin_status.local_lsn; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(local_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;


--
-- Name: COLUMN pg_shmem_allocations.name; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(name) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;


--
-- Name: COLUMN pg_shmem_allocations.off; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(off) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;


--
-- Name: COLUMN pg_shmem_allocations.size; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(size) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;


--
-- Name: COLUMN pg_shmem_allocations.allocated_size; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(allocated_size) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.starelid; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(starelid) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staattnum; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staattnum) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stainherit; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stainherit) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanullfrac; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanullfrac) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stawidth; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stawidth) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stadistinct; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stadistinct) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.oid; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(oid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subdbid; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subdbid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subname; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subowner; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subowner) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subenabled; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subenabled) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subconninfo; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subconninfo) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subslotname; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subslotname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subsynccommit; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subsynccommit) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subpublications; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subpublications) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- PostgreSQL database dump complete
--

