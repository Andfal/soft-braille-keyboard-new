.class Lcom/nirenr/talkman/settings/ManagerActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ManagerActivity;->e(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/ManagerActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ManagerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5;->b:Lcom/nirenr/talkman/settings/ManagerActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/app/ProgressDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5;->b:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$5;->b:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v0, 0x7f070973

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    new-instance p2, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;

    invoke-direct {p2, p0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity$5$1;-><init>(Lcom/nirenr/talkman/settings/ManagerActivity$5;Landroid/app/ProgressDialog;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method
