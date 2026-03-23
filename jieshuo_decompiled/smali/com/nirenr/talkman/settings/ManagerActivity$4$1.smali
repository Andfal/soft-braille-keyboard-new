.class Lcom/nirenr/talkman/settings/ManagerActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ManagerActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/ManagerActivity$4;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ManagerActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$4$1;->a:Lcom/nirenr/talkman/settings/ManagerActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$4$1;->a:Lcom/nirenr/talkman/settings/ManagerActivity$4;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/ManagerActivity$4;->d:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p2, p1}, Landroid/widget/ArrayListAdapter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
