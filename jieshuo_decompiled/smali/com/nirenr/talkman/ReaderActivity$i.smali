.class Lcom/nirenr/talkman/ReaderActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/androlua/LuaWebView$AdsFilter;


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

    iput-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$i;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$i;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/ReaderActivity;->a(Lcom/nirenr/talkman/ReaderActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$i;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaWebView;->getCurrUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v1
.end method

.method public filterUrl(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$i;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/ReaderActivity;->c(Lcom/nirenr/talkman/ReaderActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$i;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaWebView;->getCurrUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v1
.end method
