.class Lcom/androlua/LuaEditActivity$Word6Extractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Word6Extractor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isDeleted([B)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v1}, Lu3/g;->g([BI)I

    move-result v1

    const/16 v4, 0x75

    if-eq v1, v4, :cond_1

    const/16 v4, 0x76

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    :goto_1
    move v1, v3

    goto :goto_0

    :pswitch_0
    aget-byte v1, p1, v3

    goto :goto_2

    :pswitch_1
    aget-byte v1, p1, v3

    goto :goto_2

    :pswitch_2
    aget-byte v1, p1, v3

    goto :goto_2

    :pswitch_3
    aget-byte v1, p1, v3

    goto :goto_2

    :pswitch_4
    aget-byte v1, p1, v3

    goto :goto_2

    :pswitch_5
    aget-byte v1, p1, v3

    goto :goto_2

    :pswitch_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_7
    aget-byte v1, p1, v3

    goto :goto_2

    :pswitch_8
    add-int/lit8 v1, v3, 0x3

    goto :goto_0

    :pswitch_9
    add-int/lit8 v1, v3, 0x4

    goto :goto_0

    :pswitch_a
    add-int/lit8 v1, v3, 0x2

    goto :goto_0

    :pswitch_b
    aget-byte v1, p1, v3

    :goto_2
    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    :pswitch_c
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :pswitch_d
    add-int/lit8 v1, v3, 0x1

    aget-byte v2, p1, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_a
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x55
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public extractText([B)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lu3/g;->b([BI)I

    move-result v0

    const/16 v1, 0x1c

    invoke-static {p1, v1}, Lu3/g;->b([BI)I

    move-result v1

    const/16 v2, 0xb8

    invoke-static {p1, v2}, Lu3/g;->b([BI)I

    move-result v2

    const/16 v3, 0xbc

    invoke-static {p1, v3}, Lu3/g;->b([BI)I

    move-result v3

    new-instance v4, Lf4/a;

    invoke-direct {v4, p1, v2, v3, v0}, Lf4/a;-><init>([BIII)V

    invoke-virtual {v4}, Lf4/a;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Le4/b;

    invoke-direct {v3}, Le4/b;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp3/c;

    invoke-virtual {v4}, Lp3/j;->b()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4}, Lp3/j;->a()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v4}, Lp3/c;->d()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/androlua/LuaEditActivity$Word6Extractor;->isDeleted([B)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/String;

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v7, v5

    const-string v8, "Cp1252"

    invoke-direct {v4, p1, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v4}, Le4/b;->a(Ljava/lang/String;)V

    if-lt v6, v1, :cond_0

    :cond_1
    invoke-virtual {v3}, Le4/b;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
