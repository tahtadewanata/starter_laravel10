<?php

namespace App\Livewire;

use Illuminate\Support\Str;
use Livewire\Component;

class Edufan extends Component
{
    public $judul, $deskripsi, $postId, $slug, $status, $updatePost = false, $addPost = false;

    protected $rules = [
        'judul' => 'required',
        'deskripsi' => 'required',
        'status' => 'required'
    ];

    public function resetFields()
    {
        $this->judul = '';
        $this->deskripsi = '';
        $this->status = 1;
    }

    public function render()
    {
        $edufans = \App\Models\Edufan::latest()->get();
        return view('livewire.edufan', compact('edufans'));
    }

    public function create()
    {
        $this->resetFields();
        $this->addPost = true;
        $this->updatePost = false;
    }

    public function store()
    {
        $this->validate();
        try {
            \App\Models\Edufan::create([
                'judul' => $this->judul,
                'deskripsi' => $this->deskripsi,
                'status' => $this->status,
                'slug' => Str::slug($this->title)
            ]);

            session()->flash('success', 'Post Created Successfully!!');
            $this->resetFields();
            $this->addPost = false;
        } catch (\Exception $ex) {
            session()->flash('error', 'Something goes wrong!!');
        }
    }
}
