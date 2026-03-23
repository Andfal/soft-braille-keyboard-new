.class public Lk2/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v2, v4, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v0, :cond_2

    aget-object v6, v2, v4

    aput v4, v6, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-gt v4, v1, :cond_3

    aget-object v6, v2, v3

    aput v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_2
    if-gt v4, v0, :cond_7

    add-int/lit8 v6, v4, -0x1

    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    :goto_3
    if-gt v9, v1, :cond_6

    add-int/lit8 v10, v9, -0x1

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v8, v12, :cond_5

    add-int/lit8 v13, v12, 0x20

    if-eq v8, v13, :cond_5

    add-int/lit8 v13, v8, 0x20

    if-ne v13, v12, :cond_4

    goto :goto_4

    :cond_4
    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v12, 0x0

    :goto_5
    aget-object v13, v2, v4

    aget-object v14, v2, v6

    aget v15, v14, v9

    add-int/2addr v15, v5

    aget v16, v13, v10

    add-int/lit8 v3, v16, 0x1

    aget v10, v14, v10

    add-int/2addr v10, v12

    invoke-static {v15, v3, v10}, Lk2/g0;->c(III)I

    move-result v3

    aput v3, v13, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v11, p1

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    aget-object v0, v2, v0

    aget v0, v0, v1

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)F
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[ \\-*_\n]"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    return v1

    :cond_2
    invoke-static {p0, p1}, Lk2/g0;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    sub-float/2addr v2, p0

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private static c(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    if-ge p0, p2, :cond_1

    move p2, p0

    :cond_1
    return p2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v2, p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v2, p1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/String;

    aput-object p0, v2, v1

    :cond_2
    return-object v2
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v1, p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method
