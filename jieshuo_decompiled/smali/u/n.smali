.class public final Lu/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/d;
.implements Lx/r;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw/d;",
        "Lx/r;",
        "Ljava/lang/Comparable<",
        "Lu/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lu/n;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/n$a;


# instance fields
.field private final a:I

.field private final b:Lw/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lu/n;->c:Ljava/util/HashMap;

    new-instance v0, Lu/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/n$a;-><init>(Lu/m;)V

    sput-object v0, Lu/n;->d:Lu/n$a;

    return-void
.end method

.method private constructor <init>(ILw/d;Lu/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lu/n;->a:I

    iput-object p2, p0, Lu/n;->b:Lw/d;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reg < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(ILw/d;Lu/h;Lu/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lu/n;-><init>(ILw/d;Lu/h;)V

    return-void
.end method

.method static bridge synthetic d(Lu/n;ILw/d;Lu/h;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lu/n;->g(ILw/d;Lu/h;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic e(ILw/d;Lu/h;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lu/n;->m(ILw/d;Lu/h;)I

    move-result p0

    return p0
.end method

.method private g(ILw/d;Lu/h;)Z
    .locals 0

    iget p3, p0, Lu/n;->a:I

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lu/n;->b:Lw/d;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static m(ILw/d;Lu/h;)I
    .locals 0

    const/4 p2, 0x0

    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p0

    return p2
.end method

.method private static n(ILw/d;Lu/h;)Lu/n;
    .locals 2

    sget-object v0, Lu/n;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu/n;->d:Lu/n$a;

    invoke-virtual {v1, p0, p1, p2}, Lu/n$a;->d(ILw/d;Lu/h;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/n;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lu/n$a;->e()Lu/n;

    move-result-object p0

    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static p(ILw/d;)Lu/n;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lu/n;->n(ILw/d;Lu/h;)Lu/n;

    move-result-object p0

    return-object p0
.end method

.method public static q(ILw/d;Lu/h;)Lu/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lu/n;->n(ILw/d;Lu/h;)Lu/n;

    move-result-object p0

    return-object p0
.end method

.method public static t(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private u(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lu/n;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lu/n;->b:Lw/d;

    invoke-interface {v1}, Lw/d;->getType()Lw/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lu/n;->b:Lw/d;

    if-eq v1, v2, :cond_2

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lu/n;->b:Lw/d;

    instance-of v2, v1, Lv/v;

    if-eqz v2, :cond_0

    check-cast v1, Lv/v;

    invoke-virtual {v1}, Lv/v;->l()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lu/n;->b:Lw/d;

    instance-of v1, p1, Lv/a;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lx/r;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lu/n;->b:Lw/d;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lu/n;->u(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lu/n;->b:Lw/d;

    invoke-interface {v0}, Lw/d;->b()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lu/n;->b:Lw/d;

    invoke-interface {v0}, Lw/d;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lu/n;

    invoke-virtual {p0, p1}, Lu/n;->f(Lu/n;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lu/n;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lu/n$a;

    if-eqz v0, :cond_0

    check-cast p1, Lu/n$a;

    invoke-static {p1}, Lu/n$a;->b(Lu/n$a;)I

    move-result v0

    invoke-static {p1}, Lu/n$a;->c(Lu/n$a;)Lw/d;

    move-result-object v2

    invoke-static {p1}, Lu/n$a;->a(Lu/n$a;)Lu/h;

    invoke-direct {p0, v0, v2, v1}, Lu/n;->g(ILw/d;Lu/h;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lu/n;

    iget v0, p1, Lu/n;->a:I

    iget-object p1, p1, Lu/n;->b:Lw/d;

    invoke-direct {p0, v0, p1, v1}, Lu/n;->g(ILw/d;Lu/h;)Z

    move-result p1

    return p1
.end method

.method public f(Lu/n;)I
    .locals 2

    iget v0, p0, Lu/n;->a:I

    iget v1, p1, Lu/n;->a:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lu/n;->b:Lw/d;

    invoke-interface {v0}, Lw/d;->getType()Lw/c;

    move-result-object v0

    iget-object p1, p1, Lu/n;->b:Lw/d;

    invoke-interface {p1}, Lw/d;->getType()Lw/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw/c;->d(Lw/c;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getType()Lw/c;
    .locals 1

    iget-object v0, p0, Lu/n;->b:Lw/d;

    invoke-interface {v0}, Lw/d;->getType()Lw/c;

    move-result-object v0

    return-object v0
.end method

.method public h(Lu/n;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lu/n;->r(Lu/n;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lu/n;->a:I

    iget p1, p1, Lu/n;->a:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lu/n;->a:I

    iget-object v1, p0, Lu/n;->b:Lw/d;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lu/n;->m(ILw/d;Lu/h;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lu/n;->b:Lw/d;

    invoke-interface {v0}, Lw/d;->getType()Lw/c;

    move-result-object v0

    invoke-virtual {v0}, Lw/c;->f()I

    move-result v0

    return v0
.end method

.method public j()Lu/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()I
    .locals 2

    iget v0, p0, Lu/n;->a:I

    invoke-virtual {p0}, Lu/n;->i()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lu/n;->a:I

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lu/n;->b:Lw/d;

    invoke-interface {v0}, Lw/d;->getType()Lw/c;

    move-result-object v0

    invoke-virtual {v0}, Lw/c;->m()Z

    move-result v0

    return v0
.end method

.method public r(Lu/n;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lu/n;->b:Lw/d;

    invoke-interface {v1}, Lw/d;->getType()Lw/c;

    move-result-object v1

    iget-object p1, p1, Lu/n;->b:Lw/d;

    invoke-interface {p1}, Lw/d;->getType()Lw/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Lw/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lu/n;->a:I

    invoke-static {v0}, Lu/n;->t(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu/n;->u(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(I)Lu/n;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lu/n;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lu/n;->w(I)Lu/n;

    move-result-object p1

    return-object p1
.end method

.method public w(I)Lu/n;
    .locals 2

    iget v0, p0, Lu/n;->a:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lu/n;->b:Lw/d;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lu/n;->q(ILw/d;Lu/h;)Lu/n;

    move-result-object p1

    return-object p1
.end method

.method public x(Lw/d;)Lu/n;
    .locals 2

    iget v0, p0, Lu/n;->a:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lu/n;->q(ILw/d;Lu/h;)Lu/n;

    move-result-object p1

    return-object p1
.end method
