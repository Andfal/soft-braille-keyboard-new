.class Lcom/nirenr/talkman/DownloadActivity$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity$l;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/DownloadActivity$l;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity$l;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$l$a;->a:Lcom/nirenr/talkman/DownloadActivity$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$l$a;->a:Lcom/nirenr/talkman/DownloadActivity$l;

    iget-object v0, v0, Lcom/nirenr/talkman/DownloadActivity$l;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/DownloadActivity;->i(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/DownloadActivity$l$a;->a:Lcom/nirenr/talkman/DownloadActivity$l;

    iget-object v2, v2, Lcom/nirenr/talkman/DownloadActivity$l;->a:Ljava/lang/String;

    new-instance v3, Lcom/nirenr/talkman/DownloadActivity$l$a$a;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/DownloadActivity$l$a$a;-><init>(Lcom/nirenr/talkman/DownloadActivity$l$a;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/nirenr/talkman/util/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    :cond_0
    return-void
.end method
