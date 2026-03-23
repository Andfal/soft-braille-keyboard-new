.class Lcom/nirenr/talkman/TalkManAccessibilityService$u2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$u2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$u2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$u2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u2$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$u2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaApplication;->getCmdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u2$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$u2;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$u2;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
