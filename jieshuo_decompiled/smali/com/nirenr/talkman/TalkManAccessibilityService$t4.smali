.class Lcom/nirenr/talkman/TalkManAccessibilityService$t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->D7()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->X0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->C2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->X0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoReadEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoReadEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->T2(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->a0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->T1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->C1(Lcom/nirenr/talkman/TalkManAccessibilityService;J)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->B1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoRead(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t4;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
