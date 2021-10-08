
import
  . /
      apply_attr_blame_blob_buffer_cert_checkout_cherrypick_clone_commit_config_credential_credential_helpers_describe_diff_errors_filter_index_indexer_merge_message_net_notes_odb_odb_backend_oid_oidarray_pack_proxy_rebase_refs_remote_repository_r

export
  apply_attr_blame_blob_buffer_cert_checkout_cherrypick_clone_commit_config_credential_credential_helpers_describe_diff_errors_filter_index_indexer_merge_message_net_notes_odb_odb_backend_oid_oidarray_pack_proxy_rebase_refs_remote_repository_r

proc git_revwalk_new*(out: ptr ptr git_revwalk; repo: ptr git_repository): cint {.
    dynlib: libgitDl, importc: "git_revwalk_new".}
proc git_revwalk_reset*(walker: ptr git_revwalk): cint {.dynlib: libgitDl,
    importc: "git_revwalk_reset".}
proc git_revwalk_push*(walk: ptr git_revwalk; id: ptr git_oid): cint {.
    dynlib: libgitDl, importc: "git_revwalk_push".}
proc git_revwalk_push_glob*(walk: ptr git_revwalk; glob: cstring): cint {.
    dynlib: libgitDl, importc: "git_revwalk_push_glob".}
proc git_revwalk_push_head*(walk: ptr git_revwalk): cint {.dynlib: libgitDl,
    importc: "git_revwalk_push_head".}
proc git_revwalk_hide*(walk: ptr git_revwalk; commit_id: ptr git_oid): cint {.
    dynlib: libgitDl, importc: "git_revwalk_hide".}
proc git_revwalk_hide_glob*(walk: ptr git_revwalk; glob: cstring): cint {.
    dynlib: libgitDl, importc: "git_revwalk_hide_glob".}
proc git_revwalk_hide_head*(walk: ptr git_revwalk): cint {.dynlib: libgitDl,
    importc: "git_revwalk_hide_head".}
proc git_revwalk_push_ref*(walk: ptr git_revwalk; refname: cstring): cint {.
    dynlib: libgitDl, importc: "git_revwalk_push_ref".}
proc git_revwalk_hide_ref*(walk: ptr git_revwalk; refname: cstring): cint {.
    dynlib: libgitDl, importc: "git_revwalk_hide_ref".}
proc git_revwalk_next*(out: ptr git_oid; walk: ptr git_revwalk): cint {.
    dynlib: libgitDl, importc: "git_revwalk_next".}
proc git_revwalk_sorting*(walk: ptr git_revwalk; sort_mode: cuint): cint {.
    dynlib: libgitDl, importc: "git_revwalk_sorting".}
proc git_revwalk_push_range*(walk: ptr git_revwalk; range: cstring): cint {.
    dynlib: libgitDl, importc: "git_revwalk_push_range".}
proc git_revwalk_simplify_first_parent*(walk: ptr git_revwalk): cint {.
    dynlib: libgitDl, importc: "git_revwalk_simplify_first_parent".}
proc git_revwalk_free*(walk: ptr git_revwalk): void {.dynlib: libgitDl,
    importc: "git_revwalk_free".}
proc git_revwalk_repository*(walk: ptr git_revwalk): ptr git_repository {.
    dynlib: libgitDl, importc: "git_revwalk_repository".}
proc git_revwalk_add_hide_cb*(walk: ptr git_revwalk;
                              hide_cb: git_revwalk_hide_cb; payload: pointer): cint {.
    dynlib: libgitDl, importc: "git_revwalk_add_hide_cb".}