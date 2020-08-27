create schema foreign_exchange_app;
create table transactions
(
    id               int auto_increment
        primary key,
    unique_id        varchar(50) null,
    current_value    float       null,
    current_currency varchar(10) null,
    target_currency  varchar(10) null,
    target_value     float       null,
    date             varchar(20) null,
    constraint transactions_unique_id_uindex
        unique (unique_id)
);


INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (2, '83ddada1-11e6-478d-8f43-54c43f30ee87', 1, 'AFN', 'ALL', 1.3455, '2020-08-17 19:12:44');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (1, '6c38cf2f-c478-4e3e-8e27-9f4b8c98b12e', 11, 'ALL', 'ALL', 11, '2020-08-17 19:06:17');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (3, 'dcb5fed8-a91f-4b0d-9852-d8f4f839c94a', 1, 'AMD', 'ALL', 0.216587, '2020-08-17 19:13:01');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (4, '79f8947d-1c32-48d8-87e2-58d84b7fcd03', 1, 'AMD', 'ALL', 0.216587, '2020-08-17 19:13:01');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (5, '5c62d326-cb36-4630-8135-d5ea63e88e2d', 1, 'AWG', 'ALL', 57.9511, '2020-08-18 19:13:02');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (6, '3b9220f0-ea3d-4feb-8221-e9d768355ba0', 1, 'AWG', 'ALL', 57.9511, '2020-08-18 19:13:03');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (7, '476950b8-d02d-41e7-99f9-a6c8979f075a', 1, 'BMD', 'ALL', 104.312, '2020-08-18 19:13:05');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (8, '9bb6c6b7-e947-44a3-b4f2-a84be88803e1', 1, 'BMD', 'AFN', 77.5265, '2020-08-18 19:13:06');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (9, '913c4ead-538c-4abb-bd4d-d215d6547f41', 1, 'BMD', 'AFN', 77.5265, '2020-08-18 19:13:07');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (10, '4349f141-4477-4d55-9cb6-044e1300e8dd', 1, 'BMD', 'AFN', 77.5265, '2020-08-18 19:13:07');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (11, '782979a7-5746-448c-a885-85316b39cdf0', 1, 'BMD', 'BAM', 1.64697, '2020-08-19 19:13:08');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (12, 'e382356c-aa0c-49e6-9a3d-d25ec4da5f28', 1, 'BMD', 'BAM', 1.64697, '2020-08-19 19:13:08');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (13, '28d6aa04-9fc7-458d-93c9-ffc1560b5872', 1, 'BMD', 'BAM', 1.64697, '2020-08-19 19:13:09');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (14, '0c634308-2f40-467f-bba6-80060f728c8e', 1, 'BMD', 'LRD', 199.3, '2020-08-19 19:13:10');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (15, 'e9c93613-95b0-451a-859f-65fc512a0e29', 1, 'BMD', 'LRD', 199.3, '2020-08-21 19:13:11');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (16, 'cad9667e-c1b5-486d-be65-e586190d6bf9', 1, 'BMD', 'LRD', 199.3, '2020-08-21 19:13:11');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (17, 'a22c2940-4b99-42fd-805f-66b9b51762d2', 1, 'BMD', 'LRD', 199.3, '2020-08-20 19:13:11');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (18, '7f577709-9a7f-4c78-8474-932e1a1b3e21', 1, 'AFN', 'LRD', 2.57073, '2020-08-20 19:13:12');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (19, '229fd979-cdac-4ff9-888e-ee0cf1211bfe', 1, 'AFN', 'LRD', 2.57073, '2020-08-21 19:13:12');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (20, '73976074-f971-4446-940a-7eda2366917d', 1, 'AFN', 'LRD', 2.57073, '2020-08-21 19:13:12');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (21, 'eabed0c1-bf37-46d7-9cc8-da9aa3391150', 1, 'AFN', 'LBP', 19.447, '2020-08-21 19:13:15');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (22, '6fdaae65-94ea-4c76-8555-5864b7622633', 1, 'AFN', 'LBP', 19.447, '2020-08-21 19:13:15');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (23, '833a21f9-33b5-43e7-9e7f-23ad95559f78', 1, 'AFN', 'LBP', 19.447, '2020-08-21 19:13:15');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (24, 'f3d313ab-318a-432e-a080-298256ed7cbf', 1, 'AFN', 'LBP', 19.447, '2020-08-21 19:13:15');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (25, '3b6d8268-7e2c-49f1-95a7-cd91a712b932', 300, 'AOA', 'LBP', 784.45, '2020-08-21 19:13:24');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (26, 'c45aabee-56ca-4303-b6ee-a2f18c6b46ab', 300, 'AOA', 'LBP', 784.45, '2020-08-21 19:13:24');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (27, '425f30e5-e92c-4094-b22e-63ecc8cceddd', 300, 'AOA', 'LBP', 784.45, '2020-08-21 19:13:24');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (28, '9d4b816f-99c7-4c81-91c1-07730d1c230a', 300, 'KGS', 'LBP', 5849.43, '2020-08-21 19:13:27');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (29, '4e19c6b5-5476-4f22-a988-f04d53e69bab', 300, 'KGS', 'LBP', 5849.43, '2020-08-21 19:13:27');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (30, 'a0c5383b-5bc3-46a7-a994-1b130561ec58', 300, 'KGS', 'SLL', 38138.8, '2020-08-20 19:13:29');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (31, '169c1fab-2b0a-40ae-b338-91453ffce8cc', 300, 'KGS', 'SLL', 38138.8, '2020-08-21 19:13:29');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (32, '0bf353de-5330-411f-b237-f6739059e8ba', 100, 'IQD', 'SLL', 825.904, '2020-08-21 19:13:33');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (33, '0c9abff1-a856-4c44-8e26-7643449933e4', 100, 'IQD', 'SLL', 825.904, '2020-08-21 19:13:33');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (34, 'e663b151-5da0-4ebd-ad7b-0f8f10750bc1', 100, 'IQD', 'SLL', 825.904, '2020-08-21 19:13:33');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (35, '976acf16-d27c-45b6-9edc-1f2a7a880ec9', 100, 'SLL', 'PHP', 0.494466, '2020-08-21 19:13:36');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (36, '3310e22d-766f-4224-8ef3-9742fa87aec5', 100, 'SLL', 'PHP', 0.494466, '2020-08-21 19:13:36');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (37, '9be9ce92-1263-4d68-bc2c-774b0ab1a56b', 100, 'SLL', 'PHP', 0.494466, '2020-08-21 19:13:36');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (38, '7f750f8e-04de-450f-8fc1-fd2b483cbc93', 100, 'SLL', 'PHP', 0.494466, '2020-08-21 19:13:37');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (39, '65226554-3899-495c-a90c-6e27022aaa57', 100, 'SLL', 'PHP', 0.494466, '2020-08-21 19:13:37');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (40, 'a0ed9490-e382-4f4b-b7e3-8c2f035a583c', 100, 'XPF', 'PHP', 48.3864, '2020-08-21 19:13:39');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (41, '21d7a1ed-c7f5-4c45-b6e2-aae20b27be37', 100, 'XPF', 'PHP', 48.3864, '2020-08-20 19:13:39');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (42, '45f97c01-2ae4-41cf-a9e4-43b264243eb7', 100, 'XPF', 'PHP', 48.3864, '2020-08-21 19:13:40');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (43, 'b51e610a-4e9c-4da7-9ef5-67d2b861154f', 100, 'XPF', 'NPR', 118.919, '2020-08-21 19:13:41');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (44, '19cfb1c6-19a9-4b90-801d-592d709d1daf', 100, 'XPF', 'NPR', 118.919, '2020-08-21 19:13:41');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (45, '4d05826d-cba5-4d76-8499-ad65c51437e2', 100, 'XPF', 'NPR', 118.919, '2020-08-21 19:13:41');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (46, '1b01dcb6-b4ed-4787-b20f-51135af88573', 100, 'XPF', 'NPR', 118.919, '2020-08-21 19:13:41');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (47, '5d8d54ee-2b5a-449b-b7de-3d82cdf0e875', 10, 'TND', 'MDL', 60.4714, '2020-08-21 19:13:45');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (48, '68583ca6-9621-4da4-9bae-95716ff41193', 10, 'TND', 'MDL', 60.4714, '2020-08-21 19:13:45');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (49, '1a3ec073-03b2-4be4-9a58-aa86c889c500', 10, 'TND', 'MDL', 60.4714, '2020-08-20 19:13:45');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (50, 'b05995ee-fe50-4758-a896-a52900fd9ec1', 10, 'SAR', 'KPW', 2399.66, '2020-08-20 19:13:47');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (51, 'fc905d82-3cad-443b-94eb-99cd59abc220', 10, 'SAR', 'KPW', 2399.66, '2020-08-20 19:13:48');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (52, '4434c6d9-4d11-4c4c-9925-d582b1cf5dae', 10, 'SAR', 'KPW', 2399.66, '2020-08-20 19:13:48');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (53, 'e52a0cd0-eb09-4355-8435-53f26b5a86b0', 10, 'SAR', 'KPW', 2399.66, '2020-08-20 19:13:48');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (54, '9a5de3bc-7969-4b57-a55f-a571076647b4', 10, 'NGN', 'HRK', 0.16452, '2020-08-20 19:13:50');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (55, 'a25038b5-c7bc-498b-bdd2-c7c237864fd6', 10, 'NGN', 'HRK', 0.16452, '2020-08-20 19:13:50');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (56, '6894eba6-fdf6-4b09-a7df-b29ca742a43c', 10, 'NGN', 'HRK', 0.16452, '2020-08-20 19:13:50');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (57, '41925e91-db43-4b1c-8b29-94e08f2ebbd4', 10, 'MAD', 'HRK', 6.91645, '2020-08-21 19:13:52');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (58, '05fba6de-87b5-4878-8a64-b5f05e02f4c5', 10, 'MAD', 'EUR', 0.918812, '2020-08-21 19:13:54');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (59, '42b48e20-94a8-4cfe-8334-9a56a0537405', 10, 'MAD', 'EUR', 0.918812, '2020-08-21 19:13:54');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (60, '427a5e5b-f88f-41d0-9183-25ba84534a85', 10, 'MAD', 'EUR', 0.918812, '2020-08-21 19:13:54');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (61, '961bb2b3-eab7-49db-b6d0-89d9961b0b97', 10, 'MAD', 'EUR', 0.918812, '2020-08-21 19:13:54');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (62, 'd7a7791b-13b2-4441-8092-ccc8a2ac7977', 10, 'KRW', 'CLP', 6.6332, '2020-08-21 19:13:57');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (63, '6beec8c3-41d7-46b9-9569-6bc1bd731f1a', 10, 'KRW', 'CLP', 6.6332, '2020-08-21 19:13:57');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (64, '5acfe9d3-9758-46df-8dd5-ff159fbef756', 10, 'KRW', 'CLP', 6.6332, '2020-08-21 19:13:57');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (65, 'fcd430fb-ecb7-42f3-82f1-f851085cc3bd', 10, 'BGN', 'EUR', 5.11135, '2020-08-21 19:14:06');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (66, 'b9aa5237-bd73-490b-8d59-89e7728fa3c6', 10, 'BGN', 'EUR', 5.11135, '2020-08-21 19:14:08');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (67, '5146f91c-8573-4c9c-baa0-b577889ec38e', 10, 'BGN', 'EUR', 5.11135, '2020-08-21 19:14:08');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (68, '80dad4d8-2d95-4a0b-ba25-eb9ff4bf61ae', 10, 'BGN', 'EUR', 5.11135, '2020-08-21 19:14:09');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (69, '7723d465-d813-4c88-9b2f-7187f47824d8', 10, 'BGN', 'EUR', 5.11135, '2020-08-21 19:14:09');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (70, '7413cad6-a5bb-4a1e-9a27-0c29eca13734', 10, 'BGN', 'EUR', 5.11135, '2020-08-21 19:14:10');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (71, '8217f5c0-c05e-4481-bf6f-e307f628f377', 10, 'BGN', 'EUR', 5.11135, '2020-08-21 19:14:10');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (72, 'c0ae9811-f69c-493f-8fbb-62137aeb3af0', 10, 'BGN', 'EUR', 5.11135, '2020-08-21 19:14:10');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (73, 'd0007f7b-4835-4a8d-8e3a-cd35883f55d4', 10, 'BGN', 'EUR', 5.11135, '2020-08-21 19:14:10');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (74, '4200e184-8425-4fa8-b3e7-b2be9795d0f1', 10, 'EUR', 'BDT', 1004.15, '2020-08-21 19:14:20');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (75, 'c5a1c927-98f2-45b4-9c6a-894531597630', 10, 'EUR', 'BDT', 1004.15, '2020-08-21 19:14:20');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (76, '64692c5b-11a3-41d3-9b8c-035f690ec6af', 10, 'EUR', 'BDT', 1004.15, '2020-08-21 19:14:20');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (77, 'b3da0741-ed7e-4965-87fa-1c01c1f2355b', 10, 'EUR', 'BDT', 1004.15, '2020-08-21 19:14:20');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (78, 'e285f758-18b2-4fdd-a297-8d0df1a4ea90', 10, 'EUR', 'BDT', 1004.15, '2020-08-21 19:14:21');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (79, '81d59d5e-84ec-420f-8c0f-02d07cd8f9fb', 10, 'EUR', 'GMD', 615.342, '2020-08-21 19:14:23');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (80, '1ba3a2e1-82a1-47ec-bcba-68ccdc080341', 10, 'EUR', 'GMD', 615.342, '2020-08-18 19:14:23');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (81, '2f8256e0-bdc5-47c5-9665-ee237348fe93', 10, 'EUR', 'GMD', 615.342, '2020-08-18 19:14:23');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (82, '698a0343-9f76-4e15-a732-a29c09c2080e', 10, 'CNY', 'GMD', 74.9888, '2020-08-18 19:14:25');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (83, '5f3ad83b-43fd-4a6a-88fe-65efa527fac1', 10, 'CNY', 'GMD', 74.9888, '2020-08-18 19:14:25');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (84, 'e0d7df82-3702-405a-9dcc-8dc4e5afd704', 10, 'CNY', 'GMD', 74.9888, '2020-08-18 19:14:25');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (85, '3882e7d2-5302-4525-99c8-126b27e02f06', 10, 'BDT', 'CRC', 70.1953, '2020-08-18 19:14:27');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (86, '2ee0eb97-c43a-42ef-ab75-4b2ccbb5de12', 10, 'BDT', 'CRC', 70.1953, '2020-08-21 19:14:27');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (87, 'c3a019be-4793-44e0-bd70-afeb2edeb5bc', 10, 'BDT', 'CRC', 70.1953, '2020-08-21 19:14:28');
INSERT INTO foreign_exchange_app.transactions (id, unique_id, current_value, current_currency, target_currency,
                                               target_value, date)
VALUES (88, '9b5f8fef-13a0-49d0-9b25-1dcf803bd78c', 10, 'BDT', 'CRC', 70.1953, '2020-08-21 19:14:28');


