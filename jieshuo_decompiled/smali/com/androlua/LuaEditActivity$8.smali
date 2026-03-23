.class Lcom/androlua/LuaEditActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->saveAs()V
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

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$8;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$8;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v1}, Lcom/androlua/LuaEditActivity;->b(Lcom/androlua/LuaEditActivity;)Landroid/widget/SplitEditView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$8;->this$0:Lcom/androlua/LuaEditActivity;

    const v1, 0x7f07059d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$8;->this$0:Lcom/androlua/LuaEditActivity;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getNotesDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/androlua/LuaEditActivity;->k(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$8;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v0, p1}, Lcom/androlua/LuaEditActivity;->n(Lcom/androlua/LuaEditActivity;Ljava/lang/String;)V

    return-void
.end method
