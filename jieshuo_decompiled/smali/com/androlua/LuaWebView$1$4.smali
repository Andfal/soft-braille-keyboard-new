.class Lcom/androlua/LuaWebView$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaWebView$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaWebView$1;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView$1;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$1$4;->this$1:Lcom/androlua/LuaWebView$1;

    iput-object p2, p0, Lcom/androlua/LuaWebView$1$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/androlua/LuaWebView$1$4;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaWebView$1$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaWebView$1$4;->val$view:Landroid/webkit/WebView;

    const-string v1, "javascript:window.java_obj.get(\'<html>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</html>\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
