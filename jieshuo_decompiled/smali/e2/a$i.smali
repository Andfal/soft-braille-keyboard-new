.class Le2/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Lcom/nirenr/screencapture/ScreenCaptureListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Le2/e;)V
    .locals 0

    invoke-direct {p0}, Le2/a$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)Le2/a$i;
    .locals 0

    iput-object p2, p0, Le2/a$i;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    iput-object p1, p0, Le2/a$i;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Le2/a;->e(J)V

    iget-object v0, p0, Le2/a$i;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Le2/a$i;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-static {v0, v1}, Le2/a;->j(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method
