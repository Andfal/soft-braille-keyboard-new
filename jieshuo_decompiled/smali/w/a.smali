.class public final Lw/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lw/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lw/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lw/c;

.field private final c:Lw/b;

.field private d:Lw/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lw/a;->e:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lw/c;Lw/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lw/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lw/a;->b:Lw/c;

    iput-object p3, p0, Lw/a;->c:Lw/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lw/a;->d:Lw/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "parameterTypes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "returnType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static f(Ljava/lang/String;)Lw/a;
    .locals 8

    if-eqz p0, :cond_6

    sget-object v0, Lw/a;->e:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lw/a;->g(Ljava/lang/String;)[Lw/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw/c;->k(Ljava/lang/String;)Lw/c;

    move-result-object v0

    new-instance v3, Lw/b;

    invoke-direct {v3, v4}, Lw/b;-><init>(I)V

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v1, v2

    invoke-virtual {v3, v2, v5}, Lw/b;->x(ILw/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lw/a;

    invoke-direct {v1, p0, v0, v3}, Lw/a;-><init>(Ljava/lang/String;Lw/c;Lw/b;)V

    invoke-static {v1}, Lw/a;->h(Lw/a;)Lw/a;

    move-result-object p0

    return-object p0

    :cond_2
    move v6, v0

    :goto_2
    const/16 v7, 0x5b

    if-ne v5, v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_3
    const/16 v7, 0x4c

    if-ne v5, v7, :cond_5

    const/16 v5, 0x3b

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 v5, v6, 0x1

    :goto_3
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v0

    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static g(Ljava/lang/String;)[Lw/c;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    const-string v4, "bad descriptor"

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x29

    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    const/16 v6, 0x41

    if-lt v7, v6, :cond_1

    const/16 v6, 0x5a

    if-gt v7, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    sub-int/2addr v0, v2

    if-eq v1, v0, :cond_4

    add-int/2addr v1, v2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    new-array p0, v5, [Lw/c;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static h(Lw/a;)Lw/a;
    .locals 3

    sget-object v0, Lw/a;->e:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lw/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/a;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lw/a;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lw/a;->b:Lw/c;

    iget-object v2, p1, Lw/a;->b:Lw/c;

    invoke-virtual {v1, v2}, Lw/c;->d(Lw/c;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lw/a;->c:Lw/b;

    invoke-virtual {v1}, Lx/h;->size()I

    move-result v1

    iget-object v2, p1, Lw/a;->c:Lw/b;

    invoke-virtual {v2}, Lx/h;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lw/a;->c:Lw/b;

    invoke-virtual {v5, v4}, Lw/b;->q(I)Lw/c;

    move-result-object v5

    iget-object v6, p1, Lw/a;->c:Lw/b;

    invoke-virtual {v6, v4}, Lw/b;->q(I)Lw/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Lw/c;->d(Lw/c;)I

    move-result v5

    if-eqz v5, :cond_2

    return v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    if-le v1, v2, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lw/b;
    .locals 6

    iget-object v0, p0, Lw/a;->d:Lw/b;

    if-nez v0, :cond_3

    iget-object v0, p0, Lw/a;->c:Lw/b;

    invoke-virtual {v0}, Lx/h;->size()I

    move-result v0

    new-instance v1, Lw/b;

    invoke-direct {v1, v0}, Lw/b;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lw/a;->c:Lw/b;

    invoke-virtual {v4, v2}, Lw/b;->q(I)Lw/c;

    move-result-object v4

    invoke-virtual {v4}, Lw/c;->n()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Lw/c;->n:Lw/c;

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v1, v2, v4}, Lw/b;->x(ILw/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lw/a;->c:Lw/b;

    :goto_1
    iput-object v1, p0, Lw/a;->d:Lw/b;

    :cond_3
    iget-object v0, p0, Lw/a;->d:Lw/b;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lw/a;

    invoke-virtual {p0, p1}, Lw/a;->a(Lw/a;)I

    move-result p1

    return p1
.end method

.method public d()Lw/b;
    .locals 1

    iget-object v0, p0, Lw/a;->c:Lw/b;

    return-object v0
.end method

.method public e()Lw/c;
    .locals 1

    iget-object v0, p0, Lw/a;->b:Lw/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lw/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lw/a;->a:Ljava/lang/String;

    check-cast p1, Lw/a;

    iget-object p1, p1, Lw/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lw/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Lw/c;)Lw/a;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw/a;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lw/a;->c:Lw/b;

    invoke-virtual {v1, p1}, Lw/b;->z(Lw/c;)Lw/b;

    move-result-object p1

    invoke-virtual {p1}, Lx/o;->f()V

    new-instance v1, Lw/a;

    iget-object v2, p0, Lw/a;->b:Lw/c;

    invoke-direct {v1, v0, v2, p1}, Lw/a;-><init>(Ljava/lang/String;Lw/c;Lw/b;)V

    invoke-static {v1}, Lw/a;->h(Lw/a;)Lw/a;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw/a;->a:Ljava/lang/String;

    return-object v0
.end method
