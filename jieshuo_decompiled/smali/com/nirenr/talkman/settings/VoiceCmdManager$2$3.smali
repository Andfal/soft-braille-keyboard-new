.class Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceCmdManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/VoiceCmdManager;->a(Lcom/nirenr/talkman/settings/VoiceCmdManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmd"

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/VoiceCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceCmdManager;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2;

    iget v3, v3, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->a:I

    invoke-virtual {v0, v3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2;

    iget-object v4, v4, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-static {v4}, Lcom/nirenr/talkman/settings/VoiceCmdManager;->c(Lcom/nirenr/talkman/settings/VoiceCmdManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2;

    iget-object v5, v5, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-static {v5}, Lcom/nirenr/talkman/settings/VoiceCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceCmdManager;)Landroid/widget/ArrayListAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2;

    iget v6, v6, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->a:I

    invoke-virtual {v5, v6}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/androlua/LuaUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3$1;

    invoke-direct {v6, p0}, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3$1;-><init>(Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/nirenr/talkman/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    :cond_0
    return-void
.end method
