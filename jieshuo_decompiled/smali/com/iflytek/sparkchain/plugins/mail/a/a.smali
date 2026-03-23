.class public Lcom/iflytek/sparkchain/plugins/mail/a/a;
.super Lcom/iflytek/sparkchain/plugins/base/BaseModel;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseModel;-><init>()V

    const-string v0, "{\"to\":[\"\u6536\u4ef6\u4eba\"],\"from\":[\"\u53d1\u4ef6\u4eba\"],\"subject\":\"\u90ae\u4ef6\u6807\u9898\",\"body\":\"\u90ae\u4ef6\u6b63\u6587\",\"time\":\"\u65f6\u95f4\u4fe1\u606f\",\"unseen\":[\"\u672a\u8bfb\"],\"seen\":[\"\u5df2\u8bfb\"],\"answered\":[\"\u5df2\u56de\u590d\"]}"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/a/a;->a:Ljava/lang/String;

    return-object v0
.end method
