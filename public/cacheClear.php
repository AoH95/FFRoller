<?php
try{
 exec("/usr/local/php7.0/bin/php /www/bin/console cache:clear --env=prod --no-debug");
 exec("/usr/local/php7.0/bin/php /www/bin/console cache:clear --env=prod");
}
catch(Exception $e){
 echo "Impossible de vider le cache :<br>".$e->getMessage();
}
header('Location: /');
