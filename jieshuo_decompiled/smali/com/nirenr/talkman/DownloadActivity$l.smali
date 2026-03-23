.class Lcom/nirenr/talkman/DownloadActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ArrayListAdapter;

.field final synthetic c:Lcom/nirenr/talkman/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity;Ljava/lang/String;Landroid/widget/ArrayListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$l;->c:Lcom/nirenr/talkman/DownloadActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/DownloadActivity$l;->b:Landroid/widget/ArrayListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$l;->c:Lcom/nirenr/talkman/DownloadActivity;

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/DownloadActivity$l$a;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/DownloadActivity$l$a;-><init>(Lcom/nirenr/talkman/DownloadActivity$l;)V

    const-string v3, ""

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/dialog/EditDialog;->h(I)V

    return-void
.end method
