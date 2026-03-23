.class Lcom/nirenr/talkman/settings/HotKeySetting$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HotKeySetting$5;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface;

.field final synthetic b:Lcom/nirenr/talkman/settings/HotKeySetting$5;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HotKeySetting$5;Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting$5$1;->b:Lcom/nirenr/talkman/settings/HotKeySetting$5;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/HotKeySetting$5$1;->a:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting$5$1;->b:Lcom/nirenr/talkman/settings/HotKeySetting$5;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/HotKeySetting$5;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting$5$1;->b:Lcom/nirenr/talkman/settings/HotKeySetting$5;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/HotKeySetting$5;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting$5$1;->b:Lcom/nirenr/talkman/settings/HotKeySetting$5;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/HotKeySetting$5;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting$5$1;->a:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting$5$1;->b:Lcom/nirenr/talkman/settings/HotKeySetting$5;

    iget-object v1, v0, Lcom/nirenr/talkman/settings/HotKeySetting$5;->b:Lcom/nirenr/talkman/settings/HotKeySetting;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/HotKeySetting$5;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nirenr/talkman/settings/HotKeySetting;->f(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;)V

    return-void
.end method
