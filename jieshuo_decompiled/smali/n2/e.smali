.class Ln2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ls2/a;)Ln2/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls2/a<",
            "+TT;>;)",
            "Ln2/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln2/i;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Ln2/i;-><init>(Ls2/a;Ljava/lang/Object;ILt2/d;)V

    return-object v0
.end method
