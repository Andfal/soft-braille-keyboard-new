.class Lcom/nirenr/talkman/util/b$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b$u;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/util/b$u;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b$u;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$u$a;->b:Lcom/nirenr/talkman/util/b$u;

    iput p2, p0, Lcom/nirenr/talkman/util/b$u$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$u$a;->b:Lcom/nirenr/talkman/util/b$u;

    iget-object v1, v0, Lcom/nirenr/talkman/util/b$u;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, v0, Lcom/nirenr/talkman/util/b$u;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nirenr/talkman/util/b$u$a;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    return-void
.end method
