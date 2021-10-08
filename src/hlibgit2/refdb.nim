
proc git_refdb_new*(out: ptr ptr git_refdb; repo: ptr git_repository): cint {.
    dynlib: libgitDl, importc: "git_refdb_new".}
proc git_refdb_open*(out: ptr ptr git_refdb; repo: ptr git_repository): cint {.
    dynlib: libgitDl, importc: "git_refdb_open".}
proc git_refdb_compress*(refdb: ptr git_refdb): cint {.dynlib: libgitDl,
    importc: "git_refdb_compress".}
proc git_refdb_free*(refdb: ptr git_refdb): void {.dynlib: libgitDl,
    importc: "git_refdb_free".}