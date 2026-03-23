.class Lcom/nirenr/talkman/n$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/n$f;->onAccessibilityFocused(Landroid/view/accessibility/AccessibilityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/n$f;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/n$f;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/n$f$a;->a:Lcom/nirenr/talkman/n$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/n$f$a;->a:Lcom/nirenr/talkman/n$f;

    iget-object v1, v0, Lcom/nirenr/talkman/n$f;->b:Lcom/nirenr/talkman/n;

    iget-object v0, v0, Lcom/nirenr/talkman/n$f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/n;->u0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method
