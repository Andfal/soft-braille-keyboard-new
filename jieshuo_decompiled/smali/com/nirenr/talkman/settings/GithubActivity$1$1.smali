.class Lcom/nirenr/talkman/settings/GithubActivity$1$1;
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
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/nirenr/talkman/settings/GithubActivity$1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GithubActivity$1;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GithubActivity$1$1;->b:Lcom/nirenr/talkman/settings/GithubActivity$1;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/GithubActivity$1$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/GithubActivity$1$1;->b:Lcom/nirenr/talkman/settings/GithubActivity$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/GithubActivity$1;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GithubActivity$1$1;->a:Lorg/json/JSONObject;

    const-string v0, "browser_download_url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$1$1;->a:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/settings/GithubActivity;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
