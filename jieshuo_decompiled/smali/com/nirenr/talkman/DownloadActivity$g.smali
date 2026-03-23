.class Lcom/nirenr/talkman/DownloadActivity$g;
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

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$g;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$g;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->j(Lcom/nirenr/talkman/DownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nirenr/talkman/DownloadActivity$g;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v1}, Lcom/nirenr/talkman/DownloadActivity;->d(Lcom/nirenr/talkman/DownloadActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/DownloadActivity;->r(Z)V

    return v2
.end method
