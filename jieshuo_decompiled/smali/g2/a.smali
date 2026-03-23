.class public Lg2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ld4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg2/a;

    invoke-static {v0}, Ld4/b;->a(Ljava/lang/Class;)Ld4/a;

    move-result-object v0

    sput-object v0, Lg2/a;->a:Ld4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 5

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "ocr.lua"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getResourcesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaService;->getService()Lcom/androlua/LuaService;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u4e0d\u5b58\u5728\uff0c\u8bf7\u6dfb\u52a0\u6587\u4ef6"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    new-instance p0, Lg2/a$a;

    invoke-direct {p0, p1}, Lg2/a$a;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-virtual {v1, v0, v3}, Lcom/androlua/LuaService;->doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/androlua/util/AsyncTaskX;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/androlua/util/AsyncTaskX;

    return-object p0

    :cond_2
    return-object v2
.end method
