.class final Lcom/nirenr/talkman/util/LuaStringUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/util/LuaStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final e:[C


# instance fields
.field private a:[C

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->e:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a:[C

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    iput p1, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static c([CI[CI)I
    .locals 4

    const/4 v0, 0x0

    move v1, p3

    :goto_0
    if-ge v0, p1, :cond_0

    aget-char v2, p0, v0

    add-int/lit8 v3, v1, 0x1

    aput-char v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p3

    return v1
.end method

.method private final e(II)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a:[C

    array-length v1, v0

    if-eq p1, v1, :cond_0

    new-array p1, p1, [C

    iget v1, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c:I

    iget v2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a:[C

    iput p2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(C)Lcom/nirenr/talkman/util/LuaStringUtil$a;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->d(II)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a:[C

    iget v2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c:I

    iget v3, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    add-int/2addr v2, v3

    aput-char p1, v0, v2

    add-int/2addr v3, v1

    iput v3, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/nirenr/talkman/util/LuaStringUtil$a;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->d(II)V

    array-length v1, v0

    iget-object v2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a:[C

    iget v3, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c:I

    iget v4, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c([CI[CI)I

    iget v0, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    return-object p0
.end method

.method public final d(II)V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    iput p1, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c:I

    add-int/2addr p1, v2

    add-int/2addr p1, p2

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a:[C

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a:[C

    iget v0, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c:I

    iget v2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    invoke-static {p1, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c:I

    iget v2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    add-int v3, v0, v2

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a:[C

    array-length v4, v4

    if-gt v3, v4, :cond_1

    if-ge v0, p1, :cond_5

    :cond_1
    add-int v0, p1, v2

    add-int/2addr v0, p2

    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    const/16 v0, 0x20

    goto :goto_0

    :cond_2
    mul-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_3

    mul-int/lit8 v0, v2, 0x2

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sub-int p1, v0, v2

    sub-int v1, p1, p2

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->e(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->e(II)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->a:[C

    iget v2, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->c:I

    iget v3, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/LuaStringUtil$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/LuaStringUtil$a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
