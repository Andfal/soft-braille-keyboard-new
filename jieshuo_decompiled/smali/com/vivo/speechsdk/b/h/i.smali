.class public Lcom/vivo/speechsdk/b/h/i;
.super Lcom/vivo/speechsdk/b/h/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/b/h/i$a;,
        Lcom/vivo/speechsdk/b/h/i$c;,
        Lcom/vivo/speechsdk/b/h/i$b;
    }
.end annotation


# static fields
.field private static final A:S = 0x1s

.field private static final B:Ljava/lang/String; = "data"

.field private static final p:Ljava/lang/String; = "WavFileStore"

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x10

.field public static final t:I = 0x8

.field private static final u:I = 0x3e80

.field private static final v:I = 0x2c

.field private static final w:Ljava/lang/String; = "RIFF"

.field private static final x:Ljava/lang/String; = "WAVE"

.field private static final y:Ljava/lang/String; = "fmt "

.field private static final z:I = 0x10


# instance fields
.field private l:S

.field private m:S

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/e;Lcom/vivo/speechsdk/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/b/h/a;-><init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/e;)V

    const/16 p1, 0x10

    iput-short p1, p0, Lcom/vivo/speechsdk/b/h/i;->l:S

    const/4 p1, 0x1

    iput-short p1, p0, Lcom/vivo/speechsdk/b/h/i;->m:S

    const/16 p1, 0x3e80

    iput p1, p0, Lcom/vivo/speechsdk/b/h/i;->n:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/b/h/i;->o:Z

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/vivo/speechsdk/b/h/i$a;->a(Lcom/vivo/speechsdk/b/h/i$a;)I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/vivo/speechsdk/b/h/i;->l:S

    invoke-static {p4}, Lcom/vivo/speechsdk/b/h/i$a;->b(Lcom/vivo/speechsdk/b/h/i$a;)I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/vivo/speechsdk/b/h/i;->m:S

    invoke-static {p4}, Lcom/vivo/speechsdk/b/h/i$a;->c(Lcom/vivo/speechsdk/b/h/i$a;)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/b/h/i;->n:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/i$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/vivo/speechsdk/b/h/i;-><init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/e;Lcom/vivo/speechsdk/b/h/i$a;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    shr-int/lit8 p1, p1, 0x18

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method private a(S)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    shr-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    shr-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()I
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/b/h/i;->h()I

    move-result v0

    return v0
.end method

.method private g()I
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/b/h/i;->h()I

    move-result v0

    return v0
.end method

.method private h()I
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    shl-int/lit8 v0, v0, 0x0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method private i()Z
    .locals 7

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x2c

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    iget-object v2, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    iget-object v3, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    const-string v5, "RIFF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v0, v6, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v1, v6, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v3, v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private j()V
    .locals 4

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/h/i;->o:Z

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/b/h/i;->f()I

    move-result v0

    iget-object v3, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-super {p0}, Lcom/vivo/speechsdk/b/h/a;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-super {p0}, Lcom/vivo/speechsdk/b/h/a;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    :goto_0
    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/b/h/i;->a(I)V

    return-void
.end method

.method private k()V
    .locals 4

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/h/i;->o:Z

    const-wide/16 v1, 0x28

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/b/h/i;->g()I

    move-result v0

    iget-object v3, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-super {p0}, Lcom/vivo/speechsdk/b/h/a;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-super {p0}, Lcom/vivo/speechsdk/b/h/a;->getSize()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/b/h/i;->a(I)V

    return-void
.end method

.method private l()V
    .locals 3

    invoke-direct {p0}, Lcom/vivo/speechsdk/b/h/i;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/b/h/i;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/a;->g:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v0, "RIFF"

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/b/h/i;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/b/h/i;->a(I)V

    const-string v1, "WAVE"

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->c(Ljava/lang/String;)V

    const-string v1, "fmt "

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->c(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->a(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->a(S)V

    iget-short v1, p0, Lcom/vivo/speechsdk/b/h/i;->m:S

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->a(S)V

    iget v1, p0, Lcom/vivo/speechsdk/b/h/i;->n:I

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->a(I)V

    iget v1, p0, Lcom/vivo/speechsdk/b/h/i;->n:I

    iget-short v2, p0, Lcom/vivo/speechsdk/b/h/i;->l:S

    div-int/lit8 v2, v2, 0x8

    mul-int v1, v1, v2

    iget-short v2, p0, Lcom/vivo/speechsdk/b/h/i;->m:S

    mul-int v1, v1, v2

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->a(I)V

    iget-short v1, p0, Lcom/vivo/speechsdk/b/h/i;->l:S

    iget-short v2, p0, Lcom/vivo/speechsdk/b/h/i;->m:S

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->a(S)V

    iget-short v1, p0, Lcom/vivo/speechsdk/b/h/i;->l:S

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->a(S)V

    const-string v1, "data"

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/b/h/i;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/b/h/i;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected d()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/b/h/i;->l()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WavFileStore"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected e()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/b/h/i;->j()V

    invoke-direct {p0}, Lcom/vivo/speechsdk/b/h/i;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WavFileStore"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getSize()I
    .locals 1

    invoke-super {p0}, Lcom/vivo/speechsdk/b/h/a;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    return v0
.end method
