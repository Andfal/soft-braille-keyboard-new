.class Lcom/nirenr/talkman/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nirenr/talkman/a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/a$a;->c:Lcom/nirenr/talkman/a;

    iput p2, p0, Lcom/nirenr/talkman/a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nirenr/talkman/a$a;->a:I

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/a$a;->c:Lcom/nirenr/talkman/a;

    invoke-static {v0}, Lcom/nirenr/talkman/a;->a(Lcom/nirenr/talkman/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nirenr/talkman/a$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/a$a;->c:Lcom/nirenr/talkman/a;

    invoke-static {v0}, Lcom/nirenr/talkman/a;->a(Lcom/nirenr/talkman/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/a$a;->a:I

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onTTSEnd(I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/a$a;->c:Lcom/nirenr/talkman/a;

    invoke-static {v0}, Lcom/nirenr/talkman/a;->a(Lcom/nirenr/talkman/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nirenr/talkman/a$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/a$a;->c:Lcom/nirenr/talkman/a;

    invoke-static {p1}, Lcom/nirenr/talkman/a;->a(Lcom/nirenr/talkman/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget v0, p0, Lcom/nirenr/talkman/a$a;->a:I

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onTTSStop(I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/a$a;->c:Lcom/nirenr/talkman/a;

    invoke-static {v0}, Lcom/nirenr/talkman/a;->a(Lcom/nirenr/talkman/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nirenr/talkman/a$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/a$a;->c:Lcom/nirenr/talkman/a;

    invoke-static {v0}, Lcom/nirenr/talkman/a;->a(Lcom/nirenr/talkman/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/a$a;->a:I

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onTTSStart(I)V

    return-void
.end method
