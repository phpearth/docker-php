<?php

// plain text password
$password = 'secretcode';

echo password_hash($password, PASSWORD_ARGON2I);
