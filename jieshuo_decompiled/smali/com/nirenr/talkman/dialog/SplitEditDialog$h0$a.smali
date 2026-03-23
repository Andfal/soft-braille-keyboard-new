.class Lcom/nirenr/talkman/dialog/SplitEditDialog$h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->k(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const p2, 0x7f070374

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n(Lcom/nirenr/talkman/dialog/SplitEditDialog;Z)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    return-void
.end method
