.class public Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/b;


# static fields
.field private static volatile d:Le1/b;


# instance fields
.field private a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Le1/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Le1/b;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Le1/b;->c:Ljava/util/Hashtable;

    sget-object v1, Lb1/g;->e0:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le1/b;->c:Ljava/util/Hashtable;

    sget-object v1, Lb1/g;->g0:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.6.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static D()Le1/b;
    .locals 2

    sget-object v0, Le1/b;->d:Le1/b;

    if-nez v0, :cond_1

    const-class v0, Le1/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le1/b;->d:Le1/b;

    if-nez v1, :cond_0

    new-instance v1, Le1/b;

    invoke-direct {v1}, Le1/b;-><init>()V

    sput-object v1, Le1/b;->d:Le1/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Le1/b;->d:Le1/b;

    return-object v0
.end method


# virtual methods
.method public C(Ljava/lang/ref/WeakReference;)Le1/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)",
            "Le1/a;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Le1/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le1/a;

    if-nez v0, :cond_1

    new-instance v0, Le1/a;

    invoke-direct {v0, p1}, Le1/a;-><init>(Ljava/lang/ref/WeakReference;)V

    iget-object v1, p0, Le1/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public E(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Le1/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public F(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le1/b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public G()Le1/a;
    .locals 1

    iget-object v0, p0, Le1/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0}, Le1/b;->C(Ljava/lang/ref/WeakReference;)Le1/a;

    move-result-object v0

    return-object v0
.end method

.method public H()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Le1/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Le1/b;->G()Le1/a;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Le1/a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    sget-object v0, Lb1/g;->g0:Lb1/g;

    invoke-virtual {v0}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le1/b;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ll0/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Le1/b;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Le1/b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method
