.class public Lcom/vivo/speechsdk/module/session/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "VADDebugMode"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/vivo/speechsdk/b/h/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/e/c;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/session/e/c;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/e/c;->c:Lcom/vivo/speechsdk/b/h/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/b/h/a;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/e/c;->c:Lcom/vivo/speechsdk/b/h/a;

    :cond_0
    return-void
.end method

.method public a(IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 6

    iget-boolean p2, p0, Lcom/vivo/speechsdk/module/session/e/c;->b:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    if-eqz p4, :cond_3

    check-cast p4, [B

    iget-object p3, p0, Lcom/vivo/speechsdk/module/session/e/c;->c:Lcom/vivo/speechsdk/b/h/a;

    const/4 v0, 0x0

    if-nez p3, :cond_2

    const-string p3, ""

    invoke-static {p3}, Lcom/vivo/speechsdk/b/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pcm"

    const-string v3, "pcm"

    const-string v4, "vad"

    if-eqz p5, :cond_1

    const-string v5, "key_save_audio_format"

    invoke-virtual {p5, v5, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".wav"

    invoke-virtual {v5, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/vivo/speechsdk/module/session/e/c;->a:Ljava/lang/String;

    const-string v2, "wav"

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    const-string v2, "key_sample_rate"

    const/16 v3, 0x3e80

    invoke-virtual {p5, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p5

    new-instance v2, Lcom/vivo/speechsdk/b/h/i$a$a;

    invoke-direct {v2}, Lcom/vivo/speechsdk/b/h/i$a$a;-><init>()V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/vivo/speechsdk/b/h/i$a$a;->a(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/vivo/speechsdk/b/h/i$a$a;->b(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/vivo/speechsdk/b/h/i$a$a;->c(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/b/h/i$a$a;->a()Lcom/vivo/speechsdk/b/h/i$a;

    move-result-object p2

    new-instance p5, Lcom/vivo/speechsdk/b/h/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p5, p3, v0, p2}, Lcom/vivo/speechsdk/b/h/i;-><init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/i$a;)V

    iput-object p5, p0, Lcom/vivo/speechsdk/module/session/e/c;->c:Lcom/vivo/speechsdk/b/h/a;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/vivo/speechsdk/module/session/e/c;->a:Ljava/lang/String;

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    new-instance p3, Lcom/vivo/speechsdk/b/h/g;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, v0}, Lcom/vivo/speechsdk/b/h/g;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/vivo/speechsdk/module/session/e/c;->a:Ljava/lang/String;

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    new-instance p3, Lcom/vivo/speechsdk/b/h/g;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, v0}, Lcom/vivo/speechsdk/b/h/g;-><init>(Ljava/lang/String;Z)V

    :goto_0
    iput-object p3, p0, Lcom/vivo/speechsdk/module/session/e/c;->c:Lcom/vivo/speechsdk/b/h/a;

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/vivo/speechsdk/module/session/e/c;->c:Lcom/vivo/speechsdk/b/h/a;

    array-length p3, p4

    invoke-virtual {p2, p4, v0, p3}, Lcom/vivo/speechsdk/b/h/a;->a([BII)V

    :cond_3
    iget-boolean p2, p0, Lcom/vivo/speechsdk/module/session/e/c;->b:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/session/e/c;->a()V

    :cond_4
    return-void
.end method
