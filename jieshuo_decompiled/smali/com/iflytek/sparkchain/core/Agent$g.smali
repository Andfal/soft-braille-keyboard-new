.class Lcom/iflytek/sparkchain/core/Agent$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/PluginResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field final synthetic d:Lcom/iflytek/sparkchain/core/Agent;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/Agent;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$g;->d:Lcom/iflytek/sparkchain/core/Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$g;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$g;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$g;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$g;->a:Ljava/lang/String;

    return-object p0
.end method

.method b(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$g;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$g;->b:Ljava/lang/String;

    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$g;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$g;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$g;->c:Ljava/lang/String;

    return-object v0
.end method
