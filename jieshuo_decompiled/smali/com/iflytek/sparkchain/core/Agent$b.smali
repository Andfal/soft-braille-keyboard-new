.class Lcom/iflytek/sparkchain/core/Agent$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/AgentBaseOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/sparkchain/core/Agent;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/Agent;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$b;->b:Lcom/iflytek/sparkchain/core/Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$b;->a:Ljava/lang/String;

    return-object v0
.end method
