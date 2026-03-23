.class Lcom/nirenr/talkman/DownloadActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nirenr/talkman/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/DownloadActivity$k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->e(Lcom/nirenr/talkman/DownloadActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    iget-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$k;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/nirenr/talkman/DownloadActivity;->m(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    const v1, 0x7f070973

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    const v0, 0x7f070068

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/nirenr/talkman/DownloadActivity$k$a;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/DownloadActivity$k$a;-><init>(Lcom/nirenr/talkman/DownloadActivity$k;Landroid/app/ProgressDialog;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, p2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k;->a:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/DownloadActivity;->a(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/DownloadActivity;->i(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity$k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/DownloadActivity$k$b;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/DownloadActivity$k$b;-><init>(Lcom/nirenr/talkman/DownloadActivity$k;Landroid/app/ProgressDialog;)V

    invoke-static {p2, v0, v1}, Lcom/nirenr/talkman/util/HttpUtil;->b(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p2

    new-instance v0, Lcom/nirenr/talkman/DownloadActivity$k$c;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/DownloadActivity$k$c;-><init>(Lcom/nirenr/talkman/DownloadActivity$k;Landroid/app/ProgressDialog;)V

    invoke-virtual {p2, v0}, Lcom/nirenr/talkman/util/HttpUtil$d;->i(Lcom/nirenr/talkman/util/HttpUtil$UpdateListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/DownloadActivity$k$d;

    invoke-direct {v1, p0, p2, p1}, Lcom/nirenr/talkman/DownloadActivity$k$d;-><init>(Lcom/nirenr/talkman/DownloadActivity$k;Lcom/nirenr/talkman/util/HttpUtil$d;Landroid/app/ProgressDialog;)V

    const/4 p2, -0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
