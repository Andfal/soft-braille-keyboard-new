.class Lcom/nirenr/talkman/dialog/SplitEditDialog$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;->R(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$s;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$s;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
