.class Lcom/nirenr/talkman/DownloadActivity$k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity$k;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/nirenr/talkman/DownloadActivity$k;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity$k;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iput-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iget-object v0, v0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iget-object v1, v1, Lcom/nirenr/talkman/DownloadActivity$k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iget-object v1, v1, Lcom/nirenr/talkman/DownloadActivity$k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iget-object v0, p1, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    iget-object p1, p1, Lcom/nirenr/talkman/DownloadActivity$k;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/DownloadActivity;->m(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iget-object p1, p1, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->i(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iget-object v2, v1, Lcom/nirenr/talkman/DownloadActivity$k;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    const v3, 0x7f07023e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/nirenr/talkman/DownloadActivity$k$b$a;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/DownloadActivity$k$b$a;-><init>(Lcom/nirenr/talkman/DownloadActivity$k$b;)V

    invoke-static {p1, v0, v2, v1, v3}, Lcom/nirenr/talkman/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iget-object v0, v0, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/DownloadActivity$k$b;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iget-object v2, v2, Lcom/nirenr/talkman/DownloadActivity$k;->c:Lcom/nirenr/talkman/DownloadActivity;

    const v3, 0x7f0703c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
