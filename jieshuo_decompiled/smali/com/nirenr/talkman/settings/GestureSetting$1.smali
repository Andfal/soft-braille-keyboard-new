.class Lcom/nirenr/talkman/settings/GestureSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureSetting;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/GestureSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$1;->a:Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$1;->a:Lcom/nirenr/talkman/settings/GestureSetting;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$1;->a:Lcom/nirenr/talkman/settings/GestureSetting;

    const-class v3, Lcom/nirenr/talkman/settings/FileEdit;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "format"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$1;->a:Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/GestureSetting;->a(Lcom/nirenr/talkman/settings/GestureSetting;)Lcom/androlua/LuaApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/settings/GestureSetting$1;->a:Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-static {v3}, Lcom/nirenr/talkman/settings/GestureSetting;->b(Lcom/nirenr/talkman/settings/GestureSetting;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/androlua/LuaApplication;->getGesturePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "RES_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
