.class Lcom/nirenr/talkman/settings/SoundSetting$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/util/AsyncTaskX;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/ArrayListAdapter;

.field final synthetic e:Landroid/widget/ListView;

.field final synthetic f:Lcom/nirenr/talkman/settings/SoundSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting;Lcom/androlua/util/AsyncTaskX;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/ArrayListAdapter;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->f:Lcom/nirenr/talkman/settings/SoundSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->a:Lcom/androlua/util/AsyncTaskX;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->b:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->d:Landroid/widget/ArrayListAdapter;

    iput-object p6, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->e:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->a:Lcom/androlua/util/AsyncTaskX;

    invoke-virtual {p1}, Lcom/androlua/util/AsyncTaskX;->cancel()Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->c:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/nirenr/talkman/settings/SoundSetting$5$1;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/SoundSetting$5$1;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$5;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->b:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->b:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->b:Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->f:Lcom/nirenr/talkman/settings/SoundSetting;

    const v2, 0x7f07059f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->d:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$5;->b:Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x104000d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/nirenr/talkman/settings/SoundSetting$5$2;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/SoundSetting$5$2;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$5;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
