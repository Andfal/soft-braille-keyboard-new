.class public Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Ld1/c;


# instance fields
.field private a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lb1/n;",
            "Ld1/b;",
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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ld1/c;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public static b()Ld1/c;
    .locals 2

    sget-object v0, Ld1/c;->b:Ld1/c;

    if-nez v0, :cond_1

    const-class v0, Ld1/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld1/c;->b:Ld1/c;

    if-nez v1, :cond_0

    new-instance v1, Ld1/c;

    invoke-direct {v1}, Ld1/c;-><init>()V

    sput-object v1, Ld1/c;->b:Ld1/c;

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
    sget-object v0, Ld1/c;->b:Ld1/c;

    return-object v0
.end method


# virtual methods
.method public a(Lb1/n;)Ld1/b;
    .locals 2

    iget-object v0, p0, Ld1/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/b;

    if-nez v0, :cond_0

    new-instance v0, Ld1/b;

    invoke-direct {v0, p1}, Ld1/b;-><init>(Lb1/n;)V

    iget-object v1, p0, Ld1/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public c(Lb1/n;I)Ll0/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ld1/c;->d(Lb1/n;ILjava/lang/String;)Ll0/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Lb1/n;ILjava/lang/String;)Ll0/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ld1/c;->e(Lb1/n;ILjava/lang/String;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    return-object p1
.end method

.method public e(Lb1/n;ILjava/lang/String;Ljava/lang/Throwable;)Ll0/f;
    .locals 0

    invoke-virtual {p0, p1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Ll0/f;->h(I)V

    invoke-virtual {p1, p3}, Ll0/f;->i(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ll0/f;->j(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public f(Lb1/n;Ljava/lang/String;)Ll0/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ld1/c;->d(Lb1/n;ILjava/lang/String;)Ll0/f;

    move-result-object p1

    return-object p1
.end method

.method public g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;
    .locals 0

    invoke-virtual {p0, p1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Ll0/f;->j(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public h(Lb1/n;)Ll0/f;
    .locals 1

    invoke-virtual {p0, p1}, Ld1/c;->a(Lb1/n;)Ld1/b;

    move-result-object p1

    new-instance v0, Ll0/f;

    invoke-direct {v0}, Ll0/f;-><init>()V

    invoke-virtual {v0, p1}, Ll0/f;->k(Ld1/b;)V

    return-object v0
.end method
