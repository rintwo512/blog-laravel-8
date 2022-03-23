<?php

namespace App\Http\Controllers;

use App\Models\Posts;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\DashboardPost;
use Illuminate\Support\Facades\Storage;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class DashboardPostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('dashboard.posts.index', [
            'title' => 'My Posts',
            'posts' => Posts::where('user_id', auth()->user()->id)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.posts.create', [
            'title' => 'Create Post',
            'categories' => Category::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $validateData = $request->validate([
            'title' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'img' => 'required|file|max:1024',
            'category_id' => 'required',
            'body' => 'required'
        ]);

        if ($request->file('img')) {
            $validateData['img'] = $request->file('img')->store('post-images');
        }

        $validateData['user_id'] = auth()->user()->id;
        $validateData['excerpt'] = Str::limit(strip_tags($request->body), 200);

        Posts::create($validateData);

        return redirect('/dashboard/posts')->with('success', 'New Post has been Added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\DashboardPost  $dashboardPost
     * @return \Illuminate\Http\Response
     */
    public function show(Posts $post)
    {
        return view('dashboard.posts.show', [
            'title' => 'Detail Post',
            'post' => $post
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\DashboardPost  $dashboardPost
     * @return \Illuminate\Http\Response
     */
    public function edit(Posts $post)
    {
        return view('dashboard/posts/edit', [
            'title' => 'Edit Data',
            'post' => $post,
            'categories' => Category::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\DashboardPost  $dashboardPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Posts $post)
    {
        $rules = [
            'title' => 'required|max:255',
            'category_id' => 'required',
            'img' => 'required|file|max:1024',
            'body' => 'required'
        ];


        if ($request->slug != $post->slug) {
            $rules['slug'] = 'required|unique:posts';
        }


        $validateData = $request->validate($rules);

        if ($request->file('img')) {
            if ($request->oldImg) {
                Storage::delete($request->oldImg);
            }
            $validateData['img'] = $request->file('img')->store('post-images');
        }

        $validateData['user_id'] = auth()->user()->id;
        $validateData['excerpt'] = Str::limit(strip_tags($request->body), 200);

        Posts::where('id', $post->id)
            ->update($validateData);

        return redirect('/dashboard/posts')->with('success', 'Post has been Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\DashboardPost  $dashboardPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(Posts $post)
    {

        if ($post->img) {
            Storage::delete($post->img);
        }

        Posts::destroy($post->id);

        return redirect('/dashboard/posts')->with('success', 'New Post has been deleted');
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(Posts::class, 'slug', $request->title);

        return response()->json(['slug' => $slug]);
    }
}
