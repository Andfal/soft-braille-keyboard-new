.class Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
