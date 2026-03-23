.class Lcom/nirenr/talkman/TalkManActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManActivity$a;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/HttpUtil$c;

.field final synthetic b:Lcom/nirenr/talkman/TalkManActivity$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManActivity$a;Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManActivity$a$a;->b:Lcom/nirenr/talkman/TalkManActivity$a;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManActivity$a$a;->a:Lcom/nirenr/talkman/util/HttpUtil$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 3

    iget p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v0, 0xc8

    const-string v1, "https://jieshuo.ltd/download/"

    const v2, 0x7f07023d

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManActivity$a$a;->b:Lcom/nirenr/talkman/TalkManActivity$a;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManActivity$a;->a:Lcom/nirenr/talkman/TalkManActivity;

    const-string v0, "base_url"

    invoke-static {p1, v0, v1}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManActivity$a$a;->b:Lcom/nirenr/talkman/TalkManActivity$a;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManActivity$a;->a:Lcom/nirenr/talkman/TalkManActivity;

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManActivity$a$a;->a:Lcom/nirenr/talkman/util/HttpUtil$c;

    iget-object v0, v0, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManActivity$a$a;->b:Lcom/nirenr/talkman/TalkManActivity$a;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManActivity$a;->a:Lcom/nirenr/talkman/TalkManActivity;

    invoke-static {p1, v2, v1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
