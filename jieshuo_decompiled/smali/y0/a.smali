.class public Ly0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Ly0/a;


# instance fields
.field private a:Ly0/e;

.field private b:Lz0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ly0/e;->b()Ly0/e;

    move-result-object v0

    iput-object v0, p0, Ly0/a;->a:Ly0/e;

    return-void
.end method

.method public static a()Ly0/a;
    .locals 2

    sget-object v0, Ly0/a;->c:Ly0/a;

    if-nez v0, :cond_1

    const-class v0, Ly0/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ly0/a;->c:Ly0/a;

    if-nez v1, :cond_0

    new-instance v1, Ly0/a;

    invoke-direct {v1}, Ly0/a;-><init>()V

    sput-object v1, Ly0/a;->c:Ly0/a;

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
    sget-object v0, Ly0/a;->c:Ly0/a;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ly0/b;
    .locals 1

    iget-object v0, p0, Ly0/a;->a:Ly0/e;

    invoke-virtual {v0, p1}, Ly0/e;->g(Ljava/lang/String;)Ly0/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .locals 1

    iget-object v0, p0, Ly0/a;->a:Ly0/e;

    invoke-virtual {v0, p1}, Ly0/e;->c(Lcom/baidu/tts/client/model/DownloadHandler;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ly0/a;->a:Ly0/e;

    invoke-virtual {v0, p1, p2}, Ly0/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lz0/d;)V
    .locals 0

    iput-object p1, p0, Ly0/a;->b:Lz0/d;

    return-void
.end method

.method public f(Ljava/lang/String;)Ly0/d;
    .locals 1

    iget-object v0, p0, Ly0/a;->a:Ly0/e;

    invoke-virtual {v0, p1}, Ly0/e;->a(Ljava/lang/String;)Ly0/d;

    move-result-object p1

    return-object p1
.end method

.method public g()Lz0/d;
    .locals 1

    iget-object v0, p0, Ly0/a;->b:Lz0/d;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Ly0/c;
    .locals 1

    iget-object v0, p0, Ly0/a;->a:Ly0/e;

    invoke-virtual {v0, p1}, Ly0/e;->e(Ljava/lang/String;)Ly0/c;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Ly0/a;->a:Ly0/e;

    invoke-virtual {v0}, Ly0/e;->f()V

    return-void
.end method

.method public j(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Ly0/a;->a:Ly0/e;

    invoke-virtual {v0, p1}, Ly0/e;->i(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Ly0/a;->a:Ly0/e;

    invoke-virtual {v0, p1}, Ly0/e;->j(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
