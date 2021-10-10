import
  ./libgit_config

import
  ./apply_attr_blame_blob_branch_buffer_cert_checkout_cherrypick_clone_commit_config_credential_credential_helpers_describe_diff_errors_filter_index_indexer_merge_message_net_notes_odb_odb_backend_oid_oidarray_pack_patch_pathspec_proxy_rebase_r

export apply_attr_blame_blob_branch_buffer_cert_checkout_cherrypick_clone_commit_config_credential_credential_helpers_describe_diff_errors_filter_index_indexer_merge_message_net_notes_odb_odb_backend_oid_oidarray_pack_patch_pathspec_proxy_rebase_r

proc git_checkout_options_init*(
    opts:    ptr git_checkout_options,
    version: cuint
  ): cint {.dynlib: libgitDl, importc.}


proc git_checkout_head*(
    repo: ptr git_repository,
    opts: ptr git_checkout_options
  ): cint {.dynlib: libgitDl, importc.}


proc git_checkout_index*(
    repo:  ptr git_repository,
    index: ptr git_index,
    opts:  ptr git_checkout_options
  ): cint {.dynlib: libgitDl, importc.}


proc git_checkout_tree*(
    repo:    ptr git_repository,
    treeish: ptr git_object,
    opts:    ptr git_checkout_options
  ): cint {.dynlib: libgitDl, importc.}


