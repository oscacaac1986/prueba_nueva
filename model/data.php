<?php
header('Content-Type: application/json');




$data= file_get_contents('http://api.openweathermap.org/data/2.5/weather?q=London&appid=8fb337d0f3fea96a4466e7333bcbfb5a');

print_r($data);



?>