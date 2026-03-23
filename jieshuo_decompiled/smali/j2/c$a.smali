.class Lj2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/c;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj2/c;


# direct methods
.method constructor <init>(Lj2/c;)V
    .locals 0

    iput-object p1, p0, Lj2/c$a;->a:Lj2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lj2/c$a;->a:Lj2/c;

    invoke-static {p1}, Lj2/c;->a(Lj2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f0706bb

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p1, p0, Lj2/c$a;->a:Lj2/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj2/c;->c(Lj2/c;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj2/c$a;->a:Lj2/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj2/c;->d(Lj2/c;Lj2/d;)V

    :goto_0
    iget-object p1, p0, Lj2/c$a;->a:Lj2/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj2/c;->b(Lj2/c;Z)V

    return-void
.end method
