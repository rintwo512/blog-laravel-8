@extends('master_layout.main')

@section('container')
    <div class="row justify-content-center">
      <div class="col-md-4">
        <main class="form-signin">
          <h1 class="h3 mb-3 fw-normal text-center">Please sign in</h1>
          <form action="/register" method="post">
            @csrf                   
            <div class="form-floating">
              <input type="Text" class="form-control @error('name') is-invalid @enderror" id="name" placeholder="Full Name" name="name" value="{{ old('name') }}">
              <label for="name">Full Name</label>
              @error('name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
              @enderror
            </div>
            <div class="form-floating">
                <input type="text" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" name="email" value="{{ old('email') }}">
                <label for="email">Email address</label>
                @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
              @enderror
            </div>
            <div class="form-floating">
                <input type="text" class="form-control @error('username') is-invalid @enderror" id="username" placeholder="Username" name="username" value="{{ old('username') }}">
                <label for="username">Username</label>
                @error('username')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
              @enderror
            </div>
            <div class="form-floating">
              <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" placeholder="Password" name="password">
              <label for="password">Password</label>
              @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
              @enderror
            </div>                    
            <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>            
          </form>
          <small class="d-block text-center mt-3">Sudah punya akun? <a href="/login">Login Now</a></small>
        </main>
      </div>
    </div>

    {{-- <script>
        const isInvalid = document.getElementById('name');
        
        isInvalid.addEventListener('click', function(){
            document.querySelector('.is-invalid').classList.toggle('is-invalid');
        })
    </script> --}}
@endsection

