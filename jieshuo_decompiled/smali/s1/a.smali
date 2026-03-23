.class public final Ls1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a$d;,
        Ls1/a$e;,
        Ls1/a$c;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Ls1/a$d; = null

.field private static f:Z = true


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-static {v2}, Lr1/b;->a([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {v1}, Lr1/b;->a([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls1/a;->d:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x7at
        0x41t
        0x79t
        0x4dt
        0x54t
        0x49t
        0x78t
        0x4dt
        0x44t
        0x49t
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0x47t
        0x6ct
        0x6at
        0x64t
        0x57t
        0x52t
        0x70t
        0x59t
        0x57t
        0x49t
        0x3dt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ls1/a;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ls1/a;->g()V

    return-void
.end method

.method static synthetic A(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ls1/a;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Ls1/a;)Ls1/a$d;
    .locals 0

    invoke-direct {p0}, Ls1/a;->I()Ls1/a$d;

    move-result-object p0

    return-object p0
.end method

.method private static C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    const-string v1, "backups/.SystemConfig"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string v1, ".cuid"

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance p0, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sget-object p1, Ls1/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, p1, v0}, Lr1/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lr1/b;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private D()Z
    .locals 1

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Ls1/a;->M(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic E(Ls1/a;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Ls1/a;->M(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic F(Ls1/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Ls1/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private G()Ls1/a$d;
    .locals 2

    const-string v0, "com.baidu.deviceid"

    invoke-direct {p0, v0}, Ls1/a;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bd_setting_i"

    invoke-direct {p0, v1}, Ls1/a;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/a$d;->a(Ljava/lang/String;Ljava/lang/String;)Ls1/a$d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic H(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ls1/a;->R(Ljava/lang/String;)V

    return-void
.end method

.method private I()Ls1/a$d;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ls1/a;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ls1/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lr1/b;->a([B)[B

    move-result-object v0

    invoke-static {v2, v2, v0}, Lr1/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ls1/a$d;->e(Ljava/lang/String;)Ls1/a$d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic J(Ls1/a;Ljava/lang/String;)Ls1/a$d;
    .locals 0

    invoke-direct {p0, p1}, Ls1/a;->O(Ljava/lang/String;)Ls1/a$d;

    move-result-object p0

    return-object p0
.end method

.method private K(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "libcuid.so"

    sget-boolean v1, Ls1/a;->f:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Ls1/a;->v(Ljava/lang/Throwable;)V

    :goto_2
    if-nez v1, :cond_2

    sget-boolean p1, Ls1/a;->f:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1b4

    :goto_3
    invoke-static {p1, v0}, Ls1/a$e;->a(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_2
    sget-boolean p1, Ls1/a;->f:Z

    if-nez p1, :cond_3

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1b0

    goto :goto_3

    :cond_3
    return v2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Ls1/a;->v(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-static {p1}, Ls1/a;->v(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return v3

    :goto_5
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-static {v0}, Ls1/a;->v(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    throw p1
.end method

.method private L(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Ls1/a;->v(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private M(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static N(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ls1/a;->f(Landroid/content/Context;)Ls1/a$d;

    move-result-object p0

    invoke-virtual {p0}, Ls1/a$d;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private O(Ljava/lang/String;)Ls1/a$d;
    .locals 3

    const-string p1, ""

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "baidu/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Ls1/a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lr1/b;->a([B)[B

    move-result-object v1

    invoke-static {v2, v2, v1}, Lr1/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :try_start_1
    aget-object p1, v0, v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    :cond_2
    move-object v1, p1

    :catch_1
    :goto_2
    invoke-static {p1, v1}, Ls1/a$d;->a(Ljava/lang/String;Ljava/lang/String;)Ls1/a$d;

    move-result-object p1

    return-object p1
.end method

.method private static P(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Ls1/a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, v0, p0}, Lr1/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lr1/b;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Ls1/a;->v(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ls1/a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lr1/b;->a([B)[B

    move-result-object p0

    invoke-static {v1, v1, p0}, Lr1/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ls1/a;->v(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static R(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, ".cuid2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private S(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "0"

    return-object p1
.end method

.method private static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lr1/b;->a([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method static synthetic a(Ls1/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ls1/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ls1/a;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ls1/a;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d([B)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument b ( byte array ) is null! "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private e(Landroid/content/Intent;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List<",
            "Ls1/a$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "galaxy_data"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lr1/b;->a([B)[B

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Ls1/a$c;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Ls1/a$c;-><init>(Ls1/a$a;)V

    const-string v8, "priority"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Ls1/a$c;->b:I

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, v6, Ls1/a$c;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    iput-boolean v9, v6, Ls1/a$c;->d:Z

    :cond_3
    if-eqz p2, :cond_6

    const-string v8, "galaxy_sf"

    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v1, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v8, "sigs"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v10, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_4

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v3}, Ls1/a;->p([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v10, v3}, Ls1/a;->n([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lr1/b;->a([B)[B

    move-result-object v3

    iget-object v4, p0, Ls1/a;->c:Ljava/security/PublicKey;

    invoke-static {v3, v4}, Ls1/a;->o([BLjava/security/PublicKey;)[B

    move-result-object v3

    invoke-static {v5}, Lr1/d;->a([B)[B

    move-result-object v4

    if-eqz v3, :cond_5

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    iput-boolean v9, v6, Ls1/a$c;->c:Z

    :cond_6
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ls1/a$a;

    invoke-direct {p1, p0}, Ls1/a$a;-><init>(Ls1/a;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Ls1/a$d;
    .locals 2

    sget-object v0, Ls1/a;->e:Ls1/a$d;

    if-nez v0, :cond_1

    const-class v0, Ls1/a$d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ls1/a;->e:Ls1/a$d;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v1, Ls1/a;

    invoke-direct {v1, p0}, Ls1/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v1}, Ls1/a;->u()Ls1/a$d;

    move-result-object p0

    sput-object p0, Ls1/a;->e:Ls1/a$d;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Ls1/a;->e:Ls1/a$d;

    return-object p0
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ls1/b;->a()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ls1/a;->c:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Ls1/a;->v(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {v1}, Ls1/a;->v(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v0

    :catch_3
    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_3
    return-void
.end method

.method static synthetic h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ls1/a;->C(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Ls1/a;->v(Ljava/lang/Throwable;)V

    return-void
.end method

.method private declared-synchronized j(Ls1/a$d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ls1/a;->z(Ls1/a$d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic k(Ls1/a;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Ls1/a;->K(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic l(Ls1/a;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ls1/a;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic m(Ls1/a;Ls1/a$d;)Z
    .locals 0

    invoke-direct {p0, p1}, Ls1/a;->x(Ls1/a$d;)Z

    move-result p0

    return p0
.end method

.method private n([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p2

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_2
    return v0
.end method

.method private static o([BLjava/security/PublicKey;)[B
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private p([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lr1/d;->a([B)[B

    move-result-object v3

    invoke-static {v3}, Ls1/a;->d([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static r(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x2000

    :try_start_1
    new-array p0, p0, [C

    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Ls1/a;->v(Ljava/lang/Throwable;)V

    :goto_1
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    invoke-static {p0}, Ls1/a;->v(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-static {p0}, Ls1/a;->v(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {v0}, Ls1/a;->v(Ljava/lang/Throwable;)V

    :cond_2
    :goto_5
    throw p0
.end method

.method static synthetic s(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ls1/a;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Ls1/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Ls1/a;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private u()Ls1/a$d;
    .locals 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.intent.action.GALAXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Ls1/a;->e(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    const-string v4, "DeviceId"

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a$c;

    iget-boolean v0, v0, Ls1/a$c;->c:Z

    if-nez v0, :cond_3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    const-string v7, "galaxy config err, In the release version of the signature should be matched"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    const-string v6, "galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "libcuid.so"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    invoke-static {v3}, Ls1/a;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/a;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/a$d;->e(Ljava/lang/String;)Ls1/a$d;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v8

    :goto_3
    if-nez v3, :cond_8

    iget v6, p0, Ls1/a;->b:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Ls1/a;->b:I

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v0}, Ls1/a;->e(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "files"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetal error:: app files dir name is unexpectedly :: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a$c;

    iget-boolean v4, v1, Ls1/a$c;->d:Z

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v1, v1, Ls1/a$c;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v6, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v4}, Ls1/a;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/a;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/a$d;->e(Ljava/lang/String;)Ls1/a$d;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_8
    if-nez v3, :cond_9

    const-string v0, "com.baidu.deviceid.v2"

    invoke-direct {p0, v0}, Ls1/a;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a$d;->e(Ljava/lang/String;)Ls1/a$d;

    move-result-object v3

    :cond_9
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v0}, Ls1/a;->M(Ljava/lang/String;)Z

    move-result v0

    if-nez v3, :cond_a

    if-eqz v0, :cond_a

    iget v1, p0, Ls1/a;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Ls1/a;->b:I

    invoke-direct {p0}, Ls1/a;->I()Ls1/a$d;

    move-result-object v3

    :cond_a
    if-nez v3, :cond_b

    iget v1, p0, Ls1/a;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Ls1/a;->b:I

    invoke-direct {p0}, Ls1/a;->G()Ls1/a$d;

    move-result-object v3

    :cond_b
    const-string v1, ""

    if-nez v3, :cond_c

    if-eqz v0, :cond_c

    iget v0, p0, Ls1/a;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Ls1/a;->b:I

    invoke-direct {p0, v1}, Ls1/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ls1/a;->O(Ljava/lang/String;)Ls1/a$d;

    move-result-object v3

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    move-object v0, v8

    :goto_5
    if-nez v3, :cond_f

    iget v3, p0, Ls1/a;->b:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Ls1/a;->b:I

    if-nez v5, :cond_d

    invoke-direct {p0, v1}, Ls1/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    new-instance v3, Ls1/a$d;

    invoke-direct {v3, v8}, Ls1/a$d;-><init>(Ls1/a$a;)V

    iget-object v1, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-static {v1}, Ls1/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_e

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.baidu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Lr1/c;->b([BZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ls1/a$d;->a:Ljava/lang/String;

    iput-object v0, v3, Ls1/a$d;->b:Ljava/lang/String;

    :cond_f
    invoke-direct {p0, v3}, Ls1/a;->x(Ls1/a$d;)Z

    invoke-direct {p0, v3}, Ls1/a;->j(Ls1/a$d;)V

    return-object v3
.end method

.method private static v(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private w(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Ls1/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Ls1/a;->v(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private x(Ls1/a$d;)Z
    .locals 2

    invoke-virtual {p1}, Ls1/a$d;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "O"

    :goto_0
    iput-object v0, p1, Ls1/a$d;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ls1/a$d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static synthetic y(Ls1/a;)Z
    .locals 0

    invoke-direct {p0}, Ls1/a;->D()Z

    move-result p0

    return p0
.end method

.method private z(Ls1/a$d;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Ls1/a$b;

    invoke-direct {v0, p0, p1}, Ls1/a$b;-><init>(Ls1/a;Ls1/a$d;)V

    return-object v0
.end method
