.class Lcom/nirenr/talkman/util/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$c;->a:Lcom/nirenr/talkman/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$c;->a:Lcom/nirenr/talkman/util/b;

    const p2, 0x7f0701ba

    invoke-static {p1, p2}, Lcom/nirenr/talkman/util/b;->r(Lcom/nirenr/talkman/util/b;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/util/b$c;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p2}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const v0, 0x7f0702c9

    invoke-static {p2, v0, p1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/nirenr/talkman/util/b$c;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p2}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/util/b$c;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const-class v2, Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RES_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
