.class Lcom/nirenr/talkman/settings/ManagerActivity$8$2;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ManagerActivity$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/ManagerActivity$8;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ManagerActivity$8;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v0, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/androlua/LuaUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v1, 0x7f070384

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v1, 0x7f070383

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x3

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, ".xpk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, ".spk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, ".ppk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, ".gpk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const-class v2, Lcom/nirenr/talkman/ToolActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const-class v2, Lcom/nirenr/talkman/settings/FeedBackSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const-class v2, Lcom/nirenr/talkman/PluginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v1, 0x7f0702c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v4, 0x7f0708ae

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v4, 0x7f070033

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->e:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Lcom/androlua/LuaDialog;

    iget-object v5, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v5, v5, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-direct {v4, v5}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v6, v6, Lcom/nirenr/talkman/settings/ManagerActivity$8;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v6, v6, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v7, 0x7f07025e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v5, v5, Lcom/nirenr/talkman/settings/ManagerActivity$8;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v5, 0x7f07025c

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/nirenr/talkman/settings/ManagerActivity$8$2$1;

    invoke-direct {v5, p0, p1}, Lcom/nirenr/talkman/settings/ManagerActivity$8$2$1;-><init>(Lcom/nirenr/talkman/settings/ManagerActivity$8$2;Ljava/util/Set;)V

    invoke-virtual {v4, v1, v5}, Lcom/androlua/LuaDialog;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_7
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v0, 0x7f07025d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2$2;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/ManagerActivity$8$2$2;-><init>(Lcom/nirenr/talkman/settings/ManagerActivity$8$2;)V

    invoke-virtual {v4, p1, v0}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_8
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_a

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_9

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_a
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v0, 0x7f070095

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0}, Lcom/androlua/LuaDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :try_start_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    invoke-static {v4, v2, p1, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    const/4 v0, -0x2

    invoke-static {v4, v0, p1, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    const/4 v0, -0x3

    invoke-static {v4, v0, p1, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-virtual {v4}, Lcom/androlua/LuaDialog;->show()V

    :goto_5
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_b
    :goto_6
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/lang/String;)Z

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/util/Set;)V

    const p1, 0x7f07037a

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    :cond_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1679b4 -> :sswitch_3
        0x169b7d -> :sswitch_2
        0x16a6c0 -> :sswitch_1
        0x16b985 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
