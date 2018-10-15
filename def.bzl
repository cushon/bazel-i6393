def _r(ctx):
    d = ctx.actions.declare_directory("%s_dir" % ctx.label.name)
    ctx.actions.run_shell(
        outputs = [d],
        command = "cd %s && pwd" % d.path,
    )
    return [DefaultInfo(files = depset([d]))]

r = rule(implementation = _r)
