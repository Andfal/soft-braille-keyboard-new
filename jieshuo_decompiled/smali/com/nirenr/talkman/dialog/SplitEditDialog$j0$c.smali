.class Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$c;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$c;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$c;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$c;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
