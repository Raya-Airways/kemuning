COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: raya_development
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: raya_development
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: raya_development
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	staging	2021-09-03 10:39:05.610447	2021-09-03 10:39:05.610447
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: raya_development
--

COPY public.events (id, task_id, code, sequence, position_id, owner, title, description, url, created_by, updated_by, created_at, updated_at) FROM stdin;
1	1	17000.001.01	1	\N	Counter Party	Counter Party Initiates	The counter party contacts the associated HOD regarding contract expiry.	\N	\N	\N	2021-09-03 10:39:10.386595	2021-09-03 10:39:10.386595
2	1	17000.001.01	1	\N	Timer	Contract Expiry	Contract expiry is noted by the relevant HOD, and self initiated	\N	\N	\N	2021-09-03 10:39:10.390802	2021-09-03 10:39:10.390802
3	1	17000.001.02	2	\N	HOD	HOD to fill MOR	HOD to fill Memorandum of Request and submit to Legal	\N	\N	\N	2021-09-03 10:39:10.394694	2021-09-03 10:39:10.394694
4	1	17000.001.03	3	9		Vet & Discuss	Legal to vet and call for discussion	\N	\N	\N	2021-09-03 10:39:10.398681	2021-09-03 10:39:10.398681
5	1	17000.001.04	4	9		Approval	Vetting complete and new agreement approved	\N	\N	\N	2021-09-03 10:39:10.40235	2021-09-03 10:39:10.40235
6	1	17000.001.05	5	9		Issue Clearance Note	Legal will fill and complete the Clearance Note and forward with original contract and MOR set to GMD for execution	\N	\N	\N	2021-09-03 10:39:10.407866	2021-09-03 10:39:10.407866
7	1	17000.001.06	6	1		Contract Execution	GMD receives and executes contact execution as per legal advise, and returns to contract owner for stamping arrangements	\N	\N	\N	2021-09-03 10:39:10.411546	2021-09-03 10:39:10.411546
8	1	17000.001.07	7	\N	HOD	Arrange Stamping	Relevant HOD receives executed contract from GMD, and makes arrangements for stamping with counter party.\r\nOn completion, HOD returns the stamped contract to legal for filing.	\N	\N	\N	2021-09-03 10:39:10.415509	2021-09-03 10:39:10.415509
9	1	17000.001.08	8	9		Filing	Legal receives stamped contract and files appropriately in contract file.	\N	\N	\N	2021-09-03 10:39:10.419406	2021-09-03 10:39:10.419406
10	2	10300.001.01	1	19		Gather Inputs 	Pricing gathers fuel price (finance) and fuel burn rates (operations) 	\N	\N	\N	2021-09-03 10:39:10.422972	2021-09-03 10:39:10.422972
11	2	10300.001.02	2	19		Develop Pricing Table 	Based on experience develop a pricing template that is suitable for use 	\N	\N	\N	2021-09-03 10:39:10.427568	2021-09-03 10:39:10.427568
12	2	10300.001.03	3	19		Publish for use	Pricing publishes the pricing template for use.	\N	\N	\N	2021-09-03 10:39:10.431354	2021-09-03 10:39:10.431354
13	3	10300.002.01	1	\N	Trigger	Every Three Months		\N	\N	\N	2021-09-06 09:37:54.14208	2021-09-06 09:37:54.14208
14	3	10300.002.01	1	\N	Trigger	Fuel Price exceeds Threshold		\N	\N	\N	2021-09-06 09:38:13.310081	2021-09-06 09:38:13.310081
15	3	10300.002.02	2	19		Request Updated Fuel Price 	Pricing to request updated fuel pricing from finance. \r\n	\N	\N	\N	2021-09-06 09:38:49.405282	2021-09-06 09:38:49.405282
16	3	10300.002.03	3	10		Deliver Updated Fuel Price	Finance sends updated pricing \r\n	\N	\N	\N	2021-09-06 09:39:35.017226	2021-09-06 09:39:35.017226
17	3	10300.002.04	4	19		Update Pricing 	Pricing updates pricing using template. 	\N	\N	\N	2021-09-06 09:40:07.603253	2021-09-06 09:40:07.603253
18	3	10300.002.05	5	19		Publish Pricing 	Publish Pricing to Business Development and Finance for quotation & Billing	\N	\N	\N	2021-09-06 09:40:58.834205	2021-09-06 09:40:58.834205
19	4	10300.003.01	1	3		Pricing Requests Quotation		\N	\N	\N	2021-09-07 02:12:18.752691	2021-09-07 02:12:18.752691
20	4	10300.003.02	2	19		Check availability	Check availability, rate against business rules 	\N	\N	\N	2021-09-07 02:12:46.741268	2021-09-07 02:12:46.741268
21	4	10300.003.03	3	19		Prepare Quotation 	Prepare quotation using template and send to 1.1 Business Development	\N	\N	\N	2021-09-07 02:13:19.996855	2021-09-07 02:13:19.996855
22	5	10300.004.01	1	9		Send ACA	Legal sends copy of Aircraft Charter Agreement for reference	\N	\N	\N	2021-09-07 02:19:25.649234	2021-09-07 02:19:25.649234
23	5	10300.004.02	2	19		Receive ACA	Pricing receives Aircraft Charter Agreement (ACA) from legal. 	\N	\N	\N	2021-09-07 02:20:21.625375	2021-09-07 02:20:21.625375
24	5	10300.004.03	3	19		Log Rates and End Date	Pricing logs pricing and end date of ACA in ACA Master List \r\n	\N	\N	\N	2021-09-07 02:23:26.464451	2021-09-07 02:23:26.464451
25	5	10300.004.04	4	19		File ACA	Pricing files ACA for future reference 	\N	\N	\N	2021-09-07 02:23:54.714092	2021-09-07 02:23:54.714092
26	6	12110.001.01	1	23		Weekly Maint Plan 	Receive Weekly Maintenance Plan from Planning. \r\n	\N	\N	\N	2021-09-07 03:31:01.141273	2021-09-07 03:31:01.141273
27	6	12110.001.02	2	20		Prepare Template for input 	Prepare maintenance data from 1212 Planning into the template. 	\N	\N	\N	2021-09-07 03:31:29.483373	2021-09-07 03:31:29.483373
28	6	12110.001.03	3	13		HOD Input 	HOD studies plan and provides financial input for Weekly Forecast	\N	\N	\N	2021-09-07 03:32:06.819107	2021-09-07 03:32:06.819107
29	6	12110.001.04	4	20		Costs are input into template	Receive input from HOD \r\nPrepare input into Weekly Forecast \r\nReturn to HOD for approval 	\N	\N	\N	2021-09-07 03:32:34.158431	2021-09-07 03:32:34.158431
30	6	12110.001.05	5	13		Approve Forecast 	Receive forecast from Business Accounting \r\nHOD Approves forecast and sends to Finance Dept	\N	\N	\N	2021-09-07 03:33:01.418497	2021-09-07 03:33:01.418497
31	7	12101.002.01	1	20		Retrieve SIN	Retrieve Service Item Note (SIN) from 121.022 Records for corresponding month from file. 	\N	\N	\N	2021-09-07 03:43:25.411893	2021-09-07 03:43:25.411893
32	7	12101.002.02	2	20		Compile SIN	Compile SIN values into CAMO Monthly Expense Report Template (MER) \r\nAssign SIN to corresponding aircraft. \r\nCalculate Totals as per template. \r\n	\N	\N	\N	2021-09-07 03:43:53.259224	2021-09-07 03:43:53.259224
33	7	12101.002.03	3	20		Is data complete	If data such as, cost of parts, is incomplete refer to 1.8 Finance for Financial Data, and recompile when received. \r\nOR \r\nForward to 121 CAMO Head if done. \r\n	\N	\N	\N	2021-09-07 03:44:43.471331	2021-09-07 03:44:43.471331
34	7	12101.002.04	4	13		Review MER	CAMO Head reviews the MER \r\n	\N	\N	\N	2021-09-07 03:45:18.890844	2021-09-07 03:45:18.890844
35	7	12101.002.05	5	13		Approve MER	HOD approves MER for release to 1.8 Finance \r\nOR \r\nReturn MER to business accountant for further info. \r\n	\N	\N	\N	2021-09-07 03:45:42.821634	2021-09-07 03:45:42.821634
36	8	12102.003.01	1	20		Daily Retrieve AMO Man  Hours 	Retrieve Man Hours Log from File	\N	\N	\N	2021-09-07 03:52:21.596521	2021-09-07 03:52:21.596521
37	8	12102.003.02	2	20		Compile Man Hours	Compile Man Hours into designated template \r\nCalculate Totals as per template. 	\N	\N	\N	2021-09-07 03:52:43.897795	2021-09-07 03:52:43.897795
38	8	12102.003.03	3	20		Send to HOD for approval 	At end of every month, \r\nsend completed Monthly Expense Report to CAMO Head 	\N	\N	\N	2021-09-07 03:53:24.014249	2021-09-07 03:53:24.014249
39	8	12102.003.04	4	20		Send to HOD for approval	At end of every month, \r\nsend completed Monthly Expense Report to CAMO Head 	\N	\N	\N	2021-09-07 03:54:31.363446	2021-09-07 03:54:31.363446
40	8	12102.003.05	5	13		Approve Release 	HOD Approves report and returns to 1.2.1.0.2 Business Accountant 	\N	\N	\N	2021-09-07 03:55:03.490898	2021-09-07 03:55:03.490898
41	8	12102.003.06	6	13		Send to Finance Dept	Send approved Weekly Forecast to __ in Finance Dept 	\N	\N	\N	2021-09-07 03:56:00.142392	2021-09-07 03:56:00.142392
42	9	12102.004.01	1	20		Receives Project Accounting File	Receives Project Accounting File From 12101 CAMO Project Manager	\N	\N	\N	2021-09-07 04:00:21.805975	2021-09-07 04:00:21.805975
43	9	12102.004.02	2	20		Prepare Financial Input	Translate project task list into financial plan template. \r\nSend to HOD for financial input 	\N	\N	\N	2021-09-07 04:01:04.567944	2021-09-07 04:01:04.567944
44	9	12102.004.03	3	13		Study Costs	CAMO Head studies costs and provides financial input to 12102 Business Accountant 	\N	\N	\N	2021-09-07 04:01:48.333106	2021-09-07 04:01:48.333106
45	9	12102.004.04	4	20		Input costs into template 	Receive input from HOD \r\nPrepare input into Project Budget Template \r\nSends to CAMO Head for approval 	\N	\N	\N	2021-09-07 04:02:24.726491	2021-09-07 04:02:24.726491
46	9	12102.004.05	5	13		Approve Budget	CAMO Head reviews budget and informs 12102 of approval	\N	\N	\N	2021-09-07 04:03:29.024585	2021-09-07 04:03:29.024585
47	9	12102.004.06	6	20		Compile & Send to Finance 	12102 compiles and send to finance 	\N	\N	\N	2021-09-07 04:04:00.841038	2021-09-07 04:04:00.841038
\.


