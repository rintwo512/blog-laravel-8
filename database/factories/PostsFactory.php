<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PostsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "title" => $this->faker->sentence(mt_rand(3, 8)),
            "slug" => $this->faker->slug(),
            "excerpt" => $this->faker->paragraph(),
            // cara satu
            // "body" => '<p>' . implode('</p><p>',$this->faker->paragraphs(mt_rand(5, 10))) . '</p>',
            // cara dua
            // "body" => collect($this->faker->paragraphs(mt_rand(5, 10)))
            //             ->map(function($p) {
            //                 return "<p>$p</p>";
            //             }),
            // cara tiga
            "body" => collect($this->faker->paragraphs(mt_rand(5, 10)))
                ->map(fn ($p) => "<p>$p</p>")->implode(''),
            "user_id" => mt_rand(1, 3),
            "category_id" => mt_rand(1, 3)
        ];
    }
}
