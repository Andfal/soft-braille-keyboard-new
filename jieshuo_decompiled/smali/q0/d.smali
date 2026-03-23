.class public Lq0/d;
.super Lq0/a;
.source "SourceFile"


# instance fields
.field private b:Ll1/b;

.field private c:Lq0/f;

.field private d:Lq0/e;

.field private e:Lq0/c;

.field private f:Ll0/f;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lq0/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lq0/d;->g:I

    iput v0, p0, Lq0/d;->h:I

    new-instance v0, Lq0/f;

    invoke-direct {v0}, Lq0/f;-><init>()V

    iput-object v0, p0, Lq0/d;->c:Lq0/f;

    new-instance v0, Lq0/e;

    invoke-direct {v0}, Lq0/e;-><init>()V

    iput-object v0, p0, Lq0/d;->d:Lq0/e;

    new-instance v0, Lq0/c;

    invoke-direct {v0}, Lq0/c;-><init>()V

    iput-object v0, p0, Lq0/d;->e:Lq0/c;

    return-void
.end method

.method static synthetic i(Lq0/d;I)I
    .locals 0

    iput p1, p0, Lq0/d;->h:I

    return p1
.end method

.method static synthetic j(Lq0/d;Ll1/h;)Ll1/h;
    .locals 0

    invoke-direct {p0, p1}, Lq0/d;->l(Ll1/h;)Ll1/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lq0/d;I)I
    .locals 0

    iput p1, p0, Lq0/d;->g:I

    return p1
.end method

.method private l(Ll1/h;)Ll1/h;
    .locals 2

    invoke-virtual {p1}, Ll1/h;->n()I

    move-result v0

    iget v1, p0, Lq0/d;->h:I

    if-ltz v0, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ll1/h;->q(I)V

    invoke-virtual {p1}, Ll1/h;->r()I

    move-result v0

    iget v1, p0, Lq0/d;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ll1/h;->t(I)V

    return-object p1
.end method


# virtual methods
.method public a()Ll0/f;
    .locals 2

    iget-object v0, p0, Lq0/d;->c:Lq0/f;

    new-instance v1, Lq0/d$a;

    invoke-direct {v1, p0}, Lq0/d$a;-><init>(Lq0/d;)V

    invoke-virtual {v0, v1}, Lq0/a;->h(Lo0/b;)V

    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    new-instance v1, Lq0/d$b;

    invoke-direct {v1, p0}, Lq0/d$b;-><init>(Lq0/d;)V

    invoke-virtual {v0, v1}, Lq0/a;->h(Lo0/b;)V

    iget-object v0, p0, Lq0/d;->c:Lq0/f;

    invoke-virtual {v0}, Lq0/a;->a()Ll0/f;

    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {v0}, Lq0/e;->a()Ll0/f;

    move-result-object v0

    iput-object v0, p0, Lq0/d;->f:Ll0/f;

    if-eqz v0, :cond_0

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->R:Lb1/n;

    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AllSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TAllSynthesizerParams;)V"
        }
    .end annotation

    check-cast p1, Ll1/b;

    iput-object p1, p0, Lq0/d;->b:Ll1/b;

    invoke-virtual {p1}, Ll1/b;->c()Lq0/f$b;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lq0/f$b;->z(I)V

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Lq0/f$b;->C(I)V

    iget-object v0, p0, Lq0/d;->c:Lq0/f;

    invoke-virtual {v0, p1}, Lq0/f;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lq0/d;->b:Ll1/b;

    invoke-virtual {p1}, Ll1/b;->h()Lq0/e$a;

    move-result-object p1

    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {v0, p1}, Lq0/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lq0/d;->e:Lq0/c;

    iget-object v0, p0, Lq0/d;->b:Ll1/b;

    invoke-virtual {p1, v0}, Lq0/c;->a(Ll1/b;)V

    return-void
.end method

.method public b()Ll0/f;
    .locals 2

    iget-object v0, p0, Lq0/d;->c:Lq0/f;

    invoke-virtual {v0}, Lq0/a;->b()Ll0/f;

    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {v0}, Lq0/e;->b()Ll0/f;

    iget-object v0, p0, Lq0/d;->e:Lq0/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lq0/c;->a(Ll1/b;)V

    return-object v1
.end method

.method public b(Ll1/i;)Ll0/f;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lq0/d;->h:I

    iput v0, p0, Lq0/d;->g:I

    iget-object v0, p0, Lq0/d;->e:Lq0/c;

    invoke-virtual {v0}, Lq0/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq0/d;->c:Lq0/f;

    invoke-virtual {v0, p1}, Lq0/f;->b(Ll1/i;)Ll0/f;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "online synthesize tts error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ll0/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MixSynthesizer"

    invoke-static {v2, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ll0/f;->d()Lb1/n;

    move-result-object v1

    sget-object v2, Lb1/n;->e:Lb1/n;

    if-eq v1, v2, :cond_0

    sget-object v2, Lb1/n;->r:Lb1/n;

    if-eq v1, v2, :cond_0

    sget-object v2, Lb1/n;->i:Lb1/n;

    if-eq v1, v2, :cond_0

    sget-object v2, Lb1/n;->t:Lb1/n;

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {p1}, Ll1/i;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lq0/d;->g:I

    if-le v1, v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ll1/i;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {v0, p1}, Lq0/e;->b(Ll1/i;)Ll0/f;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {v0, p1}, Lq0/e;->b(Ll1/i;)Ll0/f;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public d(Ll1/g;)I
    .locals 2

    iget-object v0, p0, Lq0/d;->f:Ll0/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {v0, p1}, Lq0/e;->d(Ll1/g;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ll1/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ll1/g;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lq0/d;->b:Ll1/b;

    invoke-virtual {v1}, Ll1/b;->h()Lq0/e$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq0/e$a;->A(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lq0/e$a;->C(Ljava/lang/String;)V

    iget-object p1, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {p1}, Lq0/e;->a()Ll0/f;

    move-result-object p1

    iput-object p1, p0, Lq0/d;->f:Ll0/f;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Ll0/f;->b()I

    move-result p1

    return p1
.end method

.method public e(Ll1/f;)I
    .locals 1

    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {v0, p1}, Lq0/e;->e(Ll1/f;)I

    move-result p1

    return p1
.end method

.method public f(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {v0, p1}, Lq0/e;->f(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public g(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lq0/d;->d:Lq0/e;

    invoke-virtual {v0, p1}, Lq0/e;->g(Ll1/e;)I

    move-result p1

    return p1
.end method
