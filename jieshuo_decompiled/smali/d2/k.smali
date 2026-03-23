.class public Ld2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/k$c;,
        Ld2/k$b;
    }
.end annotation


# static fields
.field private static d:Ld2/h;

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ld2/k$b;

.field private b:Ld2/f;

.field private c:Ld2/k$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object v0

    sput-object v0, Ld2/k;->d:Ld2/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld2/k;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ld2/k$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld2/k;->c:Ld2/k$c;

    iput-object p1, p0, Ld2/k;->a:Ld2/k$b;

    return-void
.end method

.method static bridge synthetic a(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Ld2/k;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized d()Ld2/h;
    .locals 2

    const-class v0, Ld2/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld2/k;->d:Ld2/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, Ld2/k;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized g(Ld2/h;)V
    .locals 1

    const-class v0, Ld2/k;

    monitor-enter v0

    :try_start_0
    sput-object p0, Ld2/k;->d:Ld2/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Ld2/k;->c:Ld2/k$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld2/k$c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld2/k;->c:Ld2/k$c;

    :cond_0
    return-void
.end method

.method public declared-synchronized c()Ld2/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld2/k;->b:Ld2/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Ld2/f;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ld2/k;->b:Ld2/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(Ld2/f;)V
    .locals 1

    invoke-static {}, Ld2/k;->d()Ld2/h;

    move-result-object v0

    invoke-virtual {v0}, Ld2/h;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ld2/f;

    invoke-direct {v0, p1}, Ld2/f;-><init>(Ld2/f;)V

    invoke-virtual {p0, v0}, Ld2/k;->f(Ld2/f;)V

    iget-object p1, p0, Ld2/k;->c:Ld2/k$c;

    if-nez p1, :cond_1

    new-instance p1, Ld2/k$c;

    invoke-direct {p1, p0, p0}, Ld2/k$c;-><init>(Ld2/k;Ld2/k;)V

    iput-object p1, p0, Ld2/k;->c:Ld2/k$c;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ld2/k$c;->b()V

    :goto_0
    return-void
.end method

.method i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld2/n;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ld2/k;->a:Ld2/k$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ld2/k$b;->a(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ld2/k;->c:Ld2/k$c;

    return-void
.end method
