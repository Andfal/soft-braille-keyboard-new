.class Lcom/androlua/LuaEditActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->onOptionsItemSelected(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$15;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$15;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v1}, Lcom/androlua/LuaEditActivity;->i(Lcom/androlua/LuaEditActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$15;->this$0:Lcom/androlua/LuaEditActivity;

    const-string v0, "\u521b\u5efa\u51fa\u9519"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$15;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1, v0}, Lcom/androlua/LuaEditActivity;->k(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$15;->this$0:Lcom/androlua/LuaEditActivity;

    const-string v0, "main.lua"

    invoke-static {p1, v0}, Lcom/androlua/LuaEditActivity;->n(Lcom/androlua/LuaEditActivity;Ljava/lang/String;)V

    return-void
.end method
