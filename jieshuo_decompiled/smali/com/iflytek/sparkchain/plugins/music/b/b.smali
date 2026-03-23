.class public Lcom/iflytek/sparkchain/plugins/music/b/b;
.super Lcom/iflytek/sparkchain/plugins/base/BaseModel;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseModel;-><init>()V

    const-string v0, "{\"singerName\":\"\u6b4c\u624b\",\"songName\":\"\u6b4c\u540d\"}"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/music/b/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/music/b/b;->a:Ljava/lang/String;

    return-object v0
.end method
