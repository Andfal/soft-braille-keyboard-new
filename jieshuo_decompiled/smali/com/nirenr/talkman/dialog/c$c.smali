.class Lcom/nirenr/talkman/dialog/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/c$c;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$c;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->a(Lcom/nirenr/talkman/dialog/c;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$c;->a:Lcom/nirenr/talkman/dialog/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/c;->k(Lcom/nirenr/talkman/dialog/c;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$c;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/c;->q()V

    return-void
.end method
