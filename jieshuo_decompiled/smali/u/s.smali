.class public final Lu/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lu/c;

.field private final b:I

.field private c:[Lx/k;

.field private d:Lx/k;


# direct methods
.method public constructor <init>(Lu/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    iput-object p1, p0, Lu/s;->a:Lu/c;

    iput p2, p0, Lu/s;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lu/s;->c:[Lx/k;

    iput-object p1, p0, Lu/s;->d:Lx/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstLabel < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "blocks == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 13

    iget-object v0, p0, Lu/s;->a:Lu/c;

    invoke-virtual {v0}, Lx/m;->q()I

    move-result v0

    new-array v1, v0, [Lx/k;

    new-instance v2, Lx/k;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lx/k;-><init>(I)V

    iget-object v4, p0, Lu/s;->a:Lu/c;

    invoke-virtual {v4}, Lx/h;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    iget-object v7, p0, Lu/s;->a:Lu/c;

    invoke-virtual {v7, v6}, Lu/c;->v(I)Lu/b;

    move-result-object v7

    invoke-virtual {v7}, Lu/b;->a()I

    move-result v8

    invoke-virtual {v7}, Lu/b;->g()Lx/k;

    move-result-object v7

    invoke-virtual {v7}, Lx/k;->size()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2, v8}, Lx/k;->i(I)V

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    invoke-virtual {v7, v10}, Lx/k;->l(I)I

    move-result v11

    aget-object v12, v1, v11

    if-nez v12, :cond_1

    new-instance v12, Lx/k;

    invoke-direct {v12, v3}, Lx/k;-><init>(I)V

    aput-object v12, v1, v11

    :cond_1
    invoke-virtual {v12, v8}, Lx/k;->i(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v5, v0, :cond_5

    aget-object v3, v1, v5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lx/k;->q()V

    invoke-virtual {v3}, Lx/o;->f()V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lx/k;->q()V

    invoke-virtual {v2}, Lx/o;->f()V

    iget v0, p0, Lu/s;->b:I

    aget-object v3, v1, v0

    if-nez v3, :cond_6

    sget-object v3, Lx/k;->e:Lx/k;

    aput-object v3, v1, v0

    :cond_6
    iput-object v1, p0, Lu/s;->c:[Lx/k;

    iput-object v2, p0, Lu/s;->d:Lx/k;

    return-void
.end method


# virtual methods
.method public b()Lu/c;
    .locals 1

    iget-object v0, p0, Lu/s;->a:Lu/c;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lu/s;->b:I

    return v0
.end method

.method public d(I)Lx/k;
    .locals 3

    iget-object v0, p0, Lu/s;->d:Lx/k;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lu/s;->a()V

    :cond_0
    iget-object v0, p0, Lu/s;->c:[Lx/k;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such block: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
