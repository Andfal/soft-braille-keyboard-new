.class Lcom/nirenr/talkman/settings/ManagerActivity$5$1;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ManagerActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/nirenr/talkman/settings/ManagerActivity$5;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ManagerActivity$5;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;->b:Lcom/nirenr/talkman/settings/ManagerActivity$5;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;->b:Lcom/nirenr/talkman/settings/ManagerActivity$5;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$5;->a:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/androlua/LuaUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;->b:Lcom/nirenr/talkman/settings/ManagerActivity$5;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ManagerActivity$5;->b:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07026f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;->b:Lcom/nirenr/talkman/settings/ManagerActivity$5;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$5;->b:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/ManagerActivity;->d(Lcom/nirenr/talkman/settings/ManagerActivity;)V

    return-void
.end method
