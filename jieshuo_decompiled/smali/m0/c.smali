.class public Lm0/c;
.super Lk0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk0/c<",
        "Lm0/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lm0/b;


# direct methods
.method public constructor <init>(Lm0/b;)V
    .locals 0

    invoke-direct {p0}, Lk0/c;-><init>()V

    iput-object p1, p0, Lm0/c;->a:Lm0/b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lm0/c;->e()Lm0/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lk0/e;
    .locals 1

    new-instance v0, Lm0/d;

    invoke-direct {v0}, Lm0/d;-><init>()V

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

    new-instance v1, Lm0/a;

    invoke-direct {v1}, Lm0/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public e()Lm0/b;
    .locals 1

    iget-object v0, p0, Lm0/c;->a:Lm0/b;

    return-object v0
.end method
