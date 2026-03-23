.class final Lcom/androlua/LuaWebView$InJavaScriptLocalObj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InJavaScriptLocalObj"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaWebView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$InJavaScriptLocalObj;->this$0:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaWebView$InJavaScriptLocalObj;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0, p1}, Lcom/androlua/LuaWebView;->p(Lcom/androlua/LuaWebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaWebView$InJavaScriptLocalObj;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->j(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnSourceSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaWebView$InJavaScriptLocalObj;->this$0:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->j(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnSourceSetListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/androlua/LuaWebView$OnSourceSetListener;->onSourceSet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
