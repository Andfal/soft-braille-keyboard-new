.class public Lt3/k;
.super Lt3/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    invoke-direct {p0}, Lt3/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    new-instance v1, Lt3/j;

    invoke-direct {v1, p1}, Lt3/j;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lt3/j;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lt3/j;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lt3/j;

    invoke-virtual {p0, p1}, Lt3/e;->d([Lt3/i;)V

    return-void

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic b(I)[Lt3/i;
    .locals 0

    invoke-super {p0, p1}, Lt3/e;->b(I)[Lt3/i;

    move-result-object p1

    return-object p1
.end method
