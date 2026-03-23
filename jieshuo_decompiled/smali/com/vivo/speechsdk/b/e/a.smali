.class public abstract Lcom/vivo/speechsdk/b/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/e/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/b/e/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "AbsInterceptor"


# instance fields
.field private a:Lcom/vivo/speechsdk/b/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/speechsdk/b/e/c$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field protected c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vivo/speechsdk/b/e/a;->a(III)V

    return-void
.end method

.method protected a(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method protected a(IIILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/e/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/vivo/speechsdk/b/e/a;->b(ILjava/lang/Object;II)V

    return-void
.end method

.method public abstract a(ILjava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;II)V"
        }
    .end annotation
.end method

.method a(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    return-void
.end method

.method a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/e/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public a(Lcom/vivo/speechsdk/b/e/c$a;ILjava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vivo/speechsdk/b/e/c$a<",
            "TT;>;ITT;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vivo/speechsdk/b/e/a;->a:Lcom/vivo/speechsdk/b/e/c$a;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method protected b(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    return-void
.end method

.method public b(ILjava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/b/e/a;->a:Lcom/vivo/speechsdk/b/e/c$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/c$a;->a(ILjava/lang/Object;II)V

    return-void
.end method
