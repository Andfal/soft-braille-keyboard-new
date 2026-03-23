.class public Lw3/k2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lw3/k2;

.field private b:I

.field private c:I

.field private d:[Ljava/lang/Object;

.field private e:[I


# direct methods
.method constructor <init>(Lw3/k2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/k2$a;->a:Lw3/k2;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lw3/k2$a;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/k2$a;->d:[Ljava/lang/Object;

    iget v1, p0, Lw3/k2$a;->b:I

    aget-object v0, v0, v1

    sget-object v1, Lw3/x3;->c:Lw3/x3;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lw3/k2$a;->e:[I

    iget v1, p0, Lw3/k2$a;->b:I

    aget v0, v0, v1

    return v0
.end method

.method final d([Ljava/lang/Object;[II)V
    .locals 0

    iput-object p1, p0, Lw3/k2$a;->d:[Ljava/lang/Object;

    iput-object p2, p0, Lw3/k2$a;->e:[I

    const/4 p1, -0x1

    iput p1, p0, Lw3/k2$a;->b:I

    iput p3, p0, Lw3/k2$a;->c:I

    return-void
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lw3/k2$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iget v0, p0, Lw3/k2$a;->c:I

    if-nez v0, :cond_1

    iput v1, p0, Lw3/k2$a;->c:I

    iput v1, p0, Lw3/k2$a;->b:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lw3/k2$a;->b:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw3/k2$a;->b:I

    iget-object v0, p0, Lw3/k2$a;->d:[Ljava/lang/Object;

    iget v1, p0, Lw3/k2$a;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-static {}, Lw3/k2;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lw3/k2$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lw3/k2$a;->c:I

    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lw3/k2$a;->b:I

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lw3/k2$a;->a:Lw3/k2;

    invoke-virtual {v0, p0}, Lw3/k2;->f(Lw3/k2$a;)V

    invoke-virtual {p0}, Lw3/k2$a;->e()V

    return-void
.end method
