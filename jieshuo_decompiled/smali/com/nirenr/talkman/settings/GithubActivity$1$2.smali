.class Lcom/nirenr/talkman/settings/GithubActivity$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GithubActivity$1;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/GithubActivity$1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GithubActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GithubActivity$1$2;->a:Lcom/nirenr/talkman/settings/GithubActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GithubActivity$1$2;->a:Lcom/nirenr/talkman/settings/GithubActivity$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/GithubActivity$1;->b:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$1$2;->a:Lcom/nirenr/talkman/settings/GithubActivity$1;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/GithubActivity$1;->b:Landroid/content/Context;

    const-class v1, Lcom/nirenr/talkman/WebActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "https://d.jieshuo.ltd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
