.class Le2/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/a;->m(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Le2/a;->d()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {}, Le2/a;->c()Lcom/nirenr/screencapture/ScreenCaptureListener;

    move-result-object v1

    invoke-static {v0, v1}, Le2/a;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method
