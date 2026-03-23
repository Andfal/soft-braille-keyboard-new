.class public Lw3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private volatile a:Z

.field private transient b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lw3/t0;",
            ">;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lw3/z2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ClassCache"

    sput-object v0, Lw3/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/g;->a:Z

    return-void
.end method

.method public static c(Lw3/z2;)Lw3/g;
    .locals 1

    sget-object v0, Lw3/g;->e:Ljava/lang/Object;

    invoke-static {p0, v0}, Lw3/a3;->H0(Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/g;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t find top level scope for ClassCache.get"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lw3/a3;)Z
    .locals 1

    invoke-virtual {p1}, Lw3/a3;->i()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lw3/g;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lw3/a3;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iput-object p1, p0, Lw3/g;->d:Lw3/z2;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method declared-synchronized b(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lw3/g;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw3/g;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lw3/g;->c:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lw3/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d()Lw3/z2;
    .locals 1

    iget-object v0, p0, Lw3/g;->d:Lw3/z2;

    return-object v0
.end method

.method e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lw3/t0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw3/g;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lw3/g;->b:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lw3/g;->b:Ljava/util/Map;

    return-object v0
.end method

.method f(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lw3/g;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lw3/g;->a:Z

    return v0
.end method
