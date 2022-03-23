<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Posts;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // User::factory(5)->create();

        User::create([
            "name" => "Jon",
            "username" => "jon",
            "email" => "jon@gmail.com",
            "password" => bcrypt("password")
        ]);

        // User::create([
        //     "name" => "Marten",
        //     "email" => "marten@gmail.com",
        //     "password" => bcrypt("123")
        // ]);

        User::factory(3)->create();

        Category::create([
            "name" => "Web Design",
            "slug" => "web-design"
        ]);
        Category::create([
            "name" => "Tech",
            "slug" => "tech"
        ]);
        Category::create([
            "name" => "Web Programing",
            "slug" => "web-programing"
        ]);

        Posts::factory(20)->create();

        // Posts::create([
        //     "title" => "Wisata Indonesia",
        //     "slug" => "wisata-indonesia",
        //     "excerpt" => "<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur, recusandae? Quos dolorum, porro minus eveniet aspernatur voluptates odio! Sint vero beatae laboriosam nemo quaerat quidem, sunt illo veritatis consequatur odit.</p>",
        //     "body" => "<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consequatur a reiciendis distinctio? Soluta omnis, aliquid adipisci consectetur minima quod. Reprehenderit tenetur repudiandae velit possimus nihil praesentium cumque quas, cum tempore harum. Illum assumenda quaerat eius praesentium ea, nihil dolor quasi.</p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quisquam obcaecati error animi quibusdam laboriosam? Suscipit iusto odio ad pariatur optio repellat corrupti provident blanditiis quibusdam! Sapiente vel natus tempore sit, qui, veritatis minima distinctio mollitia molestias laudantium, culpa fuga. Veritatis eius ullam asperiores error hic repellat quisquam magni tempora doloremque.</p>",
        //     "category_id" => 2,
        //     "user_id" => 2
        // ]);

        // Posts::create([
        //     "title" => "Tech",
        //     "slug" => "tech",
        //     "excerpt" => "<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur, recusandae? Quos dolorum, porro minus eveniet aspernatur voluptates odio! Sint vero beatae laboriosam nemo quaerat quidem, sunt illo veritatis consequatur odit.</p>",
        //     "body" => "<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consequatur a reiciendis distinctio? Soluta omnis, aliquid adipisci consectetur minima quod. Reprehenderit tenetur repudiandae velit possimus nihil praesentium cumque quas, cum tempore harum. Illum assumenda quaerat eius praesentium ea, nihil dolor quasi.</p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quisquam obcaecati error animi quibusdam laboriosam? Suscipit iusto odio ad pariatur optio repellat corrupti provident blanditiis quibusdam! Sapiente vel natus tempore sit, qui, veritatis minima distinctio mollitia molestias laudantium, culpa fuga. Veritatis eius ullam asperiores error hic repellat quisquam magni tempora doloremque.</p>",
        //     "category_id" => 1,
        //     "user_id" => 1
        // ]);
    }
}
