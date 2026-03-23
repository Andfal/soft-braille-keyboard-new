.class public Lcom/vivo/speechsdk/b/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "FileStoreManager"

.field private static final b:I = 0x64

.field private static final c:J = 0x3200000L

.field private static final d:J = 0x40000000L

.field private static e:Ljava/lang/String; = "yyyy_MM_dd_HH_mm_ss"

.field private static volatile f:Z = false

.field private static g:Z = true

.field private static h:I = 0x64

.field public static final i:Ljava/lang/String; = ".pcm"

.field public static final j:Ljava/lang/String; = ".wav"

.field public static final k:Ljava/lang/String; = ".opus"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, ".opus"

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/vivo/speechsdk/b/h/c;->h:I

    return-void
.end method

.method public static a(Lcom/vivo/speechsdk/b/h/d;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/vivo/speechsdk/b/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/vivo/speechsdk/b/h/d;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vivo/speechsdk/b/h/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .locals 9

    const-class v0, Lcom/vivo/speechsdk/b/h/c;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_3
    array-length v2, v1

    sget v3, Lcom/vivo/speechsdk/b/h/c;->h:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ge v2, v3, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    :try_start_4
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v2, v1

    sget v3, Lcom/vivo/speechsdk/b/h/c;->h:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v4

    sget-object v6, Lcom/vivo/speechsdk/b/h/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/vivo/speechsdk/b/h/c;->f:Z

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, ".pcm"

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/vivo/speechsdk/b/h/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/vivo/speechsdk/b/h/c;->g:Z

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, ".wav"

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/vivo/speechsdk/b/h/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, p0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v6, p0, v2

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    sget-boolean v8, Lcom/vivo/speechsdk/b/h/c;->g:Z

    if-eqz v8, :cond_1

    const-wide/32 v8, 0x40000000

    goto :goto_1

    :cond_1
    const-wide/32 v8, 0x3200000

    :goto_1
    cmp-long v10, v4, v8

    if-lez v10, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    sget-object v7, Lcom/vivo/speechsdk/b/h/c;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/vivo/speechsdk/b/h/c;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/vivo/speechsdk/b/h/c;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/speechsdk/b/h/c;->f:Z

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/a;->a()Lcom/vivo/speechsdk/common/thread/a;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/b/h/c$a;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/b/h/c$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/thread/a;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/a;->a()Lcom/vivo/speechsdk/common/thread/a;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/b/h/c$b;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/b/h/c$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/thread/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
