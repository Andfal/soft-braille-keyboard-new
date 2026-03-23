.class Lcom/nirenr/talkman/DownloadActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity$c;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/DownloadActivity$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$c$a;->a:Lcom/nirenr/talkman/DownloadActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$c$a;->a:Lcom/nirenr/talkman/DownloadActivity$c;

    iget-object v0, v0, Lcom/nirenr/talkman/DownloadActivity$c;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/androlua/LuaApplication;->getDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$c$a;->a:Lcom/nirenr/talkman/DownloadActivity$c;

    iget-object p1, p1, Lcom/nirenr/talkman/DownloadActivity$c;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/DownloadActivity;->k(Lcom/nirenr/talkman/DownloadActivity;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$c$a;->a:Lcom/nirenr/talkman/DownloadActivity$c;

    iget-object v0, p1, Lcom/nirenr/talkman/DownloadActivity$c;->c:Lcom/nirenr/talkman/DownloadActivity;

    iget p1, p1, Lcom/nirenr/talkman/DownloadActivity$c;->b:I

    invoke-static {v0, p1}, Lcom/nirenr/talkman/DownloadActivity;->l(Lcom/nirenr/talkman/DownloadActivity;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$c$a;->a:Lcom/nirenr/talkman/DownloadActivity$c;

    iget-object v0, p1, Lcom/nirenr/talkman/DownloadActivity$c;->c:Lcom/nirenr/talkman/DownloadActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/nirenr/talkman/DownloadActivity$c;->a:Ljava/lang/String;

    aput-object p1, v1, p2

    const p1, 0x7f0703bb

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$c$a;->a:Lcom/nirenr/talkman/DownloadActivity$c;

    iget-object p1, p1, Lcom/nirenr/talkman/DownloadActivity$c;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$c$a;->a:Lcom/nirenr/talkman/DownloadActivity$c;

    iget-object p1, p1, Lcom/nirenr/talkman/DownloadActivity$c;->c:Lcom/nirenr/talkman/DownloadActivity;

    const v0, 0x7f07026f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
