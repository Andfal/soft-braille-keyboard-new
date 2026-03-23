.class public Lcom/androlua/LuaWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaWebView$LuaWebChromeClient;,
        Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;,
        Lcom/androlua/LuaWebView$LuaJavaScriptinterface;,
        Lcom/androlua/LuaWebView$JsObject;,
        Lcom/androlua/LuaWebView$Download;,
        Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;,
        Lcom/androlua/LuaWebView$LuaWebViewClient;,
        Lcom/androlua/LuaWebView$JsInterface;,
        Lcom/androlua/LuaWebView$OnDownloadStartListener;,
        Lcom/androlua/LuaWebView$OnDownloadCompleteListener;,
        Lcom/androlua/LuaWebView$AdsFilter;,
        Lcom/androlua/LuaWebView$OnSourceSetListener;,
        Lcom/androlua/LuaWebView$InJavaScriptLocalObj;
    }
.end annotation


# instance fields
.field private dm:Landroid/util/DisplayMetrics;

.field private mAdsFilter:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDir:Ljava/lang/String;

.field private mDownload:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadBroadcastReceiver:Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

.field private mFilter:Lcom/androlua/LuaWebView$AdsFilter;

.field private mHandler:Landroid/os/Handler;

.field private mHtml:Ljava/lang/String;

.field private mLastUrl:Ljava/lang/String;

.field private mOnDownloadCompleteListener:Lcom/androlua/LuaWebView$OnDownloadCompleteListener;

.field private mOnSourceSetListener:Lcom/androlua/LuaWebView$OnSourceSetListener;

.field private mProgressbar:Landroid/widget/ProgressBar;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private open_dlg:Landroid/app/Dialog;

.field private open_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaWebView;->mDownload:Landroid/util/LongSparseArray;

    const-string v0, "/"

    iput-object v0, p0, Lcom/androlua/LuaWebView;->mDir:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaWebView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    new-instance v1, Lcom/androlua/LuaWebView$InJavaScriptLocalObj;

    invoke-direct {v1, p0}, Lcom/androlua/LuaWebView$InJavaScriptLocalObj;-><init>(Lcom/androlua/LuaWebView;)V

    const-string v2, "java_obj"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_3
    new-instance v2, Lcom/androlua/LuaWebView$1;

    invoke-direct {v2, p0}, Lcom/androlua/LuaWebView$1;-><init>(Lcom/androlua/LuaWebView;)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaWebView;->dm:Landroid/util/DisplayMetrics;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v3, Landroid/widget/ProgressBar;

    const v4, 0x1010078

    invoke-direct {v3, p1, v2, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/androlua/LuaWebView;->mProgressbar:Landroid/widget/ProgressBar;

    new-instance p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {p1, v4, v0, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView;->mProgressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    :try_start_5
    new-instance p1, Lcom/androlua/LuaWebView$LuaWebChromeClient;

    invoke-direct {p1, p0}, Lcom/androlua/LuaWebView$LuaWebChromeClient;-><init>(Lcom/androlua/LuaWebView;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Lcom/androlua/LuaWebView$Download;

    invoke-direct {p1, p0, v2}, Lcom/androlua/LuaWebView$Download;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/c0;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaWebView;)Lcom/luajava/LuaFunction;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mAdsFilter:Lcom/luajava/LuaFunction;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/androlua/LuaWebView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/androlua/LuaWebView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mDir:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/androlua/LuaWebView;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mDownload:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mDownloadBroadcastReceiver:Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$AdsFilter;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mFilter:Lcom/androlua/LuaWebView$AdsFilter;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/androlua/LuaWebView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/androlua/LuaWebView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mLastUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnDownloadCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mOnDownloadCompleteListener:Lcom/androlua/LuaWebView$OnDownloadCompleteListener;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnSourceSetListener;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mOnSourceSetListener:Lcom/androlua/LuaWebView$OnSourceSetListener;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/androlua/LuaWebView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mProgressbar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/androlua/LuaWebView;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/androlua/LuaWebView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/androlua/LuaWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mDir:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic o(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mDownloadBroadcastReceiver:Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    return-void
.end method

.method static bridge synthetic p(Lcom/androlua/LuaWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mHtml:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic q(Lcom/androlua/LuaWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mLastUrl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic r(Lcom/androlua/LuaWebView;Landroid/webkit/ValueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-void
.end method

.method static bridge synthetic s(Lcom/androlua/LuaWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addJSInterface(Lcom/androlua/LuaWebView$JsInterface;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/androlua/LuaWebView$JsObject;

    invoke-direct {v0, p1}, Lcom/androlua/LuaWebView$JsObject;-><init>(Lcom/androlua/LuaWebView$JsInterface;)V

    invoke-super {p0, v0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public addJsInterface(Lcom/androlua/LuaWebView$JsInterface;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/androlua/LuaWebView$JsObject;

    invoke-direct {v0, p1}, Lcom/androlua/LuaWebView$JsObject;-><init>(Lcom/androlua/LuaWebView$JsInterface;)V

    invoke-super {p0, v0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaWebView;->mDownloadBroadcastReceiver:Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public getCurrUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "luaj"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mUrl:Ljava/lang/String;

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaWebView;->mProgressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v1, p0, Lcom/androlua/LuaWebView;->mProgressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/androlua/LuaWebView;->open_dlg:Landroid/app/Dialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaWebView;->open_dlg:Landroid/app/Dialog;

    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaWebView;->open_list:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/androlua/LuaWebView;->open_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v0, p0, Lcom/androlua/LuaWebView;->open_dlg:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/androlua/LuaWebView;->open_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/androlua/LuaWebView;->open_list:Landroid/widget/ListView;

    new-instance v1, Lcom/androlua/LuaWebView$3;

    invoke-direct {v1, p0}, Lcom/androlua/LuaWebView$3;-><init>(Lcom/androlua/LuaWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "../"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/androlua/LuaWebView;->mDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/androlua/LuaWebView;->mDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView;->open_list:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView;->open_dlg:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/androlua/LuaWebView;->mDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView;->open_dlg:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public setAdsFilter(Lcom/androlua/LuaWebView$AdsFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mFilter:Lcom/androlua/LuaWebView$AdsFilter;

    return-void
.end method

.method public setAdsFilter(Lcom/luajava/LuaFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaFunction<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mAdsFilter:Lcom/luajava/LuaFunction;

    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public setOnDownloadCompleteListener(Lcom/androlua/LuaWebView$OnDownloadCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mOnDownloadCompleteListener:Lcom/androlua/LuaWebView$OnDownloadCompleteListener;

    return-void
.end method

.method public setOnDownloadStartListener(Lcom/androlua/LuaWebView$OnDownloadStartListener;)V
    .locals 1

    new-instance v0, Lcom/androlua/LuaWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaWebView$2;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$OnDownloadStartListener;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setOnSourceSetListener(Lcom/androlua/LuaWebView$OnSourceSetListener;)V
    .locals 1

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mOnSourceSetListener:Lcom/androlua/LuaWebView$OnSourceSetListener;

    iget-object v0, p0, Lcom/androlua/LuaWebView;->mHtml:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/androlua/LuaWebView$OnSourceSetListener;->onSourceSet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->mProgressbar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public setProgressBarEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaWebView;->mProgressbar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaWebView;->mProgressbar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setWebViewClient(Lcom/androlua/LuaWebView$LuaWebViewClient;)V
    .locals 1

    new-instance v0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$LuaWebViewClient;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
