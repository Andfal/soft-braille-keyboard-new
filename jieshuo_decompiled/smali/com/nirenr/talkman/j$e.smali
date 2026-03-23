.class Lcom/nirenr/talkman/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/j;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/j;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/j$e;->a:Lcom/nirenr/talkman/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/j$e;->a:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->j(Lcom/nirenr/talkman/j;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$e;->a:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->n(Lcom/nirenr/talkman/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/j$e;->a:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->n(Lcom/nirenr/talkman/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j$e;->a:Lcom/nirenr/talkman/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/j;->T(Z)V

    :cond_1
    return-void
.end method
