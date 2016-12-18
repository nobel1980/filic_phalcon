<?php

use Phalcon\Loader;

$loader = new Loader();

/**
 * We're a registering a set of directories taken from the configuration file
 */
$loader->registerNamespaces([
    'Filic\Models'      => $config->application->modelsDir,
    'Filic\Controllers' => $config->application->controllersDir,
    'Filic\Forms'       => $config->application->formsDir,
    'Filic'             => $config->application->libraryDir
]);

$loader->register();

// Use composer autoloader to load vendor classes
require_once __DIR__ . '/../../vendor/autoload.php';
