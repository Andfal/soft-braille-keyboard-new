.class Lcom/nirenr/talkman/settings/GestureFileManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureFileManager;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/GestureFileManager;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureFileManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    iput p2, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureFileManager;->b(Lcom/nirenr/talkman/settings/GestureFileManager;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/GestureFileManager;->c(Lcom/nirenr/talkman/settings/GestureFileManager;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->a:I

    aget-object v0, v0, v1

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x1b

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    const v1, 0x7f0700ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/GestureFileManager$2$3;

    invoke-direct {v2, p0, p1}, Lcom/nirenr/talkman/settings/GestureFileManager$2$3;-><init>(Lcom/nirenr/talkman/settings/GestureFileManager$2;Ljava/lang/String;)V

    const-string p1, ""

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    const/16 p1, 0xf

    const/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0}, Lcom/nirenr/talkman/dialog/EditDialog;->i(II)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    const p2, 0x7f070261

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    const v0, 0x7f070251

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/GestureFileManager;->c(Lcom/nirenr/talkman/settings/GestureFileManager;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->a:I

    aget-object v1, v1, v2

    new-instance v2, Lcom/nirenr/talkman/settings/GestureFileManager$2$2;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/GestureFileManager$2$2;-><init>(Lcom/nirenr/talkman/settings/GestureFileManager$2;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_1

    :cond_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    const v0, 0x7f0701ea

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->b:Lcom/nirenr/talkman/settings/GestureFileManager;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureFileManager;->c(Lcom/nirenr/talkman/settings/GestureFileManager;)[Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/nirenr/talkman/settings/GestureFileManager$2;->a:I

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/settings/GestureFileManager$2$1;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/settings/GestureFileManager$2$1;-><init>(Lcom/nirenr/talkman/settings/GestureFileManager$2;)V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070095

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method
