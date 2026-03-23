.class Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/tts/SystemTextToSpeak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Lj2/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;-><init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;->a:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->onDone(Ljava/lang/String;)V

    return-void
.end method
