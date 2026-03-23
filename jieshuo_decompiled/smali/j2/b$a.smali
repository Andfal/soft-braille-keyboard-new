.class Lj2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj2/b;


# direct methods
.method constructor <init>(Lj2/b;)V
    .locals 0

    iput-object p1, p0, Lj2/b$a;->a:Lj2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj2/b$a;->a:Lj2/b;

    invoke-static {p1}, Lj2/b;->a(Lj2/b;)I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lj2/b$a;->a:Lj2/b;

    invoke-static {p1}, Lj2/b;->b(Lj2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lj2/b$a$a;

    invoke-direct {v0, p0}, Lj2/b$a$a;-><init>(Lj2/b$a;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
