.class Lj2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/d;->z(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Lj2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 0

    iput-object p1, p0, Lj2/d$a;->a:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    iget-object v0, p0, Lj2/d$a;->a:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    return-void
.end method
