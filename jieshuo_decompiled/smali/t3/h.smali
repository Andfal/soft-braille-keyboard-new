.class public Lt3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lu3/f;

.field private b:Lu3/f;

.field private c:Lu3/f;

.field private d:Lu3/f;

.field private e:Lu3/f;

.field private f:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v1, v0, [B

    iput-object v1, p0, Lt3/h;->f:[B

    invoke-static {p1, v1}, Lu3/d;->a(Ljava/io/InputStream;[B)I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "s"

    :goto_0
    const-string v2, " byte"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unable to read entire header; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " read; expected "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " bytes"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance p1, Lu3/h;

    const/4 v0, 0x0

    iget-object v1, p0, Lt3/h;->f:[B

    invoke-direct {p1, v0, v1}, Lu3/h;-><init>(I[B)V

    invoke-virtual {p1}, Lu3/h;->a()J

    move-result-wide v0

    const-wide v2, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    new-instance p1, Lu3/f;

    const/16 v0, 0x2c

    iget-object v1, p0, Lt3/h;->f:[B

    invoke-direct {p1, v0, v1}, Lu3/f;-><init>(I[B)V

    iput-object p1, p0, Lt3/h;->a:Lu3/f;

    new-instance p1, Lu3/f;

    const/16 v0, 0x30

    iget-object v1, p0, Lt3/h;->f:[B

    invoke-direct {p1, v0, v1}, Lu3/f;-><init>(I[B)V

    iput-object p1, p0, Lt3/h;->b:Lu3/f;

    new-instance p1, Lu3/f;

    const/16 v0, 0x3c

    iget-object v1, p0, Lt3/h;->f:[B

    invoke-direct {p1, v0, v1}, Lu3/f;-><init>(I[B)V

    iput-object p1, p0, Lt3/h;->c:Lu3/f;

    new-instance p1, Lu3/f;

    const/16 v0, 0x44

    iget-object v1, p0, Lt3/h;->f:[B

    invoke-direct {p1, v0, v1}, Lu3/f;-><init>(I[B)V

    iput-object p1, p0, Lt3/h;->d:Lu3/f;

    new-instance p1, Lu3/f;

    const/16 v0, 0x48

    iget-object v1, p0, Lt3/h;->f:[B

    invoke-direct {p1, v0, v1}, Lu3/f;-><init>(I[B)V

    iput-object p1, p0, Lt3/h;->e:Lu3/f;

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "Invalid header signature; read "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu3/h;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, ", expected "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()[I
    .locals 5

    const/16 v0, 0x6d

    new-array v1, v0, [I

    const/16 v2, 0x4c

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lt3/h;->f:[B

    invoke-static {v4, v2}, Lu3/g;->b([BI)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lt3/h;->a:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lt3/h;->b:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lt3/h;->c:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lt3/h;->e:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lt3/h;->d:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method
