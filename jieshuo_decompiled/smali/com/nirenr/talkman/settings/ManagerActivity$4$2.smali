.class Lcom/nirenr/talkman/settings/ManagerActivity$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$4$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$4$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$4;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$4;->e:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ManagerActivity$4$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$4;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/ManagerActivity$4;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$4$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$4;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/ManagerActivity$4;->e:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
