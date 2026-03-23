.class Lcom/androlua/LuaWebView$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaWebView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "luaj"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->g(Lcom/androlua/LuaWebView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaWebView$1$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/androlua/LuaWebView$1$4;-><init>(Lcom/androlua/LuaWebView$1;Ljava/lang/String;Landroid/webkit/WebView;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p1, p2}, Lcom/androlua/LuaWebView;->s(Lcom/androlua/LuaWebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    :try_start_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "SslError"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p3, Lcom/androlua/LuaWebView$1$2;

    invoke-direct {p3, p0, p2}, Lcom/androlua/LuaWebView$1$2;-><init>(Lcom/androlua/LuaWebView$1;Landroid/webkit/SslErrorHandler;)V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p3, Lcom/androlua/LuaWebView$1$3;

    invoke-direct {p3, p0, p2}, Lcom/androlua/LuaWebView$1$3;-><init>(Lcom/androlua/LuaWebView$1;Landroid/webkit/SslErrorHandler;)V

    const p2, 0x7f070095

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string p1, "data"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->m(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->m(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldInterceptRequest: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->m(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "luaj"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;)Lcom/luajava/LuaFunction;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;)Lcom/luajava/LuaFunction;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-virtual {p1, v0}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v1, v1, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$AdsFilter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$AdsFilter;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/androlua/LuaWebView$AdsFilter;->filter(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v1, v1, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;)Lcom/luajava/LuaFunction;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;)Lcom/luajava/LuaFunction;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$AdsFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$AdsFilter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/androlua/LuaWebView$AdsFilter;->filterUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldOverrideUrlLoading: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lua"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->h(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    iget-object p1, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p1, p2}, Lcom/androlua/LuaWebView;->q(Lcom/androlua/LuaWebView;Ljava/lang/String;)V

    :try_start_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070979

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/androlua/LuaWebView$1$1;

    invoke-direct {v0, p0, p2}, Lcom/androlua/LuaWebView$1$1;-><init>(Lcom/androlua/LuaWebView$1;Ljava/lang/String;)V

    const p2, 0x104000a

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070095

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1

    :cond_4
    :goto_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
