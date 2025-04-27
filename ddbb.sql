--
-- Dumping data for table `producto_log`
--

LOCK TABLES `producto_log` WRITE;
/*!40000 ALTER TABLE `producto_log` DISABLE KEYS */;
INSERT INTO `producto_log` VALUES (1,5,'lalal',555,22,'asd','2024-10-25 21:52:25','root@localhost','Alta'),(2,5,'lalal',555,22,'asd','2024-10-25 22:10:08','root@localhost','Baja'),(3,4,'335',33,0,'','2024-10-25 22:10:20','root@localhost','Modificación'),(4,4,'335',33,0,'ddd','2024-10-25 22:12:02','root@localhost','Modificación'),(5,4,'335',33,22,'ddd','2024-10-29 21:22:30','root@localhost','Modificación');
/*!40000 ALTER TABLE `producto_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_de_prueba`
--

DROP TABLE IF EXISTS `vista_de_prueba`;
/*!50001 DROP VIEW IF EXISTS `vista_de_prueba`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_de_prueba` AS SELECT 
 1 AS `nombre`,
 1 AS `precio`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'crud_py_inter'
--

--
-- Dumping routines for database 'crud_py_inter'
--

--
-- Final view structure for view `vista_de_prueba`
--

/*!50001 DROP VIEW IF EXISTS `vista_de_prueba`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_de_prueba` AS select `producto`.`nombre` AS `nombre`,`producto`.`precio` AS `precio` from `producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01 22:06:25