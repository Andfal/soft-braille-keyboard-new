.class Lw1/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/h;
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
    .locals 1
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

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    new-instance p2, Lw1/h;

    invoke-direct {p2, p1}, Lw1/h;-><init>(Lt1/e;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
