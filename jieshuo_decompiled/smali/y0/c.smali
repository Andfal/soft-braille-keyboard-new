.class public Ly0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/c;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ly0/c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ly0/c;->b:Ljava/util/Map;

    sget-object v1, Lb1/g;->k:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lq1/b;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/baidu/tts/client/model/ModelFileBags;Lz0/d;)V
    .locals 0

    invoke-virtual {p2, p1}, Lz0/d;->h(Lcom/baidu/tts/client/model/ModelFileBags;)V

    invoke-virtual {p0, p2}, Ly0/c;->c(Lz0/d;)Z

    return-void
.end method

.method public c(Lz0/d;)Z
    .locals 3

    iget-object v0, p0, Ly0/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lz0/d;->n(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ly0/c;->b:Ljava/util/Map;

    invoke-static {v0}, Lq1/b;->g(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ly0/c;->b:Ljava/util/Map;

    sget-object v2, Lb1/g;->k:Lb1/g;

    invoke-virtual {v2}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Ly0/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lz0/d;->j(Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Ly0/e;->b()Ly0/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Ly0/e;->g(Ljava/lang/String;)Ly0/b;

    move-result-object p1

    iget-object v0, p0, Ly0/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ly0/b;->l(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ly0/c;->b:Ljava/util/Map;

    sget-object v1, Lb1/g;->j:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lq1/b;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ly0/c;->b:Ljava/util/Map;

    sget-object v1, Lb1/g;->i:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lq1/b;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
