.class Lk2/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/c0;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk2/c0;


# direct methods
.method constructor <init>(Lk2/c0;)V
    .locals 0

    iput-object p1, p0, Lk2/c0$a;->a:Lk2/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lk2/c0$a;->a:Lk2/c0;

    invoke-static {p1}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lk2/c0$a;->a:Lk2/c0;

    invoke-static {v0}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method
