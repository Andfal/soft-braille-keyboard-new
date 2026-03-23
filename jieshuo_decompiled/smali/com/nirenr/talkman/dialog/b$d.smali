.class Lcom/nirenr/talkman/dialog/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/b;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/b$d;->a:Lcom/nirenr/talkman/dialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$d;->a:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1, p3}, Lcom/nirenr/talkman/dialog/b;->l(Lcom/nirenr/talkman/dialog/b;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$d;->a:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/b;->a(Lcom/nirenr/talkman/dialog/b;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
