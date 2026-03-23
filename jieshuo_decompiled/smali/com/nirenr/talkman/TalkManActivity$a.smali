.class Lcom/nirenr/talkman/TalkManActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManActivity$a;->a:Lcom/nirenr/talkman/TalkManActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    const v2, 0x7f07023d

    const-string v3, "base_url"

    const-string v4, "https://jieshuo.ltd/download/"

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManActivity$a;->a:Lcom/nirenr/talkman/TalkManActivity;

    invoke-static {p1, v2, v4}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManActivity$a;->a:Lcom/nirenr/talkman/TalkManActivity;

    invoke-static {p1, v3, v4}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManActivity$a;->a:Lcom/nirenr/talkman/TalkManActivity;

    invoke-static {v0, v3, v4}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    new-instance v1, Lcom/nirenr/talkman/TalkManActivity$a$a;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/TalkManActivity$a$a;-><init>(Lcom/nirenr/talkman/TalkManActivity$a;Lcom/nirenr/talkman/util/HttpUtil$c;)V

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManActivity$a;->a:Lcom/nirenr/talkman/TalkManActivity;

    invoke-static {p1, v2, v4}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManActivity$a;->a:Lcom/nirenr/talkman/TalkManActivity;

    invoke-static {p1, v3, v4}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
