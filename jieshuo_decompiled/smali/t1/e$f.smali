.class Lt1/e$f;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lt1/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lt1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La2/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lt1/e$f;->a:Lt1/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public d(La2/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/c;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lt1/e$f;->a:Lt1/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public e(Lt1/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/t<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lt1/e$f;->a:Lt1/t;

    if-nez v0, :cond_0

    iput-object p1, p0, Lt1/e$f;->a:Lt1/t;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
