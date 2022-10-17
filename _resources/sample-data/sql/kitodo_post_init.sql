INSERT INTO `ocrworkflow` (`id`, `title`, `file`, `active`, `client_id`) VALUES
	(1, 'OCR Workflow Example', 'ocr-workflow-example.sh', 1, 1);

INSERT INTO `ruleset` (`id`, `title`, `file`, `orderMetadataByRuleset`, `indexAction`, `active`, `client_id`) VALUES
	(4, 'Ruleset', 'ruleset_default.xml', 0, 'INDEX', 1, 1);

INSERT INTO `workflow` (`id`, `title`, `status`, `indexAction`, `client_id`, `separateStructure`) VALUES
	(2, 'OCR_Workflow', 'ACTIVE', 'INDEX', 1, 0);

INSERT INTO `template` (`id`, `title`, `creationDate`, `sortHelperStatus`, `ruleset_id`, `docket_id`, `indexAction`, `workflow_id`, `active`, `client_id`, `ocr_workflow_id`) VALUES
 	(1, 'Example Template', '2021-11-22 17:52:48', NULL, 4, 1, 'INDEX', 1, 1, 1, 1),
	(2, 'Template_OCR', '2022-03-10 16:42:15', NULL, 4, 1, 'INDEX', 2, 1, 1, 1);

INSERT INTO `process` (`id`, `title`, `inChoiceListShown`, `sortHelperStatus`, `sortHelperImages`, `sortHelperArticles`, `sortHelperDocstructs`, `sortHelperMetadata`, `creationDate`, `wikiField`, `project_id`, `ruleset_id`, `docket_id`, `indexAction`, `processBaseUri`, `template_id`, `parent_id`, `ordering`, `exported`) VALUES
	(3, 'CaelCaFeD_1761630636', 0, '060020000020', 0, 0, 0, 0, '2022-03-10 16:43:28', '', 1, 4, 1, 'INDEX', '3/', 2, NULL, NULL, 0);

