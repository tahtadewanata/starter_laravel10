@section('title')
Data Posts - Belajar Livewire 3 di SantriKoding.com
@endsection

<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-12">

            <!-- flash message -->
            @if (session()->has('message'))
            <div class="alert alert-success">
                {{ session('message') }}
            </div>
            @endif
            <!-- end flash message -->

            <a href="/create" wire:navigate class="btn btn-md btn-success rounded shadow-sm border-0 mb-3">ADD NEW POST</a>
            <div class="card border-0 rounded shadow-sm">
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead class="bg-dark text-white">
                            <tr>
                                <th scope="col">Image</th>
                                <th scope="col">Title</th>
                                <th scope="col">Content</th>
                                <th scope="col" style="width: 15%">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($edufans as $post)
                            <tr>
                                <td class="text-center">
                                    <img src="{{ asset('storage/upload_file/edufan/'.$post->cover) }}" class="rounded" style="width: 150px">
                                </td>
                                <td>{{ $post->judul }}</td>
                                <td>{!! $post->deskripsi !!}</td>
                                <td class="text-center">
                                    <a href="/edit/{{ encrypt($post->id) }}" wire:navigate class="btn btn-sm btn-primary">EDIT</a>
                                    <a href="#" wire:click.prevent="deleteConfirmation({{ $post->id }})" class="btn btn-sm btn-danger">DELETE</a>
                                    {{-- <button wire:click="destroy({{ $post->id }})" class="btn btn-sm btn-danger">DELETE</button> --}}
                                </td>
                            </tr>
                            @empty
                            <div class="alert alert-danger">
                                Data Post belum Tersedia.
                            </div>
                            @endforelse
                        </tbody>
                    </table>
                    {{ $edufans->links('vendor.pagination.simple-tailwind') }}
                </div>
            </div>
        </div>
    </div>
</div>


<script>
  window.addEventListener('show-delete-confirmation', event => {
    Swal.fire({
  title: "Are you sure?",
  text: "You won't be able to revert this!",
  icon: "warning",
  showCancelButton: true,
  confirmButtonColor: "#3085d6",
  cancelButtonColor: "#d33",
  confirmButtonText: "Yes, delete it!"
}).then((result) => {
  if (result.isConfirmed) {
    Livewire.dispatch('deleteConfirmed')
  }
});
  });
  
  window.addEventListener('edufanDeleted', event => {
    Swal.fire(
    'Deleted!',    
    'File telah dihapus',
    'success'
    )
  });  
    </script>