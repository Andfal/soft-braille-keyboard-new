.class Lcom/androlua/LuaEditActivity$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity$21;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaEditActivity$21;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity$21;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$21$1;->this$1:Lcom/androlua/LuaEditActivity$21;

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
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$21$1;->this$1:Lcom/androlua/LuaEditActivity$21;

    iget-object v1, v1, Lcom/androlua/LuaEditActivity$21;->val$dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$21$1;->this$1:Lcom/androlua/LuaEditActivity$21;

    iget-object v1, v1, Lcom/androlua/LuaEditActivity$21;->val$dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaEditActivity$21$1;->this$1:Lcom/androlua/LuaEditActivity$21;

    iget-object v0, v0, Lcom/androlua/LuaEditActivity$21;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v0, p1}, Lcom/androlua/LuaEditActivity;->n(Lcom/androlua/LuaEditActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$21$1;->this$1:Lcom/androlua/LuaEditActivity$21;

    iget-object v0, p1, Lcom/androlua/LuaEditActivity$21;->this$0:Lcom/androlua/LuaEditActivity;

    iget-object p1, p1, Lcom/androlua/LuaEditActivity$21;->val$dir:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/androlua/LuaEditActivity;->l(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V

    return-void
.end method
