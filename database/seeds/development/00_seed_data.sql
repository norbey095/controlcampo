-- seeds.sql (generated)
-- DML extracted from bd_sanear.sql

INSERT INTO `bd_sanear`.`recursos`
(`idrecursos`,
`acta_no`)

VALUES
(1, "ACTA 01"),
(2, "ACTA 02"),
(3, "ACTA 03"),
(4, "ACTA 04"),
(5, "ACTA 05"),
(6, "ACTA 06"),
(7, "ACTA 07"),
(8, "ACTA 08"),
(9, "ACTA 09"),
(10, "ACTA 10"),
(11, "ACTA 11"),
(12, "ACTA 12"),
(13, "ACTA 13"),
(14, "ACTA 14"),
(15, "ACTA 15"),
(16, "ACTA 16"),
(17, "ACTA 17"),
(18, "ACTA 18"),
(19, "ACTA 19"),
(20, "ACTA 20"),
(21, "ACTA 21"),
(22, "ACTA 22"),
(23, "ACTA 23"),
(24, "ACTA 24");
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Barbosa' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Bello ' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Caldas' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Copacabana' WHERE (`idrecursos` = '4');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Envigado' WHERE (`idrecursos` = '5');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Girardota' WHERE (`idrecursos` = '6');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Itagüí' WHERE (`idrecursos` = '7');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'La Estrella' WHERE (`idrecursos` = '8');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Medellín' WHERE (`idrecursos` = '9');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Sabaneta' WHERE (`idrecursos` = '10');
UPDATE `bd_sanear`.`recursos` SET `municipio` = 'Rionegro' WHERE (`idrecursos` = '11');
UPDATE `bd_sanear`.`recursos` SET `servicio` = 'Aguas Combinadas Recolección' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `servicio` = 'Aguas Lluvias Recolección' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `servicio` = 'Aguas Residuales Recolección' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'No aplica' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Atendido con otra solicitud' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Acometida en mal estado' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Corresponde a otro servicio' WHERE (`idrecursos` = '4');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Corresponde atender a otra entidad' WHERE (`idrecursos` = '5');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Deterioro carpeta asfáltica' WHERE (`idrecursos` = '6');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Garantía' WHERE (`idrecursos` = '7');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Información errada' WHERE (`idrecursos` = '8');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'No autorizan trabajos (cliente)' WHERE (`idrecursos` = '9');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'No se contacta cliente' WHERE (`idrecursos` = '10');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'No se encontró daño' WHERE (`idrecursos` = '11');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Problema interno (Daño interno)' WHERE (`idrecursos` = '12');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Problemas de orden público' WHERE (`idrecursos` = '13');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Se encontró atendida' WHERE (`idrecursos` = '14');
UPDATE `bd_sanear`.`recursos` SET `efectividad` = 'Solicitud mal generada' WHERE (`idrecursos` = '15');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ALIVIADERO CAJA DE SOBREFLUJO' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'CAMARA TAPADA' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ACOMETIDA DEFECTUOSA' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ACCION DE MANTENIMIENTO' WHERE (`idrecursos` = '4');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ALIVIADERO CANUELA DE FONDO' WHERE (`idrecursos` = '5');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'COLAPSO' WHERE (`idrecursos` = '6');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ACOMETIDA PENETRANTE' WHERE (`idrecursos` = '7');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'AJUSTAR' WHERE (`idrecursos` = '8');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ALIVIADERO CANUELA ELEVADA' WHERE (`idrecursos` = '9');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'DANO EN ANILLO/CILINDRO/CONO' WHERE (`idrecursos` = '10');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ACUMULACION DE SEDIMENTOS' WHERE (`idrecursos` = '11');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'CAMBIAR' WHERE (`idrecursos` = '12');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ALIVIADERO ESPECIAL' WHERE (`idrecursos` = '13');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'DANO EN CAMARA DE CAIDA' WHERE (`idrecursos` = '14');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'AFECTACION DE TERCERO' WHERE (`idrecursos` = '15');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'COLOCAR' WHERE (`idrecursos` = '16');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ALIVIADERO ESTRUCTURA SEPARACION DE CAUDAL' WHERE (`idrecursos` = '17');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'DANO EN CANUELA' WHERE (`idrecursos` = '18');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'AFECTACION ESTRUCTURA (FRACTURA, GRIETAS, FISURAS, HUECOS)' WHERE (`idrecursos` = '19');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'DEMOLER' WHERE (`idrecursos` = '20');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'ALIVIADERO ORIFICIO' WHERE (`idrecursos` = '21');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'DANO EN EL RECUBRIMIENTO' WHERE (`idrecursos` = '22');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'AFECTACION OBRAS CONTRATISTA' WHERE (`idrecursos` = '23');
UPDATE `bd_sanear`.`recursos` SET `aplicativo` = 'DESOBSTRUIR' WHERE (`idrecursos` = '24');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('25', 'ALIVIADERO CAJA DE SOBREFLUJO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('26', 'CAMARA TAPADA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('27', 'ACOMETIDA DEFECTUOSA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('28', 'ACCION DE MANTENIMIENTO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('29', 'ALIVIADERO CANUELA DE FONDO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('30', 'COLAPSO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('31', 'ACOMETIDA PENETRANTE');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('32', 'AJUSTAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('33', 'ALIVIADERO CANUELA ELEVADA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('34', 'DANO EN ANILLO/CILINDRO/CONO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('35', 'ACUMULACION DE SEDIMENTOS');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('36', 'CAMBIAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('37', 'ALIVIADERO ESPECIAL');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('38', 'DANO EN CAMARA DE CAIDA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('39', 'AFECTACION DE TERCERO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('40', 'COLOCAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('41', 'ALIVIADERO ESTRUCTURA SEPARACION DE CAUDAL');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('42', 'DANO EN CANUELA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('43', 'AFECTACION ESTRUCTURA (FRACTURA, GRIETAS, FISURAS, HUECOS)');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('44', 'DEMOLER');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('45', 'ALIVIADERO ORIFICIO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('46', 'DANO EN EL RECUBRIMIENTO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('47', 'AFECTACION OBRAS CONTRATISTA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('48', 'DESOBSTRUIR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('49', 'ALIVIADERO VERTEDERO TRANSVERSAL');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('50', 'DANO EN TAPA DE CAMARA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('51', 'AFECTACION PARTICULAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('52', 'INSPECCIONAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('53', 'CAMARA DE INSPECCION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('54', 'DANO/DETERIORO CANUELA Y/O EMBOQUILLADO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('55', 'AGUAS DE NIVEL FREATIVO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('56', 'LAVAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('57', 'DESCOLES');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('58', 'DAÑO EN DESCOLE');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('59', 'ATENTADO TERRORISTA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('60', 'LIMPIAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('61', 'SUMIDEROS');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('62', 'DAÑO EN REJA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('63', 'ATENTADO/EXPLOSION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('64', 'REALZAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('65', 'TUBERIA CONCRETO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('66', 'DAÑO EN SUMIDERO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('67', 'AUSENCIA DE GANCHOS');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('68', 'RECONSTRUIR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('69', 'TUBERIA DE HIERRO GALVANIZADO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('70', 'ELEMENTO VERTIENDO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('71', 'CAPACIDAD HIDRAULICA INSUFICIENTE');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('72', 'REDISENAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('73', 'TUBERIA DE POLIETILENO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('74', 'FILTRACION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('75', 'COLAPSO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('76', 'REDISEÑAR LA RED');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('77', 'TUBERIA FIBRA DE VIDRIO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('78', 'FRACTURA / FISURA EN ESTRUCTURA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('79', 'CONEXIONES ERRADAS');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('80', 'REEMPLAZAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('81', 'TUBERIA GRES VITRIFICADO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('82', 'FUGA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('83', 'CONEXIONES ERRADAS TERCEROS');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('84', 'REEMPLAZAR/REPONER');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('85', 'TUBERIA HIERRO DUCTIL');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('86', 'MALOS OLORES');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('87', 'CONSTRUCCION O ELEMENTO SOBRE  COMPONENTE');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('88', 'REFERENCIAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('89', 'TUBERIA HIERRO FUNDIDO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('90', 'NO DESCARGA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('91', 'CUBIERTO POR VEGETACION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('92', 'REHABILITAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('93', 'TUBERIA PVC');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('94', 'NO RECOLECTA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('95', 'DAÑO EN EMPALME DE LA RED CON ACOMETIDA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('96', 'REMPLAZAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('97', 'TUBERIA SIN TIPIFICAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('98', 'NO VISIBLE EN CAMPO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('99', 'DAÑO OCASIONADO POR TERCERO (VANDALISMO)');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('100', 'REPARAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('101', 'OBSTRUCCION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('102', 'DAÑO ESTRUCTURAL');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('103', 'REPONER');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('104', 'SIN ACCESO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('105', 'DEPOSITO DE CONCRETO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('106', 'RETIRAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('107', 'SIN REJA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('108', 'DESGASTE DEL MATERIAL');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('109', 'REVISAR DISENO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('110', 'SIN TAPA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('111', 'DESLIZAMIENTO DEL TERRENO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('112', 'TAPONAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('113', 'SOCAVACION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('114', 'DESPLAZAMIENTO DEL TERRENO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('115', 'TRASLADAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('116', 'TAPONADO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('117', 'DESPLAZAMIENTO POR REBOSE');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('118', 'TUBERIA TAPONADA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('119', 'DETERIORO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('120', 'VERTIENDO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('121', 'ELEMENTO EXTRANO (PIEDRAS, PALOS)');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('122', 'ERROR DE DISENO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('123', 'FALLA DE MATERIAL(COLAPSO,APLASTAMIENTO)');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('124', 'FATIGA - FRACTURA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('125', 'FIN DE VIDA UTIL');
INSERT INTO `bd_sanear`.`recursos`(`idrecursos`, `aplicativo`) VALUES ('126', 'FRAUDE DE TERCERO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('127', 'FUGA AGUA POTABLE');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('128', 'FUGA AGUA RESIDUAL');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('129', 'INCAPACIDAD HIDRAULICA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('130', 'INCRUSTACIONES');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('131', 'INST. EN TERRENO INADECUADO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('132', 'LIMPIEZA INTERIOR DEFICIENTE');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('133', 'MAL FUNCIONAMIENTO(PESTAÑA DETERIORADA)');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('134', 'MALA CONSTRUCCION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('135', 'MALA INSTALACION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('136', 'MOVIMIENTO DEL TERRENO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('137', 'OBRAS EN EL SECTOR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('138', 'PAVIMENTO/CONCRETO/ANDEN');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('139', 'PERDIDA HURTO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('140', 'PRESENCIA DE CORROSION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('141', 'PRESENCIA DE RESIDUOS(BASURAS, GRASAS, HOJAS)');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('142', 'RAICES');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('143', 'RED FUERA DE SERVICIO CON ALGUNA CONEXIÓN');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('144', 'REPAVIMENTACION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('145', 'SELLO MALO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('146', 'SOBRECARGA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('147', 'SOBREPRESION ERP');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('148', 'SOBREPRESION POR OPERACION');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('149', 'SOCAVACION DEL TERRENO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('150', 'SUMIDERO MAL UBICADO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('151', 'TAPA SELLADA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('152', 'TAPONADO POR TERCEROS');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('153', 'TRABTER');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('154', 'TUBERIA AHOGADA DENTRO DEL CAUCE DE LA QUEBRADA');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('155', 'ACCION DE MANTENIMIENTO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('156', 'AJUSTAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('157', 'CAMBIAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('158', 'COLOCAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('159', 'DEMOLER');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('160', 'DESOBSTRUIR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('161', 'INSPECCIONAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('162', 'LAVAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('163', 'LIMPIAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('164', 'REALZAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('165', 'RECONSTRUIR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('166', 'REDISENAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('167', 'REDISEÑAR LA RED');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('168', 'REEMPLAZAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('169', 'REEMPLAZAR/REPONER');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('170', 'REFERENCIAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('171', 'REHABILITAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('172', 'REMPLAZAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('173', 'REPARAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('174', 'REPONER');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('175', 'RETIRAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('176', 'REVISAR DISENO');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('177', 'TAPONAR');
INSERT INTO `bd_sanear`.`recursos` (`idrecursos`, `aplicativo`) VALUES ('178', 'TRASLADAR');
UPDATE `bd_sanear`.`recursos` SET `trabajo` = 'Cambio de Acometida' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `trabajo` = 'Reparación de Acometida' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `trabajo` = 'Reparación de aliviadero' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `trabajo` = 'Reparación de cámara' WHERE (`idrecursos` = '4');
UPDATE `bd_sanear`.`recursos` SET `trabajo` = 'Construcción cámara' WHERE (`idrecursos` = '5');
UPDATE `bd_sanear`.`recursos` SET `trabajo` = 'Reparación de sumidero' WHERE (`idrecursos` = '6');
UPDATE `bd_sanear`.`recursos` SET `trabajo` = 'Colocación de reja de sumidero' WHERE (`idrecursos` = '7');
UPDATE `bd_sanear`.`recursos` SET `trabajo` = 'Reparación en red' WHERE (`idrecursos` = '8');
UPDATE `bd_sanear`.`recursos` SET `trabajo` = 'Limpieza de sumidero' WHERE (`idrecursos` = '9');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Cambiar Acometida' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Trasladar Acometida' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Cambiar Acometida (Motivos Técnicos)' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Caja de Registro sin tapa o tapa averiada' WHERE (`idrecursos` = '4');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Fuga en acometida de alcantarillado' WHERE (`idrecursos` = '5');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Reparación de caja de registro' WHERE (`idrecursos` = '6');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Hundimiento en Acometida' WHERE (`idrecursos` = '7');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Reparación de Acometida no Imputable al Cliente' WHERE (`idrecursos` = '8');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Hundimiento en Acometida no imputable al cliente' WHERE (`idrecursos` = '9');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Cámara de inspección defectuosa' WHERE (`idrecursos` = '10');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Cámara de inspección no visible' WHERE (`idrecursos` = '11');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Caja de inspeccion alcantarillado sin tapa' WHERE (`idrecursos` = '12');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Caja de inspeccion alcantarillado con tapa averiada' WHERE (`idrecursos` = '13');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Sumidero con reja defectuosa' WHERE (`idrecursos` = '14');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Apique en red de Alcantarillado' WHERE (`idrecursos` = '15');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Apique en red de Alcantarillado Urgente' WHERE (`idrecursos` = '16');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Daño reportado por investigación con TV' WHERE (`idrecursos` = '17');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Fuga alcantarillado' WHERE (`idrecursos` = '18');
UPDATE `bd_sanear`.`recursos` SET `motivo` = 'Hundimiento' WHERE (`idrecursos` = '19');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Acometida en mal estado' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Caja de registro en mal estado' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Conexión errada' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Incumplimiento especificación técnica' WHERE (`idrecursos` = '4');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Independizar acometida' WHERE (`idrecursos` = '5');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Motivos Técnicos' WHERE (`idrecursos` = '6');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Independizar acometida' WHERE (`idrecursos` = '7');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Motivos Técnicos' WHERE (`idrecursos` = '8');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cambio especificación técnica' WHERE (`idrecursos` = '9');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Deterioro del elemento' WHERE (`idrecursos` = '10');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Pérdida del elemento' WHERE (`idrecursos` = '11');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Acometida en mal estado' WHERE (`idrecursos` = '12');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Caja de registro en mal estado' WHERE (`idrecursos` = '13');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Daño en caja de empalme' WHERE (`idrecursos` = '14');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Deterioro del elemento' WHERE (`idrecursos` = '15');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Lleno mal compactado' WHERE (`idrecursos` = '16');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Acometida en mal estado' WHERE (`idrecursos` = '17');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Conexión errada' WHERE (`idrecursos` = '18');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Acometida con hueco' WHERE (`idrecursos` = '19');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Caja de empalme deteriorada' WHERE (`idrecursos` = '20');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Caja de registro deteriorada' WHERE (`idrecursos` = '21');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Afectación por intervención de otras redes' WHERE (`idrecursos` = '22');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Reparación solicitada por TV' WHERE (`idrecursos` = '23');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Afectación por fuga en vía/andén/zona verde' WHERE (`idrecursos` = '24');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Adecuación de descole' WHERE (`idrecursos` = '25');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cámara con desnivel' WHERE (`idrecursos` = '26');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Colocación de ganchos' WHERE (`idrecursos` = '27');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Desgaste general' WHERE (`idrecursos` = '28');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Deterioro cañuela y/o emboquillado' WHERE (`idrecursos` = '29');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Instalación elemento para restricción de flujo' WHERE (`idrecursos` = '30');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Modificación oído' WHERE (`idrecursos` = '31');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Modificación pestaña' WHERE (`idrecursos` = '32');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Colocación de ganchos' WHERE (`idrecursos` = '33');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cámara con desnivel' WHERE (`idrecursos` = '34');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cambio de diseño' WHERE (`idrecursos` = '35');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Deterioro del anillo' WHERE (`idrecursos` = '36');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cilindro en mal estado' WHERE (`idrecursos` = '37');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Deterioro cañuela y/o emboquillado' WHERE (`idrecursos` = '38');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Desgaste general de la cámara' WHERE (`idrecursos` = '39');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Malos olores (charnela)' WHERE (`idrecursos` = '40');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Obstrucción en cámara de caída' WHERE (`idrecursos` = '41');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cámara tapada en zona verde' WHERE (`idrecursos` = '42');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cámara tapada en adoquines' WHERE (`idrecursos` = '43');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cámara tapada con pavimento asfaltico' WHERE (`idrecursos` = '44');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cámara tapada en pavimento rígido' WHERE (`idrecursos` = '45');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Pérdida del elemento' WHERE (`idrecursos` = '46');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cambio especificación técnica' WHERE (`idrecursos` = '47');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Deterioro del elemento' WHERE (`idrecursos` = '48');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cambio especificación técnica' WHERE (`idrecursos` = '49');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cambio de alineamiento' WHERE (`idrecursos` = '50');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Conexión sumidero' WHERE (`idrecursos` = '51');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Necesidad proyecto' WHERE (`idrecursos` = '52');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Solicitado por otra entidad' WHERE (`idrecursos` = '53');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Acometida en mal estado' WHERE (`idrecursos` = '54');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Elemento deteriorado' WHERE (`idrecursos` = '55');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Sumidero con desnivel' WHERE (`idrecursos` = '56');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Traslado de sumidero' WHERE (`idrecursos` = '57');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Cambio especificación técnica' WHERE (`idrecursos` = '58');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Deterioro del elemento' WHERE (`idrecursos` = '59');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Pérdida del elemento' WHERE (`idrecursos` = '60');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Red colapsada' WHERE (`idrecursos` = '61');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Red fisurada o agrietada' WHERE (`idrecursos` = '62');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Empalme incorrecto' WHERE (`idrecursos` = '63');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Elemento transversal' WHERE (`idrecursos` = '64');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Raices' WHERE (`idrecursos` = '65');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Desgaste general de la tubería' WHERE (`idrecursos` = '66');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Interferencia de otra red' WHERE (`idrecursos` = '67');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Tubería desempalmada' WHERE (`idrecursos` = '68');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Acometida penetrante' WHERE (`idrecursos` = '69');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Fuga en red' WHERE (`idrecursos` = '70');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Acometida penetrante' WHERE (`idrecursos` = '71');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Acometida con hueco' WHERE (`idrecursos` = '72');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Red colapsada' WHERE (`idrecursos` = '73');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Raices' WHERE (`idrecursos` = '74');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Red fisurada o agrietada' WHERE (`idrecursos` = '75');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Depósitos de concreto' WHERE (`idrecursos` = '76');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Elemento transversal' WHERE (`idrecursos` = '77');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Hueco en la red' WHERE (`idrecursos` = '78');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Daño en red' WHERE (`idrecursos` = '79');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Obstrucción' WHERE (`idrecursos` = '80');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Red en mal estado' WHERE (`idrecursos` = '81');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Hueco en la red' WHERE (`idrecursos` = '82');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Interferencia de otra red' WHERE (`idrecursos` = '83');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Fuga en red' WHERE (`idrecursos` = '84');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Basuras' WHERE (`idrecursos` = '85');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Grasas' WHERE (`idrecursos` = '86');
UPDATE `bd_sanear`.`recursos` SET `causa_evento` = 'Material vegetal' WHERE (`idrecursos` = '87');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Ninguna' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Cámara defectuosa' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Daño alcantarillado' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Factibilidad trabajos especiales' WHERE (`idrecursos` = '4');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Inspeccionar con equipo de CCTV' WHERE (`idrecursos` = '5');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Intervención acueducto' WHERE (`idrecursos` = '6');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Investigar perjuicio en inmueble' WHERE (`idrecursos` = '7');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Lavado de redes' WHERE (`idrecursos` = '8');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Localizar elemento o red' WHERE (`idrecursos` = '9');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Obras accesorias alcantarillado' WHERE (`idrecursos` = '10');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Obstrucción' WHERE (`idrecursos` = '11');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Pavimentar' WHERE (`idrecursos` = '12');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Referenciar' WHERE (`idrecursos` = '13');
UPDATE `bd_sanear`.`recursos` SET `accion_pendiente` = 'Marca vial' WHERE (`idrecursos` = '14');
UPDATE `bd_sanear`.`recursos` SET `elemento_intervenido` = 'Aliviadero' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `elemento_intervenido` = 'Cámara de Inspección' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `elemento_intervenido` = 'Sumidero' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `elemento_intervenido` = 'Tubería' WHERE (`idrecursos` = '4');
UPDATE `bd_sanear`.`recursos` SET `elemento_intervenido` = 'Acometida' WHERE (`idrecursos` = '5');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'Jaime Alberto Arango Osorio' WHERE (`idrecursos` = '1');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'Carlos Alberto Taborda Villada' WHERE (`idrecursos` = '2');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'Ricardo Castro Gallo' WHERE (`idrecursos` = '3');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'Fabio Alberto Arias' WHERE (`idrecursos` = '4');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'Juan Pablo de los Rios' WHERE (`idrecursos` = '5');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'Juan Pablo Villegas Zapata' WHERE (`idrecursos` = '6');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'NEVARDO DE JESUS MEJIA MONTOYA' WHERE (`idrecursos` = '7');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'JULIO CESAR HERRERA FERNANDEZ' WHERE (`idrecursos` = '8');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'STEVEN ALEXANDER MUNOZ MORALES' WHERE (`idrecursos` = '9');
UPDATE `bd_sanear`.`recursos` SET `auxiliares_epm` = 'RUBEN DARIO RESTREPO CARMONA' WHERE (`idrecursos` = '10');
INSERT INTO encargados (idencargados, nombre, cedula, telefono) VALUES
(1, 'ANTONIO JOSE RESTREPO DUQUE', '71716189', '3116754829'),
(2, 'JOSE LEONOR CADENA RAMIREZ', '9271971', '3124087162'),
(3, 'FERNEY ORLANDO GALLO', '98626444', '3012490884'),
(4, 'FRANCISCO ARNULFO ESPINOSA ZAPATA', '98505031', '3104426928'),
(5, 'SERGIO ALEXANDER CARMONA HENAO', '70142548', '3006356658'),
(6, 'JHON JAIRO SANCHEZ', '10181778', '3146388207'),
(7, 'KELLY ANDREA LONDOÑO', '10203963853', '3228237054'),
(8, 'JULIAN ESTEBAN LOAIZA GIRALDO', '1017218023', '3104278364');
INSERT INTO `bd_sanear`.`items_ejecutados`
(`items`,
`descripcion`,
`unidad_medida`)

VALUES
(1.01, 'DESMONTE Y LIMPIEZA', 'M2'),
(1.2, 'EXCAVACION EN MATERIAL COMUN (TIPO II Y III) A CUALQUIER GRADO DE HUMEDAD, ENTRE 0 Y 2 M DE PROFUNDIDAD', 'M3'),
(1.3, 'EXCAVACION EN MATERIAL COMUN (TIPO II Y III) A CUALQUIER GRADO DE HUMEDAD. PROFUNDIDAD MAYOR 2M', 'M3'),
(1.4, 'EXCAVACION EN ROCA (TIPO I) A CUALQUIER PROFUNDIDAD, POR METODO NO EXPLOSIVO, BAJO CONDICIONES DE HUMEDAD QUE REQUIERAN BOMBEO', 'M3'),
(1.5, 'EXCAVACION DE PILAS EN ROCA (TIPO I). INCLUYE ANILLO DE PROTECCION EN CONCRETO Y REFUERZO', 'M3'),
(1.6, 'SUMINISTRO, TRANSPORTE E INSTALACION DE ENTIBADO TEMPORAL EN MADERA', 'M2'),
(1.7, 'SUMINISTRO, TRANSPORTE E INSTALACION DE ENTIBADO PERMANENTE EN MADERA', 'M2'),
(1.8, 'LLENO COMPACTADO CON MATERIAL SELECTO DE EXCAVACION', 'M3'),
(1.9, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE LLENO COMPACTADO CON MATERIAL DE PRESTAMO TIPO ARENILLA', 'M3'),
(1.10, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE LLENO COMPACTADO DE NICHOS CON MATERIAL DE PRESTAMO (ARENILLA O SIMILAR) PARA NICHOS DE INVESTIGACION Y POR REPARACION DE DAÑOS (SIN ACCESO VEHICULAR) PARA OBRAS DISPERSAS', 'M3'),
(1.11, 'CARGUE, RETIRO Y DISPOSICION FINAL DE MATERIAL SOBRANTE DE EXCAVACIONES O ESCOMBROS A CUALQUIER DISTANCIA', 'M3'),
(1.12, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE LLENO COMPACTADO CON BASE GRANULAR', 'M3'),
(1.13, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE ENTRESUELO PARA APOYO DE TUBERIA EN MATERIAL GRANULAR TRITURADO', 'M3'),
(1.14, 'CORTE, DEMOLICION, CARGUE RETIRO Y BOTADA DE ELEMENTOS EN CONCRETO SIMPLE Y/O REFORZADO, INCLUYE ANDENES CON Y SIN ESCALAS, EN CUALQUIER MATERIAL; CUNETAS Y CORDONES', 'M3'),
(2.2, 'CORTE, RETIRO Y DISPOSICION FINAL DE PAVIMENTO ASFALTICO', 'M3'),
(2.3, 'CORTE, RETIRO Y DISPOSICION FINAL DE PAVIMENTO RIGIDO', 'M3'),
(2.4, 'DEMOLICION, RETIRO Y DISPOSICION FINAL DE ANDEN EN ADOQUIN DE CONCRETO', 'M2'),
(2.5, 'SUMINISTRO, TRANSPORTE, COLOCACION Y COMPACTACION MANUAL DE PAVIMENTO ASFALTICO MDC-19 EN ZANJAS, APIQUES Y PARCHEO. INCLUYE IMPRIMANTE Y RIEGO DE LIGA', 'M3'),
(2.6, 'SUMINISTRO, TRANSPORTE, COLOCACION Y COMPACTACION MANUAL DE MEZCLA DENSA EN FRIO TIPO MDF-19, EN PARCHEO DE FALLOS, ZANJAS Y APIQUES. INCLUYE IMPRIMANTE Y RIEGO DE LIGA', 'M3'),
(2.7, 'SUMINISTRO, TRANSPORTE, COLOCACION Y CILINDRADA DE CONCRETO ASFALTICO TIPO INVIAS PARA MEZCLAS ABIERTAS EN FRIO MAF ARTICULO 441-13 (INCLUYE RIEGO DE LIGA E IMPRIMANTE ASFALTICO) PARA PARCHEO EN ZANJAS Y APIQUES', 'M3'),
(2.8, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE ADOQUIN DE CONCRETO', 'M2'),
(2.9, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE PAVIMENTO RIGIDO EN CONCRETO F''C 28MPA', 'M3'),
(2.10, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE MALLA ELECTROSOLDADA GRAFILADA', 'M2'),
(2.11, 'CONSTRUCCION O RECONSTRUCCION DE CORDONES SIMPLES. DE DOS O TRES CARAS, O CORDON CUNETA, VACIADOS EN EL SITIO CON RESISTENCIA 210KG/CM2', 'M'),
(2.12, 'SUMINISTRO TRANSPORTE Y COLOCACION DE CORDON PREFABRICADO', 'M'),
(2.13, 'CONSTRUCCION DE ANDEN EN CONCRETO, CON O SIN ESCALAS', 'M2'),
(2.14, 'CONSTRUCCION DE ANDEN EN CONCRETO, CON O SIN ESCALAS, CON ACABADO EN VITRIFICADO, GRANO O ARENON', 'M2'),
(2.15, 'RECONSTRUCCION DE ANDENES EN ARENON, GRANITO Y VITRIFICADOS CON Y SIN ESCALAS CON ACCESO VEHICULAR', 'M2'),
(2.16, 'RECONSTRUCCION ANDEN EN CERAMICA O CUALQUIER TABLETA O MATERIAL CON O SIN ESCALAS', 'M2'),
(2.17, 'RETIRO, ALMACENAMIENTO Y REINSTALACION DE ADOQUIN DE CONCRETO EXISTENTE', 'M2'),
(2.18, 'RETIRO Y REINSTALACION DE CORDONES PREFABRICADOS. INCLUYE CUÑA, LIMPIEZA, TRANSPORTE, ALMACENAMIENTO Y TODO LO NECESARIO PARA SU CORRECTA INSTALACION', 'M'),
(3.01, 'SERVICIO DE DEMOLICION DE OBRAS EN CONCRETO (LOSAS, PISOS, MUROS, TUBERIAS, ATRAQUES, CAJAS, ETC.)', 'M3'),
(3.2, 'DEMOLICION, CARGUE, RETIRO Y DISPOSICION DE CONCRETO REFORZADO EN CUALQUIER RESISTENCIA Y ESPESOR', 'M3'),
(3.3, 'DEMOLICION DE MAMPOSTERIA EN CUALQUIER MATERIAL ENTRE 15 CM Y 30 CM DE ESPESOR, CELDAS CON RELLENO. INCLUYE LOS MATERIALES DE ACABADO QUE HAGAN PARTE DE LOS MUROS Y LAS INSTALACIONES EMBEBIDAS', 'M3'),
(3.4, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE CONCRETO CICLOPEO (60%-40%). INCLUYE FORMALETA Y OBRA FALSA EN CASO DE REQUERIRSE', 'M3'),
(3.5, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE MORTERO PARA SOLADOS, RESISTENCIA MINIMA DE 14MPA', 'M3'),
(3.6, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE CONCRETO FC 21MPA PARA EMPOTRAMIENTOS, ANCLAJES Y/O APOYOS', 'M3'),
(3.7, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE CONCRETO FC 21MPA PARA PILAS', 'M3'),
(3.8, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE CONCRETO FC 28 MPA PARA OBRAS VARIAS', 'M3'),
(3.9, 'SUMINISTRO, TRANSPORTE, FIGURACION Y COLOCACION DE ACERO DE REFUERZO DE FY=420 MPA, DE CUALQUIER DIAMETRO', 'KG'),
(3.10, 'SUMINISTRO, TRANSPORTE Y CONSTRUCCION DE MURO EN LADRILLO DE 10X20X40 CM REVITADO', 'M2'),
(3.11, 'SUMINISTRO, TRANSPORTE Y CONSTRUCCION DE MURO EN LADRILLO DE 15X20X40 CM REVITADO', 'M2'),
(3.12, 'SUMINISTRO, TRANSPORTE Y CONSTRUCCION DE MURO EN LADRILLO DE 20X20X40 CM REVITADO', 'M2'),
(3.13, 'SUMINISTRO, TRANSPORTE Y CONSTRUCCION DE MURO EN BLOQUE DE CONCRETO DE 10X20X40 CM', 'M2'),
(3.14, 'SUMINISTRO, TRANSPORTE Y CONSTRUCCION DE MURO EN BLOQUE DE CONCRETO DE 15X20X40 CM', 'M2'),
(3.15, 'SUMINISTRO, TRANSPORTE Y CONSTRUCCION DE MURO EN BLOQUE DE CONCRETO DE 20X20X40 CM', 'M2'),
(3.16, 'SUMINISTRO, TRANSPORTE E INSTALACION DE ENCHAPE PARA MUROS', 'M2'),
(3.17, 'SUMINISTRO, TRANSPORTE Y APLICACION DE REVOQUE EN MURO CON ACABADO LISO', 'M2'),
(4.01, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 75MM.', 'M'),
(4.02, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 100MM.', 'M'),
(4.03, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 150MM.', 'M'),
(4.04, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 200MM ESPIGO-CAMPANA PARED ESTRUCTURAL', 'M'),
(4.05, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 250MM.', 'M'),
(4.06, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 300MM ESPIGO-CAMPANA PARED ESTRUCTURAL', 'M'),
(4.07, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 350MM.', 'M'),
(4.08, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 400MM ESPIGO-CAMPANA PARED ESTRUCTURAL', 'M'),
(4.09, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 450MM ESPIGO-CAMPANA PARED ESTRUCTURAL', 'M'),
(4.10, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 500MM.', 'M'),
(4.11, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 600MM.', 'M'),
(4.12, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 675MM.', 'M'),
(4.13, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 750MM.', 'M'),
(4.14, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 825MM.', 'M'),
(4.15, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PVC ALCANTARILLADO 900MM.', 'M'),
(4.16, 'SUMINISTRO, TRANSPORTE Y COLOCACION TUBERIA PVC-ALCANTARILLADO 975 MM (39") A 1200 MM (48")', 'M'),
(4.17, 'SUMINISTRO, TRANSPORTE, INSTALACION, SOLDADURA Y CORTE DE TUBERIA ACERO ALCANTARILLADO 8".', 'M'),
(4.18, 'SUMINISTRO, TRANSPORTE, INSTALACION, SOLDADURA Y CORTE DE TUBERIA ACERO ALCANTARILLADO 10".', 'M'),
(4.19, 'SUMINISTRO, TRANSPORTE, INSTALACION, SOLDADURA Y CORTE DE TUBERIA ACERO ALCANTARILLADO 12".', 'M'),
(4.20, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PEAD PE100 ALCANTARILLADO 250MM 10BAR TERMOFUSION.', 'M'),
(4.21, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PEAD PE100 ALCANTARILLADO 300MM 10BAR TERMOFUSION.', 'M'),
(4.22, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TUBERIA PEAD PE100 ALCANTARILLADO 350MM 10BAR TERMOFUSION.', 'M'),
(4.23, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CODO 45° PVC ALCANTARILLADO 3" CAMPANA.', 'UN'),
(4.24, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CODO 90° PVC ALCANTARILLADO 3" CAMPANA.', 'UN'),
(4.25, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CODO 90° PVC ALCANTARILLADO 4" ESPIGO-CAMPANA.', 'UN'),
(4.26, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CODO 90° PVC ALCANTARILLADO 4" CAMPANA.', 'UN'),
(4.27, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CODO 90° PVC ALCANTARILLADO 6" CAMPANA.', 'UN'),
(4.28, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CODO 45° PVC ALCANTARILLADO 4" CAMPANA.', 'UN'),
(4.29, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CODO 45° PVC ALCANTARILLADO 6" CAMPANA.', 'UN'),
(4.30, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TEE PVC ALCANTARILLADO 4".', 'UN'),
(4.31, 'SUMINISTRO, TRANSPORTE E INSTALACION DE SILLA YEE PVC ALCANTARILLADO 8" (200MM) X 6" (160MM).', 'UN'),
(4.32, 'SUMINISTRO, TRANSPORTE E INSTALACION DE SILLA YEE PVC ALCANTARILLADO 10" (250MM) X 6" (160MM).', 'UN'),
(4.33, 'SUMINISTRO, TRANSPORTE E INSTALACION DE SILLA YEE PVC ALCANTARILLADO 12" (315MM) X 6" (160MM).', 'UN'),
(4.34, 'SUMINISTRO, TRANSPORTE E INSTALACION DE SILLA YEE PVC ALCANTARILLADO 14" (355MM) X 6" (160MM).', 'UN'),
(4.35, 'SUMINISTRO, TRANSPORTE E INSTALACION DE SILLA YEE PVC ALCANTARILLADO 16" (400MM) X 6" (160MM).', 'UN'),
(4.36, 'SUMINISTRO, TRANSPORTE E INSTALACION DE SILLA YEE PVC ALCANTARILLADO 18" (450MM) X 6" (160MM).', 'UN'),
(4.37, 'SUMINISTRO, TRANSPORTE E INSTALACION DE SILLA YEE PVC ALCANTARILLADO 20" (500MM) X 6" (160MM).', 'UN'),
(4.38, 'SUMINISTRO, TRANSPORTE E INSTALACION DE UNION RECTA PVC ALCANTARILLADO 3" (75MM).', 'UN'),
(4.39, 'SUMINISTRO, TRANSPORTE E INSTALACION DE UNION RECTA PVC ALCANTARILLADO 4" (100MM).', 'UN'),
(4.40, 'SUMINISTRO, TRANSPORTE E INSTALACION DE UNION RECTA PVC ALCANTARILLADO 6" (150MM).', 'UN'),
(4.41, 'SUMINISTRO, TRANSPORTE E INSTALACION DE ADAPTADOR PVC ALCANTARILLADO 160MM.', 'UN'),
(4.42, 'REVITADA Y RESANE DE TUBERIAS DE CONCRETO DESDE 200MM (8") HASTA 300MM (12"). INCLUYE PERFORACION DE TUBERIA Y COLOCACION DE TAPA', 'UN'),
(4.43, 'REVITADA Y RESANE DE TUBERIAS DE CONCRETO DESDE 350MM (14") HASTA 450MM (18"). INCLUYE PERFORACION DE TUBERIA Y COLOCACION DE TAPA', 'UN'),
(4.44, 'REVITADA Y RESANE DE TUBERIAS DE CONCRETO, TANTO INTERNA COMO EXTERNAMENTE. INCLUYE PERFORACION DE TUBERIA Y COLOCACION DE TAPA O ADOBE DE CONCRETO SELLADA CON MEZCLA', 'UN'),
(4.45, 'RESANE DE TUBERIAS DE CONCRETO 200MM (8") A 300MM (12")', 'UN'),
(4.46, 'RESANE DE TUBERIAS DE CONCRETO 350MM (14") A 450MM (18")', 'UN'),
(4.47, 'RESANE DE TUBERIAS DE CONCRETO MAYORES A 500MM (20")', 'UN'),
(5.01, 'DEMOLICION DE CAMARAS DE INSPECCION DE ALCANTARILLADO', 'M'),
(5.02, 'DEMOLICION DE SUMIDERO. INCLUYE RETIRO DE REJA, ALMACENAMIENTO, TRANSPORTE Y REINTEGRO', 'UN'),
(5.03, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TAPA DE CUATRO APOYOS PARA CAJAS DE TELEMETRIA, CON SISTEMA DE SEGURIDAD', 'UN'),
(5.04, 'TRANSPORTE E INSTALACION DE TAPA DE CUATRO APOYOS PARA CAJAS DE TELEMETRIA, CON SISTEMA DE SEGURIDAD', 'UN'),
(5.05, 'SUMINISTRO, TRANSPORTE E INSTALACION DE VALVULA ANTIRRETORNO POLIMERICA ALCANTARILLADO 8".', 'UN'),
(5.06, 'SUMINISTRO, TRANSPORTE E INSTALACION DE VALVULA ANTIRRETORNO POLIMERICA ALCANTARILLADO 10".', 'UN'),
(5.07, 'SUMINISTRO, TRANSPORTE E INSTALACION DE VALVULA ANTIRRETORNO POLIMERICA ALCANTARILLADO 12".', 'UN'),
(5.08, 'CONSTRUCCION DE ELEMENTOS VACIADOS EN SITIO PARA CAMARAS DE INSPECCION DE ALCANTARILLADO CILINDRO Y CONO CONCENTRICO PARA MH DE 1.2 M DE DIAMETRO', 'M'),
(5.09, 'CONSTRUCCION DE ELEMENTOS VACIADOS EN SITIO PARA CAMARAS DE INSPECCION DE ALCANTARILLADO CILINDRO Y CONO CONCENTRICO PARA MH DE 1.5 M DE DIAMETRO', 'M'),
(5.10, 'SERVICIO DE CONSTRUCCION ELEMENTOS VACIADOS EN SITIO PARA CAMARA DE INSPECCION CONO CONCENTRICO 1.2 MT', 'UN'),
(5.11, 'CONSTRUCCION O RECONSTRUCCION DE CAÑUELA EN CUALQUIER DIAMETRO PARA CAMARA DE INSPECCION DE 1.2M DE DIAMETRO UTILIZANDO CONCRETO FC 21 MPA Y TUBERIA PVC PARA LA CAÑUELA', 'UN'),
(5.12, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CONO CONCENTRICO VACIADO EN CONCRETO PARA CAMARA DE INSPECCION DE 1.5M DE DIAMETRO', 'UN'),
(5.13, 'CONSTRUCCION O RECONSTRUCCION DE CAÑUELA EN CUALQUIER DIAMETRO PARA CAMARA DE INSPECCION DE 1.5M DE DIAMETRO UTILIZANDO CONCRETO FC 21 MPA Y TUBERIA PVC PARA LA CAÑUELA', 'UN'),
(5.14, 'SUMINISTRO, TRASPORTE E INSTALACION DE GANCHOS Y PELDAÑOS PARA CAMARA DE INSPECCION', 'UN'),
(5.15, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CILINDROS DE 1.0M PREFABRICADOS EN CONCRETO REFORZADO PARA CAMARAS DE INSPECCION DE ALCANTARILLADO DE 1.2M DE DIAMETRO', 'UN'),
(5.16, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CILINDROS DE 0.5M PREFABRICADOS EN CONCRETO REFORZADO PARA CAMARAS DE INSPECCION DE ALCANTARILLADO DE 1.2M DE DIAMETRO', 'UN'),
(5.17, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CILINDROS DE 0.2M PREFABRICADOS EN CONCRETO REFORZADO PARA CAMARAS DE INSPECCION DE ALCANTARILLADO DE 1.2M DE DIAMETRO', 'UN'),
(5.18, 'SUMINISTRO, TRANSPORTE E INSTALACION DE CONO CONCENTRICO PREFABRICADO EN CONCRETO PARA CAMARA DE INSPECCION DE 1.2M DE DIAMETRO', 'UN'),
(5.19, 'SUMINISTRO, TRANSPORTE E INSTALACION DE ANILLO PREFABRICADO EN CONCRETO PARA CAMARA DE INSPECCION', 'UN'),
(5.20, 'SUMINISTRO, TRANSPORTE E INSTALACION DE ELEMENTOS PREFABRICADOS EN CONCRETO REFORZADO PARA CAMARAS DE INSPECCION 1.2M', 'UN'),
(5.21, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TAPA POLIMERICA PARA CAMARA DE INSPECCION O ALIVIADERO', 'UN'),
(5.22, 'SUMINISTRO Y TRANSPORTE DE TAPA POLIMERICA PREFABRICADA PARA CAMARAS DE INSPECCION Y O ALIVIADERO DE ALCANTARILLADO', 'UN'),
(5.23, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE TAPAS PARA CAMARA DE INSPECCION Y/O ALIVIADERO EN CONCRETO', 'UN'),
(5.24, 'TRANSPORTE E INSTALACION DE TAPA PARA CAMARA DE INSPECCION EN CUALQUIER MATERIAL', 'UN'),
(5.25, 'SUMINISTRO, TRANSPORTE E INSTALACION DE ANILLO POLIMERICO PARA CAMARA DE INSPECCION', 'UN'),
(5.26, 'TRANSPORTE E INSTALACION DE JUEGO DE ANILLOS PARA CAMARA DE INSPECCION EN CONCRETO', 'UN'),
(5.27, 'PERFORACION DE CAMARA DE INSPECCION PARA EMPALME DE TUBERIA ENTRE 200 MM (8") Y 300 MM (12"). INCLUYE EMBOQUILLADA, RESANE Y DISPOSICION DE ESCOMBROS', 'UN'),
(5.28, 'PERFORACION DE CAMARA DE INSPECCION PARA EMPALME DE TUBERIA ENTRE 350 MM (14") Y 450 MM (18"). INCLUYE EMBOQUILLADA, RESANE Y DISPOSICION DE ESCOMBROS', 'UN'),
(5.29, 'PERFORACION DE CAMARA DE INSPECCION PARA EMPALME DE TUBERIA ENTRE 500 MM (20") Y 900 MM (36"). INCLUYE EMBOQUILLADA, RESANE Y DISPOSICION DE ESCOMBROS', 'UN'),
(5.30, 'RECONSTRUCCION DE CAÑUELA EN CUALQUIER DIAMETRO PARA CAMARA DE INSPECCION UTILIZANDO CONCRETO DE 21 MPA Y TUBERIA PVC PARA LA CAÑUELA (LA TUBERIA DE PVC SE PAGA CON EL ITEM RESPECTIVO):', 'UN'),
(5.31, 'ADECUACION DE CAÑUELA EN CUALQUIER DIAMETRO PARA CAMARA DE INSPECCION UTILIZANDO CONCRETO DE 21 MPA Y TUBERIA PVC PARA LA CAÑUELA', 'UN'),
(5.32, 'CONSTRUCCION DE CAMARA DE CAIDA EN CONCRETO CON TUBERIA 8" (200MM) PVC. INCLUYE CAJA DE INSPECCION Y ATRAQUE DE TUBERIA', 'M'),
(5.33, 'CONSTRUCCION DE CAMARA DE CAIDA EN CONCRETO CON TUBERIA 10" (250MM) PVC. INCLUYE CAJA DE INSPECCION Y ATRAQUE DE TUBERIA', 'M'),
(5.34, 'CONSTRUCCION DE CAMARA DE CAIDA EN CONCRETO CON TUBERIA 12" PVC. INCLUYE CAJA DE INSPECCION Y ATRAQUE DE TUBERIA', 'M'),
(5.35, 'CONSTRUCCION DE CAMARA DE CAIDA EN CONCRETO CON TUBERIA 14" PVC. INCLUYE CAJA DE INSPECCION Y ATRAQUE DE TUBERIA', 'M'),
(5.36, 'CONSTRUCCION DE CAMARA DE CAIDA EN CONCRETO CON TUBERIA 16" PVC. INCLUYE CAJA DE INSPECCION Y ATRAQUE DE TUBERIA', 'M'),
(5.37, 'CONSTRUCCION DE CAJA DE INSPECCION EN CONCRETO PARA ALCANTARILLADO 0.6 X 0.6M (TIPO 1). INCLUYE MARCO Y TAPA EN CONCRETO', 'M'),
(5.38, 'CONSTRUCCION DE CAJA DE INSPECCION EN CONCRETO PARA ALCANTARILLADO 0.8 X 0.8M (TIPO 2). INCLUYE MARCO Y TAPA EN CONCRETO', 'M'),
(5.39, 'CONSTRUCCION DE CAJA DE INSPECCION EN CONCRETO DE 0.6M X 0.6M (TIPO 1), PARA ALCANTARILLADO. INCLUYE MARCO Y TAPA POLIMERICA', 'UN'),
(5.40, 'CONSTRUCCION DE CAJA DE INSPECCION EN CONCRETO 0.8M X 0.8M (TIPO 2), PARA ALCANTARILLADO. INCLUYE MARCO Y TAPA POLIMERICA', 'UN'),
(5.41, 'CONSTRUCCION DE CAJA PLUVIAL EN CONCRETO. INCLUYE REJA METALICA TIPO A Y TODOS LOS TRABAJOS PARA SU CONSTRUCCION', 'UN'),
(5.42, 'CONSTRUCCION DE CAJA PLUVIAL EN CONCRETO. INCLUYE REJA METALICA TIPO B Y TODOS LOS TRABAJOS PARA SU CONSTRUCCION', 'UN'),
(5.43, 'CONSTRUCCION DE CAJA PLUVIAL EN CONCRETO. INCLUYE REJA POLIMERICA TIPO A Y TODOS LOS TRABAJOS PARA SU CONSTRUCCION', 'UN'),
(5.44, 'CONSTRUCCION DE CAJA PLUVIAL EN CONCRETO. INCLUYE REJA POLIMERICA TIPO B Y TODOS LOS TRABAJOS PARA SU CONSTRUCCION', 'UN'),
(5.45, 'SUMINISTRO, TRANSPORTE Y COLOCACION REJA Y MARCO METALICA PARA SUMIDERO TIPO A', 'UN'),
(5.46, 'SUMINISTRO, TRANSPORTE E INSTALACION DE REJA METALICA O POLIMÉRICA PARA SUMIDERO TIPO B', 'UN'),
(5.47, 'SUMINISTRO, TRANSPORTE Y COLOCACIÓN REJA POLIMÉRICA PARA SUMIDERO TIPO A', 'UN'),
(5.48, 'SUMINISTRO, TRANSPORTE Y COLOCACIÓN REJA POLIMÉRICA PARA SUMIDERO TIPO B', 'UN'),
(5.49, 'REALCE SUMIDERO TIPO A CON REUTILIZACION DE MARCO Y REJILLA METALICA EXISTENTE', 'M'),
(5.50, 'REALCE CAJA PLUVIAL TIPO A CON REJA POLIMERICA', 'M'),
(5.51, 'REALCE SUMIDERO TIPO B CON REUTILIZACION DE MARCO Y REJILLA METALICA EXISTENTE', 'M'),
(5.52, 'REALCE CAJA PLUVIAL TIPO B CON REJA POLIMERICA', 'M'),
(5.53, 'PERFORACION DE COBERTURAS O CANALES DE CONCRETO REFORZADO PARA EMPALME DE TUBERIA ENTRE 200 MM (8") Y 300 MM (12"). INCLUYE EMBOQUILLADA, RESANE Y DISPOSICION DE ESCOMBROS', 'UN'),
(5.54, 'PERFORACION DE COBERTURAS O CANALES DE CONCRETO REFORZADO PARA EMPALME DE TUBERIA ENTRE 350 MM (14") Y 450 MM (18"). INCLUYE EMBOQUILLADA, RESANE Y DISPOSICION DE ESCOMBROS', 'UN'),
(5.55, 'PERFORACION DE COBERTURAS O CANALES DE CONCRETO REFORZADO PARA EMPALME DE TUBERIA ENTRE 500 MM (20") Y 900 MM (36"). INCLUYE EMBOQUILLADA, RESANE Y DISPOSICION DE ESCOMBROS', 'UN'),
(5.56, 'REALCE Y REEMPLAZO DE ANILLO Y TAPA DE 0 A 0.25M EN CAMARA DE INSPECCION EXISTENTE VISIBLE EN PAVIMENTO. INCLUYE SUMINISTRO DE ANILLO Y TAPA EN CONCRETO PREFABRICADA Y CONTORNO EN CONCRETO REFORZADO CON FIBRA DE VIDRIO', 'UN'),
(5.57, 'REALCE Y REEMPLAZO DE ANILLO Y TAPA DE 0.26 A 0.35M EN CAMARA DE INSPECCION EXISTENTE VISIBLE EN PAVIMENTO. INCLUYE SUMINISTRO DE ANILLO Y TAPA EN CONCRETO PREFABRICADA Y CONTORNO EN CONCRETO REFORZADO CON FIBRA DE VIDRIO', 'UN'),
(5.58, 'REALCE Y REEMPLAZO DE ANILLO Y TAPA DE 0 A 0.25M EN CAMARA DE INSPECCION EXISTENTE VISIBLE EN CONCRETO. INCLUYE SUMINISTRO DE ANILLO Y TAPA EN CONCRETO PREFABRICADA Y CONTORNO EN CONCRETO REFORZADO CON FIBRA DE VIDRIO', 'UN'),
(5.59, 'REALCE Y REEMPLAZO DE ANILLO Y TAPA DE 0.26 A 0.35M EN CAMARA DE INSPECCION EXISTENTE VISIBLE EN CONCRETO. INCLUYE SUMINISTRO DE ANILLO Y TAPA EN CONCRETO PREFABRICADA Y CONTORNO EN CONCRETO REFORZADO CON FIBRA DE VIDRIO', 'UN'),
(5.60, 'REALCE Y REEMPLAZO DE ANILLO Y TAPA DE 0 A 0.25M EN CAMARA DE INSPECCION EXISTENTE TAPADA EN PAVIMENTO. INCLUYE SUMINISTRO DE ANILLO Y TAPA EN CONCRETO PREFABRICADA Y CONTORNO EN CONCRETO REFORZADO CON FIBRA DE VIDRIO', 'UN'),
(5.61, 'REALCE Y REEMPLAZO DE ANILLO Y TAPA DE 0.26 A 0.35M EN CAMARAS DE INSPECCION EXISTENTE TAPADA EN PAVIMENTO. INCLUYE SUMINISTRO DE ANILLO Y TAPA EN CONCRETO PREFABRICADA Y CONTORNO EN CONCRETO REFORZADO CON FIBRA DE VIDRIO', 'UN'),
(5.62, 'REALCE Y REEMPLAZO DE ANILLO Y TAPA DE 0 A 0.25M EN CAMARAS DE INSPECCION EXISTENTE TAPADA EN CONCRETO. INCLUYE SUMINISTRO DE ANILLO Y TAPA EN CONCRETO PREFABRICADA Y CONTORNO EN CONCRETO REFORZADO CON FIBRA DE VIDRIO', 'UN'),
(5.63, 'REALCE Y REEMPLAZO DE ANILLO Y TAPA DE 0.26 A 0.35M EN CAMARAS DE INSPECCION EXISTENTE TAPADA EN CONCRETO. INCLUYE SUMINISTRO DE ANILLO Y TAPA EN CONCRETO PREFABRICADA Y CONTORNO EN CONCRETO REFORZADO CON FIBRA DE VIDRIO', 'UN'),
(5.64, 'SUMINISTRO, TRANSPORTE E INSTALACION DE LAMINA DE ACERO INOXIDABLE 316 ESPESOR 6MM PARA PROTECCION O RESTRICCION EN CAMARAS DE INSPECCION Y ALIVIADEROS', 'M2'),
(6.1, 'SUMINISTRO, TRANSPORTE E INSTALACION DE VALVULA ANTIRETORNO PVC ALCANTARILLADO 6".', 'UN'),
(6.2, 'SUMINISTRO, TRANSPORTE E INSTALACION DE VALVULA ANTIRETORNO PVC ALCANTARILLADO 8".', 'UN'),
(6.3, 'SUMINISTRO, TRANSPORTE E INSTALACION DE MARCO Y TAPA EN CONCRETO PARA CAJA DE REGISTRO ACOMETIDA DE 0.3M X 0.3M', 'UN'),
(6.4, 'SUMINISTRO, TRANSPORTE E INSTALACION DE MARCO Y TAPA EN CONCRETO PARA CAJA DE REGISTRO ACOMETIDA DE 0.5M X 0.5M', 'UN'),
(6.5, 'CONSTRUCCION DE CAJA DE EMPALME 0,50 X 0,50 SEGUN NORMA EPM RS3-002', 'UN'),
(6.6, 'CONSTRUCCION DE CAJA DE REGISTRO DE 0.5 X 0.5M PARA ACOMETIDA DE ALCANTARILLADO. INCLUYE TAPA PARA ANDEN O ZONA VERDE', 'UN'),
(6.7, 'SUMINISTRO, TRANSPORTE E INSTALACION DE MARCO Y TAPA POLIMERICA PARA CAJA DE REGISTRO ACOMETIDA DE 0.3X0.3M', 'UN'),
(6.8, 'SUMINISTRO, TRANSPORTE E INSTALACION DE MARCO Y TAPA POLIMERICA PARA CAJA DE REGISTRO ACOMETIDA DE 0.5M X 0.5M', 'UN'),
(7.1, 'REHABILITACION PUNTUAL DE TUBERIA DE CONCRETO DE 200MM DIAMETRO INTERNO MEDIANTE DE PACKERS DE 60CM', 'UN'),
(7.2, 'REHABILITACION PUNTUAL DE TUBERIA DE CONCRETO DE 250MM DIAMETRO INTERNO MEDIANTE DE PACKERS DE 60CM', 'UN'),
(7.3, 'REHABILITACION PUNTUAL DE TUBERIA DE CONCRETO DE 300MM DIAMETRO INTERNO MEDIANTE DE PACKERS DE 60CM', 'UN'),
(7.4, 'REHABILITACION PUNTUAL DE TUBERIA DE CONCRETO DE 350MM DIAMETRO INTERNO MEDIANTE DE PACKERS DE 60CM', 'UN'),
(7.5, 'REHABILITACION PUNTUAL DE TUBERIA DE CONCRETO DE 375MM DIAMETRO INTERNO MEDIANTE DE PACKERS DE 60CM', 'UN'),
(7.6, 'REHABILITACION PUNTUAL DE TUBERIA DE CONCRETO DE 450MM DIAMETRO INTERNO MEDIANTE DE PACKERS DE 60CM', 'UN'),
(7.7, 'REHABILITACION PUNTUAL DE TUBERIA DE CONCRETO DE 600MM DIAMETRO INTERNO MEDIANTE DE PACKERS DE 60CM', 'UN'),
(8.1, 'LIMPIEZA Y DESOBSTRUCCION MANUAL DE SUMIDERO CON O SIN CANASTA RECOLECTORA', 'UN'),
(8.2, 'LIMPIEZA Y DESOBSTRUCCION MANUAL DE ALIVIADERO DE ALCANTARILLADO', 'UN'),
(8.3, 'INVESTIGACION DE FUGA EN ALCANTARILLADO', 'UN'),
(8.4, 'LIMPIEZA Y DESOBSTRUCCION MANUAL DE CAMARA DE INSPECCION DE ALCANTARILLADO CON O SIN CAMARA DE CAIDA', 'UN'),
(8.5, 'LIMPIEZA Y DESOBSTRUCCION MANUAL DE ACOMETIDA DE ALCANTARILLADO', 'UN'),
(8.6, 'LIMPIEZA Y DESOBSTRUCCION DE DESCARGAS', 'UN'),
(9.01, 'CONSTRUCCION DE FILTRO 0,5M X 0,5M EN TUBERIA PERFORADA DIAMETRO 4". INCLUYE GEOTEXTIL Y TRITURADO ENTRE 3/4" Y 1 1/2"', 'M'),
(9.2, 'SUMINISTRO, TRANSPORTE E INSTALACION DE GEOTEXTIL NO TEJIDO NT 2500', 'M2'),
(9.3, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE GRAMA TIPO MACANA O SIMILAR', 'M2'),
(9.4, 'RETIRO, ALMACENAMIENTO Y REINSTALACION DE GRAMA EXISTENTE', 'M2'),
(9.5, 'SUMINISTRO, TRANSPORTE E INSTALACION DE GAVIONES EN ROCA CON MALLA DE ALAMBRE DE ACERO RECUBIERTA EN PVC', 'M3'),
(9.6, 'RETIRO, ALMACENAMIENTO Y REINSTALACION DE CERCO EN MALLA ESLABONADA', 'M'),
(9.7, 'REFERENCIACION DE REDES DE ACUEDUCTO Y ALCANTARILLADO POR ELEMENTO', 'UN'),
(9.8, 'ALQUILER DE RETRO EXCAVADORA TIPO PAJARITA SOBRE LLANTAS O SIMILAR', 'H'),
(9.9, 'ALQUILER DE RETROEXCAVADORA DE ORUGAS CON OPERADOR', 'H'),
(9.10, 'SERVICIO DE OPERACION DE UNA RETROEXCAVADORA', 'H'),
(9.11, 'SUMINISTRO, TRANSPORTE Y APLICACION DE PINTURA PLASTICA EN FRIO DOBLE COMPONENTE PARA SEÑAL VIAL HORIZONTAL. INCLUYE MICROESFERAS DE VIDRIO Y ALUMINA ANTIDESLIZANTE', 'M2'),
(9.12, 'SUMINISTRO, TRANSPORTE E INSTALACION DE TAPA EN HIERRO DUCTIL PARA CAJA DE MEDIDOR DE ACUEDUCTO ENTRE 15MM (1/2") Y 20MM (3/4")', 'UN'),
(9.13, 'SUMINISTRO, TRANSPORTE Y COLOCACION DE TUBERIA PERFORADA PVC SANITARIA 4" PARA FILTROS', 'M'),
(9.14, 'CONSTRUCCION DE CAJA EN CONCRETO PARA MEDIDOR DE ACUEDUCTO ENTRE 15MM (1/2") Y 20MM (3/4"), EN ANDEN O ZONA VERDE. NO INCLUYE TAPA', 'UN'),
(10.01, 'TRANSPORTE E INSTALACION DE TUBERIA PEAD PE100 200MM 10BAR ADOSADA A LA PARED PARA RED NO CONVENCIONAL DE ALCANTARILLADO', 'M'),
(10.2, 'TRANSPORTE E INSTALACION DE TUBERIA PEAD PE100 250MM 10BAR ADOSADA A LA PARED PARA RED NO CONVENCIONAL DE ALCANTARILLADO', 'M'),
(10.3, 'TRANSPORTE E INSTALACION DE TUBERIA PEAD PE100 200MM 10BAR EXPUESTA PARA RED NO CONVENCIONAL DE ALCANTARILLADO', 'M'),
(10.4, 'TRANSPORTE E INSTALACION DE TUBERIA PEAD PE100 250MM 10BAR EXPUESTA PARA RED NO CONVENCIONAL DE ALCANTARILLADO', 'M'),
(10.5, 'CONSTRUCCION DE ACOMETIDA PARA TRANSICION DE PVC A PE EN ALCANTARILLADO NO CONVENCIONAL DE DIAMETRO 150MM', 'M'),
(10.6, 'CONSTRUCCION DE ACOMETIDA PARA TRANSICION DE PVC A PE DE ALCANTARILLADO NO CONVENCIONAL MULTIPLE HASTA TRES VIVIENDAS EN DIAMETRO 100MM', 'M'),
(10.7, 'CONSTRUCCION DE ACOMETIDA PARA TRANSICION DE ALCANTARILLADO NO CONVENCIONAL MULTIPLE HASTA TRES VIVIENDAS EN DIAMETRO 150MM', 'M'),
(10.8, 'CONSTRUCCION DE ACOMETIDA PARA ALCANTARILLADO NO CONVENCIONAL EXPUESTO EN PE', 'M'),
(10.9, 'CONSTRUCCION DE ACOMETIDA PARA ALCANTARILLADO NO CONVENCIONAL EN PVC 100MM', 'M'),
(10.10, 'REGISTROS DE INSPECCION EN POLIETILENO PARA TUBERIA PE 200MM. INCLUYE SUMINISTRO, TRANSPORTE E INSTALACION DE: TEE, PORTA BRIDA, BRIDA Y TAPON SEGUN PLANOS', 'UN'),
(10.11, 'REGISTROS DE INSPECCION EN POLIETILENO PARA TUBERIA PE 250MM. INCLUYE SUMINISTRO, TRANSPORTE E INSTALACION DE: TEE, PORTA BRIDA, BRIDA Y TAPON SEGUN PLANOS', 'UN'),
(10.12, 'REGISTROS DE INSPECCION EN POLIETILENO PARA TUBERIA PE 250MM. INCLUYE SUMINISTRO, TRANSPORTE E INSTALACION DE: TEE, PORTA BRIDA, BRIDA Y TAPON SEGUN PLANOS', 'UN'),
(10.13, 'REGISTROS DE INSPECCION EN POLIETILENO PARA TUBERIA PE 300MM. INCLUYE SUMINISTRO, TRANSPORTE E INSTALACION DE: TEE, PORTABRIDA, BRIDA Y TAPON SEGUN PLANOS', 'UN'),
(10.14, 'REGISTROS DE INSPECCION EN POLIETILENO PARA TUBERIA PE 200MM. INCLUYE SUMINISTRO, TRANSPORTE E INSTALACION DE: TEE, PORTA BRIDA, BRIDA Y TAPON SEGUN PLANOS', 'UN'),
(11.1, 'PROGRAMAS Y PLANES DE MANEJO DE TRANSITO (PMT) CATEGORÍA I - OBRAS DE INTERFERENCIAS MÍNIMAS', 'UN'),
(11.2, 'PROGRAMAS Y PLANES DE MANEJO DE TRANSITO (PMT) CATEGORÍA II - OBRAS DE INTERFERENCIAS MODERADAS', 'UN'),
(11.3, 'PROGRAMAS Y PLANES DE MANEJO DE TRANSITO (PMT) CATEGORÍA III - OBRAS DE INTERFERENCIAS ALTAS O DE GRAN IMPACTO', 'UN'),
(11.4, 'ELABORACION DE FICHA DE SEÑALIZACION Y CONTROL DEL PMT', 'UN'),
(11.5, 'IMPLEMENTACIÓN DE LOS PROGRAMAS PARA EL MANEJO SOCIOAMBIENTAL DE FRENTES DE TRABAJO', 'UN'),
(11.6, 'IMPLEMENTACIÓN DE LOS PROGRAMAS AMBIENTALES COMPLEMENTARIOS', 'UN'),
(11.7, 'IMPLEMENTACIÓN DE LOS PROGRAMAS SOCIALES COMPLEMENTARIOS', 'UN'),
(11.8, 'MEDICIONES DE RUIDO', 'UN');
