.class Lcom/nirenr/talkman/dialog/SplitEditDialog$v;
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

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f07062a

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->j(Lcom/nirenr/talkman/dialog/SplitEditDialog;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->I()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->J(I)V

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->D(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v2, p1

    if-gez v2, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
