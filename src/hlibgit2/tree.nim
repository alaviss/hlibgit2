
import
  . /
      apply_attr_blame_blob_buffer_cert_checkout_cherrypick_clone_commit_config_credential_credential_helpers_describe_diff_errors_filter_index_indexer_merge_message_net_notes_odb_odb_backend_oid_oidarray_pack_proxy_rebase_refs_remote_repository_r

export
  apply_attr_blame_blob_buffer_cert_checkout_cherrypick_clone_commit_config_credential_credential_helpers_describe_diff_errors_filter_index_indexer_merge_message_net_notes_odb_odb_backend_oid_oidarray_pack_proxy_rebase_refs_remote_repository_r

proc git_tree_lookup*(out: ptr ptr git_tree; repo: ptr git_repository;
                      id: ptr git_oid): cint {.dynlib: libgitDl,
    importc: "git_tree_lookup".}
proc git_tree_lookup_prefix*(out: ptr ptr git_tree; repo: ptr git_repository;
                             id: ptr git_oid; len: size_t): cint {.
    dynlib: libgitDl, importc: "git_tree_lookup_prefix".}
proc git_tree_free*(tree: ptr git_tree): void {.dynlib: libgitDl,
    importc: "git_tree_free".}
proc git_tree_id*(tree: ptr git_tree): ptr git_oid {.dynlib: libgitDl,
    importc: "git_tree_id".}
proc git_tree_owner*(tree: ptr git_tree): ptr git_repository {.dynlib: libgitDl,
    importc: "git_tree_owner".}
proc git_tree_entrycount*(tree: ptr git_tree): size_t {.dynlib: libgitDl,
    importc: "git_tree_entrycount".}
proc git_tree_entry_byname*(tree: ptr git_tree; filename: cstring): ptr git_tree_entry {.
    dynlib: libgitDl, importc: "git_tree_entry_byname".}
proc git_tree_entry_byindex*(tree: ptr git_tree; idx: size_t): ptr git_tree_entry {.
    dynlib: libgitDl, importc: "git_tree_entry_byindex".}
proc git_tree_entry_byid*(tree: ptr git_tree; id: ptr git_oid): ptr git_tree_entry {.
    dynlib: libgitDl, importc: "git_tree_entry_byid".}
proc git_tree_entry_bypath*(out: ptr ptr git_tree_entry; root: ptr git_tree;
                            path: cstring): cint {.dynlib: libgitDl,
    importc: "git_tree_entry_bypath".}
proc git_tree_entry_dup*(dest: ptr ptr git_tree_entry;
                         source: ptr git_tree_entry): cint {.dynlib: libgitDl,
    importc: "git_tree_entry_dup".}
proc git_tree_entry_free*(entry: ptr git_tree_entry): void {.dynlib: libgitDl,
    importc: "git_tree_entry_free".}
proc git_tree_entry_name*(entry: ptr git_tree_entry): cstring {.
    dynlib: libgitDl, importc: "git_tree_entry_name".}
proc git_tree_entry_id*(entry: ptr git_tree_entry): ptr git_oid {.
    dynlib: libgitDl, importc: "git_tree_entry_id".}
proc git_tree_entry_type*(entry: ptr git_tree_entry): git_object_t {.
    dynlib: libgitDl, importc: "git_tree_entry_type".}
proc git_tree_entry_filemode*(entry: ptr git_tree_entry): git_filemode_t {.
    dynlib: libgitDl, importc: "git_tree_entry_filemode".}
proc git_tree_entry_filemode_raw*(entry: ptr git_tree_entry): git_filemode_t {.
    dynlib: libgitDl, importc: "git_tree_entry_filemode_raw".}
proc git_tree_entry_cmp*(e1: ptr git_tree_entry; e2: ptr git_tree_entry): cint {.
    dynlib: libgitDl, importc: "git_tree_entry_cmp".}
proc git_tree_entry_to_object*(object_out: ptr ptr git_object;
                               repo: ptr git_repository;
                               entry: ptr git_tree_entry): cint {.
    dynlib: libgitDl, importc: "git_tree_entry_to_object".}
proc git_treebuilder_new*(out: ptr ptr git_treebuilder;
                          repo: ptr git_repository; source: ptr git_tree): cint {.
    dynlib: libgitDl, importc: "git_treebuilder_new".}
proc git_treebuilder_clear*(bld: ptr git_treebuilder): cint {.dynlib: libgitDl,
    importc: "git_treebuilder_clear".}
proc git_treebuilder_entrycount*(bld: ptr git_treebuilder): size_t {.
    dynlib: libgitDl, importc: "git_treebuilder_entrycount".}
proc git_treebuilder_free*(bld: ptr git_treebuilder): void {.dynlib: libgitDl,
    importc: "git_treebuilder_free".}
proc git_treebuilder_get*(bld: ptr git_treebuilder; filename: cstring): ptr git_tree_entry {.
    dynlib: libgitDl, importc: "git_treebuilder_get".}
proc git_treebuilder_insert*(out: ptr ptr git_tree_entry;
                             bld: ptr git_treebuilder; filename: cstring;
                             id: ptr git_oid; filemode: git_filemode_t): cint {.
    dynlib: libgitDl, importc: "git_treebuilder_insert".}
proc git_treebuilder_remove*(bld: ptr git_treebuilder; filename: cstring): cint {.
    dynlib: libgitDl, importc: "git_treebuilder_remove".}
proc git_treebuilder_filter*(bld: ptr git_treebuilder;
                             filter: git_treebuilder_filter_cb; payload: pointer): cint {.
    dynlib: libgitDl, importc: "git_treebuilder_filter".}
proc git_treebuilder_write*(id: ptr git_oid; bld: ptr git_treebuilder): cint {.
    dynlib: libgitDl, importc: "git_treebuilder_write".}
proc git_treebuilder_write_with_buffer*(oid: ptr git_oid;
                                        bld: ptr git_treebuilder;
                                        tree: ptr git_buf): cint {.
    dynlib: libgitDl, importc: "git_treebuilder_write_with_buffer".}
proc git_tree_walk*(tree: ptr git_tree; mode: git_treewalk_mode;
                    callback: git_treewalk_cb; payload: pointer): cint {.
    dynlib: libgitDl, importc: "git_tree_walk".}
proc git_tree_dup*(out: ptr ptr git_tree; source: ptr git_tree): cint {.
    dynlib: libgitDl, importc: "git_tree_dup".}
proc git_tree_create_updated*(out: ptr git_oid; repo: ptr git_repository;
                              baseline: ptr git_tree; nupdates: size_t;
                              updates: ptr git_tree_update): cint {.
    dynlib: libgitDl, importc: "git_tree_create_updated".}