.class Lcom/nirenr/talkman/ReaderActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ReaderActivity$a;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ReaderActivity$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ReaderActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$a$a;->a:Lcom/nirenr/talkman/ReaderActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$a$a;->a:Lcom/nirenr/talkman/ReaderActivity$a;

    iget-object v0, v0, Lcom/nirenr/talkman/ReaderActivity$a;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$a$a;->a:Lcom/nirenr/talkman/ReaderActivity$a;

    iget-object v0, v0, Lcom/nirenr/talkman/ReaderActivity$a;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$a$a;->a:Lcom/nirenr/talkman/ReaderActivity$a;

    iget-object v0, v0, Lcom/nirenr/talkman/ReaderActivity$a;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->p()V

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$a$a;->a:Lcom/nirenr/talkman/ReaderActivity$a;

    iget-object v0, v0, Lcom/nirenr/talkman/ReaderActivity$a;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u4e0b\u4e00\u7ae0\u4e86"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/HtmlUtil;->m(Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nirenr/talkman/ReaderActivity$a$a;->a:Lcom/nirenr/talkman/ReaderActivity$a;

    iget-object v1, v1, Lcom/nirenr/talkman/ReaderActivity$a;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v1}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/androlua/LuaWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
