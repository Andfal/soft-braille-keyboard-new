.class public Lcom/iflytek/sparkchain/core/AiText;
.super Lcom/iflytek/sparkchain/core/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/AiText$Holder;
    }
.end annotation


# static fields
.field public static COMPRESS_DEFAULT:Ljava/lang/String; = "raw"

.field public static COMPRESS_GZIP:Ljava/lang/String; = "gzip"

.field public static COMPRESS_RAW:Ljava/lang/String; = "raw"

.field public static ENCODING_DEFAULT:Ljava/lang/String; = "utf8"

.field public static ENCODING_GB2312:Ljava/lang/String; = "gb2312"

.field public static ENCODING_GBK:Ljava/lang/String; = "gbk"

.field public static ENCODING_UTF8:Ljava/lang/String; = "utf8"

.field public static FORMAT_DEFAULT:Ljava/lang/String; = "plain"

.field public static FORMAT_JSON:Ljava/lang/String; = "json"

.field public static FORMAT_PLAIN:Ljava/lang/String; = "plain"

.field public static FORMAT_XML:Ljava/lang/String; = "xml"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/a;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiText$Holder;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/AiText$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sparkchain/core/AiText$Holder;-><init>(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiText$1;)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    const-string p0, "text"

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/AiText;->get(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiText$Holder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->data(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AiText$Holder;

    sget-object v0, Lcom/iflytek/sparkchain/core/AiText;->COMPRESS_GZIP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiText$Holder;->compress(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiText$Holder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->valid()Lcom/iflytek/sparkchain/core/a;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AiText;

    return-void
.end method
