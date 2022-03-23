

@extends('master_layout.main')

@section('container')
<h1 class="text-center">{{ $title }}</h1>
<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-md-6">
            <form action="/blog" method="get">
                @if (request('category'))
                <input type="hidden" name="category" value="{{ request('category') }}">                    
                @endif
                @if (request('author'))
                <input type="hidden" name="author" value="{{ request('author') }}">                    
                @endif
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="seacrh" name="search" value="{{ request('search') }}">
                    <button class="btn btn-primary" type="submit">Search</button>
                  </div>
            </form>
        </div>
    </div>
</div>
     @if ($posts->count())              
        <div class="card mb-3">
            @if ($posts[0]->img)
                <div style="max-height: 350px; overflow:hidden">
                <img src="{{ asset('storage/' . $posts[0]->img) }}" class="card-img-top" alt="{{ $posts[0]->category }}">
                </div>
                @else
                <img src="https://source.unsplash.com/1200x500?{{ $posts[0]->category }}" class="card-img-top" alt="{{ $posts[0]->category }}">
                @endif
            
            <div class="card-body text-center">
            <h3 class="card-title"><a href="/post/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h3>
            <p>
                <small class="text-muted">
                    Author : <a href="/blog?author={{ $posts[0]->author->username }}" class="text-decoration-none">{{ $posts[0]->author->name }}</a> | <a href="/blog?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans() }}
                </small>
            </p>
            <p class="card-text">{{ $posts[0]->excerpt }}</p>

            <a href="/post/{{ $posts[0]->slug }}" class="btn btn-success text-decoration-none">Read More</a>

            </div>
        </div>
   
    
        <div class="container">
            <div class="row">
            @foreach($posts->skip(1) as $post)
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <div class="position-absolute px-3 py-2" style="background-color: rgba(0, 0, 0, 0.7)"><a href="/blog?category={{ $post->category->slug }}" class="text-decoration-none text-white">{{ $post->category->name }}</a></div>
                        @if ($post->img)
                        
                        <img src="{{ asset('storage/' . $post->img) }}" class="img-fluid" alt="{{ $post->category }}">
                        
                        @else

                        <img src="https://source.unsplash.com/1200x500?{{ $post->category }}" class="card-img-top img-fluid" alt="{{ $post->category }}">

                        @endif
                        
                        <div class="card-body">
                          <h5 class="card-title">{{ $post->title }}</h5>
                          <p>
                            <small class="text-muted">
                                <a href="/blog?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> {{ $post->created_at->diffForHumans() }}
                            </small>
                        </p>
                          <p class="card-text">{!! $post->excerpt !!}</p>
                          <a href="/post/{{ $post->slug }}" class="btn btn-info">Read More</a>
                        </div>
                      </div>
                </div>                
                @endforeach
            </div>
        </div>
        @else
        <p class="text-center fs-4">Not Post Found</p>
        @endif

        <div class="d-flex justify-content-center">
        {{ $posts->links() }}
        </div>

@endsection