
import
  . /
      apply_attr_blame_blob_buffer_cert_checkout_cherrypick_clone_commit_config_credential_credential_helpers_describe_diff_errors_filter_index_indexer_merge_message_net_notes_odb_odb_backend_oid_oidarray_pack_proxy_rebase_refs_remote_repository_r

export
  apply_attr_blame_blob_buffer_cert_checkout_cherrypick_clone_commit_config_credential_credential_helpers_describe_diff_errors_filter_index_indexer_merge_message_net_notes_odb_odb_backend_oid_oidarray_pack_proxy_rebase_refs_remote_repository_r

proc git_clone_options_init*(opts: ptr git_clone_options; version: cuint): cint {.
    dynlib: libgitDl, importc.}
proc git_clone*(out: ptr ptr git_repository; url: cstring; local_path: cstring;
                options: ptr git_clone_options): cint {.dynlib: libgitDl,
    importc.}