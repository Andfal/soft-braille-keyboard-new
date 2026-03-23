.class Lcom/nirenr/talkman/DownloadActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$d;->b:Lcom/nirenr/talkman/DownloadActivity;

    iput p2, p0, Lcom/nirenr/talkman/DownloadActivity$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/nirenr/talkman/DownloadActivity$d;->a:I

    iget-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$d;->b:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p2}, Lcom/nirenr/talkman/DownloadActivity;->c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ArrayListAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$d;->b:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->i(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$d;->b:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/DownloadActivity;->c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/DownloadActivity$d;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/util/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$d;->b:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->isFilter()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$d;->b:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/DownloadActivity$d;->a:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$d;->b:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p2}, Lcom/nirenr/talkman/DownloadActivity;->c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ArrayListAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$d;->b:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/DownloadActivity$d;->a:I

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->remove(I)V

    :goto_0
    return-void
.end method
