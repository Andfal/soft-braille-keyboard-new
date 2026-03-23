.class public Lcom/nirenr/talkman/SetupActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a()I
    .locals 4

    invoke-static {}, Lcom/nirenr/talkman/SetupActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " deviceBrand : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/nirenr/talkman/SetupActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "honor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/nirenr/talkman/SetupActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "huawei"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/SetupActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "xiaomi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/nirenr/talkman/SetupActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vivo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/nirenr/talkman/SetupActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "oppo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/nirenr/talkman/SetupActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "samsung"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :cond_5
    :goto_1
    return v1
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/nirenr/talkman/SetupActivity$a;->a()I

    move-result v0

    invoke-static {v0, p0}, Lcom/nirenr/talkman/SetupActivity$a;->d(ILandroid/content/Context;)V

    return-void
.end method

.method public static d(ILandroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    const/16 v4, 0x17

    if-eq p0, v3, :cond_7

    const/4 v3, 0x2

    if-eq p0, v3, :cond_6

    const/4 v3, 0x3

    if-eq p0, v3, :cond_4

    const/4 v3, 0x4

    if-eq p0, v3, :cond_2

    const/4 v3, 0x5

    if-eq p0, v3, :cond_1

    :cond_0
    move-object p0, v2

    goto/16 :goto_0

    :cond_1
    new-instance p0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.sm_cn"

    const-string v4, "com.samsung.android.sm_cn.com.samsung.android.sm.ui.ram.AutoRunActivity"

    invoke-direct {p0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v4, :cond_3

    new-instance p0, Landroid/content/ComponentName;

    const-string v3, "com.coloros.safecenter"

    const-string v4, "com.coloros.safecenter.startupapp.StartupAppListActivity"

    invoke-direct {p0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/content/ComponentName;

    const-string v3, "com.color.safecenter"

    const-string v4, "com.color.safecenter.permission.startup.StartupAppListActivity"

    invoke-direct {p0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v4, :cond_5

    new-instance p0, Landroid/content/ComponentName;

    const-string v3, "com.vivo.permissionmanager"

    const-string v4, "com.vivo.permissionmanager.activity.PurviewTabActivity"

    invoke-direct {p0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance p0, Landroid/content/ComponentName;

    const-string v3, "com.iqoo.secure"

    const-string v4, "com.iqoo.secure.ui.phoneoptimize.SoftwareManagerActivity"

    invoke-direct {p0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance p0, Landroid/content/ComponentName;

    const-string v3, "com.miui.securitycenter"

    const-string v4, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    invoke-direct {p0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const-string v5, "com.huawei.systemmanager.appcontrol.activity.StartupAppControlActivity"

    const-string v6, "com.huawei.systemmanager"

    if-lt p0, v3, :cond_8

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v3, 0x1c

    const-string v7, "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"

    if-lt p0, v3, :cond_9

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/16 v3, 0x1a

    if-lt p0, v3, :cond_a

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    if-lt p0, v4, :cond_b

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    new-instance p0, Landroid/content/ComponentName;

    const-string v3, "com.huawei.systemmanager.optimize.bootstart.BootStartActivity"

    invoke-direct {p0, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v3, "package"

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    if-nez p0, :cond_c

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_c
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
