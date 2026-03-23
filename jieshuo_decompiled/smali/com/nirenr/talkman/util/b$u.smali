.class Lcom/nirenr/talkman/util/b$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->N(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaDialog;

.field final synthetic b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;Lcom/androlua/LuaDialog;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$u;->d:Lcom/nirenr/talkman/util/b;

    iput-object p2, p0, Lcom/nirenr/talkman/util/b$u;->a:Lcom/androlua/LuaDialog;

    iput-object p3, p0, Lcom/nirenr/talkman/util/b$u;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object p4, p0, Lcom/nirenr/talkman/util/b$u;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$u;->a:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$u;->d:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/util/b$u$a;

    invoke-direct {p2, p0, p3}, Lcom/nirenr/talkman/util/b$u$a;-><init>(Lcom/nirenr/talkman/util/b$u;I)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
