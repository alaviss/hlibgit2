{.push warning[UnusedImport]:off.}

import
  ./buffer,
  ./libgit2_config,
  ./types

type
  git_branch_iterator* {.bycopy, incompleteStruct, importc.} = object
    
   

proc git_branch_create*(
    arg_out:     ptr ptr git_reference,
    repo:        ptr git_repository,
    branch_name: cstring,
    target:      ptr git_commit,
    force:       cint
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_create_from_annotated*(
    ref_out:     ptr ptr git_reference,
    repository:  ptr git_repository,
    branch_name: cstring,
    commit:      ptr git_annotated_commit,
    force:       cint
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_delete*(
    branch: ptr git_reference
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_iterator_new*(
    arg_out:    ptr ptr git_branch_iterator,
    repo:       ptr git_repository,
    list_flags: git_branch_t
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_next*(
    arg_out:  ptr ptr git_reference,
    out_type: ptr git_branch_t,
    iter:     ptr git_branch_iterator
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_iterator_free*(
    iter: ptr git_branch_iterator
  ): void {.dynlib: libgit2Dl, importc.}


proc git_branch_move*(
    arg_out:         ptr ptr git_reference,
    branch:          ptr git_reference,
    new_branch_name: cstring,
    force:           cint
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_lookup*(
    arg_out:     ptr ptr git_reference,
    repo:        ptr git_repository,
    branch_name: cstring,
    branch_type: git_branch_t
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_name*(
    arg_out: ptr cstring,
    arg_ref: ptr git_reference
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_upstream*(
    arg_out: ptr ptr git_reference,
    branch:  ptr git_reference
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_set_upstream*(
    branch:      ptr git_reference,
    branch_name: cstring
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_upstream_name*(
    arg_out: ptr git_buf,
    repo:    ptr git_repository,
    refname: cstring
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_is_head*(
    branch: ptr git_reference
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_is_checked_out*(
    branch: ptr git_reference
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_remote_name*(
    arg_out: ptr git_buf,
    repo:    ptr git_repository,
    refname: cstring
  ): cint {.dynlib: libgit2Dl, importc.}


proc git_branch_upstream_remote*(
    buf:     ptr git_buf,
    repo:    ptr git_repository,
    refname: cstring
  ): cint {.dynlib: libgit2Dl, importc.}


