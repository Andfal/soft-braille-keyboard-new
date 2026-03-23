.class public final Lu/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lu/u;


# instance fields
.field private final a:Lv/v;

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu/u;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, Lu/u;-><init>(Lv/v;II)V

    sput-object v0, Lu/u;->d:Lu/u;

    return-void
.end method

.method public constructor <init>(Lv/v;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    if-lt p3, v0, :cond_0

    iput-object p1, p0, Lu/u;->a:Lv/v;

    iput p2, p0, Lu/u;->b:I

    iput p3, p0, Lu/u;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "line < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lu/u;->c:I

    return v0
.end method

.method public b(Lu/u;)Z
    .locals 1

    iget v0, p0, Lu/u;->c:I

    iget p1, p1, Lu/u;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lu/u;)Z
    .locals 2

    iget v0, p0, Lu/u;->c:I

    iget v1, p1, Lu/u;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lu/u;->a:Lv/v;

    iget-object p1, p1, Lu/u;->a:Lv/v;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lv/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lu/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lu/u;

    iget v2, p0, Lu/u;->b:I

    iget v3, p1, Lu/u;->b:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1}, Lu/u;->c(Lu/u;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lu/u;->a:Lv/v;

    invoke-virtual {v0}, Lv/v;->hashCode()I

    move-result v0

    iget v1, p0, Lu/u;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lu/u;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lu/u;->a:Lv/v;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lv/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Lu/u;->c:I

    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lu/u;->b:I

    if-gez v1, :cond_2

    const-string v1, "????"

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
