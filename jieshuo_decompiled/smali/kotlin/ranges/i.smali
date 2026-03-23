.class public Lkotlin/ranges/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lu2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lu2/a;"
    }
.end annotation


# static fields
.field public static final d:Lkotlin/ranges/i$a;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/ranges/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/i$a;-><init>(Lt2/d;)V

    sput-object v0, Lkotlin/ranges/i;->d:Lkotlin/ranges/i$a;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p5, v0

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lkotlin/ranges/i;->a:J

    invoke-static/range {p1 .. p6}, Lq2/c;->d(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lkotlin/ranges/i;->b:J

    iput-wide p5, p0, Lkotlin/ranges/i;->c:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lkotlin/ranges/i;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lkotlin/ranges/i;->b:J

    return-wide v0
.end method

.method public d()Lo2/a0;
    .locals 8

    new-instance v7, Lkotlin/ranges/j;

    iget-wide v1, p0, Lkotlin/ranges/i;->a:J

    iget-wide v3, p0, Lkotlin/ranges/i;->b:J

    iget-wide v5, p0, Lkotlin/ranges/i;->c:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/ranges/j;-><init>(JJJ)V

    return-object v7
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lkotlin/ranges/i;->d()Lo2/a0;

    move-result-object v0

    return-object v0
.end method
