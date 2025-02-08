const std = @import("std");

pub fn build(b: *std.Build) void {
    const exe = b.addExecutable(.{
        .name = "both",
        .root_source_file = b.path("both.zig"),
        .target = b.host,
    });

    b.installArtifact(exe);
}
