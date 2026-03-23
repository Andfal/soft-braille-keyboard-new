.class Lf2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/a;->a(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field final synthetic b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf2/a$c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lf2/a$c;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object p3, p0, Lf2/a$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lf2/a$c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "AiTrans3"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lf2/a$c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "AiTrans31"

    iget-object v2, p0, Lf2/a$c;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lf2/a$c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "AiTrans32"

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lf2/a$c;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lf2/a$c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf2/a$c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf2/a$c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lf2/a$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
