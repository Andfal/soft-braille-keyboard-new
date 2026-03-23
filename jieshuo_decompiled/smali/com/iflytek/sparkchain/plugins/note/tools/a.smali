.class public Lcom/iflytek/sparkchain/plugins/note/tools/a;
.super Lcom/iflytek/sparkchain/plugins/base/BaseTool;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;-><init>()V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/note/tools/a;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const-string v0, "\u8bb0\u5f55\u5907\u5fd8\u5f55\u3002"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->description:Ljava/lang/String;

    const-string v0, "note_tool"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->name:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/sparkchain/plugins/b/a/a;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/b/a/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->argsSchema:Lcom/iflytek/sparkchain/plugins/base/BaseModel;

    return-void
.end method


# virtual methods
.method public varargs run(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "do note success!"

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->toResult(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
