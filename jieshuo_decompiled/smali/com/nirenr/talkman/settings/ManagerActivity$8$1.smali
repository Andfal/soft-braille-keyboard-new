.class Lcom/nirenr/talkman/settings/ManagerActivity$8$1;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ManagerActivity$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/ManagerActivity$8;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ManagerActivity$8;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$1;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$1;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v0, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity;->loadLabels(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$1;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v0, 0x7f070383

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
