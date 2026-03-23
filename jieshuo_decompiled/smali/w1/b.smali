.class public final Lw1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/b$a;
    }
.end annotation


# instance fields
.field private final a:Lv1/c;


# direct methods
.method public constructor <init>(Lv1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/b;->a:Lv1/c;

    return-void
.end method


# virtual methods
.method public a(Lt1/e;Lz1/a;)Lt1/t;
    .locals 3
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

    invoke-virtual {p2}, Lz1/a;->e()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lz1/a;->c()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Lv1/b;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lz1/a;->b(Ljava/lang/reflect/Type;)Lz1/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lt1/e;->l(Lz1/a;)Lt1/t;

    move-result-object v1

    iget-object v2, p0, Lw1/b;->a:Lv1/c;

    invoke-virtual {v2, p2}, Lv1/c;->a(Lz1/a;)Lv1/i;

    move-result-object p2

    new-instance v2, Lw1/b$a;

    invoke-direct {v2, p1, v0, v1, p2}, Lw1/b$a;-><init>(Lt1/e;Ljava/lang/reflect/Type;Lt1/t;Lv1/i;)V

    return-object v2
.end method
