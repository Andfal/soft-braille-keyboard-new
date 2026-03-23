.class Lcom/androlua/LuaWebView$Download;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Download"
.end annotation


# instance fields
.field file_input_field:Landroid/widget/EditText;

.field private mContentDisposition:Ljava/lang/String;

.field private mContentLength:J

.field private mFilename:Ljava/lang/String;

.field private mMimetype:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field final synthetic this$0:Lcom/androlua/LuaWebView;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaWebView;Lcom/androlua/c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaWebView$Download;-><init>(Lcom/androlua/LuaWebView;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaWebView$Download;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView$Download;->mFilename:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/androlua/LuaWebView$Download;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView$Download;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/androlua/LuaWebView$Download;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->mFilename:Ljava/lang/String;

    return-void
.end method

.method private download(Z)J
    .locals 6

    iget-object v0, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->e(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    new-instance v2, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    iget-object v3, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/d0;)V

    invoke-static {v1, v2}, Lcom/androlua/LuaWebView;->o(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;)V

    iget-object v1, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v1}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v2}, Lcom/androlua/LuaWebView;->e(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/androlua/LuaWebView$Download;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    iget-object v4, p0, Lcom/androlua/LuaWebView$Download;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object v3, p0, Lcom/androlua/LuaWebView$Download;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    iget-object v3, p0, Lcom/androlua/LuaWebView$Download;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaWebView$Download;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->d(Lcom/androlua/LuaWebView;)Landroid/util/LongSparseArray;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/androlua/LuaWebView$Download;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/androlua/LuaWebView$Download;->mMimetype:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-wide v4
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/androlua/LuaWebView$Download;->mUserAgent:Ljava/lang/String;

    iput-object p3, p0, Lcom/androlua/LuaWebView$Download;->mContentDisposition:Ljava/lang/String;

    iput-object p4, p0, Lcom/androlua/LuaWebView$Download;->mMimetype:Ljava/lang/String;

    iput-wide p5, p0, Lcom/androlua/LuaWebView$Download;->mContentLength:J

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->mFilename:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string p1, "filename=\""

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    add-int/lit8 p1, p1, 0xa

    const/16 p2, 0x22

    invoke-virtual {p3, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-le p2, p1, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->mFilename:Ljava/lang/String;

    :cond_0
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p2}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->file_input_field:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/androlua/LuaWebView$Download;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "b"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/32 p2, 0x100000

    cmp-long v0, p5, p2

    if-lez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p2

    const-wide/high16 p5, 0x4130000000000000L    # 1048576.0

    div-double/2addr p2, p5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mb"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-wide/16 p2, 0x400

    cmp-long v0, p5, p2

    if-lez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p2

    const-wide/high16 p5, 0x4090000000000000L    # 1024.0

    div-double/2addr p2, p5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "kb"

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_0
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p3}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0701f2

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const p5, 0x7f07097d

    invoke-virtual {p3, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p4, p5, p6

    const/4 p4, 0x1

    aput-object p1, p5, p4

    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaWebView$Download;->file_input_field:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/androlua/LuaWebView$Download$1;

    invoke-direct {p2, p0}, Lcom/androlua/LuaWebView$Download$1;-><init>(Lcom/androlua/LuaWebView$Download;)V

    const p3, 0x7f07097c

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070095

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
