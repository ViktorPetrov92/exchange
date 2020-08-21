create table transactions
(
    id               int auto_increment
        primary key,
    unique_id        int         null,
    current_value    float       null,
    current_currency varchar(10) null,
    target_currency  varchar(10) null,
    target_value     float       null,
    date             varchar(20) null,
    constraint transactions_unique_id_uindex
        unique (unique_id)
);

INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (21, 1256183, 12, 'ARS', 'MGA', 625.034, '2020-08-20 18:14:25');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (22, 4987460, 12, 'ARS', 'MGA', 625.034, '2020-08-20 18:14:26');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (23, 6134215, 15, 'BHD', 'KHR', 162417, '2020-08-19 18:14:33');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (24, 7869322, 22563, 'ARS', 'JOD', 217.978, '2020-08-19 18:14:39');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (25, 374740, 11, 'WST', 'UGX', 15321.9, '2020-08-19 18:14:48');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (26, 7234476, 11, 'WST', 'UGX', 15321.9, '2020-08-19 18:14:48');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (27, 2564423, 22, 'ALL', 'BGN', 0.34776, '2020-08-19 18:51:58');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (28, 5308076, 1155, 'AED', 'BHD', 118.542, '2020-08-19 19:15:04');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (29, 3649298, 1155, 'AED', 'BHD', 118.542, '2020-08-19 19:15:04');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (30, 2736527, 1155, 'AED', 'BHD', 118.542, '2020-08-19 19:15:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (31, 9080757, 1155, 'AED', 'BHD', 118.542, '2020-08-19 19:15:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (32, 7495829, 1155, 'AED', 'BHD', 118.542, '2020-08-19 19:15:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (33, 1112447, 1155, 'AED', 'BHD', 118.542, '2020-08-19 19:15:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (34, 8597646, 1155, 'AED', 'BHD', 118.542, '2020-08-19 19:15:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (35, 1608283, 1155, 'AED', 'BHD', 118.542, '2020-08-19 19:15:06');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (36, 8079405, 1155, 'AED', 'BHD', 118.542, '2020-08-19 19:15:06');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (37, 3019772, 1, 'AOA', 'AZN', 0.00295, '2020-08-20 12:23:22');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (38, 3658940, 0, 'ALL', 'ALL', 1, '2020-08-20 13:45:19');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (39, 4098136, 12, 'AUD', 'ARS', 632.305, '2020-08-20 13:54:25');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (40, 9241484, 1, 'ARS', 'AOA', 7.86225, '2020-08-20 14:02:11');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (41, 1397048, 1, 'AED', 'AFN', 20.9338, '2020-08-20 15:02:41');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (42, 15622096, 1, 'ALL', 'ALL', 1, '2020-08-20 15:07:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (43, 40411197, 1, 'AMD', 'ALL', 0.216975, '2020-08-20 16:19:16');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (44, 86021387, 10, 'BGN', 'EUR', 5.11441, '2020-08-20 16:52:13');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (45, 85611964, 10, 'AFN', 'BGN', 0.212436, '2020-08-18 14:54:04');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (46, 49715774, 10, 'BIF', 'BGN', 0.008564, '2020-08-18 14:54:13');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (47, 78041464, 10, 'GHS', 'BGN', 2.86042, '2020-08-18 14:54:15');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (48, 30893982, 10, 'NPR', 'BGN', 0.137866, '2020-08-17 14:54:18');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (49, 9924588, 10, 'NPR', 'BGN', 0.137866, '2020-08-17 14:54:18');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (50, 91343243, 10, 'NPR', 'BDT', 7.07604, '2020-08-17 14:54:20');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (51, 8574498, 10, 'NPR', 'BDT', 7.07604, '2020-08-17 14:54:20');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (52, 92810256, 10, 'XOF', 'AFN', 1.40398, '2020-08-17 14:54:24');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (53, 22430818, 10, 'XOF', 'AFN', 1.40398, '2020-08-18 14:54:24');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (54, 81153817, 10, 'XOF', 'AFN', 1.40398, '2020-08-18 14:54:24');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (55, 30840953, 10, 'WST', 'AFN', 296.461, '2020-08-18 14:54:27');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (56, 71184638, 10, 'WST', 'AWG', 6.88319, '2020-08-18 14:54:29');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (57, 42674506, 10, 'WST', 'AWG', 6.88319, '2020-08-17 14:54:29');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (58, 57871615, 10, 'EUR', 'AUD', 16.4903, '2020-08-18 14:54:39');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (59, 80824714, 10, 'EUR', 'AUD', 16.4903, '2020-08-17 14:54:41');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (60, 32537332, 10, 'EUR', 'AUD', 16.4903, '2020-08-18 14:54:41');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (61, 77374717, 10, 'EUR', 'AUD', 16.4903, '2020-08-17 14:54:41');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (62, 37727176, 10, 'EUR', 'AUD', 16.4903, '2020-08-18 14:54:41');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (63, 7366370, 10, 'MZN', 'AUD', 0.194694, '2020-08-17 14:54:44');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (64, 52200240, 10, 'MZN', 'AUD', 0.194694, '2020-08-18 14:54:45');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (65, 54745878, 10, 'MZN', 'USD', 0.140253, '2020-08-17 14:54:50');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (66, 32150065, 10, 'MZN', 'USD', 0.140253, '2020-08-18 14:54:51');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (67, 78636984, 10, 'MZN', 'USD', 0.140253, '2020-08-17 14:54:51');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (68, 2594703, 10, 'MZN', 'USD', 0.140253, '2020-08-18 14:54:51');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (69, 3557575, 10, 'LTL', 'USD', 11.8792, '2020-08-17 14:54:53');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (70, 53662025, 10, 'LTL', 'USD', 11.8792, '2020-08-18 14:54:53');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (71, 18905476, 10, 'KMF', 'USD', 0.024216, '2020-08-21 14:54:54');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (72, 43984604, 10, 'KMF', 'USD', 0.024216, '2020-08-18 14:54:54');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (73, 19537256, 10, 'KHR', 'USD', 0.002454, '2020-08-17 14:54:56');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (74, 55925403, 10, 'KHR', 'USD', 0.002454, '2020-08-21 14:54:56');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (75, 11860701, 10, 'KHR', 'USD', 0.002454, '2020-08-21 14:54:56');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (76, 61686377, 10, 'XPF', 'USD', 0.099548, '2020-08-21 14:55:00');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (77, 35220929, 10, 'XPF', 'USD', 0.099548, '2020-08-21 14:55:00');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (78, 38248374, 10, 'XPF', 'USD', 0.099548, '2020-08-21 14:55:01');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (79, 36929194, 10, 'YER', 'TJS', 0.410885, '2020-08-21 14:55:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (80, 78400543, 10, 'YER', 'TJS', 0.410885, '2020-08-21 14:55:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (81, 45394840, 10, 'YER', 'TJS', 0.410885, '2020-08-21 14:55:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (82, 90498020, 10, 'XCD', 'TJS', 38.0623, '2020-08-21 14:55:07');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (83, 8947906, 10, 'XCD', 'TJS', 38.0623, '2020-08-21 14:55:07');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (84, 81833442, 10, 'XCD', 'XPF', 371.703, '2020-08-21 14:55:11');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (85, 23107819, 10, 'XCD', 'XPF', 371.703, '2020-08-21 14:55:11');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (86, 89219888, 10, 'HKD', 'XPF', 129.616, '2020-08-21 14:55:13');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (87, 59120096, 10, 'HKD', 'XPF', 129.616, '2020-08-21 14:55:13');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (88, 1818858, 10, 'HKD', 'XPF', 129.616, '2020-08-21 14:55:13');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (89, 57643009, 10, 'HKD', 'TZS', 2993.49, '2020-08-21 14:55:16');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (90, 87954614, 10, 'HKD', 'TZS', 2993.49, '2020-08-21 14:55:16');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (91, 8556973, 10, 'MNT', 'TZS', 8.14811, '2020-08-21 14:55:19');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (92, 70025142, 10, 'MNT', 'TZS', 8.14811, '2020-08-21 14:55:19');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (93, 86098457, 10, 'MNT', 'TZS', 8.14811, '2020-08-21 14:55:40');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (94, 10679522, 10, 'LAK', 'TZS', 2.55909, '2020-08-17 14:55:42');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (95, 2808556, 10, 'LAK', 'TZS', 2.55909, '2020-08-18 14:55:42');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (96, 48249341, 10, 'LAK', 'SGD', 0.001506, '2020-08-17 14:55:43');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (97, 454712, 10, 'SSP', 'BZD', 0.154279, '2020-08-17 14:55:48');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (98, 61315527, 10, 'SSP', 'BZD', 0.154279, '2020-08-17 14:55:48');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (99, 60455009, 10, 'SSP', 'BZD', 0.154279, '2020-08-17 14:55:48');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (100, 89401047, 10, 'WST', 'BZD', 7.68486, '2020-08-21 14:55:50');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (101, 76840833, 10, 'WST', 'BZD', 7.68486, '2020-08-21 14:55:50');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (102, 89249, 10, 'WST', 'DJF', 678.758, '2020-08-21 14:55:53');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (103, 17032903, 10, 'WST', 'DJF', 678.758, '2020-08-21 14:55:53');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (104, 79801290, 10, 'WST', 'DJF', 678.758, '2020-08-21 14:55:53');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (105, 66483360, 10, 'XAF', 'DJF', 3.21447, '2020-08-21 14:55:55');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (106, 75365685, 10, 'XAF', 'BOB', 0.124672, '2020-08-21 14:55:57');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (107, 40630841, 10, 'XAF', 'BOB', 0.124672, '2020-08-21 14:55:58');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (108, 11115022, 10, 'XAF', 'AFN', 1.40398, '2020-08-18 14:55:59');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (109, 43935042, 10, 'XAF', 'AOA', 10.4417, '2020-08-21 14:56:01');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (110, 72847872, 10, 'XAF', 'BHD', 0.006828, '2020-08-18 14:56:02');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (111, 41508439, 10, 'UGX', 'BHD', 0.001029, '2020-08-21 14:56:04');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (112, 57801921, 10, 'UGX', 'BHD', 0.001029, '2020-08-21 14:56:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (113, 49070276, 10, 'XOF', 'BHD', 0.006828, '2020-08-21 14:56:08');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (114, 63154782, 10, 'TJS', 'BHD', 0.366517, '2020-08-21 14:56:09');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (115, 73573599, 10, 'RWF', 'BHD', 0.003914, '2020-08-21 14:56:12');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency, target_value, date) VALUES (116, 12787320, 10, 'RWF', 'AWG', 0.018689, '2020-08-21 14:56:14');