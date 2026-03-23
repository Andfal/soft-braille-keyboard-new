.class Lcom/nirenr/talkman/TalkManAccessibilityService$h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->setTextToSpeechListener(Lcom/nirenr/talkman/TextToSpeechListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TextToSpeechListener;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/TextToSpeechListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h4;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h4;->a:Lcom/nirenr/talkman/TextToSpeechListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h4;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h4;->a:Lcom/nirenr/talkman/TextToSpeechListener;

    invoke-static {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->t2(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/TextToSpeechListener;)V

    return-void
.end method
