<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\Model;

// class Posts extends Model
{
    // use HasFactory;
}
class Posts
{
    private static $blog_posts = [
        [
            "title" => "Judul Satu",
            "slug" => "judul-satu",
            "author" => "John",
            "content" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae delectus quia esse officiis et cum, aut beatae mollitia inventore veniam incidunt sapiente eveniet nisi ab voluptatem suscipit. Nam rem nobis sequi ut! Consectetur earum accusamus officia minus eaque magnam incidunt exercitationem ut pariatur quas amet obcaecati omnis suscipit repellendus, ratione ducimus quod hic error! Quisquam tenetur illum ex commodi dolorem esse fuga laborum vel. Quia eos iste beatae, dolor, fuga obcaecati ratione velit nihil magni, quae amet et dicta voluptatum vitae aliquam necessitatibus illum? Soluta debitis numquam cupiditate eos dignissimos."
        ],
        [
            "title" => "Judul Dua",
            "slug" => "judul-dua",
            "author" => "Marten",
            "content" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae delectus quia esse officiis et cum, aut beatae mollitia inventore veniam incidunt sapiente eveniet nisi ab voluptatem suscipit. Nam rem nobis sequi ut! Consectetur earum accusamus officia minus eaque magnam incidunt exercitationem ut pariatur quas amet obcaecati omnis suscipit repellendus, ratione ducimus quod hic error! Quisquam tenetur illum ex commodi dolorem esse fuga laborum vel. Quia eos iste beatae, dolor, fuga obcaecati ratione velit nihil magni, quae amet et dicta voluptatum vitae aliquam necessitatibus illum? Soluta debitis numquam cupiditate eos dignissimos."
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        // $new_post = [];
        // foreach ($posts as $po) {
        //     if ($po['slug'] === $slug) {
        //         $new_post = $po;
        //     }
        // }

        return $posts->firstWhere('slug', $slug);
    }
}
