<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Edufan;
use Illuminate\Support\Facades\Route as FacadesRoute;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use App\Http\Requests\User\StoreUserRequest;
use App\Http\Requests\User\UpdateUserRequest;
use App\Services\UserService;

use App\Services\SettingService;

class EdufanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $edufans = Edufan::query()
        ->when(!blank($request->search), function ($query) use ($request) {
            return $query
                ->where('judul', 'like', '%' . $request->search . '%')
                ->orWhere('deskripsi', 'like', '%' . $request->search . '%');
        })
        ->orderBy('judul')
        ->paginate(10);
    $facadesRoutes = FacadesRoute::getRoutes();
    $permissions = Permission::orderBy('name')->get();

    return view('edufan.index', compact('edufans', 'permissions', 'facadesRoutes'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
