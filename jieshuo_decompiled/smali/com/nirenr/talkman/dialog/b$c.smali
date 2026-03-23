.class Lcom/nirenr/talkman/dialog/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/b$c;->a:Lcom/nirenr/talkman/dialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$c;->a:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/b;->a(Lcom/nirenr/talkman/dialog/b;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$c;->a:Lcom/nirenr/talkman/dialog/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/b;->k(Lcom/nirenr/talkman/dialog/b;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$c;->a:Lcom/nirenr/talkman/dialog/b;

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/b;->q()V

    return-void
.end method
