.class public Lcom/nirenr/talkman/EmptyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static a:Lcom/nirenr/talkman/EmptyActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nirenr/talkman/EmptyActivity;->a:Lcom/nirenr/talkman/EmptyActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ocr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/nirenr/talkman/EmptyActivity;->a:Lcom/nirenr/talkman/EmptyActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nirenr/talkman/EmptyActivity;->a:Lcom/nirenr/talkman/EmptyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->clearAllActivity()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    sput-object p0, Lcom/nirenr/talkman/EmptyActivity;->a:Lcom/nirenr/talkman/EmptyActivity;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/talkman/EmptyActivity;->a:Lcom/nirenr/talkman/EmptyActivity;

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/nirenr/talkman/EmptyActivity;->a()V

    return-void
.end method
