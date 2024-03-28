@section('title')
Create Post - Belajar Livewire 3 di SantriKoding.com
@endsection

<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card border-0 shadow-sm rounded">
                <div class="card-body">
                    <form wire:submit="store" enctype="multipart/form-data">

                        <div class="form-group mb-4">

                            <label class="fw-bold">GAMBAR</label>
                            <input type="file" class="form-control @error('cover') is-invalid @enderror" wire:model="cover">

                            <!-- error message untuk cover -->
                            @error('cover')
                            <div class="alert alert-danger mt-2">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <div class="form-group mb-4">
                            <label class="fw-bold">JUDUL</label>
                            <input type="text" class="form-control @error('judul') is-invalid @enderror" wire:model="judul" placeholder="Masukkan Judul Post">

                            <!-- error message untuk judul -->
                            @error('judul')
                            <div class="alert alert-danger mt-2">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <div class="form-group mb-4">
                            <label class="fw-bold">Deskripsi</label>
                            <textarea class="form-control @error('deskripsi') is-invalid @enderror" wire:model="deskripsi" rows="5" placeholder="Masukkan Deskripsi Post"></textarea>

                            <!-- error message untuk content -->
                            @error('deskripsi')
                            <div class="alert alert-danger mt-2">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <button type="submit" class="btn btn-md btn-primary">SIMPAN</button>
                        <button type="reset" class="btn btn-md btn-warning">RESET</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>