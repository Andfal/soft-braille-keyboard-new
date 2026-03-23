.class public Lk2/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field final synthetic g:Lk2/k0;


# direct methods
.method public constructor <init>(Lk2/k0;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iput-object p1, p0, Lk2/k0$b;->g:Lk2/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lk2/k0;->a(Lk2/k0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk2/k0$b;->b:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lk2/k0$b;->c:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lk2/k0$b;->e:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lk2/k0$b;->d:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lk2/k0$b;->f:I

    iput-object p2, p0, Lk2/k0$b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method static bridge synthetic a(Lk2/k0$b;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lk2/k0$b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method
