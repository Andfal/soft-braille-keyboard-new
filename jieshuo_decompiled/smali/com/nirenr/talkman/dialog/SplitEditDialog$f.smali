.class Lcom/nirenr/talkman/dialog/SplitEditDialog$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->r(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->r(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->H(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const v0, 0x7f0703bb

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method
