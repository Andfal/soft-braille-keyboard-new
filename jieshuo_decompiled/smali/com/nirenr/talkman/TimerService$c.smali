.class Lcom/nirenr/talkman/TimerService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TimerService;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nirenr/talkman/TimerService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TimerService;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TimerService$c;->c:Lcom/nirenr/talkman/TimerService;

    iput-wide p2, p0, Lcom/nirenr/talkman/TimerService$c;->a:J

    iput-object p4, p0, Lcom/nirenr/talkman/TimerService$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService$c;->c:Lcom/nirenr/talkman/TimerService;

    invoke-static {v0}, Lcom/nirenr/talkman/TimerService;->b(Lcom/nirenr/talkman/TimerService;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-wide v1, p0, Lcom/nirenr/talkman/TimerService$c;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakTimer(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService$c;->c:Lcom/nirenr/talkman/TimerService;

    invoke-static {v0}, Lcom/nirenr/talkman/TimerService;->b(Lcom/nirenr/talkman/TimerService;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseSlowSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService$c;->c:Lcom/nirenr/talkman/TimerService;

    invoke-static {v0}, Lcom/nirenr/talkman/TimerService;->b(Lcom/nirenr/talkman/TimerService;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TimerService$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/a;->U(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService$c;->c:Lcom/nirenr/talkman/TimerService;

    invoke-static {v0}, Lcom/nirenr/talkman/TimerService;->b(Lcom/nirenr/talkman/TimerService;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
