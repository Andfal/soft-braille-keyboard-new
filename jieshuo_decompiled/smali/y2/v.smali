.class public final Ly2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lu2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/v$a;,
        Ly2/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ln2/h<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Lu2/a;"
    }
.end annotation


# static fields
.field public static final b:Ly2/v$b;


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/v$b;-><init>(Lt2/d;)V

    sput-object v0, Ly2/v;->b:Ly2/v$b;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/v;->a:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;Lt2/d;)V
    .locals 0

    invoke-direct {p0, p1}, Ly2/v;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/util/Map;)Ly2/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ly2/v;"
        }
    .end annotation

    sget-object v0, Ly2/v;->b:Ly2/v$b;

    invoke-virtual {v0, p0}, Ly2/v$b;->g(Ljava/util/Map;)Ly2/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly2/v;->b:Ly2/v$b;

    iget-object v1, p0, Ly2/v;->a:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Ly2/v$b;->c(Ly2/v$b;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly2/v;->a:[Ljava/lang/String;

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final d()Ly2/v$a;
    .locals 3

    new-instance v0, Ly2/v$a;

    invoke-direct {v0}, Ly2/v$a;-><init>()V

    invoke-virtual {v0}, Ly2/v$a;->f()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ly2/v;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Lo2/k;->q(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ly2/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly2/v;->a:[Ljava/lang/String;

    check-cast p1, Ly2/v;

    iget-object p1, p1, Ly2/v;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly2/v;->a:[Ljava/lang/String;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final h(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly2/v;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ly2/v;->b(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0, v2}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "Collections.unmodifiableList(result)"

    invoke-static {p1, v0}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lo2/k;->f()Ljava/util/List;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ly2/v;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ln2/h<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ly2/v;->size()I

    move-result v0

    new-array v1, v0, [Ln2/h;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ly2/v;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ln2/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln2/h;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lt2/b;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Ly2/v;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ly2/v;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ly2/v;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
