.class public Lcom/iflytek/sparkchain/plugins/mail/a/b;
.super Lcom/iflytek/sparkchain/plugins/base/BaseModel;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseModel;-><init>()V

    const-string v0, "{\"to\":[\"\u6536\u4ef6\u4eba\"],\"cc\":[\"\u6284\u9001\u4eba\"],\"bcc\":[\"\u5bc6\u6284\u9001\u4eba\"],\"subject\":\"\u90ae\u4ef6\u4e3b\u9898\",\"body\":\"\u90ae\u4ef6\u5185\u5bb9\uff0c\u57fa\u4e8eQuestion\u751f\u6210\"}"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/a/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/a/b;->a:Ljava/lang/String;

    return-object v0
.end method
