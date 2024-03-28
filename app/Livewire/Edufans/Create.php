<?php

namespace App\Livewire\Edufans;

use App\Models\Edufan;
use Livewire\Component;
use Livewire\WithFileUploads;
use Livewire\Attributes\Rule;

class Create extends Component
{
    use WithFileUploads;

    //image
    #[Rule('required', message: 'Masukkan Gambar Post')]
    #[Rule('image', message: 'File Harus Gambar')]
    #[Rule('max:1024', message: 'Ukuran File Maksimal 1MB')]
    public $cover;

    //title
    #[Rule('required', message: 'Masukkan Judul Post')]
    public $judul;

    //content
    #[Rule('required', message: 'Masukkan Isi Post')]
    #[Rule('min:3', message: 'Isi Post Minimal 3 Karakter')]
    public $deskripsi;

    /**
     * store
     *
     * @return void
     */
    public function store()
    {
        $this->validate();

        //store cover in storage/app/public/upload_file/edufan
        $this->cover->storeAs('public/upload_file/edufan', $this->cover->hashName());

        //create post
        Edufan::create([
            'cover' => $this->cover->hashName(),
            'judul' => $this->judul,
            'deskripsi' => $this->deskripsi,
        ]);

        //flash message
        session()->flash('message', 'Data Berhasil Disimpan.');

        //redirect
        return redirect()->route('edufans.index');
    }

    /**
     * render
     *
     * @return void
     */
    public function render()
    {
        return view('livewire.edufans.create');
    }
}
