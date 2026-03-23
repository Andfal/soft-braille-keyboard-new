.class Lcom/nirenr/talkman/settings/ManagerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ManagerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/widget/ArrayListAdapter;

.field final synthetic c:Lcom/nirenr/talkman/settings/ManagerActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ManagerActivity;Landroid/widget/ListView;Landroid/widget/ArrayListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$1;->c:Lcom/nirenr/talkman/settings/ManagerActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$1;->a:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/ManagerActivity$1;->b:Landroid/widget/ArrayListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$1;->a:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$1;->a:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/ManagerActivity$1;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$1;->c:Lcom/nirenr/talkman/settings/ManagerActivity;

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Object;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    const v2, 0x7f0703f0

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const p2, 0x7f0703bb

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