--
-- Data for Name: positions; Type: TABLE DATA; Schema: public; Owner: raya_development
--

COPY public.positions (id, code, combo_code, parent_id, name, mission, created_by, updated_by, created_at, updated_at) FROM stdin;
1	1	1	\N	GMD		\N	\N	2021-09-03 10:39:10.159561	2021-09-03 10:39:10.159561
2	0	1.0	1	Strategy & Project Management		\N	\N	2021-09-03 10:39:10.239246	2021-09-03 10:39:10.239246
3	1	1.1	1	Business Development		\N	\N	2021-09-03 10:39:10.244821	2021-09-03 10:39:10.244821
4	2	1.2	1	Operations		\N	\N	2021-09-03 10:39:10.249317	2021-09-03 10:39:10.249317
5	3	1.3	1	Quality Assurance		\N	\N	2021-09-03 10:39:10.255475	2021-09-03 10:39:10.255475
6	4	1.4	1	Safety Management Systems		\N	\N	2021-09-03 10:39:10.259972	2021-09-03 10:39:10.259972
7	5	1.5	1	Internal Audit		\N	\N	2021-09-03 10:39:10.264264	2021-09-03 10:39:10.264264
8	6	1.6	1	Risk Management		\N	\N	2021-09-03 10:39:10.268931	2021-09-03 10:39:10.268931
9	7	1.7	1	Legal & Secretarial Services		\N	\N	2021-09-03 10:39:10.273298	2021-09-03 10:39:10.273298
10	8	1.8	1	Finance		\N	\N	2021-09-03 10:39:10.278999	2021-09-03 10:39:10.278999
11	9	1.9	1	People Management & Corporate Services		\N	\N	2021-09-03 10:39:10.283446	2021-09-03 10:39:10.283446
12	10	1.10	1	Digital		\N	\N	2021-09-03 10:39:10.287952	2021-09-03 10:39:10.287952
13	1	1.2.1	4	CAMO		\N	\N	2021-09-03 10:39:10.292241	2021-09-03 10:39:10.292241
14	2	1.2.2	4	AMO		\N	\N	2021-09-03 10:39:10.297743	2021-09-03 10:39:10.297743
15	3	1.2.3	4	Flight Operations		\N	\N	2021-09-03 10:39:10.303026	2021-09-03 10:39:10.303026
16	4	1.2.4	4	Airline Operations		\N	\N	2021-09-03 10:39:10.307366	2021-09-03 10:39:10.307366
17	5	1.2.5	4	Ground Operations		\N	\N	2021-09-03 10:39:10.311924	2021-09-03 10:39:10.311924
18	6	1.2.6	4	Aviation Security		\N	\N	2021-09-03 10:39:10.316259	2021-09-03 10:39:10.316259
19	3	1.0.3	2	Pricing	The Pricing and Performance Dept develops a pricing mechanism for publishing and updating the price and provides ad-hoc pricing to the  Business Development unit. This department also maintains the master list of Aircraft Charter Agreements and provides pricing and renewal  information on request.	\N	\N	2021-09-03 10:39:10.320539	2021-09-03 10:39:10.320539
21	0	1.2.1.0	13	Assistant For	The CAMO Business Accounting assists the CAMO Office in preparing budget requirements, and consequentially issuing expense reports for consumption by Finance.	\N	\N	2021-09-07 03:27:04.198791	2021-09-07 03:27:04.198791
20	1	1.2.1.0.1	21	CAMO Business Accountant	The CAMO Business Accounting assists the CAMO Office in preparing budget requirements, and consequentially issuing expense reports for consumption by Finance.	\N	\N	2021-09-07 03:22:37.724957	2021-09-07 03:27:28.376572
22	1	1.2.1.1	13	Technical Services		\N	\N	2021-09-07 03:28:42.19135	2021-09-07 03:28:42.19135
23	2	1.2.1.2	13	Planning & Records		\N	\N	2021-09-07 03:29:43.921895	2021-09-07 03:29:43.921895
24	1	1.9.1	11	People Management		\N	\N	2021-09-07 04:10:17.829041	2021-09-07 04:10:17.829041
25	1	1.9.1.1	24	Compensation & Benefits		\N	\N	2021-09-07 04:10:46.925454	2021-09-07 04:10:46.925454
26	2	1.9.1.2	24	Recruitment, IR & ER, Training		\N	\N	2021-09-07 04:11:21.389557	2021-09-07 04:11:21.389557
27	1	1.9.1.2.1	26	Recruitment		\N	\N	2021-09-07 04:11:49.12891	2021-09-07 04:11:49.12891
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: raya_development
--

