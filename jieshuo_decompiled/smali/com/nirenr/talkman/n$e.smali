.class Lcom/nirenr/talkman/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/n;->o(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Lcom/nirenr/talkman/n;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/n;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/n$e;->b:Lcom/nirenr/talkman/n;

    iput-object p2, p0, Lcom/nirenr/talkman/n$e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/n$e;->b:Lcom/nirenr/talkman/n;

    iget-object v1, p0, Lcom/nirenr/talkman/n$e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/n;->d(Lcom/nirenr/talkman/n;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method
