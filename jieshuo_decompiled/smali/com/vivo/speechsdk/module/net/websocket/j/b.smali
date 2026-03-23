.class public Lcom/vivo/speechsdk/module/net/websocket/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "{\"sid\":\"6a7607aa-da57-4f53-b7a2-cbfbc0551152@started\",\"action\":\"started\",\"request_id\":\"0\",\"code\":0,\"desc\":\"success\",\"data\":\"\"}"

.field private static final b:Ljava/lang/String; = "{\"sid\":\"6a7607aa-da57-4f53-b7a2-cbfbc0551152@INDEX\",\"is_finish\":false,\"data\":{\"result_id\":RESULT_ID,\"reformation\":1,\"is_last\":ISLAST,\"text\":\"TEXT\"},\"action\":\"result\",\"request_id\":\"0\",\"code\":0,\"desc\":\"success\",\"type\":\"asr\"}"

.field private static c:Ljava/util/Random; = null

.field private static final d:Ljava/lang/String; = "\u4eca\u5929\u5929\u6c14\u600e\u4e48\u6837\uff1f"

.field private static e:I

.field private static f:I

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->c:Ljava/util/Random;

    const/4 v0, 0x0

    sput v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->e:I

    const/16 v0, 0xa

    sput v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->f:I

    const-string v0, ""

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->f:I

    const-string v0, ""

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->g:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->e:I

    const-string v0, "{\"sid\":\"6a7607aa-da57-4f53-b7a2-cbfbc0551152@started\",\"action\":\"started\",\"request_id\":\"0\",\"code\":0,\"desc\":\"success\",\"data\":\"\"}"

    return-object v0
.end method

.method public static a(IZ)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->c:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lcom/vivo/speechsdk/module/net/websocket/j/b;->f:I

    add-int/2addr v1, v0

    sput v1, Lcom/vivo/speechsdk/module/net/websocket/j/b;->f:I

    sget v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->e:I

    add-int/2addr v0, p0

    const-string v1, "\u4eca\u5929\u5929\u6c14\u600e\u4e48\u6837\uff1f"

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/vivo/speechsdk/module/net/websocket/j/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/vivo/speechsdk/module/net/websocket/j/b;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->g:Ljava/lang/String;

    const/4 p0, 0x0

    sput p0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->e:I

    add-int/lit8 p0, v0, -0x8

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/vivo/speechsdk/module/net/websocket/j/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/vivo/speechsdk/module/net/websocket/j/b;->e:I

    add-int v3, v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->g:Ljava/lang/String;

    sget v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->e:I

    add-int/2addr v0, p0

    sput v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->e:I

    sget p0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->f:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "{\"sid\":\"6a7607aa-da57-4f53-b7a2-cbfbc0551152@INDEX\",\"is_finish\":false,\"data\":{\"result_id\":RESULT_ID,\"reformation\":1,\"is_last\":ISLAST,\"text\":\"TEXT\"},\"action\":\"result\",\"request_id\":\"0\",\"code\":0,\"desc\":\"success\",\"type\":\"asr\"}"

    const-string v1, "INDEX"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/vivo/speechsdk/module/net/websocket/j/b;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESULT_ID"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISLAST"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/vivo/speechsdk/module/net/websocket/j/b;->g:Ljava/lang/String;

    const-string v0, "TEXT"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
