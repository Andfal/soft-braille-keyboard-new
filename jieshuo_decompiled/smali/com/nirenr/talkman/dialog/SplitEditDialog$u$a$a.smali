.class Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$a;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/androlua/LuaUtil;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->w(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    return-void
.end method
