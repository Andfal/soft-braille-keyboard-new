.class public Lt3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/i;


# instance fields
.field private a:[B

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v1, v0, [B

    iput-object v1, p0, Lt3/j;->a:[B

    invoke-static {p1, v1}, Lu3/d;->a(Ljava/io/InputStream;[B)I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    iput-boolean v2, p0, Lt3/j;->b:Z

    goto :goto_1

    :cond_0
    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v1, "s"

    :goto_0
    const-string v2, " byte"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unable to read entire block; "

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

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lt3/j;->b:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lt3/j;->b:Z

    return v0
.end method

.method public getData()[B
    .locals 2

    invoke-virtual {p0}, Lt3/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lt3/j;->a:[B

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot return empty data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
