.class final Lw3/q0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field a:Lw3/q0$a;

.field b:Lw3/q0$a;

.field c:Ljava/lang/Object;

.field d:D


# direct methods
.method constructor <init>(Lw3/e1;Lw3/q0$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lw3/e1;->J1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/q0$a;

    iput-object p1, p0, Lw3/q0$b;->a:Lw3/q0$a;

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p1, Lw3/q0$a;->b:I

    iget v1, p2, Lw3/q0$a;->b:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    if-gez v0, :cond_1

    neg-int v0, v0

    goto :goto_0

    :cond_1
    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :cond_2
    :goto_0
    iget-object p2, p2, Lw3/q0$a;->a:Lw3/q0$a;

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    iget v0, p2, Lw3/q0$a;->b:I

    iget v1, p1, Lw3/q0$a;->b:I

    if-eq v0, v1, :cond_3

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_3
    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :cond_4
    :goto_1
    if-eq p1, p2, :cond_5

    if-eqz p1, :cond_5

    iget-object p1, p1, Lw3/q0$a;->a:Lw3/q0$a;

    iget-object p2, p2, Lw3/q0$a;->a:Lw3/q0$a;

    goto :goto_1

    :cond_5
    iput-object p1, p0, Lw3/q0$b;->b:Lw3/q0$a;

    if-eqz p1, :cond_7

    iget-boolean p1, p1, Lw3/q0$a;->c:Z

    if-nez p1, :cond_7

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lw3/q0$b;->b:Lw3/q0$a;

    :cond_7
    :goto_3
    return-void
.end method
