.class Lcom/nirenr/talkman/ReaderActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ReaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ReaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$h;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$h;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/HtmlUtil;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$h;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/HtmlUtil;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$h;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/HtmlUtil;->p()V

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$h;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object p1

    const-string v0, "\u6ca1\u6709\u4e0a\u4e00\u7ae0\u4e86"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/util/HtmlUtil;->m(Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$h;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
