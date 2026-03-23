.class public final Lq/v;
.super Lq/t0;
.source "SourceFile"


# instance fields
.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq/m;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lq/t0;-><init>(Ljava/lang/String;Lq/m;I)V

    new-instance p1, Lq/u;

    invoke-direct {p1}, Lq/u;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lq/x;->i(I)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq/v;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lq/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq/v;->f:Ljava/util/List;

    return-object v0
.end method

.method protected q()V
    .locals 0

    return-void
.end method
