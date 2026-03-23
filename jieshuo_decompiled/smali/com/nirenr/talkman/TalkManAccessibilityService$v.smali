.class Lcom/nirenr/talkman/TalkManAccessibilityService$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v;->a:I

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "AutoNext text null"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNext()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoNext(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPrevious()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoPrevious(Z)V

    :cond_2
    :goto_0
    return-void
.end method
