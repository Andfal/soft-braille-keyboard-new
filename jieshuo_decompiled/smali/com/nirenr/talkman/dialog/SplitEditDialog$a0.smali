.class Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iput p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, p1, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    invoke-static {p2, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->o(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s(Lcom/nirenr/talkman/dialog/SplitEditDialog;Z)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object p2

    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    invoke-virtual {p2, v0, p1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const p2, 0x7f07042f

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    goto/16 :goto_0

    :cond_1
    iget p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-lt p1, p2, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->r(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->H(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    invoke-static {p1, p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->v(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitSpeak(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->j(Lcom/nirenr/talkman/dialog/SplitEditDialog;)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitSpeak(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->j(Lcom/nirenr/talkman/dialog/SplitEditDialog;)I

    move-result p2

    add-int/2addr p2, p1

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->K(I)V

    new-instance p1, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0$a;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    :goto_0
    return-void
.end method
