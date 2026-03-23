.class Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleLuaWebViewClient"
.end annotation


# instance fields
.field private mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

.field final synthetic this$0:Lcom/androlua/LuaWebView;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$LuaWebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->this$0:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/androlua/LuaWebView$LuaWebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onProceededAfterSslError(Landroid/webkit/WebView;Landroid/net/http/SslError;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onProceededAfterSslError(Landroid/webkit/WebView;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaWebView$LuaWebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v1}, Lcom/androlua/LuaWebView;->m(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v1}, Lcom/androlua/LuaWebView;->m(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;)Lcom/luajava/LuaFunction;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;)Lcom/luajava/LuaFunction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v2, v2, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$AdsFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$AdsFilter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/androlua/LuaWebView$AdsFilter;->filter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v2, v2, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaWebView$LuaWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v2
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaWebView$LuaWebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;->mLuaWebViewClient:Lcom/androlua/LuaWebView$LuaWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaWebView$LuaWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
