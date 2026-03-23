.class Lcom/androlua/LuaEditActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SplitEditView$OnSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSave(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->q(Lcom/androlua/LuaEditActivity;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->d(Lcom/androlua/LuaEditActivity;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->j(Lcom/androlua/LuaEditActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lua"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->f(Lcom/androlua/LuaEditActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->h(Lcom/androlua/LuaEditActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    const v0, 0x7f07040c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toHome()V

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaEditActivity$6$1;

    invoke-direct {v1, p0, p1}, Lcom/androlua/LuaEditActivity$6$1;-><init>(Lcom/androlua/LuaEditActivity$6;Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    const-class v2, Lcom/androlua/LuaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v1}, Lcom/androlua/LuaEditActivity;->e(Lcom/androlua/LuaEditActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
