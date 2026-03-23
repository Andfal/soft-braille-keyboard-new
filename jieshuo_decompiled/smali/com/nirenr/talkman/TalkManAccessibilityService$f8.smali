.class Lcom/nirenr/talkman/TalkManAccessibilityService$f8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f8"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/y1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->a:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->a:Z

    return v0
.end method

.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f070875

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r1(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r1(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->j0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iput-boolean v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f8;->a:Z

    return-void
.end method
