.class public interface abstract Lde/lighti/clipper/Clipper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/lighti/clipper/Clipper$ZFillCallback;,
        Lde/lighti/clipper/Clipper$PolyType;,
        Lde/lighti/clipper/Clipper$PolyFillType;,
        Lde/lighti/clipper/Clipper$JoinType;,
        Lde/lighti/clipper/Clipper$EndType;,
        Lde/lighti/clipper/Clipper$Direction;,
        Lde/lighti/clipper/Clipper$ClipType;
    }
.end annotation


# static fields
.field public static final PRESERVE_COLINEAR:I = 0x4

.field public static final REVERSE_SOLUTION:I = 0x1

.field public static final STRICTLY_SIMPLE:I = 0x2


# virtual methods
.method public abstract addPath(Lde/lighti/clipper/Path;Lde/lighti/clipper/Clipper$PolyType;Z)Z
.end method

.method public abstract addPaths(Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyType;Z)Z
.end method

.method public abstract clear()V
.end method

.method public abstract execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;)Z
.end method

.method public abstract execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z
.end method

.method public abstract execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/PolyTree;)Z
.end method

.method public abstract execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/PolyTree;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z
.end method
