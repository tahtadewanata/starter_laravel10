<!-- Modals add menu -->
<div id="modal-form-add-edufan" class="modal fade" tabindex="-1" aria-labelledby="modal-form-add-edufan-label"
    aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <form action="{{ route('edufan.store') }}" method="post">
                @csrf

                <div class="modal-header">
                    <h5 class="modal-title" id="modal-form-add-route-label">Tambah Edufan</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label for="route" class="form-label">Route Name</label>
                        <select class="form-control" id="route" name="route" data-choices data-choices-removeItem>
                            @foreach ($facadesRoutes as $facadesRoute)
                                @if (!blank($facadesRoute->getName()))
                                    <option value="{{ $facadesRoute->getName() }}">{{ $facadesRoute->getName() }}
                                    </option>
                                @endif
                            @endforeach
                        </select>
                        <x-form.validation.error name="route" />
                    </div>

                    <div class="mb-3">
                        <label for="permission_name" class="form-label">Permission Name</label>
                        <select class="form-control" id="permission_name" name="permission_name" data-choices
                            data-choices-removeItem>
                            @foreach ($permissions as $permission)
                                <option value="{{ $permission->name }}">{{ $permission->name }}</option>
                            @endforeach
                        </select>
                        <x-form.validation.error name="permission_name" />
                    </div>

                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea type="text" class="form-control" id="description" placeholder="Role description" name="description"></textarea>
                        <x-form.validation.error name="description" />
                    </div>

                    <div class="mb-3">
                        <div class="form-check form-switch form-switch-right form-switch-md">
                            <label for="status" class="form-label">Status</label>
                            <input class="form-check-input code-switcher" type="checkbox" id="tables-small-showcode"
                                name="status" value="1">
                        </div>
                        <x-form.validation.error name="status" />
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary ">Save</button>
                </div>
            </form>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
