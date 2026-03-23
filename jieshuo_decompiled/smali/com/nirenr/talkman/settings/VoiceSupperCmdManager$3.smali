.class Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/main.lua"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->c(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    const-class v4, Lcom/androlua/LuaEditActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$3;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    invoke-static {v4}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
