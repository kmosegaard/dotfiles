#!/usr/bin/env rdmd

import std.file, std.getopt, std.path, std.stdio;

struct Context
{
    bool dryRun;
    string homeDir;
    string filesDir;
}

int main(string[] args)
{
    Context context;
    context.dryRun = false;
    context.homeDir = expandTilde("~");
    context.filesDir = buildPath(getcwd(), "home");

    auto res = getopt(args,
        "d|dry-run", "Do dry run of install procedure", &context.dryRun);

    if (res.helpWanted) {
        defaultGetoptPrinter("./install.d [options]", res.options);
        return 0;
    }

    log("dryRun: %s", context.dryRun);
    log("homeDir: %s", context.homeDir);
    log("filesDir: %s", context.filesDir);

    foreach (string path; dirEntries(context.filesDir, SpanMode.breadth))
    {
        if (isDir(path)) {
            continue;
        }
        createLink(context, path);
    }

    return 0;
}

void createLink(ref Context context, string source)
{
    auto relativeSource = relativePath(source, context.filesDir);
    auto target = buildPath(context.homeDir, relativeSource);
    auto directory = dirName(target);
    log("creating dir: %s", directory);
    if (context.dryRun == false) {
        mkdirRecurse(directory);
    }

    log("symlink: %s -> %s", source, target);
    if (exists(target)) {
        if (isSymlink(target)) {
            if (context.dryRun == false) {
                remove(target);
            }
        }
        else {
            log("target already exists and is not a symlink.");
            return;
        }
    }

    if (context.dryRun == false) {
        symlink(source, target);
    }
}

void log(T...)(string spec, T args)
{
    writefln(spec, args);
}

