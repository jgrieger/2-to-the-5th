# cerner_2^5_2018
use Data::UUID;

$guidCreator = Data::UUID->new;
$guid = $guidCreator->create();

print $guid