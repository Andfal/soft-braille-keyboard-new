.class Lw1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt1/e;Lz1/a;)Lt1/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/e;",
            "Lz1/a<",
            "TT;>;)",
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lz1/a;->c()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/util/Date;

    if-ne p1, p2, :cond_0

    new-instance p1, Lw1/c;

    invoke-direct {p1}, Lw1/c;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
