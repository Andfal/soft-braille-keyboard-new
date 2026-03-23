.class public Lcom/unisound/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0x1

.field private static d:Lcom/unisound/sdk/y;


# instance fields
.field private c:J

.field private e:Lcn/yunzhisheng/asrfix/JniAsrFix;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/sdk/f;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/f;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v1, p0, Lcom/unisound/sdk/f;->c:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/unisound/sdk/f;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v1, p0, Lcom/unisound/sdk/f;->c:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    iget-wide v0, p0, Lcom/unisound/sdk/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "compile  compileUserData fail handle=0"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/unisound/sdk/f;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v2, p0, Lcom/unisound/sdk/f;->c:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcn/yunzhisheng/asrfix/JniAsrFix;->partialCompileUserData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p2, "compile  compileUserData ok"

    invoke-static {p2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return p1

    :cond_1
    const/16 p2, -0xa

    if-ne p1, p2, :cond_2

    const-string p1, "compile compileUserData partialfile error, autofix ok"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "compile  compileUserData fail code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    iget-object v0, p0, Lcom/unisound/sdk/f;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/unisound/sdk/y;)V
    .locals 0

    sput-object p1, Lcom/unisound/sdk/f;->d:Lcom/unisound/sdk/y;

    return-void
.end method

.method public a()Z
    .locals 5

    iget-wide v0, p0, Lcom/unisound/sdk/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a()Lcn/yunzhisheng/asrfix/JniAsrFix;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/f;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->initUserDataCompiler(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/sdk/f;->c:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compile  initUserDataCompiler handle="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/unisound/sdk/f;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/unisound/sdk/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/f;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->unloadGrammar(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 6

    iget-wide v0, p0, Lcom/unisound/sdk/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string v0, "compile  destroyUserDataCompiler"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/f;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v4, p0, Lcom/unisound/sdk/f;->c:J

    invoke-virtual {v0, v4, v5}, Lcn/yunzhisheng/asrfix/JniAsrFix;->destroyUserDataCompiler(J)V

    iput-wide v2, p0, Lcom/unisound/sdk/f;->c:J

    :cond_0
    return-void
.end method
