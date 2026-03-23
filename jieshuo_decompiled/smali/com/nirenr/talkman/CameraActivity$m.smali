.class Lcom/nirenr/talkman/CameraActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/CameraActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$m;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaiduAI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaDialog;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity$m;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-direct {v1, v2}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/androlua/LuaDialog;->setItems([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$m;->a:Lcom/nirenr/talkman/CameraActivity;

    const v2, 0x7f070248

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/CameraActivity$m$a;

    invoke-direct {v2, p0, p1}, Lcom/nirenr/talkman/CameraActivity$m$a;-><init>(Lcom/nirenr/talkman/CameraActivity$m;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/androlua/LuaDialog;->show()V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$m;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$m;->a:Lcom/nirenr/talkman/CameraActivity;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2, p1}, Lcom/nirenr/talkman/CameraActivity;->m(Lcom/nirenr/talkman/CameraActivity;JLjava/lang/String;)V

    return-void
.end method
