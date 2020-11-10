#!/bin/bash

mysqldump --where="true limit 100" mysql help_keyword > dump100.sql
