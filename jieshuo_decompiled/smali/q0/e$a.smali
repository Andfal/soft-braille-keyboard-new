.class public Lq0/e$a;
.super Ll1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/d<",
        "Lq0/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ll1/d;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lq0/e$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lq0/e$a;->i:Ljava/lang/String;

    iput-object v0, p0, Lq0/e$a;->j:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, p0, Lq0/e$a;->o:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lq0/e$a;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/e$a;->k:Ljava/lang/String;

    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/e$a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/e$a;->l:Ljava/lang/String;

    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/e$a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/e$a;->m:Ljava/lang/String;

    return-void
.end method

.method public F()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lq0/e$a;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/e$a;->n:Ljava/lang/String;

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/e$a;->o:Ljava/lang/String;

    return-void
.end method

.method public I(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lq1/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lq0/e$a;->p:Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public t(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lq1/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lq0/e$a;->h:Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public u()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lq0/e$a;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/e$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq0/e$a;->i:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lq1/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lq0/e$a;->j:Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/e$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq0/e$a;->m:Ljava/lang/String;

    return-object v0
.end method
