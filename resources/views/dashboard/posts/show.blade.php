@extends('dashboard.layouts.main')



@section('content')   
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h3>{{ $post->title }}</h3>

                <a href="/dashboard/posts" class="badge bg-warning text-white text-decoration-none mb-3"><span data-feather="arrow-left"></span> Back</a>

                <a href="/dashboard/posts/{{ $post->slug }}/edit" class="badge bg-info text-white text-decoration-none mb-3"><span data-feather="edit"></span></a>

                <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                    @method('delete')
                    @csrf
                    <button class="badge bg-danger text-white border-0" onclick="return confirm('Are You Sure ?')"><span data-feather="edit"></span></button>
                </form>        
                @if ($post->img)
                <div style="max-height: 350px; overflow:hidden">
                <img src="{{ asset('storage/' . $post->img) }}" class="card-img-top img-fluid" alt="{{ $post->category }}">
                </div>
                @else
                <img src="https://source.unsplash.com/1200x500?{{ $post->category }}" class="card-img-top img-fluid" alt="{{ $post->category }}">
                @endif
                <article class="my-3">
                    {!! $post->body !!}
                </article>
                <a href="/dashboard">Back to Blog</a>
        </div>
    </div>
</div>
@endsection