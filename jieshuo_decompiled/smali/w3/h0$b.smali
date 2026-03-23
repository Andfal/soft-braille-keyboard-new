.class final Lw3/h0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lw3/h0$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lw3/h0$a;


# direct methods
.method constructor <init>(Lw3/h0$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lw3/h0;->a()Lw3/h0$a;

    move-result-object v0

    iput-object p1, v0, Lw3/h0$a;->d:Lw3/h0$a;

    iput-object v0, p0, Lw3/h0$b;->a:Lw3/h0$a;

    return-void
.end method

.method private b()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lw3/h0$b;->a:Lw3/h0$a;

    iget-object v0, v0, Lw3/h0$a;->d:Lw3/h0$a;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lw3/h0$a;->c:Z

    if-eqz v1, :cond_0

    iput-object v0, p0, Lw3/h0$b;->a:Lw3/h0$a;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lw3/h0$a;
    .locals 1

    invoke-direct {p0}, Lw3/h0$b;->b()V

    iget-object v0, p0, Lw3/h0$b;->a:Lw3/h0$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lw3/h0$a;->d:Lw3/h0$a;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lw3/h0$b;->a:Lw3/h0$a;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-direct {p0}, Lw3/h0$b;->b()V

    iget-object v0, p0, Lw3/h0$b;->a:Lw3/h0$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lw3/h0$a;->d:Lw3/h0$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw3/h0$b;->a()Lw3/h0$a;

    move-result-object v0

    return-object v0
.end method
