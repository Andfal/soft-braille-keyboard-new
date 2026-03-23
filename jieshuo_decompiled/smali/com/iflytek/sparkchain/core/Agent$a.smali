.class Lcom/iflytek/sparkchain/core/Agent$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/core/Agent;->arun(Ljava/lang/String;Ljava/lang/Object;Lcom/iflytek/sparkchain/core/Memory;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/sparkchain/core/Agent;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/Agent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/Agent$a;->b:Lcom/iflytek/sparkchain/core/Agent;

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/Agent$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/Agent$a;->b:Lcom/iflytek/sparkchain/core/Agent;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/Agent$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Agent;->agentRun(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
