<?php

use Faker\Generator as Faker;

$factory->define(App\Student::class, function (Faker $faker) {

    $getBoolean = $faker->boolean();
    $gender = null;
    if($getBoolean==true) {
        $gender = "Male";
    }else {
        $gender = "Female";
    }

    return [
        'name' => $faker->name(),
        'email' => $faker->email(),
        'gender' =>$gender,
        'age' => $faker->biasedNumberBetween($min = 15, $max = 30, $function = 'sqrt')
    ];
});
