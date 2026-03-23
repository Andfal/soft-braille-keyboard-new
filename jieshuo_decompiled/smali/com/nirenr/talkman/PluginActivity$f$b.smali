.class Lcom/nirenr/talkman/PluginActivity$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/PluginActivity$f;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/PluginActivity$f;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/PluginActivity$f;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f$b;->a:Lcom/nirenr/talkman/PluginActivity$f;

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

    iget-object v2, p0, Lcom/nirenr/talkman/PluginActivity$f$b;->a:Lcom/nirenr/talkman/PluginActivity$f;

    iget-object v2, v2, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {v2}, Lcom/nirenr/talkman/PluginActivity;->a(Lcom/nirenr/talkman/PluginActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/PluginActivity$f$b;->a:Lcom/nirenr/talkman/PluginActivity$f;

    iget v3, v3, Lcom/nirenr/talkman/PluginActivity$f;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/androlua/LuaApplication;->getPluginsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/androlua/LuaApplication;->getPluginsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/androlua/LuaUtil;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f$b;->a:Lcom/nirenr/talkman/PluginActivity$f;

    iget-object p1, p1, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/PluginActivity;->e(Lcom/nirenr/talkman/PluginActivity;)V

    return-void
.end method
