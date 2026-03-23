.class Lcom/nirenr/talkman/DownloadActivity$k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity$k;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/HttpUtil$d;

.field final synthetic b:Landroid/app/ProgressDialog;

.field final synthetic c:Lcom/nirenr/talkman/DownloadActivity$k;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity$k;Lcom/nirenr/talkman/util/HttpUtil$d;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k$d;->c:Lcom/nirenr/talkman/DownloadActivity$k;

    iput-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$k$d;->a:Lcom/nirenr/talkman/util/HttpUtil$d;

    iput-object p3, p0, Lcom/nirenr/talkman/DownloadActivity$k$d;->b:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k$d;->a:Lcom/nirenr/talkman/util/HttpUtil$d;

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/HttpUtil$d;->cancel()Z

    iget-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k$d;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
