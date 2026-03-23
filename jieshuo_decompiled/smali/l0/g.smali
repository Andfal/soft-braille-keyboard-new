.class public Ll0/g;
.super Lk0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk0/c<",
        "Ll0/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ll0/g;->e()Ll0/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Lk0/e;
    .locals 1

    new-instance v0, Ll0/h;

    invoke-direct {v0}, Ll0/h;-><init>()V

    invoke-interface {v0}, Lk0/e;->a()V

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk0/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ll0/a;

    invoke-direct {v1}, Ll0/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ll0/e;

    invoke-direct {v1}, Ll0/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ll0/d;

    invoke-direct {v1}, Ll0/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ll0/b;

    invoke-direct {v1}, Ll0/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public e()Ll0/c;
    .locals 1

    new-instance v0, Ln1/c;

    invoke-direct {v0}, Ln1/c;-><init>()V

    return-object v0
.end method
