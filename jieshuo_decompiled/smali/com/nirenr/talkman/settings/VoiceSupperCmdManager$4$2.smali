.class Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$2;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;

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
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$2;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;->c:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->a(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)Landroid/widget/ArrayListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$2;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;

    iget v3, v3, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/androlua/LuaApplication;->getHelpersDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/androlua/LuaApplication;->getHelpersDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/androlua/LuaUtil;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$2;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;->c:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->c(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)V

    return-void
.end method
