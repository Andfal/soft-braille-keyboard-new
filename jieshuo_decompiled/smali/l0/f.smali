.class public Ll0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Throwable;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ld1/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ll0/f;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Ll0/f;->d:Ld1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ld1/b;->b(Ll0/f;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Ll0/f;->b:I

    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/f;->d:Ld1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ld1/b;->c(Ll0/f;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll0/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "TtsErrorFlyweight is null"

    :goto_0
    return-object v0
.end method

.method public d()Lb1/n;
    .locals 1

    iget-object v0, p0, Ll0/f;->d:Ld1/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ld1/a;->a()Lb1/n;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ll0/f;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public g()Ld1/b;
    .locals 1

    iget-object v0, p0, Ll0/f;->d:Ld1/b;

    return-object v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Ll0/f;->b:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll0/f;->c:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Ll0/f;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public k(Ld1/b;)V
    .locals 0

    iput-object p1, p0, Ll0/f;->d:Ld1/b;

    return-void
.end method
