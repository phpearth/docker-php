<?php

$pspell_link = pspell_new("en");

if (pspell_check($pspell_link, "test")) {
    echo "This is a valid spelling";
} else {
    echo "Sorry, wrong spelling";
}