COPY public.schema_migrations (version) FROM stdin;
20210817105440
20210817105800
20210817105849
20210818015640
20210818094455
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: raya_development
--

COPY public.tasks (id, code, title, security, position_id, owner, description, created_by, updated_by, created_at, updated_at) FROM stdin;
1	17000.001	Process Memorandum of Request	\N	9	1.X	Initiate memorandum of request for in house legal review	\N	\N	2021-09-03 10:39:10.357711	2021-09-03 10:39:10.357711
2	10300.001	Develop Pricing Template 	\N	19	1.0.3	Understand resource requirements for each BU. Receive the resource pricing inputs from various departments and develop a profitable \r\npricing mechanism with thresholds and buffers for use by the Business Development Unit. \r\n	\N	\N	2021-09-03 10:39:10.361869	2021-09-03 10:39:10.361869
3	10300.002	Update & Publish Pricing	\N	19		Every cycle or when a resource input exceeds a threshold, to gather updated information from predetermined inputs and update the pricing using the approved pricing mechanism and communicate the changes to business development & billing. 	\N	\N	2021-09-06 09:35:18.649386	2021-09-06 09:42:11.336092
4	10300.003	Develop Quotation	\N	19		Using latest pricing rules develop quotation for sales	\N	\N	2021-09-07 02:11:28.451681	2021-09-07 02:11:28.4563
5	10300.004	Maintain ACA Master List 	\N	19		Maintain Master List of Aircraft Charter Agreements	\N	\N	2021-09-07 02:18:30.263528	2021-09-07 02:19:54.174038
6	12101.001	Prepare Weekly Forecast	\N	20		Based on inputs from planning, and financial information from CAMO Head, prepare a weekly financial requirement report and submit to the Finance Dept.	\N	\N	2021-09-07 03:23:39.11395	2021-09-07 03:37:56.946889
7	12101.002	Monthly Expense Report	\N	20		Based on Service Item Notes from AMO (SIN) prepare a monthly per plane expense report. \r\n	\N	\N	2021-09-07 03:42:46.801972	2021-09-07 03:46:04.661108
8	12102.003	AMO Productivity Report 	\N	20		Using billable hours used from AMO vs the known available hours derive a monthly AMO productivity report. \r\n	\N	\N	2021-09-07 03:51:41.206635	2021-09-07 03:51:41.211631
9	12102.004	Prepare & Maintain Project Budget 	\N	20		For any major maintenance effort such as a ‘C’ Check, based on inputs from the CAMO head, prepare a cost effectiveness measurement report. 	\N	\N	2021-09-07 03:58:09.298172	2021-09-07 03:58:09.302642
\.


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raya_development
--

-- SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 7, true);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raya_development
--

-- SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raya_development
--

-- SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, false);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raya_development
--

-- SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raya_development
--

-- SELECT pg_catalog.setval('public.events_id_seq', 47, true);


--
-- Name: positions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raya_development
--

-- SELECT pg_catalog.setval('public.positions_id_seq', 27, true);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raya_development
--

-- SELECT pg_catalog.setval('public.tasks_id_seq', 9, true);


--
-- PostgreSQL database dump complete
--
