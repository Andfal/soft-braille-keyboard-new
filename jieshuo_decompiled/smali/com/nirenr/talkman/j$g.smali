.class Lcom/nirenr/talkman/j$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/j;->X(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/j;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/j$g;->b:Lcom/nirenr/talkman/j;

    iput-object p2, p0, Lcom/nirenr/talkman/j$g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/j$g;->b:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->j(Lcom/nirenr/talkman/j;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$g;->b:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$g;->b:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->m(Lcom/nirenr/talkman/j;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$g;->b:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->j(Lcom/nirenr/talkman/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$g;->b:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->k(Lcom/nirenr/talkman/j;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/j$g;->b:Lcom/nirenr/talkman/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/j;->T(Z)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j$g;->b:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$g;->b:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->m(Lcom/nirenr/talkman/j;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
