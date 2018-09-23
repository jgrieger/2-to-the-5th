<?php
include_once 'JWT.php';
use \Firebase\JWT\JWT;

// cerner_2^5_2018

$key       = "thisIsTheMostSecretKeyEver";
$issuedAt  = time();
$notBefore = $issuedAt + 10; // 10 seconds
$expire    = $notBefore + 60; // 60 seconds
$tokenId   = base64_encode(openssl_random_pseudo_bytes(32));
$token     = array(
 "iss" => "http://me.org",
 "aud" => "http://me.org",
 "nbf" => $notBefore,
 'iat' => $issuedAt,
 'jti' => $tokenId,
 'nbf' => $notBefore,
 'exp' => $expire,
);

$jwt = JWT::encode($token, $key, 'HS512');

header('Content-type: application/json');

$jwtArray = ['jwt' => $jwt];

echo json_encode($jwtArray);