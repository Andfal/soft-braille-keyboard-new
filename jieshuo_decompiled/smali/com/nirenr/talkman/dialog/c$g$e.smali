.class Lcom/nirenr/talkman/dialog/c$g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/c$g;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/dialog/c$g;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/c$g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/c$g$e;->b:Lcom/nirenr/talkman/dialog/c$g;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/c$g$e;->a:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/c$g$e;->b:Lcom/nirenr/talkman/dialog/c$g;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$g$e;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$g$e;->b:Lcom/nirenr/talkman/dialog/c$g;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaService;->shareFile(Ljava/lang/String;)V

    return-void
.end method
