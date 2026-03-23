.class Lcom/nirenr/talkman/dialog/SplitEditDialog$j;
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

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaUtil;->checkStorage(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->z(Lcom/nirenr/talkman/dialog/SplitEditDialog;Ljava/lang/String;)V

    return-void
.end method
