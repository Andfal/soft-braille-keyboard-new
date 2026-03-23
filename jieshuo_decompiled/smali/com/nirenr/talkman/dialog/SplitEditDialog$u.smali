.class Lcom/nirenr/talkman/dialog/SplitEditDialog$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p3}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/String;

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p4}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p4

    const p5, 0x7f070107

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p4}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p4

    const p5, 0x7f0701ea

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p3, p5

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p4}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p4

    const v0, 0x7f07055d

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    aput-object p4, p3, v0

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p4}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p4

    const v0, 0x7f070248

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x3

    aput-object p4, p3, v0

    new-instance p4, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;

    invoke-direct {p4, p0, p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$u;Landroid/view/View;)V

    invoke-virtual {p1, p3, p4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return p5
.end method
