.class Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$1;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$1;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;->c:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$1;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4$1;->a:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager$4;->c:Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;->c(Lcom/nirenr/talkman/settings/VoiceSupperCmdManager;)V

    return-void
.end method
