.class Lcom/nirenr/talkman/ClockService$a;
.super Lcom/androlua/util/TimerTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ClockService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ClockService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ClockService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ClockService$a;->a:Lcom/nirenr/talkman/ClockService;

    invoke-direct {p0}, Lcom/androlua/util/TimerTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClockService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nirenr/talkman/ClockService$a;->a:Lcom/nirenr/talkman/ClockService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/ClockService;->f()V

    return-void
.end method
