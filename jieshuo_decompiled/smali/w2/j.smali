.class public final Lw2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ls2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw2/c;Ls2/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/c<",
            "+TT;>;",
            "Ls2/b<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/j;->a:Lw2/c;

    iput-object p2, p0, Lw2/j;->b:Ls2/b;

    return-void
.end method

.method public static final synthetic b(Lw2/j;)Lw2/c;
    .locals 0

    iget-object p0, p0, Lw2/j;->a:Lw2/c;

    return-object p0
.end method

.method public static final synthetic c(Lw2/j;)Ls2/b;
    .locals 0

    iget-object p0, p0, Lw2/j;->b:Ls2/b;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lw2/j$a;

    invoke-direct {v0, p0}, Lw2/j$a;-><init>(Lw2/j;)V

    return-object v0
.end method
