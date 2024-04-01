<?php

namespace App\Livewire\Edufans; // Perhatikan perubahan ini

use App\Models\Edufan; // Perhatikan perubahan ini
use Livewire\Component;
use Livewire\WithPagination;


class Index extends Component
{
    use WithPagination;

    public $delete_id;
    protected $listeners = ['deleteConfirmed' => 'deleteEdufan'];

    public function deleteConfirmation($id)
    {
        $this->delete_id = $id;
        $this->dispatch('show-delete-confirmation');
    }

    public function deleteEdufan()
    {
        $edufan = Edufan::where('id', $this->delete_id)->first();
        $edufan->delete();
        $this->dispatch('edufanDeleted');
    }

    public function destroy($id)
    {
        //destroy
        Edufan::destroy($id);

        //flash message
        session()->flash('message', 'Data Berhasil Dihapus.');

        //redirect
        return redirect()->route('edufans.index');
    }

    public function render()
    {
        return view('livewire.edufans.index', [
            'edufans' => Edufan::latest()->paginate(5)
        ]);
    }
}
