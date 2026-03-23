.class public final Ly2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ld3/g;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x5

    invoke-direct {p0, v3, v0, v1, v2}, Ly2/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ld3/g;

    sget-object v2, Lc3/e;->h:Lc3/e;

    move-object v1, v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ld3/g;-><init>(Lc3/e;IJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0}, Ly2/j;-><init>(Ld3/g;)V

    return-void
.end method

.method public constructor <init>(Ld3/g;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/j;->a:Ld3/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ly2/j;->a:Ld3/g;

    invoke-virtual {v0}, Ld3/g;->d()V

    return-void
.end method

.method public final b()Ld3/g;
    .locals 1

    iget-object v0, p0, Ly2/j;->a:Ld3/g;

    return-object v0
.end method
