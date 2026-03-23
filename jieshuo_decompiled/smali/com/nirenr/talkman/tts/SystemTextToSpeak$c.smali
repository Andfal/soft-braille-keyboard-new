.class Lcom/nirenr/talkman/tts/SystemTextToSpeak$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/tts/SystemTextToSpeak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$c;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$c;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->z(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$c;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    return-void
.end method
