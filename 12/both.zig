const std = @import("std");
const SMALL_EXAMPLE = [_][]const u8{
    "AAAA", //
    "BBCD",
    "BBCC",
    "EEEC",
};
const INPUT = SMALL_EXAMPLE;

const Point = struct { x: i32, y: i32 };
const DIRECTIONS: [4]Point = .{ //
    Point{ .x = -1, .y = 0 },
    Point{ .x = 1, .y = 0 },
    Point{ .x = 0, .y = -1 },
    Point{ .x = 0, .y = 1 },
};

var regions = std.AutoHashMap(Point, u32).init(std.heap.page_allocator);

fn add(a: Point, b: Point) Point {
    return .{ .x = a.x + b.x, .y = a.y + b.y };
}

fn same_plant(a: Point, b: Point) bool {
    return a.x >= 0 and a.y >= 0 and
        b.x >= 0 and b.y >= 0 and
        a.y < INPUT.len and a.x < INPUT[0].len and
        b.y < INPUT.len and b.x < INPUT[0].len and
        INPUT[@abs(a.y)][@abs(a.x)] == INPUT[@abs(b.y)][@abs(b.x)];
}

fn explore(pos: Point, id: u32) !void {
    if (!regions.contains(pos)) {
        try regions.put(pos, id);
        for (DIRECTIONS) |dir| {
            if (same_plant(add(pos, dir), pos)) {
                try explore(add(pos, dir), id);
            }
        }
    }
}

pub fn main() !void {
    for (0..INPUT.len) |y| {
        for (0..INPUT[0].len) |x| {
            try explore(Point{ .x = @intCast(x), .y = @intCast(y) }, regions.count());
        }
    }
    var mapping = std.AutoHashMap(u32, std.ArrayList(Point)).init(std.heap.page_allocator);
    var it = regions.keyIterator();
    while (it.next()) |key| {
        const id = regions.get(key.*) orelse 10000;
        // std.debug.print("[{d}, {d}] => {?}\n", .{ key.x, key.y, id });
        if (!mapping.contains(id)) {
            std.debug.print("Starting {?}\n", .{id});
            try mapping.put(id, std.ArrayList(Point).init(std.heap.page_allocator));
        }
        const lst = mapping.get(id);
        std.debug.print("lst: {?}\n", .{lst});
        if (lst) |v| {
            std.debug.print("Type of v: {?}\n", .{@TypeOf(v)});
            try v.append(key.*);
            std.debug.print("Appending [{d}, {d}] to {d}\n", .{ key.x, key.y, id });
        }
    }
    var mit = mapping.valueIterator();
    while (mit.next()) |points| {
        std.debug.print("? => {?}", .{points});
        for (points.items) |item| {
            std.debug.print("[{?}]", .{item});
        }
        std.debug.print("\n", .{});
        // if (mapping.contains(points)) {
        //     const lst = mapping.get(points);
        //     if (lst) |v| {
        //         try @constCast(&v).append(key.*);
        //     }
        // }
    }
}
