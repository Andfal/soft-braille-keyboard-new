.class public abstract Lt1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lt1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lt1/t$a;

    invoke-direct {v0, p0}, Lt1/t$a;-><init>(Lt1/t;)V

    return-object v0
.end method

.method public abstract b(La2/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public final c(Ljava/lang/Object;)Lt1/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lt1/j;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lw1/f;

    invoke-direct {v0}, Lw1/f;-><init>()V

    invoke-virtual {p0, v0, p1}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lw1/f;->S()Lt1/j;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lt1/k;

    invoke-direct {v0, p1}, Lt1/k;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract d(La2/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/c;",
            "TT;)V"
        }
    .end annotation
.end method
