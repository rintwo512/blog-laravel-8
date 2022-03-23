@extends('master_layout.main')



@section('container')

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h3>{{ $post->title }}</h3>

                    <p>Author : <a href="/blog?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> | <a href="/blog?category={{ $post->category->slug }}">{{ $post->category->name }}</a></p>
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
                    <a href="/blog">Back to Blog</a>
            </div>
        </div>
    </div>

<article>
    
</article>
@endsection
