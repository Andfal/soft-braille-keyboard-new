.class public Lcom/iflytek/sparkchain/media/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    sput-object v0, Lcom/iflytek/sparkchain/media/a/a;->a:Ljava/util/Locale;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/sparkchain/media/a/b;->a:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/sparkchain/media/a/a;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/iflytek/sparkchain/media/a/c;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/iflytek/sparkchain/media/a/a;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/iflytek/sparkchain/media/a/d;->a:[Ljava/lang/String;

    :cond_1
    :goto_0
    if-lez p0, :cond_2

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object p0, v0, p0

    return-object p0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/iflytek/sparkchain/media/a/a;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/sparkchain/media/a/b;->b:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/sparkchain/media/a/a;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/iflytek/sparkchain/media/a/c;->b:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/iflytek/sparkchain/media/a/a;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/iflytek/sparkchain/media/a/d;->b:[Ljava/lang/String;

    :cond_1
    :goto_0
    if-ltz p0, :cond_2

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object p0, v0, p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method
