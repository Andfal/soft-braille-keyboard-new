.class public Lcom/iflytek/sparkchain/core/AiImage;
.super Lcom/iflytek/sparkchain/core/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/AiImage$Holder;
    }
.end annotation


# static fields
.field public static ENCODING_BMP:Ljava/lang/String; = "bmp"

.field public static ENCODING_DEFAULT:Ljava/lang/String; = "jpg"

.field public static ENCODING_JPEG:Ljava/lang/String; = "jpeg"

.field public static ENCODING_JPG:Ljava/lang/String; = "jpg"

.field public static ENCODING_PNG:Ljava/lang/String; = "png"

.field public static ENCODING_TIFF:Ljava/lang/String; = "tiff"

.field public static ENCODING_WEBP:Ljava/lang/String; = "webp"


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

.method public static get(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiImage$Holder;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/AiImage$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sparkchain/core/AiImage$Holder;-><init>(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiImage$1;)V

    return-object v0
.end method
