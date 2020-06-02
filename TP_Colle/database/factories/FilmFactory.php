<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\modele\Film;
use Faker\Generator as Faker;

$factory->define(Film::class, function (Faker $faker) {
    return [
        'titre' => $faker->sentence(2, false),
        'anneeSortie' => $faker->year(),
        'description' => $faker->sentence(5, true),
        'id_categorie' => $faker->numberBetween(1, 10),
    ];
});
