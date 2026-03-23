.class Lcom/nirenr/talkman/util/Music$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/Music;->q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/Music;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/Music;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/Music$a;->a:Lcom/nirenr/talkman/util/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music$a;->a:Lcom/nirenr/talkman/util/Music;

    const-string v0, "\u641c\u7d22\u5185\u5bb9\u51fa\u9519"

    invoke-static {p1, v0}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$a;->a:Lcom/nirenr/talkman/util/Music;

    new-instance v1, Lcom/nirenr/talkman/util/Music$g;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Lcom/nirenr/talkman/util/Music$g;-><init>(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/Music;->c(Lcom/nirenr/talkman/util/Music;Lcom/nirenr/talkman/util/Music$PlayList;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music$a;->a:Lcom/nirenr/talkman/util/Music;

    invoke-static {p1}, Lcom/nirenr/talkman/util/Music;->a(Lcom/nirenr/talkman/util/Music;)Lcom/nirenr/talkman/util/Music$PlayList;

    move-result-object p1

    invoke-interface {p1}, Lcom/nirenr/talkman/util/Music$PlayList;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music$a;->a:Lcom/nirenr/talkman/util/Music;

    invoke-static {p1}, Lcom/nirenr/talkman/util/Music;->a(Lcom/nirenr/talkman/util/Music;)Lcom/nirenr/talkman/util/Music$PlayList;

    move-result-object p1

    invoke-interface {p1}, Lcom/nirenr/talkman/util/Music$PlayList;->next()V

    :cond_1
    return-void
.end method
