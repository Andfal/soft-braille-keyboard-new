.class public Ln0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ll0/f;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ln0/e$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Ln0/e$a;->a:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Ln0/e$a;->b:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/e$a;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ll0/f;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "--error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ll0/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineAuth"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Ln0/e$a;->e:Ll0/f;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln0/e$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/e$a;->d:Ljava/lang/String;

    return-void
.end method

.method public g()Ll0/f;
    .locals 1

    iget-object v0, p0, Ln0/e$a;->e:Ll0/f;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/e$a;->f:Ljava/lang/String;

    return-void
.end method

.method public h()Z
    .locals 10

    iget-object v0, p0, Ln0/e$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ln0/e$a;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v0

    invoke-virtual {v0}, Le1/b;->H()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0}, Le1/b;->I()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x80

    new-array v0, v0, [B

    const-string v2, "verify license before "

    const-string v9, "OfflineAuth"

    invoke-static {v9, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ln0/e$a;->d:Ljava/lang/String;

    iget-object v5, p0, Ln0/e$a;->f:Ljava/lang/String;

    iget-object v6, p0, Ln0/e$a;->c:Ljava/lang/String;

    move-object v2, v8

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSVerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v2

    iput v2, p0, Ln0/e$a;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verify result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ln0/e$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get appIdStr="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Ln0/e$a;->a:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Ln0/e$a;->d:Ljava/lang/String;

    new-instance v1, La1/b;

    invoke-direct {v1, v8, v0}, La1/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "embedded statistics start exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Ln0/e$a;->a:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Ln0/e$a;->a:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_1

    const/4 v1, -0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
