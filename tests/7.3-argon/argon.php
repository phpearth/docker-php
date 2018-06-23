<?php

// plain text password
$password = 'secretcode';

// password hashed with PASSWORD_ARGON2I
echo password_hash($password, PASSWORD_ARGON2I);
