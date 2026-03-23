.class public Le4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/StringBuffer;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Le4/b;->a:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Le4/b;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget-char v2, p1, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    iget-boolean v3, p0, Le4/b;->b:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Le4/b;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, Le4/b;->b:Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Le4/b;->b:Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Le4/b;->a:Ljava/lang/StringBuffer;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le4/b;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
