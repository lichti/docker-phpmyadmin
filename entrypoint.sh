#!/bin/bash

DBADDR=${DBADDR:-mysql}
DBPORT=${DBPORT:-3306}

sed -i s/\{\{DBADDR\}\}/${DBADDR}/g /var/www/html/config.inc.php
sed -i s/\{\{DBPORT\}\}/${DBPORT}/g /var/www/html/config.inc.php

apache2-foreground
