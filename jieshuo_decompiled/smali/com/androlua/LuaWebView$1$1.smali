.class Lcom/androlua/LuaWebView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaWebView$1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaWebView$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$1$1;->this$1:Lcom/androlua/LuaWebView$1;

    iput-object p2, p0, Lcom/androlua/LuaWebView$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/androlua/LuaWebView$1$1;->this$1:Lcom/androlua/LuaWebView$1;

    iget-object p1, p1, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/androlua/LuaWebView;->q(Lcom/androlua/LuaWebView;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaWebView$1$1;->this$1:Lcom/androlua/LuaWebView$1;

    iget-object p1, p1, Lcom/androlua/LuaWebView$1;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/androlua/LuaWebView$1$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
