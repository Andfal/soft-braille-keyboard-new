.class Lcom/nirenr/talkman/DownloadActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$j;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->o(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$j;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/DownloadActivity;->j(Lcom/nirenr/talkman/DownloadActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/nirenr/talkman/DownloadActivity$j;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v2}, Lcom/nirenr/talkman/DownloadActivity;->d(Lcom/nirenr/talkman/DownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/DownloadActivity;->r(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$j;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0705e6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$j;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {}, Lcom/nirenr/talkman/DownloadActivity;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sort_mode"

    invoke-static {v0, v2, v1}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return p1
.end method
