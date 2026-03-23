.class Lcom/nirenr/talkman/settings/GithubActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GithubActivity$4;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/GithubActivity$4;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GithubActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GithubActivity$4$1;->a:Lcom/nirenr/talkman/settings/GithubActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GithubActivity$4$1;->a:Lcom/nirenr/talkman/settings/GithubActivity$4;

    iget-object p2, p1, Lcom/nirenr/talkman/settings/GithubActivity$4;->c:Landroid/content/Context;

    iget-object v0, p1, Lcom/nirenr/talkman/settings/GithubActivity$4;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/GithubActivity$4;->d:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/nirenr/talkman/settings/GithubActivity;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
