CREATE DATABASE face_recognition;

USE face_recognition;

DROP TABLE IF EXISTS `patient_face_ids`;

CREATE TABLE `patient_face_ids`
(
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `patient_uuid` varchar(70) NOT NULL UNIQUE,
    `patient_name` varchar(32),
    `face_encoding` binary(128),
    `metadata` varchar(512),
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);


