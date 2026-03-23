.class Lcom/nirenr/talkman/settings/ManagerActivity$3;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ManagerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Landroid/widget/ArrayListAdapter;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/ListView;

.field final synthetic e:Lcom/nirenr/talkman/settings/ManagerActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ManagerActivity;Landroid/app/AlertDialog;Landroid/widget/ArrayListAdapter;Landroid/widget/EditText;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->e:Lcom/nirenr/talkman/settings/ManagerActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->b:Landroid/widget/ArrayListAdapter;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->d:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method

.method private f(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity$3;->onPostExecute(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/settings/ManagerActivity$3;->f(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".xpk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".ppk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".vpk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".spk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".lpk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".tpk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".cbk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".fbk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".gpk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".rpk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".kpk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/androlua/util/AsyncTaskX;->publishProgress([Ljava/lang/Object;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity$3;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity$3;->f(Ljava/io/File;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected varargs g([Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->b:Landroid/widget/ArrayListAdapter;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->c:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/nirenr/talkman/settings/ManagerActivity$3$1;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/ManagerActivity$3$1;-><init>(Lcom/nirenr/talkman/settings/ManagerActivity$3;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->a:Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->e:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v2, 0x7f07059f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$3;->a:Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x104000d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/nirenr/talkman/settings/ManagerActivity$3$2;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/ManagerActivity$3$2;-><init>(Lcom/nirenr/talkman/settings/ManagerActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity$3;->g([Ljava/lang/String;)V

    return-void
.end method
