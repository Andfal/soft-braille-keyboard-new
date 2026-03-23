.class public Lw3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private final c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/k;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lw3/k;->b:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object p2, p0, Lw3/k;->b:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lw3/k;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw3/k;->d:Z

    return-void
.end method

.method private declared-synchronized a()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lw3/k;->d:Z

    if-nez v0, :cond_4

    iget v0, p0, Lw3/k;->c:I

    new-array v1, v0, [C

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v3, p0, Lw3/k;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v3, p0, Lw3/k;->b:Ljava/lang/CharSequence;

    :cond_0
    instance-of v4, v3, Lw3/k;

    if-eqz v4, :cond_2

    check-cast v3, Lw3/k;

    iget-boolean v4, v3, Lw3/k;->d:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Lw3/k;->a:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lw3/k;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v3, v3, Lw3/k;->b:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    :goto_0
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    :goto_1
    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lw3/k;->a:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lw3/k;->b:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/k;->d:Z

    :cond_4
    iget-object v0, p0, Lw3/k;->a:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    iget-boolean v0, p0, Lw3/k;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/k;->a:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lw3/k;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lw3/k;->c:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lw3/k;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/k;->a:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lw3/k;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lw3/k;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/k;->a:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lw3/k;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
