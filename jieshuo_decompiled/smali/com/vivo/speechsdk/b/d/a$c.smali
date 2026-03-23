.class public final Lcom/vivo/speechsdk/b/d/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/b/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/b/d/a$c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/vivo/speechsdk/b/d/a$d;

.field private final b:[Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/vivo/speechsdk/b/d/a;


# direct methods
.method private constructor <init>(Lcom/vivo/speechsdk/b/d/a;Lcom/vivo/speechsdk/b/d/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/d/a$c;->e:Lcom/vivo/speechsdk/b/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/b/d/a$c;->a:Lcom/vivo/speechsdk/b/d/a$d;

    invoke-static {p2}, Lcom/vivo/speechsdk/b/d/a$d;->d(Lcom/vivo/speechsdk/b/d/a$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/vivo/speechsdk/b/d/a;->c(Lcom/vivo/speechsdk/b/d/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/vivo/speechsdk/b/d/a$c;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/speechsdk/b/d/a;Lcom/vivo/speechsdk/b/d/a$d;Lcom/vivo/speechsdk/b/d/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/b/d/a$c;-><init>(Lcom/vivo/speechsdk/b/d/a;Lcom/vivo/speechsdk/b/d/a$d;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/b/d/a$c;)Lcom/vivo/speechsdk/b/d/a$d;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/b/d/a$c;->a:Lcom/vivo/speechsdk/b/d/a$d;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/b/d/a$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/b/d/a$c;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/b/d/a$c;)[Z
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/b/d/a$c;->b:[Z

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/b/d/a$c;->b(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/vivo/speechsdk/b/d/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$c;->e:Lcom/vivo/speechsdk/b/d/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/vivo/speechsdk/b/d/a;->a(Lcom/vivo/speechsdk/b/d/a;Lcom/vivo/speechsdk/b/d/a$c;Z)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/b/d/a$c;->c(I)Ljava/io/OutputStream;

    move-result-object p1

    sget-object v1, Lcom/vivo/speechsdk/b/d/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/vivo/speechsdk/b/d/c;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/vivo/speechsdk/b/d/c;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public b(I)Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$c;->e:Lcom/vivo/speechsdk/b/d/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/b/d/a$c;->a:Lcom/vivo/speechsdk/b/d/a$d;

    invoke-static {v1}, Lcom/vivo/speechsdk/b/d/a$d;->e(Lcom/vivo/speechsdk/b/d/a$d;)Lcom/vivo/speechsdk/b/d/a$c;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/b/d/a$c;->a:Lcom/vivo/speechsdk/b/d/a$d;

    invoke-static {v1}, Lcom/vivo/speechsdk/b/d/a$d;->d(Lcom/vivo/speechsdk/b/d/a$d;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/vivo/speechsdk/b/d/a$c;->a:Lcom/vivo/speechsdk/b/d/a$d;

    invoke-virtual {v3, p1}, Lcom/vivo/speechsdk/b/d/a$d;->a(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    monitor-exit v0

    return-object v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/d/a$c;->d:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/b/d/a$c;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public c(I)Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$c;->e:Lcom/vivo/speechsdk/b/d/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/b/d/a$c;->a:Lcom/vivo/speechsdk/b/d/a$d;

    invoke-static {v1}, Lcom/vivo/speechsdk/b/d/a$d;->e(Lcom/vivo/speechsdk/b/d/a$d;)Lcom/vivo/speechsdk/b/d/a$c;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/b/d/a$c;->a:Lcom/vivo/speechsdk/b/d/a$d;

    invoke-static {v1}, Lcom/vivo/speechsdk/b/d/a$d;->d(Lcom/vivo/speechsdk/b/d/a$d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/b/d/a$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/b/d/a$c;->a:Lcom/vivo/speechsdk/b/d/a$d;

    invoke-virtual {v1, p1}, Lcom/vivo/speechsdk/b/d/a$d;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/vivo/speechsdk/b/d/a$c;->e:Lcom/vivo/speechsdk/b/d/a;

    invoke-static {v1}, Lcom/vivo/speechsdk/b/d/a;->d(Lcom/vivo/speechsdk/b/d/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    new-instance p1, Lcom/vivo/speechsdk/b/d/a$c$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/vivo/speechsdk/b/d/a$c$a;-><init>(Lcom/vivo/speechsdk/b/d/a$c;Ljava/io/OutputStream;Lcom/vivo/speechsdk/b/d/a$a;)V

    monitor-exit v0

    return-object p1

    :catch_1
    invoke-static {}, Lcom/vivo/speechsdk/b/d/a;->a()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/d/a$c;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$c;->e:Lcom/vivo/speechsdk/b/d/a;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/vivo/speechsdk/b/d/a;->a(Lcom/vivo/speechsdk/b/d/a;Lcom/vivo/speechsdk/b/d/a$c;Z)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$c;->e:Lcom/vivo/speechsdk/b/d/a;

    iget-object v2, p0, Lcom/vivo/speechsdk/b/d/a$c;->a:Lcom/vivo/speechsdk/b/d/a$d;

    invoke-static {v2}, Lcom/vivo/speechsdk/b/d/a$d;->b(Lcom/vivo/speechsdk/b/d/a$d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/b/d/a;->d(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$c;->e:Lcom/vivo/speechsdk/b/d/a;

    invoke-static {v0, p0, v1}, Lcom/vivo/speechsdk/b/d/a;->a(Lcom/vivo/speechsdk/b/d/a;Lcom/vivo/speechsdk/b/d/a$c;Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/vivo/speechsdk/b/d/a$c;->d:Z

    return-void
.end method
