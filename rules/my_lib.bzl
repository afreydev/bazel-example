def _important_project_impl(ctx):
    runfiles = ctx.runfiles()

    args = [ctx.attr._python_scr.files_to_run.executable.short_path]

    args.extend(["--message " + "\"" + ctx.attr.message + "\""])

    full_cmd_args = " ".join(args)

    runfiles = runfiles.merge(ctx.attr._python_scr.default_runfiles)

    ctx.actions.write(
        output = ctx.outputs.executable,
        is_executable = True,
        content = "./" + full_cmd_args,
    )

    return [
        DefaultInfo(
            executable = ctx.outputs.executable,
            runfiles = runfiles,
        ),
    ]

important_project = rule(
    implementation = _important_project_impl,
    attrs = {
        "_python_scr": attr.label(
            default = Label("//important_project:important"),
            executable = True,
            cfg = "exec",
        ),
        "message": attr.string(
            mandatory = True,
            doc = "Message to print",
        ),
    },
    executable = True,
    doc = "Run important project by shell.",
)
