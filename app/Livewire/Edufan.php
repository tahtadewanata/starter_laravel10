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
        $this->status = 0;
    }

    public function render()
    {
        $edufans = \App\Models\Edufan::latest()->get();
        return view('livewire.edu', compact('edufans'));
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

    public function edit($id)
    {
        try {
            $post = \App\Models\Edufan::findOrFail($id);
            if (!$post) {
                session()->flash('error', 'Post not found');
            } else {
                $this->judul = $post->judul;
                $this->deskripsi = $post->deskripsi;
                $this->status = $post->status;
                $this->postId = $post->id;
                $this->updatePost = true;
                $this->addPost = false;
            }
        } catch (\Exception $ex) {
            session()->flash('error', 'Something goes wrong!!');
        }
    }
}
