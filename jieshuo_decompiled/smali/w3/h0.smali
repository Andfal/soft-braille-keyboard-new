.class public Lw3/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/h0$b;,
        Lw3/h0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Lw3/h0$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lw3/h0$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lw3/h0$a;

.field private c:Lw3/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lw3/h0;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lw3/h0;->b:Lw3/h0$a;

    iput-object v0, p0, Lw3/h0;->c:Lw3/h0$a;

    return-void
.end method

.method static bridge synthetic a()Lw3/h0$a;
    .locals 1

    invoke-static {}, Lw3/h0;->f()Lw3/h0$a;

    move-result-object v0

    return-object v0
.end method

.method private static f()Lw3/h0$a;
    .locals 1

    new-instance v0, Lw3/h0$a;

    invoke-direct {v0}, Lw3/h0$a;-><init>()V

    invoke-virtual {v0}, Lw3/h0$a;->a()Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lw3/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lw3/h0$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lw3/h0;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/h0$a;

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lw3/h0;->b:Lw3/h0$a;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lw3/h0;->c:Lw3/h0$a;

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Lw3/h0$a;->a()Ljava/lang/Object;

    iput-object v1, p1, Lw3/h0$a;->e:Lw3/h0$a;

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lw3/h0$a;->d:Lw3/h0$a;

    iput-object v0, p0, Lw3/h0;->b:Lw3/h0$a;

    iput-object v1, v0, Lw3/h0$a;->e:Lw3/h0$a;

    iget-object v1, v0, Lw3/h0$a;->d:Lw3/h0$a;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lw3/h0$a;->e:Lw3/h0$a;

    iget-object v2, p1, Lw3/h0$a;->d:Lw3/h0$a;

    iput-object v2, v0, Lw3/h0$a;->d:Lw3/h0$a;

    iput-object v1, p1, Lw3/h0$a;->e:Lw3/h0$a;

    iget-object v1, p1, Lw3/h0$a;->d:Lw3/h0$a;

    if-eqz v1, :cond_3

    :goto_0
    iput-object v0, v1, Lw3/h0$a;->e:Lw3/h0$a;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lw3/h0;->c:Lw3/h0$a;

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lw3/h0$a;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lw3/h0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/h0$a;

    invoke-virtual {v1}, Lw3/h0$a;->a()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw3/h0;->b:Lw3/h0$a;

    if-eqz v0, :cond_1

    invoke-static {}, Lw3/h0;->f()Lw3/h0$a;

    move-result-object v0

    iget-object v1, p0, Lw3/h0;->c:Lw3/h0$a;

    iput-object v0, v1, Lw3/h0$a;->d:Lw3/h0$a;

    iput-object v0, p0, Lw3/h0;->c:Lw3/h0$a;

    iput-object v0, p0, Lw3/h0;->b:Lw3/h0$a;

    :cond_1
    iget-object v0, p0, Lw3/h0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lw3/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lw3/h0$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lw3/h0;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/h0$a;

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-object p1, p1, Lw3/h0$a;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Lw3/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lw3/h0$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lw3/h0;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lw3/h0$a;

    invoke-direct {v0, p1, p2}, Lw3/h0$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lw3/h0;->a:Ljava/util/HashMap;

    invoke-static {p1, v0, v0}, Lw3/g0;->a(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/h0$a;

    if-nez p1, :cond_1

    iget-object p1, p0, Lw3/h0;->b:Lw3/h0$a;

    if-nez p1, :cond_0

    iput-object v0, p0, Lw3/h0;->c:Lw3/h0$a;

    iput-object v0, p0, Lw3/h0;->b:Lw3/h0$a;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw3/h0;->c:Lw3/h0$a;

    iput-object v0, p1, Lw3/h0$a;->d:Lw3/h0$a;

    iput-object p1, v0, Lw3/h0$a;->e:Lw3/h0$a;

    iput-object v0, p0, Lw3/h0;->c:Lw3/h0$a;

    goto :goto_0

    :cond_1
    iput-object p2, p1, Lw3/h0$a;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lw3/h0$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw3/h0$b;

    iget-object v1, p0, Lw3/h0;->b:Lw3/h0$a;

    invoke-direct {v0, v1}, Lw3/h0$b;-><init>(Lw3/h0$a;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lw3/h0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
