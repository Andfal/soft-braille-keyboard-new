.class Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$ScreenReceiver;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
