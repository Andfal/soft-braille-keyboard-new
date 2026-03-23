.class Lq0/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;",
        "Ljava/util/concurrent/Callable<",
        "Ll0/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ll1/i;

.field private b:Lq0/f$c;

.field private c:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

.field private d:Ll1/h;

.field private e:Lb1/k;

.field private f:I

.field private g:I

.field h:[B

.field final synthetic i:Lq0/f;


# direct methods
.method public constructor <init>(Lq0/f;Ll1/i;)V
    .locals 2

    iput-object p1, p0, Lq0/f$d;->i:Lq0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb1/k;->d:Lb1/k;

    iput-object v0, p0, Lq0/f$d;->e:Lb1/k;

    const/4 v0, 0x0

    iput v0, p0, Lq0/f$d;->f:I

    const/4 v1, 0x1

    iput v1, p0, Lq0/f$d;->g:I

    new-array v0, v0, [B

    iput-object v0, p0, Lq0/f$d;->h:[B

    iput-object p2, p0, Lq0/f$d;->a:Ll1/i;

    new-instance p2, Lq0/f$c;

    invoke-direct {p2, p1}, Lq0/f$c;-><init>(Lq0/f;)V

    iput-object p2, p0, Lq0/f$d;->b:Lq0/f$c;

    new-instance p1, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

    invoke-direct {p1}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;-><init>()V

    iput-object p1, p0, Lq0/f$d;->c:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

    return-void
.end method

.method private b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq0/f$d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnlineSynthesizer"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/f$d;->d:Ll1/h;

    invoke-virtual {v0}, Lm1/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/h;

    iget-object v1, p0, Lq0/f$d;->h:[B

    invoke-virtual {v0, v1}, Ll1/h;->m([B)V

    sget-object v1, Lb1/f;->c:Lb1/f;

    invoke-virtual {v1}, Lb1/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ll1/h;->w(I)V

    sget-object v1, Lb1/a;->b:Lb1/a;

    invoke-virtual {v0, v1}, Ll1/h;->g(Lb1/a;)V

    iget v1, p0, Lq0/f$d;->g:I

    invoke-virtual {v0, v1}, Ll1/h;->s(I)V

    invoke-virtual {v0, p1}, Ll1/h;->t(I)V

    iget-object p1, p0, Lq0/f$d;->i:Lq0/f;

    invoke-virtual {p1, v0}, Lq0/a;->c(Ll1/h;)V

    iget p1, p0, Lq0/f$d;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lq0/f$d;->g:I

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lq0/f$d;->h:[B

    return-void
.end method

.method private c(Ll1/h;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ll1/h;->y()Ll0/f;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ll1/h;->c()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private d([B[B)[B
    .locals 3

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private e(Ll1/h;)Z
    .locals 2

    invoke-direct {p0, p1}, Lq0/f$d;->c(Ll1/h;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ll1/h;->n()I

    move-result p1

    if-gez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public a()Ll0/f;
    .locals 7

    invoke-static {p0}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->setOnDecodedDataListener(Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnlineSynthesizer"

    invoke-static {v3, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lq0/f$d;->i:Lq0/f;

    iget-object v4, p0, Lq0/f$d;->b:Lq0/f$c;

    iget-object v5, p0, Lq0/f$d;->a:Ll1/i;

    invoke-static {v2, v0, v4, v5}, Lq0/f;->l(Lq0/f;ILq0/f$c;Ll1/i;)Ll1/h;

    move-result-object v2

    invoke-direct {p0, v2}, Lq0/f$d;->c(Ll1/h;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v0, v1, :cond_1

    invoke-virtual {v2}, Ll1/h;->A()Lb1/k;

    move-result-object v4

    iput-object v4, p0, Lq0/f$d;->e:Lb1/k;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lq0/f$d;->e:Lb1/k;

    invoke-virtual {v2, v4}, Ll1/h;->i(Lb1/k;)V

    :goto_0
    iput-object v2, p0, Lq0/f$d;->d:Ll1/h;

    invoke-virtual {v2}, Ll1/h;->u()[B

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->o:Lb1/n;

    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v5, p0, Lq0/f$d;->i:Lq0/f;

    invoke-static {v5}, Lq0/f;->m(Lq0/f;)Lq0/f$b;

    move-result-object v5

    invoke-virtual {v5}, Lq0/f$b;->L()Lb1/b;

    move-result-object v5

    sget-object v6, Lb1/b;->f:Lb1/b;

    if-ne v5, v6, :cond_3

    :goto_1
    iget-object v1, p0, Lq0/f$d;->i:Lq0/f;

    invoke-virtual {v1, v2}, Lq0/a;->c(Ll1/h;)V

    goto :goto_2

    :cond_3
    array-length v5, v4

    if-nez v5, :cond_4

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lq0/f$d;->c:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

    invoke-virtual {v2}, Ll1/h;->n()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->decodeWithCallback([BI)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoder ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Audio Decoder failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    invoke-direct {p0, v2}, Lq0/f$d;->e(Ll1/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_7

    const-string v0, "response is null"

    invoke-static {v3, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->m:Lb1/n;

    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ll1/h;->y()Ll0/f;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lq0/f$d;->a()Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method public onDecodedData([B)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lq0/f$d;->h:[B

    invoke-direct {p0, v0, p1}, Lq0/f$d;->d([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lq0/f$d;->h:[B

    array-length v0, v0

    const/16 v1, 0xc80

    if-lt v0, v1, :cond_0

    iget-object v2, p0, Lq0/f$d;->d:Ll1/h;

    invoke-virtual {v2}, Ll1/h;->u()[B

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lq0/f$d;->d:Ll1/h;

    invoke-virtual {v3}, Ll1/h;->r()I

    move-result v3

    int-to-double v4, v0

    const-wide v6, 0x40df400000000000L    # 32000.0

    div-double/2addr v4, v6

    mul-int/lit8 v2, v2, 0x8

    int-to-double v6, v2

    iget-object v2, p0, Lq0/f$d;->i:Lq0/f;

    invoke-static {v2}, Lq0/f;->n(Lq0/f;)D

    move-result-wide v8

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    iget v2, p0, Lq0/f$d;->f:I

    int-to-double v6, v2

    sub-int/2addr v3, v2

    int-to-double v2, v3

    mul-double v4, v4, v2

    iget v2, p0, Lq0/f$d;->g:I

    int-to-double v2, v2

    mul-double v4, v4, v2

    add-double/2addr v6, v4

    double-to-int v2, v6

    invoke-direct {p0, v2}, Lq0/f$d;->b(I)V

    :cond_0
    array-length p1, p1

    if-nez p1, :cond_2

    if-ge v0, v1, :cond_1

    iget-object p1, p0, Lq0/f$d;->d:Ll1/h;

    invoke-virtual {p1}, Ll1/h;->r()I

    move-result p1

    invoke-direct {p0, p1}, Lq0/f$d;->b(I)V

    :cond_1
    iget-object p1, p0, Lq0/f$d;->d:Ll1/h;

    invoke-virtual {p1}, Ll1/h;->r()I

    move-result p1

    iput p1, p0, Lq0/f$d;->f:I

    const/4 p1, 0x1

    iput p1, p0, Lq0/f$d;->g:I

    iget-object p1, p0, Lq0/f$d;->d:Ll1/h;

    invoke-virtual {p1}, Ll1/h;->n()I

    move-result p1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lq0/f$d;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
