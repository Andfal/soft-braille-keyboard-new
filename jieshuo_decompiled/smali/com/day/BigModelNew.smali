.class public Lcom/day/BigModelNew;
.super Ly2/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/day/BigModelNew$RoleContent;,
        Lcom/day/BigModelNew$Text;,
        Lcom/day/BigModelNew$Choices;,
        Lcom/day/BigModelNew$Payload;,
        Lcom/day/BigModelNew$Header;,
        Lcom/day/BigModelNew$JsonParse;,
        Lcom/day/BigModelNew$MyThread;
    }
.end annotation


# static fields
.field public static ImageAddFlag:Ljava/lang/Boolean; = null

.field public static MyQuestion:Ljava/lang/String; = null

.field public static final NewQuestion:Ljava/lang/String; = "\u63cf\u8ff0\u56fe\u7247"

.field public static final appid:Ljava/lang/String; = "58da0ff1"

.field public static final gson:Lt1/e;

.field public static historyList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/day/BigModelNew$RoleContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final hostUrl:Ljava/lang/String; = "https://spark-api.cn-huabei-1.xf-yun.com/v2.1/image"

.field public static totalAnswer:Ljava/lang/String;

.field private static totalFlag:Ljava/lang/Boolean;


# instance fields
.field private final bs:[B

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

.field private userId:Ljava/lang/String;

.field private wsCloseFlag:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/day/BigModelNew;->historyList:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/day/BigModelNew;->totalAnswer:Ljava/lang/String;

    const-string v0, "\u63cf\u8ff0\u56fe\u7247"

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/day/BigModelNew;->ImageAddFlag:Ljava/lang/Boolean;

    new-instance v0, Lt1/e;

    invoke-direct {v0}, Lt1/e;-><init>()V

    sput-object v0, Lcom/day/BigModelNew;->gson:Lt1/e;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/day/BigModelNew;->totalFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 1

    invoke-direct {p0}, Ly2/g0;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/day/BigModelNew;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/day/BigModelNew;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/day/BigModelNew;->wsCloseFlag:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/day/BigModelNew;->bs:[B

    iput-object p4, p0, Lcom/day/BigModelNew;->mListener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    return-void
.end method

.method static bridge synthetic a(Lcom/day/BigModelNew;)[B
    .locals 0

    iget-object p0, p0, Lcom/day/BigModelNew;->bs:[B

    return-object p0
.end method

.method static bridge synthetic b(Lcom/day/BigModelNew;)Lcom/nirenr/talkman/ai/OcrResult$OCRListener;
    .locals 0

    iget-object p0, p0, Lcom/day/BigModelNew;->mListener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/day/BigModelNew;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/day/BigModelNew;->wsCloseFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static canAddHistory()Z
    .locals 4

    sget-object v0, Lcom/day/BigModelNew;->historyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/day/BigModelNew$RoleContent;

    iget-object v3, v3, Lcom/day/BigModelNew$RoleContent;->content:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const v0, 0x47868c00

    if-le v2, v0, :cond_1

    sget-object v0, Lcom/day/BigModelNew;->historyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static main([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/day/BigModelNew$1;

    invoke-direct {v0, p0, p1}, Lcom/day/BigModelNew$1;-><init>([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, p1}, Lcom/day/BigModelNew;->main2([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0
.end method

.method public static main2([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5f00\u59cb\uff1a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/day/BigModelNew;->totalFlag:Ljava/lang/Boolean;

    new-instance v0, Lcom/day/BigModelNew$3;

    invoke-direct {v0, p1, p0}, Lcom/day/BigModelNew$3;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;[B)V

    invoke-static {v0}, Lcom/nirenr/talkman/util/a;->y(Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static mainall([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/day/BigModelNew$2;

    invoke-direct {v0, p0, p1}, Lcom/day/BigModelNew$2;-><init>([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, p1}, Lcom/day/BigModelNew;->main2([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onFailure(Ly2/f0;Ljava/lang/Throwable;Ly2/Response;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Ly2/g0;->onFailure(Ly2/f0;Ljava/lang/Throwable;Ly2/Response;)V

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Ly2/Response;->g()I

    move-result p1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ly2/Response;->b()Ly2/c0;

    move-result-object v1

    invoke-virtual {v1}, Ly2/c0;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 p2, 0x65

    if-eq p2, p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "connection failed"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/day/BigModelNew;->mListener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-virtual {p3}, Ly2/Response;->b()Ly2/c0;

    move-result-object p2

    invoke-virtual {p2}, Ly2/c0;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p2, p0, Lcom/day/BigModelNew;->mListener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Ly2/f0;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/day/BigModelNew;->gson:Lt1/e;

    const-class v1, Lcom/day/BigModelNew$JsonParse;

    invoke-virtual {v0, p2, v1}, Lt1/e;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/day/BigModelNew$JsonParse;

    iget-object v1, v0, Lcom/day/BigModelNew$JsonParse;->header:Lcom/day/BigModelNew$Header;

    iget v1, v1, Lcom/day/BigModelNew$Header;->code:I

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u751f\u9519\u8bef\uff0c\u9519\u8bef\u7801\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/day/BigModelNew$JsonParse;->header:Lcom/day/BigModelNew$Header;

    iget v3, v3, Lcom/day/BigModelNew$Header;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u6b21\u8bf7\u6c42\u7684sid\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/day/BigModelNew$JsonParse;->header:Lcom/day/BigModelNew$Header;

    iget-object v3, v3, Lcom/day/BigModelNew$Header;->sid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Ly2/f0;->close(ILjava/lang/String;)Z

    iget-object p1, p0, Lcom/day/BigModelNew;->mListener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    :cond_0
    iget-object p1, v0, Lcom/day/BigModelNew$JsonParse;->payload:Lcom/day/BigModelNew$Payload;

    iget-object p1, p1, Lcom/day/BigModelNew$Payload;->choices:Lcom/day/BigModelNew$Choices;

    iget-object p1, p1, Lcom/day/BigModelNew$Choices;->text:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/day/BigModelNew$Text;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p2, Lcom/day/BigModelNew$Text;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/day/BigModelNew;->totalAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/day/BigModelNew$Text;->content:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/day/BigModelNew;->totalAnswer:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/day/BigModelNew$JsonParse;->header:Lcom/day/BigModelNew$Header;

    iget p1, p1, Lcom/day/BigModelNew$Header;->status:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/day/BigModelNew;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/day/BigModelNew$4;

    invoke-direct {p2, p0}, Lcom/day/BigModelNew$4;-><init>(Lcom/day/BigModelNew;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "*************************************************************************************"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/day/BigModelNew;->canAddHistory()Z

    move-result p1

    const-string p2, "text"

    const-string v0, "assistant"

    if-eqz p1, :cond_2

    new-instance p1, Lcom/day/BigModelNew$RoleContent;

    invoke-direct {p1, p0}, Lcom/day/BigModelNew$RoleContent;-><init>(Lcom/day/BigModelNew;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/day/BigModelNew;->historyList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance p1, Lcom/day/BigModelNew$RoleContent;

    invoke-direct {p1, p0}, Lcom/day/BigModelNew$RoleContent;-><init>(Lcom/day/BigModelNew;)V

    :goto_1
    invoke-virtual {p1, v0}, Lcom/day/BigModelNew$RoleContent;->setRole(Ljava/lang/String;)V

    sget-object v0, Lcom/day/BigModelNew;->totalAnswer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/day/BigModelNew$RoleContent;->setContent(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/day/BigModelNew$RoleContent;->setContent_type(Ljava/lang/String;)V

    sget-object p2, Lcom/day/BigModelNew;->historyList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/day/BigModelNew;->wsCloseFlag:Ljava/lang/Boolean;

    sput-object p1, Lcom/day/BigModelNew;->totalFlag:Ljava/lang/Boolean;

    :cond_3
    return-void
.end method

.method public onOpen(Ly2/f0;Ly2/Response;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ly2/g0;->onOpen(Ly2/f0;Ly2/Response;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u5927\u6a21\u578b\uff1a"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance p2, Lcom/day/BigModelNew$MyThread;

    invoke-direct {p2, p0, p1}, Lcom/day/BigModelNew$MyThread;-><init>(Lcom/day/BigModelNew;Ly2/f0;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
