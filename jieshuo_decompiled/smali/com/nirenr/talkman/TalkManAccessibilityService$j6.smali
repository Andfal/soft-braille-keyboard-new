.class Lcom/nirenr/talkman/TalkManAccessibilityService$j6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->P5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;II)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j6;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j6;->a:I

    iput p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j6;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j6;->a:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P2(Lcom/nirenr/talkman/TalkManAccessibilityService;F)I

    move-result v1

    iget v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$j6;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService;->setAccessibilityFocusAppearance(II)V

    return-void
.end method
