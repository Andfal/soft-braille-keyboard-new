.class public Lcom/vivo/speechsdk/a/g/d;
.super Lcom/vivo/speechsdk/a/g/b;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "EncoderInterceptor"


# instance fields
.field private e:Lcom/vivo/speechsdk/module/api/coder/IEncoder;

.field private f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

.field private final g:I

.field private h:Z


# direct methods
.method public constructor <init>(ILcom/vivo/speechsdk/module/api/session/ISessionCollect;)V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/d;->h:Z

    iput p1, p0, Lcom/vivo/speechsdk/a/g/d;->g:I

    iput-object p2, p0, Lcom/vivo/speechsdk/a/g/d;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/d;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->event(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;II)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/a/g/d;->a(I[BII)V

    return-void
.end method

.method public a(I[BII)V
    .locals 6

    const/16 v0, 0x20

    const/16 v1, 0x6b

    const/4 v2, 0x4

    if-eqz p1, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    if-eq p1, v2, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/d;->e:Lcom/vivo/speechsdk/module/api/coder/IEncoder;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/coder/IEncoder;->release()V

    goto/16 :goto_4

    :cond_1
    if-eqz p2, :cond_6

    iget v0, p0, Lcom/vivo/speechsdk/a/g/d;->g:I

    if-ne v0, v4, :cond_4

    array-length v0, p2

    div-int/2addr v0, v3

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/d;->e:Lcom/vivo/speechsdk/module/api/coder/IEncoder;

    array-length v5, v1

    invoke-interface {v3, v1, v5}, Lcom/vivo/speechsdk/module/api/coder/IEncoder;->encode([BI)[B

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/d;->e:Lcom/vivo/speechsdk/module/api/coder/IEncoder;

    array-length v5, v0

    invoke-interface {v3, v0, v5}, Lcom/vivo/speechsdk/module/api/coder/IEncoder;->encode([BI)[B

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/ByteUtils;->concat([B[B)[B

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_b

    invoke-virtual {p0, v2, v1}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;)V

    invoke-direct {p0, v4, v4, v1}, Lcom/vivo/speechsdk/a/g/d;->a(IILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/d;->e:Lcom/vivo/speechsdk/module/api/coder/IEncoder;

    array-length v1, p2

    iget-boolean v3, p0, Lcom/vivo/speechsdk/a/g/d;->h:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-interface {v0, p2, v1, v3}, Lcom/vivo/speechsdk/module/api/coder/IEncoder;->encode([BII)[B

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/d;->h:Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/d;->e:Lcom/vivo/speechsdk/module/api/coder/IEncoder;

    array-length v1, p2

    invoke-interface {v0, p2, v1}, Lcom/vivo/speechsdk/module/api/coder/IEncoder;->encode([BI)[B

    move-result-object p2

    :goto_1
    invoke-virtual {p0, v2, p2}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;)V

    invoke-direct {p0, v4, v4, p2}, Lcom/vivo/speechsdk/a/g/d;->a(IILjava/lang/Object;)V

    goto :goto_4

    :cond_6
    const-string v0, "EncoderInterceptor"

    const-string v1, "encoder audio result is null "

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/d;->e:Lcom/vivo/speechsdk/module/api/coder/IEncoder;

    invoke-interface {v3}, Lcom/vivo/speechsdk/module/api/coder/IEncoder;->release()V

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v3

    const-string v4, "Opus"

    invoke-virtual {v3, v4}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v3

    check-cast v3, Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    invoke-interface {v3, v4}, Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;->createEncoderService(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/coder/IEncoder;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/speechsdk/a/g/d;->e:Lcom/vivo/speechsdk/module/api/coder/IEncoder;

    :cond_9
    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/d;->e:Lcom/vivo/speechsdk/module/api/coder/IEncoder;

    const/16 v4, 0x6a

    if-nez v3, :cond_a

    const/16 v3, 0x2af8

    :goto_3
    invoke-virtual {p0, v4, v3}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    invoke-interface {v3, v5}, Lcom/vivo/speechsdk/module/api/coder/IEncoder;->init(Landroid/os/Bundle;)I

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    :goto_4
    if-eq v2, p1, :cond_c

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->b(ILjava/lang/Object;II)V

    :cond_c
    return-void
.end method
