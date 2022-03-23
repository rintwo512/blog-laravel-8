<?php

namespace App\Http\Controllers;

use App\Models\Posts;
use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $title = '';

        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = $category->name;
        }

        if (request('author')) {
            $author = User::firstWhere('username', request('author'));
            $title = $author->name;
        }

        return view(
            'blog',
            [
                "title" => "All Posts $title",
                // "posts" => Posts::all()
                "active" => "blog",
                "posts" => Posts::latest()->cari(request(['search', 'category', 'author']))->paginate(7)->withQueryString()
            ]
        );
    }

    public function show(Posts $post)
    {
        return view('post', [
            "title" => "Post",
            "active" => "blog",
            "post" => $post
        ]);
    }
}
