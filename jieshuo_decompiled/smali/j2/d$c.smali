.class Lj2/d$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/d;->Q(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lj2/d;


# direct methods
.method constructor <init>(Lj2/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj2/d$c;->c:Lj2/d;

    iput-object p2, p0, Lj2/d$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {}, Lj2/d;->v()I

    move-result p1

    iput p1, p0, Lj2/d$c;->a:I

    return-void
.end method

.method static bridge synthetic a(Lj2/d$c;)I
    .locals 0

    iget p0, p0, Lj2/d$c;->a:I

    return p0
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    new-instance v0, La/f;

    invoke-direct {v0}, La/f;-><init>()V

    iget-object v1, p0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v1}, Lj2/d;->l(Lj2/d;)I

    move-result v1

    iget-object v2, p0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v2}, Lj2/d;->l(Lj2/d;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v2}, Lj2/d;->m(Lj2/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, La/f;->m(IZ)V

    iget-object v1, p0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v1}, Lj2/d;->m(Lj2/d;)Z

    move-result v1

    invoke-virtual {v0, v1}, La/f;->n(Z)V

    iget-object v1, p0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v1}, Lj2/d;->k(Lj2/d;)Lcom/iflytek/msc/MscSynthesizer;

    move-result-object v2

    const/16 v3, 0x32

    iget-object v1, p0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v1}, Lj2/d;->n(Lj2/d;)I

    move-result v4

    iget-object v1, p0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v1}, Lj2/d;->e(Lj2/d;)I

    move-result v5

    iget-object v6, p0, Lj2/d$c;->b:Ljava/lang/String;

    new-instance v7, Lj2/d$c$a;

    invoke-direct {v7, p0, v0}, Lj2/d$c$a;-><init>(Lj2/d$c;La/f;)V

    invoke-virtual/range {v2 .. v7}, Lcom/iflytek/msc/MscSynthesizer;->synthesize(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I

    return-void
.end method
