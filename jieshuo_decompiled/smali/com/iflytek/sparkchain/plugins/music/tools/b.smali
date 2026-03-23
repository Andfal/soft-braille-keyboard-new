.class public Lcom/iflytek/sparkchain/plugins/music/tools/b;
.super Lcom/iflytek/sparkchain/plugins/base/BaseTool;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;-><init>()V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/music/tools/b;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const-string v0, "musicPlayer"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->name:Ljava/lang/String;

    const-string v0, "\u6b4c\u66f2\u64ad\u653e\u5668\u3002\u64ad\u653e\u6307\u5b9a\u6b4c\u66f2"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->description:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/sparkchain/plugins/music/b/b;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/music/b/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->argsSchema:Lcom/iflytek/sparkchain/plugins/base/BaseModel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->isDirect:Z

    return-void
.end method


# virtual methods
.method public varargs run(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "do music success!"

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->toResult(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
