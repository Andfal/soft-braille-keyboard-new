.class public Lcom/iflytek/sparkchain/plugins/a/a/a;
.super Lcom/iflytek/sparkchain/plugins/base/BaseModel;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseModel;-><init>()V

    const-string v0, "{\"destination\":\"\u76ee\u7684\u5730\"}"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/a/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method
