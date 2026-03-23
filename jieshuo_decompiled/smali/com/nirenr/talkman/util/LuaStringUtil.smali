.class public Lcom/nirenr/talkman/util/LuaStringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/util/LuaStringUtil$MatchFunc;,
        Lcom/nirenr/talkman/util/LuaStringUtil$a;,
        Lcom/nirenr/talkman/util/LuaStringUtil$b;,
        Lcom/nirenr/talkman/util/LuaStringUtil$c;
    }
.end annotation


# static fields
.field private static final a:[C

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "^$*+?.([%-"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/util/LuaStringUtil;->a:[C

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/nirenr/talkman/util/LuaStringUtil;->b:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    const/16 v3, 0x20

    if-ge v1, v2, :cond_f

    int-to-char v2, v1

    sget-object v4, Lcom/nirenr/talkman/util/LuaStringUtil;->b:[B

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v5, v6

    const/16 v6, 0x40

    if-lt v2, v3, :cond_4

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/16 v3, 0x40

    :goto_5
    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    const/16 v5, 0x61

    if-lt v2, v5, :cond_5

    const/16 v5, 0x66

    if-le v2, v5, :cond_7

    :cond_5
    const/16 v5, 0x41

    if-lt v2, v5, :cond_6

    const/16 v5, 0x46

    if-le v2, v5, :cond_7

    :cond_6
    const/16 v5, 0x30

    if-lt v2, v5, :cond_8

    const/16 v5, 0x39

    if-gt v2, v5, :cond_8

    :cond_7
    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    :cond_8
    const/16 v3, 0x21

    if-lt v2, v3, :cond_9

    const/16 v3, 0x2f

    if-le v2, v3, :cond_c

    :cond_9
    const/16 v3, 0x3a

    if-lt v2, v3, :cond_a

    if-le v2, v6, :cond_c

    :cond_a
    const/16 v3, 0x5b

    if-lt v2, v3, :cond_b

    const/16 v3, 0x60

    if-le v2, v3, :cond_c

    :cond_b
    const/16 v3, 0x7b

    if-lt v2, v3, :cond_d

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_d

    :cond_c
    aget-byte v2, v4, v1

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    :cond_d
    aget-byte v2, v4, v1

    and-int/lit8 v3, v2, 0x6

    if-eqz v3, :cond_e

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/nirenr/talkman/util/LuaStringUtil;->b:[B

    aput-byte v3, v0, v3

    const/16 v1, 0xd

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/nirenr/talkman/util/LuaStringUtil$b;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/nirenr/talkman/util/LuaStringUtil;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/nirenr/talkman/util/LuaStringUtil$b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/nirenr/talkman/util/LuaStringUtil$b;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5e

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Lcom/nirenr/talkman/util/LuaStringUtil$a;

    invoke-direct {v3, v0}, Lcom/nirenr/talkman/util/LuaStringUtil$a;-><init>(I)V

    new-instance v4, Lcom/nirenr/talkman/util/LuaStringUtil$c;

    invoke-direct {v4, p0, p1}, Lcom/nirenr/talkman/util/LuaStringUtil$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :cond_1
    if-ge v2, p3, :cond_3

    invoke-virtual {v4}, Lcom/nirenr/talkman/util/LuaStringUtil$c;->s()V

    invoke-virtual {v4, v5, v1}, Lcom/nirenr/talkman/util/LuaStringUtil$c;->j(II)I

    move-result v7

    if-eq v7, p1, :cond_2

    if-eq v7, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v3, v5, v7, p2}, Lcom/nirenr/talkman/util/LuaStringUtil$c;->b(Lcom/nirenr/talkman/util/LuaStringUtil$a;IILjava/lang/Object;)V

    move v5, v7

    move v6, v5

    goto :goto_1

    :cond_2
    if-ge v5, v0, :cond_3

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a(C)Lcom/nirenr/talkman/util/LuaStringUtil$a;

    move v5, v7

    :goto_1
    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b(Ljava/lang/String;)Lcom/nirenr/talkman/util/LuaStringUtil$a;

    new-instance p0, Lcom/nirenr/talkman/util/LuaStringUtil$b;

    invoke-virtual {v3}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/nirenr/talkman/util/LuaStringUtil$b;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method
