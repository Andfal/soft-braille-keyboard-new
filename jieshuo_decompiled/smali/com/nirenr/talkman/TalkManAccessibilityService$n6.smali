.class Lcom/nirenr/talkman/TalkManAccessibilityService$n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->D3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p2}, Lcom/nirenr/talkman/IInputMethodInterface$a;->a(Landroid/os/IBinder;)Lcom/nirenr/talkman/IInputMethodInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P1(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/IInputMethodInterface;)V

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->U(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/IInputMethodInterface;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$n6$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$n6;)V

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/IInputMethodInterface;->setListener(Lcom/nirenr/talkman/IScreenReaderInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P1(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/IInputMethodInterface;)V

    return-void
.end method