INSERT INTO `property` (`id`, `title`, `value`, `obligatory`, `dataType`, `choice`, `creationDate`, `indexAction`) VALUES
	(21, 'Template', 'Template_OCR', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(22, 'TemplateID', '2', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(23, 'PPN (digital)', '1761630636', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(24, 'PPN (Vorlage)', '1106334698', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(25, 'Sprache', 'lat', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(26, 'Dokumenttyp', 'Monograph', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(27, 'Haupttitel ‹METS›', 'Caelii Calcagnini Ferrariensis, De Evcharistia Sermo Brevis, Ac Perspicvvs', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(28, 'Haupttitel (Sortierung) ‹METS›', 'Caelii Calcagnini Ferrariensis, De Evcharistia Sermo Brevis, Ac Perspicvvs', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(29, 'Person (Gruppe)', 'CalcagniniCelio', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(30, 'Erscheinungsort', 'Bvdissae', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(31, 'Verleger', 'Literis Richterianis', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(32, 'Signatur (Vorlage)', '4.A.1080,angeb.4', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(33, 'Digitale Kollektionen', 'Drucke des 18. Jahrhunderts', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(34, 'Haupttitel', 'Caelii Calcagnini Ferrariensis, De Evcharistia Sermo Brevis, Ac Perspicvvs', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(35, 'Haupttitel (Sortierung)', 'Caelii Calcagnini Ferrariensis, De Evcharistia Sermo Brevis, Ac Perspicvvs', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(36, 'Untertitel', 'In Vsum Athenaei Bvdissinensis', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(37, 'TSL/ATS', 'CaelCaFeD', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(38, 'DocType', 'Monograph', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(39, 'TifHeaderImagedescription', '|<DOC_TYPE>|<HAUPTTITEL>|<AUTOREN/HERAUSGEBER>|<JAHR>|<ERSCHEINUNGSORT>|<VERZ_STRCT>_|', 0, 5, NULL, '2022-03-10 16:43:38', NULL),
	(40, 'TifHeaderDocumentname', 'CaelCaFeD_1761630636', 0, 5, NULL, '2022-03-10 16:43:38', NULL);

INSERT INTO `task` (`id`, `title`, `ordering`, `processingStatus`, `editType`, `processingTime`, `processingBegin`, `processingEnd`, `homeDirectory`, `typeMetadata`, `typeAutomatic`, `typeImagesRead`, `typeImagesWrite`, `typeExportDms`, `typeAcceptClose`, `scriptName`, `scriptPath`, `typeCloseVerify`, `batchStep`, `user_id`, `process_id`, `indexAction`, `template_id`, `workflowCondition_id`, `workflowId`, `concurrent`, `last`, `repeatOnCorrection`, `correction`, `typeGenerateImages`, `typeValidateImages`) VALUES
	(5, 'Scanning', 1, 1, 4, '2021-11-22 17:53:07', NULL, NULL, 0, 0, 0, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 'INDEX', 1, NULL, 'Task_1', 0, 0, 0, 0, 0, 0),
	(6, 'QC', 2, 0, 0, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 'INDEX', 1, NULL, 'Task_2', 0, 0, 0, 0, 0, 0),
	(7, 'Structure and Metadata', 3, 0, 0, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 'INDEX', 1, NULL, 'Task_3', 0, 0, 0, 0, 0, 0),
	(8, 'Export DMS', 4, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, 'INDEX', 1, NULL, 'Task_4', 0, 1, 0, 0, 0, 0),
	(18, 'Scanning', 1, 1, 4, '2022-03-10 16:42:51', NULL, NULL, 0, 0, 0, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 'INDEX', 2, NULL, 'Task_1', 0, 0, 0, 0, 0, 0),
	(19, 'QC', 2, 0, 0, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 'INDEX', 2, NULL, 'Task_2', 0, 0, 0, 0, 0, 0),
    (20, 'OCR from Process Dir', 3, 0, 0, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 'OCR Process Dir', '/usr/local/kitodo/scripts/script_ocr_process_dir.sh {processid} {stepid}', 0, 0, NULL, NULL, 'INDEX', 2, NULL, 'Activity_0y2ldc1', 0, 0, 0, 0, 0, 0),
	(21, 'Structure and Metadata', 4, 0, 0, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 'INDEX', 2, NULL, 'Task_3', 0, 0, 0, 0, 0, 0),
	(22, 'Export DMS', 5, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, 'INDEX', 2, NULL, 'Task_4', 0, 0, 0, 0, 0, 0),
    (23, 'OCR from Export Dir', 6, 0, 0, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 'OCR Export Dir', '/usr/local/kitodo/scripts/script_ocr_export_dir.sh {processtitle} {stepid}', 0, 0, NULL, NULL, 'INDEX', 2, NULL, 'Activity_12zha6z', 0, 1, 0, 0, 0, 0),
	(24, 'Scanning', 1, 3, 3, NOW(), NULL, NULL, 0, 0, 0, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, 3, 'INDEX', NULL, NULL, 'Task_1', 0, 0, 0, 0, 0, 0),
	(25, 'QC', 2, 3, 3, NOW(), NULL, NULL, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, 0, 0, NULL, 3, 'INDEX', NULL, NULL, 'Task_2', 0, 0, 0, 0, 0, 0),
    (26, 'OCR from Process Dir', 3, 0, 3, NOW(), NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 'OCR Process Dir', '/usr/local/kitodo/scripts/script_ocr_process_dir.sh {processid} {stepid}', 0, 0, NULL, 3, 'INDEX', NULL, NULL, 'Activity_0y2ldc1', 0, 0, 0, 0, 0, 0),
	(27, 'Structure and Metadata', 4, 0, 3, NOW(), NULL, NULL, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, 3, 'INDEX', NULL, NULL, 'Task_3', 0, 0, 0, 0, 0, 0),
	(28, 'Export DMS', 5, 0, 3, NOW(), NULL, NULL, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, 0, 0, NULL, 3, 'INDEX', NULL, NULL, 'Task_4', 0, 0, 0, 0, 0, 0),
    (29, 'OCR from Export Dir', 6, 0, 3, NOW(), NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 'OCR Export Dir', '/usr/local/kitodo/scripts/script_ocr_export_dir.sh {processtitle} {stepid}', 0, 0, NULL, 3, 'INDEX', NULL, NULL, 'Activity_12zha6z', 0, 1, 0, 0, 0, 0);

INSERT INTO `project_x_template` (`project_id`, `template_id`) VALUES
	(1, 2);

INSERT INTO `process_x_property` (`process_id`, `property_id`) VALUES
	(3, 21),
	(3, 22);

INSERT INTO `role_x_authority` (`role_id`, `authority_id`) VALUES
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 25),
	(1, 26),
	(1, 27),
	(1, 28),
	(1, 29),
	(1, 30),
	(1, 31),
	(1, 32),
	(1, 33),
	(1, 34),
	(1, 35),
	(1, 36),
	(1, 54),
	(1, 55),
	(1, 56),
	(1, 57),
	(1, 58),
	(1, 59),
	(1, 60),
	(1, 61),
	(1, 62),
	(1, 63),
	(1, 64),
	(1, 65),
	(1, 66),
	(1, 67),
	(1, 68),
	(1, 71),
	(1, 72),
	(1, 73),
	(1, 74),
	(1, 75),
	(1, 76),
	(1, 77),
	(1, 78),
	(1, 79),
	(1, 80),
	(1, 81),
	(1, 82),
	(1, 83),
	(1, 84),
	(1, 85),
	(1, 91),
	(1, 92),
	(1, 93),
	(1, 94),
	(1, 95),
	(1, 96),
	(1, 97),
	(1, 98),
	(1, 107),
	(1, 108),
	(1, 109),
	(1, 110),
	(1, 111),
	(1, 117),
	(1, 118),
	(1, 119),
	(1, 120),
	(1, 121),
	(1, 122),
	(1, 123),
	(1, 124),
	(1, 125),
	(1, 126),
	(1, 131),
	(1, 132),
	(1, 133),
	(1, 134),
	(1, 140),
	(1, 147),
	(1, 148),
	(1, 149),
	(1, 150),
	(1, 151),
	(1, 157),
	(1, 158),
	(1, 159),
	(1, 160),
	(1, 161),
	(1, 162),
	(1, 163),
	(1, 164),
	(1, 165),
	(1, 166),
	(1, 167),
	(1, 168),
	(1, 169),
	(1, 170),
	(1, 171),
	(1, 177),
	(1, 178),
	(1, 188),
	(1, 189),
	(1, 190),
	(1, 191),
	(1, 192);

INSERT INTO `task_x_role` (`role_id`, `task_id`) VALUES
	(1, 5),
	(2, 5),
	(1, 6),
	(3, 6),
	(1, 7),
	(5, 7),
	(1, 8),
	(6, 8),
	(1, 18),
	(2, 18),
	(1, 19),
	(3, 19),
    (1, 20),
	(1, 21),
	(5, 21),
	(1, 22),
	(6, 22),
	(1, 23),
	(1, 24),
	(2, 24),
	(1, 25),
	(3, 25),
	(1, 26),
	(1, 27),
	(5, 27),
    (1, 28),
	(6, 28),
    (1, 29);

INSERT INTO `workpiece_x_property` (`process_id`, `property_id`) VALUES
	(3, 23),
	(3, 24),
	(3, 25),
	(3, 26),
	(3, 27),
	(3, 28),
	(3, 29),
	(3, 30),
	(3, 31),
	(3, 32),
	(3, 33),
	(3, 34),
	(3, 35),
	(3, 36),
	(3, 37),
	(3, 38),
	(3, 39),
	(3, 40);

UPDATE project SET dmsImportRootPath = '/usr/local/kitodo/dms-export/' WHERE id = 1;
