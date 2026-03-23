.class Lcom/nirenr/talkman/settings/SoundManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundManager;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/SoundManager;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    iput p2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x0

    const v0, 0x7f070095

    const v1, 0x104000a

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/SoundManager;->b(Lcom/nirenr/talkman/settings/SoundManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v1, v1, v2

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "_clock"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundManager;->b(Lcom/nirenr/talkman/settings/SoundManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "effect"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_effect"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object p2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/SoundManager;->b(Lcom/nirenr/talkman/settings/SoundManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".spk"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundManager;->a(Lcom/nirenr/talkman/settings/SoundManager;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v0, p1, v1}, Lcom/nirenr/talkman/p;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-direct {p2, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0705dc

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v2, Lcom/nirenr/talkman/settings/SoundManager$2$3;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/SoundManager$2$3;-><init>(Lcom/nirenr/talkman/settings/SoundManager$2;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    const v0, 0x7f070251

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v1, v1, v2

    new-instance v2, Lcom/nirenr/talkman/settings/SoundManager$2$2;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/SoundManager$2$2;-><init>(Lcom/nirenr/talkman/settings/SoundManager$2;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_2

    :cond_5
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-direct {p2, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    const v3, 0x7f0701ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundManager;->c(Lcom/nirenr/talkman/settings/SoundManager;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/nirenr/talkman/settings/SoundManager$2;->a:I

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v2, Lcom/nirenr/talkman/settings/SoundManager$2$1;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/SoundManager$2$1;-><init>(Lcom/nirenr/talkman/settings/SoundManager$2;)V

    :goto_1
    invoke-virtual {p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_2
    return-void
.end method
