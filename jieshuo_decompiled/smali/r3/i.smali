.class public Lr3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr3/i;->b:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lr3/i;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lr3/i;[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr3/i;->b:I

    iget-object v1, p1, Lr3/i;->a:[Ljava/lang/String;

    if-nez p2, :cond_0

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lr3/i;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    array-length v1, v1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lr3/i;->a:[Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lr3/i;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lr3/i;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-object v1, p2, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lr3/i;->a:[Ljava/lang/String;

    iget-object v2, p1, Lr3/i;->a:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v2, v0

    aget-object v3, p2, v0

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "components cannot contain null or empty strings"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr3/i;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lr3/i;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    check-cast p1, Lr3/i;

    iget-object v2, p1, Lr3/i;->a:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, p0, Lr3/i;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lr3/i;->a:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget-object v4, p1, Lr3/i;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lr3/i;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr3/i;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget v2, p0, Lr3/i;->b:I

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lr3/i;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lr3/i;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lr3/i;->b()I

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lr3/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
