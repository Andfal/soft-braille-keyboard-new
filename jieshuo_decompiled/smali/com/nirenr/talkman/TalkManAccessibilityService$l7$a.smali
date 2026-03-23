.class Lcom/nirenr/talkman/TalkManAccessibilityService$l7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$l7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$l7;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$l7;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l7$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$l7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->reCreate()V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l7$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$l7;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$l7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070202

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V

    :cond_0
    return-void
.end method
