.class Lcom/nirenr/talkman/DownloadActivity$e;
.super Landroid/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayListAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$e;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-direct {p0, p2}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/nirenr/talkman/DownloadActivity$e;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p3}, Lcom/nirenr/talkman/DownloadActivity;->b(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p2

    :cond_0
    iget-object p3, p0, Lcom/nirenr/talkman/DownloadActivity$e;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p3}, Lcom/nirenr/talkman/DownloadActivity;->h(Lcom/nirenr/talkman/DownloadActivity;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/nirenr/talkman/DownloadActivity$e;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p3}, Lcom/nirenr/talkman/DownloadActivity;->e(Lcom/nirenr/talkman/DownloadActivity;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/nirenr/talkman/DownloadActivity$e;->a:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {p3}, Lcom/nirenr/talkman/DownloadActivity;->g(Lcom/nirenr/talkman/DownloadActivity;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "(_[^_\\d]*\\d\\d\\d)\\d{4}(\\d{0,6}[^_\\d]*_)"

    const-string v0, "$1****$2"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    const-string p3, "jieshuo-international"

    const-string v0, "\u89e3\u8bf4\u56fd\u9645\u7248"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "jieshuo-ime"

    const-string v0, "\u89e3\u8bf4\u8f93\u5165\u6cd5"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "jieshuo"

    const-string v0, "\u89e3\u8bf4"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "xunfei"

    const-string v0, "\u8baf\u98de"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "apple-tts"

    const-string v0, "\u82f9\u679c\u4e2d\u6587"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
