.class Lcom/nirenr/talkman/DownloadActivity$l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/DownloadActivity$l$a;->onCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/DownloadActivity$l$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/DownloadActivity$l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/DownloadActivity$l$a$a;->a:Lcom/nirenr/talkman/DownloadActivity$l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/nirenr/talkman/DownloadActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$l$a$a;->a:Lcom/nirenr/talkman/DownloadActivity$l$a;

    iget-object v0, v0, Lcom/nirenr/talkman/DownloadActivity$l$a;->a:Lcom/nirenr/talkman/DownloadActivity$l;

    iget-object v0, v0, Lcom/nirenr/talkman/DownloadActivity$l;->c:Lcom/nirenr/talkman/DownloadActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/DownloadActivity;->i(Lcom/nirenr/talkman/DownloadActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/DownloadActivity$l$a$a;->a:Lcom/nirenr/talkman/DownloadActivity$l$a;

    iget-object v0, v0, Lcom/nirenr/talkman/DownloadActivity$l$a;->a:Lcom/nirenr/talkman/DownloadActivity$l;

    iget-object v0, v0, Lcom/nirenr/talkman/DownloadActivity$l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/DownloadActivity$l$a$a$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/DownloadActivity$l$a$a$a;-><init>(Lcom/nirenr/talkman/DownloadActivity$l$a$a;)V

    invoke-static {p1, v0}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void
.end method
