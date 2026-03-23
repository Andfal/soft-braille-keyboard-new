.class Lcom/nirenr/talkman/DownloadActivity$k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity$k;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/nirenr/talkman/DownloadActivity$k;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity$k;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$k$c;->b:Lcom/nirenr/talkman/DownloadActivity$k;

    iput-object p2, p0, Lcom/nirenr/talkman/DownloadActivity$k$c;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate([Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$k$c;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
