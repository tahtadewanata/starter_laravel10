@extends('layouts.dashboard.livewireapp')

@section('title', 'Another Page')

@section('content')
    <div class="card">
        <div class="card-header">
            <h5 class="card-title">Edufan Component</h5>
        </div>
        <div class="card-body">
            <form wire:submit.prevent="submitForm">
                <div class="mb-3">
                    <label for="judul" class="form-label">Judul</label>
                    <input type="text" class="form-control" id="judul" wire:model="judul">
                    @error('judul') <span class="text-danger">{{ $message }}</span> @enderror
                </div>
                <div class="mb-3">
                    <label for="deskripsi" class="form-label">Deskripsi</label>
                    <textarea class="form-control" id="deskripsi" rows="3" wire:model="deskripsi"></textarea>
                    @error('deskripsi') <span class="text-danger">{{ $message }}</span> @enderror
                </div>
                <div class="mb-3">
                    <label for="status" class="form-label">Status</label>
                    <select class="form-select" id="status" wire:model="status">
                        <option value="0">Draft</option>
                        <option value="1">Published</option>
                    </select>
                    @error('status') <span class="text-danger">{{ $message }}</span> @enderror
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
@endsection
