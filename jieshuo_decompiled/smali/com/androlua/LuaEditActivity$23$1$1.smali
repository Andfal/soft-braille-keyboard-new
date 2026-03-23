.class Lcom/androlua/LuaEditActivity$23$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity$23$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/androlua/LuaEditActivity$23$1;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity$23$1;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$23$1$1;->this$2:Lcom/androlua/LuaEditActivity$23$1;

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

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$23$1$1;->this$2:Lcom/androlua/LuaEditActivity$23$1;

    iget-object v2, v1, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iget-object v3, v2, Lcom/androlua/LuaEditActivity$23;->val$dir:Ljava/io/File;

    iget-object v2, v2, Lcom/androlua/LuaEditActivity$23;->val$list:[Ljava/lang/String;

    iget v1, v1, Lcom/androlua/LuaEditActivity$23$1;->val$position:I

    aget-object v1, v2, v1

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity$23$1$1;->this$2:Lcom/androlua/LuaEditActivity$23$1;

    iget-object v2, v2, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iget-object v2, v2, Lcom/androlua/LuaEditActivity$23;->val$dir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/androlua/LuaUtil;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$23$1$1;->this$2:Lcom/androlua/LuaEditActivity$23$1;

    iget-object v0, p1, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iget-object v1, v0, Lcom/androlua/LuaEditActivity$23;->val$list:[Ljava/lang/String;

    iget p1, p1, Lcom/androlua/LuaEditActivity$23$1;->val$position:I

    aget-object p1, v1, p1

    iget-object v0, v0, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v0}, Lcom/androlua/LuaEditActivity;->g(Lcom/androlua/LuaEditActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$23$1$1;->this$2:Lcom/androlua/LuaEditActivity$23$1;

    iget-object v0, p1, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iget-object v1, v0, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    iget-object v0, v0, Lcom/androlua/LuaEditActivity$23;->val$list:[Ljava/lang/String;

    iget p1, p1, Lcom/androlua/LuaEditActivity$23$1;->val$position:I

    aget-object p1, v0, p1

    invoke-static {v1, p1}, Lcom/androlua/LuaEditActivity;->n(Lcom/androlua/LuaEditActivity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
