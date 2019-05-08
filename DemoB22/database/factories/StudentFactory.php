<?php

use Faker\Generator as Faker;

$factory->define(App\Student::class, function (Faker $faker) {
    $getGender = $faker->boolean();
    $gender = Null;
    if($getGender == "True") {
        $gender = "Male";
    }else {
        $gender = "Female";
    }
    return [
        'name' =>$faker -> name(),
        'email'=>$faker -> email(),
        'gender'=>$gender,
        'age'=>$faker->biasedNumberBetween($min = 15, $max = 40, $function = 'sqrt')
    ];
});
