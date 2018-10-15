def _r(ctx):
    f = ctx.actions.declare_file("%s_file" % ctx.label.name)
    d = ctx.actions.declare_directory("%s_dir" % ctx.label.name)
    ctx.actions.run_shell(
        outputs = [d, f],
        command = "touch %s; ls %s || echo 'no directory'" % (f.path, d.path),
    )
    return [DefaultInfo(files = depset([d, f]))]

r = rule(implementation = _r)
