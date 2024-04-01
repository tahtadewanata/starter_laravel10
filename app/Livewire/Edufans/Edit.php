<?php

namespace App\Livewire\Edufans;

use Livewire\Component;
use App\Models\Edufan;
use Livewire\WithFileUploads;
use Livewire\Attributes\Rule;


class Edit extends Component
{
    use WithFileUploads;

    //id edufan
    public $edufanID;

    //image
    public $cover;

    #[Rule('required', message: 'Masukkan Judul Post')]
    public $judul;

    #[Rule('required', message: 'Masukkan Isi Post')]
    #[Rule('min:3', message: 'Isi Post Minimal 3 Karakter')]
    public $deskripsi;

    public function mount($id)
    {
        //get edufan
        $edufan = Edufan::find(decrypt($id));

        //assign
        $this->edufanID   = $edufan->id;
        $this->judul    = $edufan->judul;
        $this->deskripsi  = $edufan->deskripsi;
    }

    public function update()
    {
        $this->validate();

        //get edufan
        $edufan = Edufan::find($this->edufanID);

        //check if image
        if ($this->cover) {

            //store image in storage/app/public/upload_file/edufan
            $this->cover->storeAs('public/upload_file/edufan', $this->cover->hashName());

            //update edufan
            $edufan->update([
                'cover' => $this->cover->hashName(),
                'judul' => $this->judul,
                'deskripsi' => $this->deskripsi,
            ]);
        } else {

            //update post
            $edufan->update([
                'judul' => $this->judul,
                'deskripsi' => $this->deskripsi,
            ]);
        }

        //flash message
        session()->flash('message', 'Data Berhasil Diupdate.');

        //redirect
        return redirect()->route('edufans.index');
    }


    public function render()
    {
        return view('livewire.edufans.edit');
    }
}
