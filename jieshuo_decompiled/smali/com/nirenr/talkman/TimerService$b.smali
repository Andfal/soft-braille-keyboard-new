.class Lcom/nirenr/talkman/TimerService$b;
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

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/nirenr/talkman/TimerService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TimerService;JLjava/util/Set;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TimerService$b;->d:Lcom/nirenr/talkman/TimerService;

    iput-wide p2, p0, Lcom/nirenr/talkman/TimerService$b;->a:J

    iput-object p4, p0, Lcom/nirenr/talkman/TimerService$b;->b:Ljava/util/Set;

    iput-object p5, p0, Lcom/nirenr/talkman/TimerService$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService$b;->d:Lcom/nirenr/talkman/TimerService;

    invoke-static {v0}, Lcom/nirenr/talkman/TimerService;->b(Lcom/nirenr/talkman/TimerService;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-wide v2, p0, Lcom/nirenr/talkman/TimerService$b;->a:J

    iget-object v0, p0, Lcom/nirenr/talkman/TimerService$b;->d:Lcom/nirenr/talkman/TimerService;

    invoke-static {v0}, Lcom/nirenr/talkman/TimerService;->a(Lcom/nirenr/talkman/TimerService;)I

    move-result v0

    int-to-long v4, v0

    iget-object v6, p0, Lcom/nirenr/talkman/TimerService$b;->b:Ljava/util/Set;

    invoke-virtual/range {v1 .. v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakTimer(JJLjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService$b;->d:Lcom/nirenr/talkman/TimerService;

    invoke-static {v0}, Lcom/nirenr/talkman/TimerService;->b(Lcom/nirenr/talkman/TimerService;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseSlowSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService$b;->d:Lcom/nirenr/talkman/TimerService;

    invoke-static {v0}, Lcom/nirenr/talkman/TimerService;->b(Lcom/nirenr/talkman/TimerService;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TimerService$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/a;->U(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TimerService$b;->d:Lcom/nirenr/talkman/TimerService;

    invoke-static {v0}, Lcom/nirenr/talkman/TimerService;->b(Lcom/nirenr/talkman/TimerService;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
