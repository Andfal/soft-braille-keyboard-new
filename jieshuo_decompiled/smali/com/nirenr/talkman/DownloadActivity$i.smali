.class Lcom/nirenr/talkman/DownloadActivity$i;
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

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$i;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->o(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$i;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/DownloadActivity;->j(Lcom/nirenr/talkman/DownloadActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/nirenr/talkman/DownloadActivity$i;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v2}, Lcom/nirenr/talkman/DownloadActivity;->d(Lcom/nirenr/talkman/DownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/DownloadActivity;->r(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$i;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0705e5

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setSubtitle(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$i;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {}, Lcom/nirenr/talkman/DownloadActivity;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sort_mode"

    invoke-static {p1, v1, v0}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method
