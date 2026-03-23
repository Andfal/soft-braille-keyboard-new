.class Lw3/a3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field private c:S

.field d:Ljava/lang/Object;

.field transient e:Lw3/a3$c;

.field transient f:Lw3/a3$c;


# direct methods
.method constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a3$c;->a:Ljava/lang/Object;

    iput p2, p0, Lw3/a3$c;->b:I

    int-to-short p1, p3

    iput-short p1, p0, Lw3/a3$c;->c:S

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget-short v0, p0, Lw3/a3$c;->c:S

    return v0
.end method

.method b(Lw3/m;Lw3/z2;)Lw3/a3;
    .locals 1

    iget-object p1, p0, Lw3/a3$c;->d:Ljava/lang/Object;

    iget-short v0, p0, Lw3/a3$c;->c:S

    invoke-static {p2, p1, v0}, Lw3/a3;->L(Lw3/z2;Ljava/lang/Object;I)Lw3/a3;

    move-result-object p1

    return-object p1
.end method

.method c(Lw3/z2;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lw3/a3$c;->d:Ljava/lang/Object;

    return-object p1
.end method

.method declared-synchronized d(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lw3/a3;->Q(I)V

    int-to-short p1, p1

    iput-short p1, p0, Lw3/a3$c;->c:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method e(Ljava/lang/Object;Lw3/z2;Lw3/z2;)Z
    .locals 3

    iget-short v0, p0, Lw3/a3$c;->c:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p1

    invoke-virtual {p1}, Lw3/m;->L()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    iget-object p2, p0, Lw3/a3$c;->a:Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "msg.modify.readonly"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_1
    if-ne p2, p3, :cond_2

    iput-object p1, p0, Lw3/a3$c;->d:Ljava/lang/Object;

    return v1

    :cond_2
    return v2
.end method
