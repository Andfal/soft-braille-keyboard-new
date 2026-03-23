.class public Lo/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lo/c;


# direct methods
.method public constructor <init>(IILo/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-le p2, p1, :cond_1

    invoke-virtual {p3}, Lx/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lo/d$a;->a:I

    iput p2, p0, Lo/d$a;->b:I

    iput-object p3, p0, Lo/d$a;->c:Lo/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlers.isMutable()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end <= start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lo/d$a;)I
    .locals 4

    iget v0, p0, Lo/d$a;->a:I

    iget v1, p1, Lo/d$a;->a:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lo/d$a;->b:I

    iget v1, p1, Lo/d$a;->b:I

    if-ge v0, v1, :cond_2

    return v2

    :cond_2
    if-le v0, v1, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lo/d$a;->c:Lo/c;

    iget-object p1, p1, Lo/d$a;->c:Lo/c;

    invoke-virtual {v0, p1}, Lo/c;->q(Lo/c;)I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lo/d$a;->b:I

    return v0
.end method

.method public c()Lo/c;
    .locals 1

    iget-object v0, p0, Lo/d$a;->c:Lo/c;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/d$a;

    invoke-virtual {p0, p1}, Lo/d$a;->a(Lo/d$a;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lo/d$a;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lo/d$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lo/d$a;

    invoke-virtual {p0, p1}, Lo/d$a;->a(Lo/d$a;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lo/d$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/d$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/d$a;->c:Lo/c;

    invoke-virtual {v1}, Lx/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
