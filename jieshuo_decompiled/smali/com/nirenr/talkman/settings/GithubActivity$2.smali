.class Lcom/nirenr/talkman/settings/GithubActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GithubActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/nirenr/talkman/settings/GithubActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GithubActivity;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GithubActivity$2;->b:Lcom/nirenr/talkman/settings/GithubActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/GithubActivity$2;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/GithubActivity$2;->b:Lcom/nirenr/talkman/settings/GithubActivity;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GithubActivity$2;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "browser_download_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GithubActivity$2;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "name"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/nirenr/talkman/settings/GithubActivity;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
