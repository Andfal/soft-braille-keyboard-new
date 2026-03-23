.class Lcom/nirenr/talkman/settings/VoiceCmdShare$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceCmdShare$3;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/nirenr/talkman/settings/VoiceCmdShare$3;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceCmdShare$3;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$3$1;->b:Lcom/nirenr/talkman/settings/VoiceCmdShare$3;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$3$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$3$1;->b:Lcom/nirenr/talkman/settings/VoiceCmdShare$3;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/VoiceCmdShare$3;->b:Ljava/lang/String;

    const-string v0, "_.*"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androlua/LuaApplication;->getCmdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$3$1;->a:Lorg/json/JSONObject;

    const-string v0, "Source"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$3$1;->b:Lcom/nirenr/talkman/settings/VoiceCmdShare$3;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/VoiceCmdShare$3;->c:Lcom/nirenr/talkman/settings/VoiceCmdShare;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f07059d

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
