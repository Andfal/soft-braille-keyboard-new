.class public Ls3/b;
.super Ls3/d;
.source "SourceFile"


# instance fields
.field private t:Ljava/util/List;

.field private u:Ljava/util/Set;


# direct methods
.method protected constructor <init>(I[BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls3/d;-><init>(I[BI)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls3/b;->t:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ls3/b;->u:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ls3/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls3/b;->t:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ls3/b;->u:Ljava/util/Set;

    invoke-virtual {p0, p1}, Ls3/d;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ls3/d;->q(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ls3/d;->p(B)V

    invoke-virtual {p0, p1}, Ls3/d;->r(I)V

    invoke-virtual {p0, v0}, Ls3/d;->n(B)V

    return-void
.end method


# virtual methods
.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public u(Ls3/d;)V
    .locals 3

    invoke-virtual {p1}, Ls3/d;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls3/b;->u:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ls3/b;->u:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ls3/b;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Duplicate name \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Ls3/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
