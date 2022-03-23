<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href=" {{ url('/') }} ">Logo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link {{ ($active === 'home') ? 'active' : '' }}" aria-current="page" href="{{ url('/') }}">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ ($active === 'about') ? 'active' : '' }}" href="{{ url('/about') }}">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ ($active === 'blog') ? 'active' : '' }}" href="{{ url('/blog') }}">Blog</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ ($active === 'categories') ? 'active' : '' }}" href="{{ url('/categories') }}">Categories</a>
        </li>                  
      </ul>

      <ul class="navbar-nav ms-auto">
      @auth
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Welcome Back, {{ auth()->user()->name }}
        </a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <li><a class="dropdown-item" href="/dashboard">Dashboard</a></li>
          <li><hr class="dropdown-divider"></li>
          <form action="/logout" method="post">
            @csrf
            <button type="submit" class="dropdown-item">Logout</button>
          </form>          
        </ul>
      </li>
      @else
        <li class="nav-item ms-auto">
          <a class="nav-link {{ ($active === 'login') ? 'active' : '' }}" href="{{ url('/login') }}">Login <i class="bi bi-box-arrow-right"></i></a>
        </li> 
        @endauth
      </ul>

         
    </div>
  </div>
</nav>