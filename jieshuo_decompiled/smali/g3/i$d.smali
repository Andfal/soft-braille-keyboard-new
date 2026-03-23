.class public final Lg3/i$d;
.super Lm3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic m:Lg3/i;


# direct methods
.method public constructor <init>(Lg3/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg3/i$d;->m:Lg3/i;

    invoke-direct {p0}, Lm3/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected t(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected x()V
    .locals 2

    iget-object v0, p0, Lg3/i$d;->m:Lg3/i;

    sget-object v1, Lg3/b;->j:Lg3/b;

    invoke-virtual {v0, v1}, Lg3/i;->f(Lg3/b;)V

    iget-object v0, p0, Lg3/i$d;->m:Lg3/i;

    invoke-virtual {v0}, Lg3/i;->g()Lg3/f;

    move-result-object v0

    invoke-virtual {v0}, Lg3/f;->k0()V

    return-void
.end method

.method public final y()V
    .locals 1

    invoke-virtual {p0}, Lm3/d;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg3/i$d;->t(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
