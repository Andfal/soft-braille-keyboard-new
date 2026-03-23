.class Lcom/nirenr/talkman/dialog/SplitEditDialog$h;
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

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->r(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->r(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->H(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f070376

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method
