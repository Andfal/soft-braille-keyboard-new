.class Lcom/androlua/LuaWebView$LuaWebChromeClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaWebView$LuaWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaWebView$LuaWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView$LuaWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$3;->this$1:Lcom/androlua/LuaWebView$LuaWebChromeClient;

    iput-object p2, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
