.class Lcom/nirenr/talkman/ReaderActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ReaderActivity$c;->onSourceSet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/ReaderActivity$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ReaderActivity$c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->b:Lcom/nirenr/talkman/ReaderActivity$c;

    iput-object p2, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->b:Lcom/nirenr/talkman/ReaderActivity$c;

    iget-object v1, v0, Lcom/nirenr/talkman/ReaderActivity$c;->a:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/nirenr/talkman/ReaderActivity$c;->b:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->b:Lcom/nirenr/talkman/ReaderActivity$c;

    iget-object v0, v0, Lcom/nirenr/talkman/ReaderActivity$c;->b:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->b:Lcom/nirenr/talkman/ReaderActivity$c;

    iget-object v1, v1, Lcom/nirenr/talkman/ReaderActivity$c;->b:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v1}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/HtmlUtil;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->b:Lcom/nirenr/talkman/ReaderActivity$c;

    iget-object v0, v0, Lcom/nirenr/talkman/ReaderActivity$c;->b:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/HtmlUtil;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->b:Lcom/nirenr/talkman/ReaderActivity$c;

    iget-object v0, v0, Lcom/nirenr/talkman/ReaderActivity$c;->b:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->b:Lcom/nirenr/talkman/ReaderActivity$c;

    iget-object v2, v2, Lcom/nirenr/talkman/ReaderActivity$c;->b:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v2}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/ReaderActivity;->g(Lcom/nirenr/talkman/ReaderActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$c$a;->b:Lcom/nirenr/talkman/ReaderActivity$c;

    iget-object v0, v0, Lcom/nirenr/talkman/ReaderActivity$c;->b:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07054d

    invoke-static {v0, v2, v1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method
