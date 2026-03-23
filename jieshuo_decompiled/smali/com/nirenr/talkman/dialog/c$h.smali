.class Lcom/nirenr/talkman/dialog/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/c;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/dialog/c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/c$h;->b:Lcom/nirenr/talkman/dialog/c;

    iput p2, p0, Lcom/nirenr/talkman/dialog/c$h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/nirenr/talkman/dialog/c$h;->a:I

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/c$h;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/c;->h(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/c$h;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/c;->h(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$h;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->h(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/c$h;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/c;->h(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_2
    return-void
.end method
