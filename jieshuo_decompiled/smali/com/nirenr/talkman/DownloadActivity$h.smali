.class Lcom/nirenr/talkman/DownloadActivity$h;
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

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$h;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$h;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->isFilter()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$h;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$h;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/DownloadActivity;->c(Lcom/nirenr/talkman/DownloadActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$h;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/DownloadActivity;->b(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->filter(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
