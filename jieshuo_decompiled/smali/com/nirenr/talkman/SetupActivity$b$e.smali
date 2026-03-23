.class Lcom/nirenr/talkman/SetupActivity$b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/SetupActivity$b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/SetupActivity$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/SetupActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$e;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$e;->a:Lcom/nirenr/talkman/SetupActivity$b;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/nirenr/talkman/SetupActivity$b$e;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/nirenr/talkman/WebActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "https://jieshuo.ltd/privacy.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
