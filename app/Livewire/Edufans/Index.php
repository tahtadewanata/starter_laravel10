<?php

namespace App\Livewire\Edufans; // Perhatikan perubahan ini

use App\Models\Edufan; // Perhatikan perubahan ini
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination;

    public function render()
    {
        return view('livewire.edufans.index', [
            'edufans' => Edufan::latest()->paginate(5)
        ]);
    }
}
