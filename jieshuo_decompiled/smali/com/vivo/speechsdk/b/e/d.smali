.class public Lcom/vivo/speechsdk/b/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/e/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/b/e/c$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "RealInterceptorChain"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/Bundle;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vivo/speechsdk/b/e/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:Lcom/vivo/speechsdk/b/e/b;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/vivo/speechsdk/b/e/d;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/os/Bundle;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vivo/speechsdk/b/e/c<",
            "TT;>;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/vivo/speechsdk/b/e/d;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/os/Bundle;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/os/Handler;Landroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vivo/speechsdk/b/e/c<",
            "TT;>;>;",
            "Landroid/os/Handler;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/b/e/d;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/vivo/speechsdk/b/e/d;->b:Landroid/os/Bundle;

    iput p4, p0, Lcom/vivo/speechsdk/b/e/d;->d:I

    iput-object p1, p0, Lcom/vivo/speechsdk/b/e/d;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vivo/speechsdk/b/e/c<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/b/e/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/vivo/speechsdk/b/e/d;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method public a(ILjava/lang/Object;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;II)V"
        }
    .end annotation

    iget v0, p0, Lcom/vivo/speechsdk/b/e/d;->d:I

    iget-object v1, p0, Lcom/vivo/speechsdk/b/e/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const-string p2, "RealInterceptorChain"

    const-string p3, "fireProcess last interceptor"

    invoke-static {p2, p3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/b/e/d;->e:Lcom/vivo/speechsdk/b/e/b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/vivo/speechsdk/b/e/b;->b(I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/vivo/speechsdk/b/e/d;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/b/e/d;->e:Lcom/vivo/speechsdk/b/e/b;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/b/e/b;->a(I)V

    :cond_2
    new-instance v2, Lcom/vivo/speechsdk/b/e/d;

    iget-object v0, p0, Lcom/vivo/speechsdk/b/e/d;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/vivo/speechsdk/b/e/d;->a:Landroid/os/Handler;

    iget v3, p0, Lcom/vivo/speechsdk/b/e/d;->d:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/vivo/speechsdk/b/e/d;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/e/d;->c:Ljava/util/List;

    iget v1, p0, Lcom/vivo/speechsdk/b/e/d;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vivo/speechsdk/b/e/c;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/vivo/speechsdk/b/e/c;->a(Lcom/vivo/speechsdk/b/e/c$a;ILjava/lang/Object;II)V

    return-void
.end method

.method public a(Lcom/vivo/speechsdk/b/e/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vivo/speechsdk/b/e/a<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/b/e/d;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/b/e/a;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/e/d;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/b/e/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/e/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/vivo/speechsdk/b/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/e/d;->e:Lcom/vivo/speechsdk/b/e/b;

    return-void
.end method
