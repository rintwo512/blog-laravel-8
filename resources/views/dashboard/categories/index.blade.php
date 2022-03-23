@extends('dashboard.layouts.main')



@section('content')   
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Categories</h1>    
</div>

  <div class="table-responsive col-lg-6">
      @if (session()->has('success'))
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('success') }}
       <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
     </div>
      @endif
      <a href="/dashboard/caegories/create" class="btn btn-primary">Tambah Data</a>
    <table class="table table-striped table-sm">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Category Name</th>          
          <th scope="col">Action</th>          
        </tr>
      </thead>
      <tbody>
          @foreach ( $categories as $categ )
          <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $categ->name }}</td>            
            <td>
                <a href="/dashboard/categories/{{ $categ->slug }}/edit" class="badge bg-info text-white"><span data-feather="edit"></span></a>

                <a href="/dashboard/categories/{{ $categ->slug }}" class="badge bg-warning text-white"><span data-feather="eye"></span></a>

                <form action="/dashboard/categories/{{ $categ->slug }}" method="post" class="d-inline">
                    @method('delete')
                    @csrf
                    <button class="badge bg-danger text-white border-0" onclick="return confirm('Are You Sure ?')"><span data-feather="x-circle"></span></button>
                </form>  
                            
            </td>          
          </tr> 
          @endforeach                   
      </tbody>
    </table>
  </div>
  @endsection