.class Lcom/nirenr/talkman/TalkManAccessibilityService$c5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->speak(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$c5;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$c5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$c5;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$c5;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$c5;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c5$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ttsSpeak(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
