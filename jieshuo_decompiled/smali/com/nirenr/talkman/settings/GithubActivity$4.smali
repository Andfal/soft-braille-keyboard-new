.class Lcom/nirenr/talkman/settings/GithubActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GithubActivity;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->a:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 p1, 0x1

    :try_start_2
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->c:Landroid/content/Context;

    new-array v2, p1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, p1, [Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/nirenr/talkman/settings/GithubActivity;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v2, "android.intent.action.VIEW"

    if-eqz v0, :cond_1

    :try_start_5
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->c:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    iget-object v4, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androlua/LuaApplication;->getUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    :goto_2
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->c:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->c:Landroid/content/Context;

    const-class v4, Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/androlua/LuaApplication;->getUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->c:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    iget-object v4, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androlua/LuaApplication;->getUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    :try_start_6
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070394

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u7528\u6587\u4ef6\u7ba1\u7406\u5668\u6253\u5f00 download/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    :goto_3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_4

    :cond_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$4;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f07069c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f070095

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/nirenr/talkman/settings/GithubActivity$4$1;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/GithubActivity$4$1;-><init>(Lcom/nirenr/talkman/settings/GithubActivity$4;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method
