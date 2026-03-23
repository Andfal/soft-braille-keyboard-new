.class public abstract Lcom/vivo/speechsdk/b/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/h/d;


# static fields
.field private static final i:Ljava/lang/String; = "AbsFileStore"

.field public static final j:I = 0x3e8

.field private static final k:Ljava/lang/String; = "UTF-8"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:Lcom/vivo/speechsdk/b/h/e;

.field private e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/vivo/speechsdk/b/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field protected g:Ljava/io/RandomAccessFile;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/speechsdk/b/h/a;-><init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/b/h/a;->f:Z

    new-instance v0, Lcom/vivo/speechsdk/b/h/a$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/b/h/a$a;-><init>(Lcom/vivo/speechsdk/b/h/a;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->h:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/vivo/speechsdk/b/h/a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vivo/speechsdk/b/h/a;->b:Z

    iput-object p3, p0, Lcom/vivo/speechsdk/b/h/a;->d:Lcom/vivo/speechsdk/b/h/e;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/b/h/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/vivo/speechsdk/b/h/a;->h:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p2, "FileStoreThread"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/b/h/a;I)I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/b/h/a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vivo/speechsdk/b/h/a;->c:I

    return v0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/b/h/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/b/h/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/b/h/a;Lcom/vivo/speechsdk/b/h/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/b/h/a;->b(Lcom/vivo/speechsdk/b/h/b;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/b/h/a;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/b/h/a;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/b/h/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/b/h/a;->f:Z

    return p1
.end method

.method private b(Lcom/vivo/speechsdk/b/h/b;)V
    .locals 5

    iget v0, p1, Lcom/vivo/speechsdk/b/h/b;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->d:Lcom/vivo/speechsdk/b/h/e;

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/vivo/speechsdk/b/h/b;->e:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/b/h/e;->a(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/b/h/a;->d:Lcom/vivo/speechsdk/b/h/e;

    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    iget v1, p0, Lcom/vivo/speechsdk/b/h/a;->c:I

    if-lt v1, v0, :cond_1

    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-int v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/b/h/e;->a(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/b/h/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/b/h/a;->b:Z

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/FileUtils;->setFolderPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "AbsFileStore"

    const-string v4, "create file "

    invoke-static {v3, v4, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/vivo/speechsdk/b/h/a;->b:Z

    if-nez p1, :cond_4

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_4

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/FileUtils;->changeFolderPermission(Ljava/io/File;)Z

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/vivo/speechsdk/b/h/a;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/b/h/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/b/h/a;)Lcom/vivo/speechsdk/b/h/e;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/b/h/a;->d:Lcom/vivo/speechsdk/b/h/e;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/speechsdk/b/h/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vivo/speechsdk/b/h/b;)V
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/h/a;->f:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/vivo/speechsdk/b/h/e;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/h/a;->d:Lcom/vivo/speechsdk/b/h/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/vivo/speechsdk/b/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/h/a;->f:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object p2

    iput-object p1, p2, Lcom/vivo/speechsdk/b/h/b;->a:[B

    array-length p1, p1

    iput p1, p2, Lcom/vivo/speechsdk/b/h/b;->b:I

    const/4 p1, 0x0

    iput p1, p2, Lcom/vivo/speechsdk/b/h/b;->c:I

    iget-object p1, p0, Lcom/vivo/speechsdk/b/h/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbsFileStore"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/h/a;->f:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/b/h/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vivo/speechsdk/b/h/b;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/b/h/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/b/h/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a([BII)V
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/h/a;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/b/h/b;->b()Lcom/vivo/speechsdk/b/h/b;

    move-result-object v0

    iput-object p1, v0, Lcom/vivo/speechsdk/b/h/b;->a:[B

    iput p3, v0, Lcom/vivo/speechsdk/b/h/b;->b:I

    iput p2, v0, Lcom/vivo/speechsdk/b/h/b;->c:I

    iget-object p1, p0, Lcom/vivo/speechsdk/b/h/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/vivo/speechsdk/b/h/e;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->d:Lcom/vivo/speechsdk/b/h/e;

    return-object v0
.end method

.method protected abstract d()V
.end method

.method protected abstract e()V
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/b/h/a;->c:I

    return v0
.end method
