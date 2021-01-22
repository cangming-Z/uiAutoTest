//项目表
CREATE TABLE `web_auto_test`.`project`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `project_code` varchar(255) NOT NULL COMMENT '项目编号',
  `project_name` varchar(255) NOT NULL COMMENT '项目名称',
  `project_brief` varchar(255) NULL COMMENT '项目简介',
  `remark` varchar(255) NULL COMMENT '备注',
  PRIMARY KEY (`id`, `project_code`)
);

//自定义模块表
CREATE TABLE `web_auto_test`.`custom_module`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_code` varchar(255) NOT NULL COMMENT '项目编号',
  `custom_module_code` varchar(255) NOT NULL COMMENT '自定义模块编号',
  `custom_module_name` varchar(255) NULL COMMENT '自定义模块名',
  `remark` varchar(255) NULL COMMENT '备注',
  PRIMARY KEY (`id`, `project_code`)
);


//自定义模块详情表
CREATE TABLE `web_auto_test`.`custom_module_details111`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `custom_modul_code` varchar(255) NOT NULL COMMENT '自定义模块编号',
  `index` int NOT NULL COMMENT '执行顺序',
  `ope_type` varchar(255) NULL COMMENT '操作类型',
  `ope_type_remark` varchar(255) NULL COMMENT '操作类型描述',
  `element` text NULL COMMENT '页面元素',
  `value` varchar(255) NULL COMMENT 'url或输入文本信息',
  PRIMARY KEY (`id`)
);