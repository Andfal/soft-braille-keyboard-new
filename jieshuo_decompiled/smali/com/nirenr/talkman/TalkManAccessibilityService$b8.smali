.class Lcom/nirenr/talkman/TalkManAccessibilityService$b8;
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
    name = "b8"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b8;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/v1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$b8;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r1(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->r1(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b8;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->D0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    return-void
.end method
