.class Lcom/nirenr/talkman/TalkManAccessibilityService$k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerModeAux(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/text/SimpleDateFormat;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->b:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/a;->U(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f07085c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->b:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->q0(Lcom/nirenr/talkman/TalkManAccessibilityService;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v8, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTimerModePauseTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r3()Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const v2, 0x7f070392

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
