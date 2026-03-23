.class Lcom/nirenr/talkman/settings/ActivatedActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ActivatedActivity;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/ActivatedActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ActivatedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ActivatedActivity$2;->a:Lcom/nirenr/talkman/settings/ActivatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActivatedActivity$2;->a:Lcom/nirenr/talkman/settings/ActivatedActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActivatedActivity$2;->a:Lcom/nirenr/talkman/settings/ActivatedActivity;

    const-class v1, Lcom/nirenr/talkman/settings/UserSetting;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActivatedActivity$2;->a:Lcom/nirenr/talkman/settings/ActivatedActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
