

CREATE TABLE public.ottelut (
    ottelu_id integer NOT NULL,
    koti character varying NOT NULL,
    vieras character varying NOT NULL,
    maalitkoti integer,
    maalitvieras integer,
    voittaja character varying NOT NULL,
    "päivämäärä" date
);





CREATE TABLE public.pelaajalista (
    pelaajaid integer NOT NULL,
    joukkue character varying,
    pelinumero integer NOT NULL,
    etunimi character varying NOT NULL,
    sukunimi character varying NOT NULL,
    "syntymävuosi" integer,
    pelipaikka character varying
);





CREATE TABLE public.taulukko (
    joukkue character varying NOT NULL,
    o integer,
    v3 integer,
    v2 integer,
    h1 integer,
    h0 integer,
    tm integer,
    pm integer,
    me integer,
    p integer
);



INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (1, 'Blue Fox', 'SB Paapat', 7, 3, 'Blue Fox', '2018-10-06');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (2, 'Blue Fox', 'Nibacos', 7, 5, 'Blue Fox', '2019-02-02');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (3, 'Blue Fox', 'MLT', 9, 5, 'Blue Fox', '2019-01-19');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (4, 'Blue Fox', 'SB Vaasa', 6, 2, 'Blue Fox', '2018-12-21');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (5, 'Blue Fox', 'TU', 7, 4, 'Blue Fox', '2019-09-22');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (6, 'Blue Fox', 'ISB/Team Atria', 11, 4, 'Blue Fox', '2019-03-01');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (7, 'Blue Fox', 'Konnat', 3, 3, 'tasapeli', '2018-12-02');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (8, 'Blue Fox', 'HiPa', 14, 9, 'Blue Fox', '2019-02-09');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (9, 'Blue Fox', 'FBC Remix', 10, 3, 'Blue Fox', '2018-10-20');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (10, 'Blue Fox', 'SB Kauhajoki', 14, 4, 'Blue Fox', '2018-11-10');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (11, 'SB Paapat', 'Blue Fox', 6, 8, 'Blue Fox', '2019-01-11');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (12, 'SB Paapat', 'Nibacos', 9, 0, 'SB Paapat', '2018-10-14');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (13, 'SB Paapat', 'MLT', 13, 3, 'SB Paapat', '2019-01-06');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (14, 'SB Paapat', 'SB Vaasa', 7, 7, 'tasapeli', '2019-02-09');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (15, 'SB Paapat', 'TU', 11, 5, 'SB Paapat', '2019-09-30');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (16, 'SB Paapat', 'ISB/Team Atria', 18, 5, 'SB Paapat', '2018-10-19');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (17, 'SB Paapat', 'Konnat', 14, 5, 'SB Paapat', '2018-11-17');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (18, 'SB Paapat', 'HiPa', 16, 5, 'SB Paapat', '2018-11-09');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (19, 'SB Paapat', 'FBC Remix', 10, 9, 'SB Paapat', '2019-03-01');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (20, 'SB Paapat', 'SB Kauhajoki', 14, 2, 'SB Paapat', '2018-09-22');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (21, 'Nibacos', 'Blue Fox', 4, 7, 'Blue Fox', '2018-10-26');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (22, 'Nibacos', 'SB Paapat', 4, 7, 'SB Paapat', '2019-01-18');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (23, 'Nibacos', 'MLT', 10, 3, 'Nibacos', '2018-10-05');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (24, 'Nibacos', 'SB Vaasa', 10, 8, 'Nibacos', '2018-10-19');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (25, 'Nibacos', 'TU', 8, 7, 'Nibacos', '2018-11-24');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (26, 'Nibacos', 'ISB/Team Atria', 9, 6, 'Nibacos', '2019-02-08');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (27, 'Nibacos', 'Konnat', 7, 3, 'Nibacos', '2018-09-21');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (28, 'Nibacos', 'HiPa', 5, 8, 'HiPa', '2019-01-04');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (29, 'Nibacos', 'FBC Remix', 7, 5, 'Nibacos', '2018-12-14');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (30, 'Nibacos', 'SB Kauhajoki', 14, 0, 'Nibacos', '2019-02-22');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (31, 'MLT', 'Blue Fox', 6, 1, 'MLT', '2018-10-13');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (32, 'MLT', 'SB Paapat', 9, 2, 'MLT', '2019-12-03');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (33, 'MLT', 'Nibacos', 6, 6, 'tasapeli', '2019-01-14');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (34, 'MLT', 'SB Vaasa', 12, 6, 'MLT', '2019-11-18');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (35, 'MLT', 'TU', 12, 6, 'MLT', '2019-01-26');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (36, 'MLT', 'ISB/Team Atria', 8, 8, 'tasapeli', '2018-09-23');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (37, 'MLT', 'Konnat', 8, 6, 'MLT', '2019-12-13');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (38, 'MLT', 'HiPa', 14, 4, 'MLT', '2019-03-01');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (39, 'MLT', 'FBC Remix', 8, 7, 'MLT', '2018-11-08');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (40, 'MLT', 'SB Kauhajoki', 9, 0, 'MLT', '2019-01-31');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (41, 'SB Vaasa', 'Blue Fox', 10, 10, 'tasapeli', '2018-09-28');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (42, 'SB Vaasa', 'SB Paapat', 10, 5, 'SB Vaasa', '2019-02-08');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (43, 'SB Vaasa', 'Nibacos', 6, 7, 'Nibacos', '2019-01-25');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (44, 'SB Vaasa', 'MLT', 5, 4, 'SB Vaasa', '2019-02-22');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (45, 'SB Vaasa', 'TU', 12, 6, 'SB Vaasa', '2019-02-15');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (46, 'SB Vaasa', 'ISB/Team Atria', 9, 3, 'SB Vaasa', '2019-01-18');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (47, 'SB Vaasa', 'Konnat', 6, 4, 'SB Vaasa', '2018-10-26');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (48, 'SB Vaasa', 'HiPa', 16, 4, 'SB Vaasa', '2019-12-07');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (49, 'SB Vaasa', 'FBC Remix', 7, 7, 'tasapeli', '2018-11-30');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (50, 'SB Vaasa', 'SB Kauhajoki', 3, 3, 'tasapeli', '2018-10-05');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (51, 'TU', 'Blue Fox', 10, 6, 'TU', '2019-12-08');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (52, 'TU', 'SB Paapat', 8, 15, 'SB Paapat', '2018-12-15');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (53, 'TU', 'Nibacos', 4, 12, 'Nibacos', '2019-03-01');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (54, 'TU', 'MLT', 7, 5, 'TU', '2018-10-20');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (55, 'TU', 'SB Vaasa', 8, 8, 'tasapeli', '2018-11-10');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (56, 'TU', 'ISB/Team Atria', 10, 4, 'TU', '2018-10-28');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (57, 'TU', 'Konnat', 8, 8, 'tasapeli', '2019-01-20');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (58, 'TU', 'HiPa', 6, 4, 'TU', '2018-10-06');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (59, 'TU', 'FBC Remix', 7, 4, 'TU', '2019-02-24');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (60, 'TU', 'SB Kauhajoki', 15, 7, 'TU', '2019-02-09');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (61, 'ISB/Team Atria', 'Blue Fox', 4, 8, 'Blue Fox', '2018-11-24');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (62, 'ISB/Team Atria', 'SB Paapat', 4, 8, 'SB Paapat', '2019-01-27');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (63, 'ISB/Team Atria', 'Nibacos', 6, 5, 'ISB/Team Atria', '2018-11-01');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (64, 'ISB/Team Atria', 'MLT', 7, 5, 'ISB/Team Atria', '2018-12-09');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (65, 'ISB/Team Atria', 'SB Vaasa', 11, 5, 'ISB/Team Atria', '2018-10-14');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (66, 'ISB/Team Atria', 'TU', 4, 9, 'TU', '2019-02-03');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (67, 'ISB/Team Atria', 'Konnat', 7, 6, 'ISB/Team Atria', '2019-02-17');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (68, 'ISB/Team Atria', 'HiPa', 14, 4, 'ISB/Team Atria', '2018-11-18');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (69, 'ISB/Team Atria', 'FBC Remix', 9, 8, 'ISB/Team Atria', '2019-10-06');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (70, 'ISB/Team Atria', 'SB Kauhajoki', 14, 5, 'ISB/Team Atria', '2019-01-05');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (71, 'Konnat', 'Blue Fox', 8, 8, 'tasapeli', '2019-01-07');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (72, 'Konnat', 'SB Paapat', 7, 13, 'SB Paapat', '2019-02-04');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (73, 'Konnat', 'Nibacos', 5, 10, 'Nibacos', '2019-12-10');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (74, 'Konnat', 'MLT', 3, 6, 'MLT', '2019-10-01');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (75, 'Konnat', 'SB Vaasa', 8, 9, 'SB Vaasa', '2019-02-25');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (76, 'Konnat', 'TU', 7, 9, 'TU', '2018-10-15');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (77, 'Konnat', 'ISB/Team Atria', 3, 2, 'Konnat', '2019-11-12');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (78, 'Konnat', 'HiPa', 7, 6, 'Konnat', '2019-01-28');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (79, 'Konnat', 'FBC Remix', 7, 3, 'Konnat', '2018-11-05');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (80, 'Konnat', 'SB Kauhajoki', 7, 4, 'Konnat', '2018-11-26');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (81, 'HiPa', 'Blue Fox', 3, 5, 'Blue Fox', '2019-11-03');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (82, 'HiPa', 'SB Paapat', 8, 7, 'HiPa', '2019-02-17');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (83, 'HiPa', 'Nibacos', 3, 7, 'Nibacos', '2018-12-01');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (84, 'HiPa', 'MLT', 5, 10, 'MLT', '2018-11-25');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (85, 'HiPa', 'SB Vaasa', 5, 10, 'SB Vaasa', '2018-09-22');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (86, 'HiPa', 'TU', 7, 13, 'TU', '2019-01-12');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (87, 'HiPa', 'ISB/Team Atria', 6, 5, 'HiPa', '2019-02-23');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (88, 'HiPa', 'Konnat', 9, 5, 'HiPa', '2018-10-21');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (89, 'HiPa', 'FBC Remix', 5, 8, 'FBC Remix', '2019-02-03');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (90, 'HiPa', 'SB Kauhajoki', 11, 11, 'tasapeli', '2018-09-30');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (91, 'FBC Remix', 'Blue Fox', 2, 9, 'Blue Fox', '2019-01-26');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (92, 'FBC Remix', 'SB Paapat', 6, 13, 'SB Paapat', '2019-11-24');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (93, 'FBC Remix', 'Nibacos', 4, 8, 'Nibacos', '2018-09-29');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (94, 'FBC Remix', 'MLT', 5, 12, 'MLT', '2019-02-16');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (95, 'FBC Remix', 'SB Vaasa', 2, 11, 'SB Vaasa', '2019-01-05');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (96, 'FBC Remix', 'TU', 6, 10, 'TU', '2018-11-17');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (97, 'FBC Remix', 'ISB/Team Atria', 7, 16, 'ISB/Team Atria', '2019-01-12');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (98, 'FBC Remix', 'Konnat', 7, 7, 'tasapeli', '2019-02-09');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (99, 'FBC Remix', 'HiPa', 7, 8, 'HiPa', '2018-10-27');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (100, 'FBC Remix', 'SB Kauhajoki', 10, 5, 'FBC Remix', '2019-10-13');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (101, 'SB Kauhajoki', 'Blue Fox', 3, 20, 'Blue Fox', '2019-02-16');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (102, 'SB Kauhajoki', 'SB Paapat', 7, 15, 'SB Paapat', '2018-12-08');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (103, 'SB Kauhajoki', 'Nibacos', 3, 15, 'Nibacos', '2019-11-17');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (104, 'SB Kauhajoki', 'MLT', 6, 14, 'MLT', '2018-10-24');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (105, 'SB Kauhajoki', 'SB Vaasa', 5, 12, 'SB Vaasa', '2019-01-09');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (106, 'SB Kauhajoki', 'TU', 3, 11, 'TU', '2019-10-31');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (107, 'SB Kauhajoki', 'ISB/Team Atria', 11, 16, 'ISB/Team Atria', '2018-12-01');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (108, 'SB Kauhajoki', 'Konnat', 6, 13, 'Konnat', '2019-03-01');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (109, 'SB Kauhajoki', 'HiPa', 3, 8, 'HiPa', '2018-12-15');
INSERT INTO public.ottelut (ottelu_id, koti, vieras, maalitkoti, maalitvieras, voittaja, "päivämäärä") VALUES (110, 'SB Kauhajoki', 'FBC Remix', 8, 5, 'SB Kauhajoki', '2019-01-19');




INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (1, 'Blue Fox', 36, 'Didrik', 'Lillas', 1999, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (2, 'Blue Fox', 10, 'Jack ', 'Nylund', 2000, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (3, 'Blue Fox', 18, 'Johannes', 'Vähäkangas', 1998, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (4, 'Blue Fox', 9, 'Ronnie', 'Luden', 1999, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (5, 'Blue Fox', 7, 'Axel', 'Hedman', 1999, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (6, 'Blue Fox', 92, 'Anton', 'Kallvik', 1992, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (7, 'Blue Fox', 82, 'Anton', 'Kronqvist', 2000, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (8, 'Blue Fox', 22, 'Robin', 'Holländer', 1987, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (9, 'Blue Fox', 89, 'Mikael', 'Nyvall', 1987, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (10, 'Blue Fox', 53, 'Jonathan', 'Sjöblom', 1986, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (11, 'SB Paapat', 17, 'Valtteri', 'Nurmi', 1985, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (12, 'SB Paapat', 88, 'Joona', 'Kukko', 1988, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (13, 'SB Paapat', 66, 'Mika', 'Joensuu', 1984, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (14, 'SB Paapat', 16, 'Tobias', 'Brännbacka', 1989, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (15, 'SB Paapat', 23, 'Mikko', 'Kuusisto', 1987, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (16, 'SB Paapat', 81, 'Jesse', 'Palmberg', 1989, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (17, 'SB Paapat', 1, 'Jouko', 'Valtola', 1981, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (18, 'SB Paapat', 8, 'Kari-Matti', 'Viinamäki', 1984, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (19, 'SB Paapat', 10, 'Juho', 'Sutinen', 1982, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (20, 'SB Paapat', 42, 'Thomas', 'Backman', 1981, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (21, 'Nibacos', 88, 'Jori', 'Heikkilä', 1997, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (22, 'Nibacos', 27, 'Aapo', 'Lokasaari', 1999, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (23, 'Nibacos', 11, 'Oskari', 'Kauppila', 1998, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (24, 'Nibacos', 53, 'Arttu', 'Harju', 2000, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (25, 'Nibacos', 12, 'Jukka', 'Keskisipilä', 1988, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (26, 'Nibacos', 39, 'Jari', 'Koski-Vähälä', 1990, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (27, 'Nibacos', 10, 'Tuomas', 'Tilus', 1990, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (28, 'Nibacos', 38, 'Onni', 'Puutio', 1998, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (29, 'Nibacos', 17, 'Tommi', 'Penttilä', 1979, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (30, 'Nibacos', 58, 'Juuso', 'Kortetmaa', 2000, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (31, 'MLT', 71, 'Ville', 'Kakkori', 1987, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (32, 'MLT', 36, 'Aki', 'Vainio-Hynnilä', 1991, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (33, 'MLT', 83, 'Veli-Matti', 'Vasanko', 1983, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (34, 'MLT', 33, 'Tuomas', 'Prusti', 1989, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (35, 'MLT', 61, 'Jouni', 'Lampinen', 1993, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (36, 'MLT', 35, 'Jukka', 'Rahko', 1987, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (37, 'MLT', 65, 'Mikko', 'Ala-Huikku', 1991, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (38, 'MLT', 82, 'Jaakko', 'Lehtolainen', 1987, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (39, 'MLT', 51, 'Iiro', 'Junnikkala', 1988, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (40, 'MLT', 29, 'Joonas', 'Haapamäki', 1991, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (41, 'MLT', 59, 'Arttu', 'Rahko', 1992, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (42, 'MLT', 31, 'Timo', 'Paananen', 1991, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (43, 'SB Vaasa', 74, 'Nico', 'Hagelberg', 1998, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (44, 'SB Vaasa', 11, 'Niklas ', 'Paul', 1994, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (45, 'SB Vaasa', 5, 'Kaius', 'Klemetti', 1996, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (46, 'SB Vaasa', 95, 'Kim ', 'Sand', 1995, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (47, 'SB Vaasa', 63, 'Leevi', 'Björkman', 1997, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (48, 'SB Vaasa', 31, 'Kristian', 'Österman', 1994, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (49, 'SB Vaasa', 38, 'Saku', 'Pienimäki', 1999, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (50, 'SB Vaasa', 71, 'Olli', 'Puputti', 1994, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (51, 'SB Vaasa', 29, 'Jesse', 'Ylinen', 1997, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (52, 'SB Vaasa', 44, 'Arttu', 'Turunen', 1994, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (53, 'SB Vaasa', 39, 'Jonathan', 'Jåfs', 2001, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (54, 'TU', 7, 'Tuomas', 'Määttälä', 1989, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (55, 'TU', 18, 'Harri', 'Keskisipilä', 1984, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (56, 'TU', 23, 'Lauri', 'Hyväri', 1990, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (57, 'TU', 96, 'Sampo', 'Uusitalo', 1988, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (58, 'TU', 31, 'Timi ', 'Kopsala', 1997, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (59, 'TU', 35, 'Mika', 'Siermala', 1981, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (60, 'TU', 9, 'Elias', 'Ritola', 1997, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (61, 'TU', 24, 'Aleksi', 'Huhtala', 1998, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (62, 'TU', 93, 'Niko', 'Jämsä', 1995, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (63, 'TU', 26, 'Heikki', 'Vengasaho', 1994, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (64, 'TU', 80, 'Jussi', 'Tuomi', 1996, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (65, 'ISB/Team Atria', 55, 'Tero', 'Koskilammi', 1985, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (66, 'ISB/Team Atria', 21, 'Juha-Matti', 'Kiviluoma', 1990, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (67, 'ISB/Team Atria', 95, 'Seppo', 'Peltola', 1989, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (68, 'ISB/Team Atria', 57, 'Mikko', 'Laitila', 1993, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (69, 'ISB/Team Atria', 76, 'Sami', 'Kortesmaa', 1984, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (70, 'ISB/Team Atria', 71, 'Timo', 'Paakkinen', 1983, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (71, 'ISB/Team Atria', 10, 'Eero', 'Rahnasto', 1980, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (72, 'ISB/Team Atria', 17, 'Jyri', 'Ala-Piirto', 1990, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (73, 'ISB/Team Atria', 30, 'Joonas', 'Olkkonen', 1997, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (74, 'ISB/Team Atria', 16, 'Kristian', 'Syrjälä', 1994, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (75, 'ISB/Team Atria', 75, 'Harri', 'Käpyaho', 1984, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (76, 'Konnat', 32, 'Ville', 'Yli-Juuti', 1990, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (77, 'Konnat', 33, 'Jiri', 'Tervo', 1993, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (78, 'Konnat', 13, 'Riku', 'Kallioniemi', 1997, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (79, 'Konnat', 88, 'Joonas', 'Huhtamäki', 1993, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (80, 'Konnat', 23, 'Samuli', 'Saarenoja', 1997, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (81, 'Konnat', 31, 'Tero', 'Kotomäki', 1977, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (82, 'Konnat', 91, 'Aatu', 'Kuula', 1991, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (83, 'Konnat', 68, 'Matias', 'Mäkitöyli', 1996, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (84, 'Konnat', 10, 'Ilari', 'Oikari', 1990, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (85, 'Konnat', 21, 'Joonas', 'Mäkelä', 1992, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (86, 'HiPa', 24, 'Tuomas', 'Palovaara', 1989, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (87, 'HiPa', 87, 'Mattias', 'Boren', 1997, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (88, 'HiPa', 32, 'Lassi', 'Lokasaari', 1994, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (89, 'HiPa', 71, 'Matias', 'Judin', 1980, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (90, 'HiPa', 20, 'Tuomas', 'Hägg', 1983, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (91, 'HiPa', 50, 'Jussi', 'Kaustinen', 1997, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (92, 'HiPa', 22, 'Miko', 'Mattila', 1994, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (93, 'HiPa', 30, 'Jere', 'Hietamäki', 1996, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (94, 'HiPa', 21, 'Janne', 'Tiilikainen', 1988, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (95, 'HiPa', 23, 'Jonnes ', 'Korpijärvi', 1996, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (96, 'HiPa', 4, 'Lauri ', 'Lehtomäki', 1993, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (97, 'FBC Remix', 70, 'Joona ', 'Valli', 1997, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (98, 'FBC Remix', 19, 'Mikko', 'Huhtamäki', 1990, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (99, 'FBC Remix', 38, 'Markus', 'Kuru', 1994, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (100, 'FBC Remix', 91, 'Ilkka', 'Salonen', 1996, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (101, 'FBC Remix', 80, 'Jarno', 'Lehtonen', 1991, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (102, 'FBC Remix', 2, 'Teemu', 'Nykänen', 1997, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (103, 'FBC Remix', 61, 'Ville', 'Keko', 1995, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (104, 'FBC Remix', 65, 'Juuso', 'Valli', 2000, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (105, 'FBC Remix', 92, 'Timo-Jukka', 'Koski', 1992, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (106, 'FBC Remix', 23, 'Jasir', 'Aro', 1999, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (107, 'SB Kauhajoki', 77, 'Juha', 'Kulmala', 1990, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (108, 'SB Kauhajoki', 66, 'Anssi', 'Kulmala', 1987, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (109, 'SB Kauhajoki', 44, 'Kristian', 'Heinänen', 1992, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (110, 'SB Kauhajoki', 25, 'Olli', 'Syrjälä', 1982, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (111, 'SB Kauhajoki', 70, 'Niklas', 'Huhtaviita', 1992, 'puolustaja');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (112, 'SB Kauhajoki', 16, 'Johannes', 'Vanhatalo', 1988, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (113, 'SB Kauhajoki', 35, 'Mika', 'Ollonqvist', 1984, 'maalivahti');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (114, 'SB Kauhajoki', 2, 'Leevi', 'Hietalahti', 2002, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (115, 'SB Kauhajoki', 8, 'Antti', 'Herrala', 1990, 'hyökkääjä');
INSERT INTO public.pelaajalista (pelaajaid, joukkue, pelinumero, etunimi, sukunimi, "syntymävuosi", pelipaikka) VALUES (116, 'SB Kauhajoki', 56, 'Janne', 'Komsi', 1996, 'puolustaja');


--


INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('Blue Fox', 20, 15, 2, 1, 2, 172, 99, 73, 50);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('SB Paapat', 20, 14, 0, 1, 5, 206, 120, 86, 43);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('Nibacos', 20, 13, 1, 0, 6, 154, 107, 47, 41);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('MLT', 20, 12, 0, 2, 6, 159, 118, 41, 38);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('SB Vaasa', 20, 10, 2, 3, 5, 164, 130, 34, 37);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('TU', 20, 11, 1, 1, 7, 164, 151, 13, 36);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('ISB/Team Atria', 20, 9, 1, 0, 10, 150, 155, -5, 29);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('Konnat', 20, 5, 2, 2, 11, 124, 147, -23, 21);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('HiPa', 20, 6, 1, 0, 13, 123, 183, -60, 20);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('FBC Remix', 20, 2, 1, 1, 16, 116, 178, -62, 9);
INSERT INTO public.taulukko (joukkue, o, v3, v2, h1, h0, tm, pm, me, p) VALUES ('SB Kauhajoki', 20, 1, 1, 1, 17, 97, 241, -144, 6);




ALTER TABLE ONLY public.ottelut
    ADD CONSTRAINT ottelut_pkey PRIMARY KEY (ottelu_id);



ALTER TABLE ONLY public.pelaajalista
    ADD CONSTRAINT pelaajalista_pkey PRIMARY KEY (pelaajaid);




ALTER TABLE ONLY public.taulukko
    ADD CONSTRAINT taulukko_pkey PRIMARY KEY (joukkue);



