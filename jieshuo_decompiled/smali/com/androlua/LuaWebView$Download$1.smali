.class Lcom/androlua/LuaWebView$Download$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaWebView$Download;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaWebView$Download;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView$Download;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download$1;->this$1:Lcom/androlua/LuaWebView$Download;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/androlua/LuaWebView$Download$1;->this$1:Lcom/androlua/LuaWebView$Download;

    iget-object p2, p1, Lcom/androlua/LuaWebView$Download;->file_input_field:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaWebView$Download;->c(Lcom/androlua/LuaWebView$Download;Ljava/lang/String;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaWebView$Download$1;->this$1:Lcom/androlua/LuaWebView$Download;

    invoke-static {p2}, Lcom/androlua/LuaWebView$Download;->a(Lcom/androlua/LuaWebView$Download;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androlua/LuaApplication;->getDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/androlua/LuaWebView$Download$1;->this$1:Lcom/androlua/LuaWebView$Download;

    iget-object p1, p1, Lcom/androlua/LuaWebView$Download;->this$0:Lcom/androlua/LuaWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaWebView$Download$1;->this$1:Lcom/androlua/LuaWebView$Download;

    invoke-static {p2}, Lcom/androlua/LuaWebView$Download;->b(Lcom/androlua/LuaWebView$Download;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/androlua/LuaWebView$Download$1;->this$1:Lcom/androlua/LuaWebView$Download;

    invoke-static {v0}, Lcom/androlua/LuaWebView$Download;->a(Lcom/androlua/LuaWebView$Download;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/settings/GithubActivity;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
