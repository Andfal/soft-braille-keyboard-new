.class Lcom/iflytek/sparkchain/core/Agent$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/AgentEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/sparkchain/core/Agent;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/Agent;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$d;->c:Lcom/iflytek/sparkchain/core/Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/iflytek/sparkchain/core/Agent$d;->a:I

    const-string p1, ""

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(I)Lcom/iflytek/sparkchain/core/Agent$d;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/Agent$d;->a:I

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/Agent$d;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/Agent$d;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$d;->b:Ljava/lang/String;

    return-void
.end method

.method public getEventID()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/Agent$d;->a:I

    return v0
.end method

.method public getEventMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$d;->c:Lcom/iflytek/sparkchain/core/Agent;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/Agent;->access$100(Lcom/iflytek/sparkchain/core/Agent;)Lcom/iflytek/sparkchain/core/Agent$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Agent$b;->getSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
